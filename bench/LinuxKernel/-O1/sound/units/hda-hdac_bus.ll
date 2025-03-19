; ModuleID = 'sound/hda/hdac_bus.c'
source_filename = "sound/hda/hdac_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_bus_init: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_bus_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_bus_exit: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_bus_exit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_bus_exec_verb_unlocked: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_bus_exec_verb_unlocked ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_codec_link_up: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_codec_link_up ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_codec_link_down: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_codec_link_down ; .previous"

%struct.hdac_bus_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.13 }
%struct.atomic_t = type { i32 }
%union.anon.13 = type { i64 }
%struct.pcpu_hot = type { %union.anon.14 }
%union.anon.14 = type { %struct.anon.15, [16 x i8] }
%struct.anon.15 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_call_key = type { ptr, %union.anon.16 }
%union.anon.16 = type { i64 }
%struct.cpumask = type { [1 x i64] }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.hdac_bus = type { ptr, ptr, ptr, i64, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, [16 x ptr], [128 x i32], i32, i32, %struct.work_struct, i64, i64, %struct.hdac_rb, %struct.hdac_rb, [8 x i32], %struct.wait_queue_head, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.list_head, i16, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i64, i64, i32, i32, %struct.list_head, i8, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.hdac_rb = type { ptr, i64, i16, i16, [8 x i32], [8 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i64, i64, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.snd_array = type { i32, i32, i32, i32, ptr }
%struct.hdac_driver = type { %struct.device_driver, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }

@default_ops = internal constant %struct.hdac_bus_ops { ptr @snd_hdac_bus_send_cmd, ptr @snd_hdac_bus_get_response, ptr @snd_hdac_bus_link_power }, align 8, !dbg !0
@snd_hdac_bus_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5005
@snd_hdac_bus_init.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5014
@.str = private unnamed_addr constant [16 x i8] c"&bus->cmd_mutex\00", align 1, !dbg !5016
@snd_hdac_bus_init.__key.2 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5018
@.str.3 = private unnamed_addr constant [11 x i8] c"&bus->lock\00", align 1, !dbg !5020
@snd_hdac_bus_init.__key.4 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5025
@.str.5 = private unnamed_addr constant [14 x i8] c"&bus->rirb_wq\00", align 1, !dbg !5027
@__UNIQUE_ID___addressable_snd_hdac_bus_init335 = internal global ptr @snd_hdac_bus_init, section ".discard.addressable", align 8, !dbg !5032
@.str.6 = private unnamed_addr constant [21 x i8] c"sound/hda/hdac_bus.c\00", align 1, !dbg !5034
@__UNIQUE_ID___addressable_snd_hdac_bus_exit336 = internal global ptr @snd_hdac_bus_exit, section ".discard.addressable", align 8, !dbg !5039
@__UNIQUE_ID___addressable_snd_hdac_bus_exec_verb_unlocked337 = internal global ptr @snd_hdac_bus_exec_verb_unlocked, section ".discard.addressable", align 8, !dbg !5041
@.str.7 = private unnamed_addr constant [34 x i8] c"address 0x%x is already occupied\0A\00", align 1, !dbg !5043
@__UNIQUE_ID___addressable_snd_hdac_codec_link_up338 = internal global ptr @snd_hdac_codec_link_up, section ".discard.addressable", align 8, !dbg !5048
@__UNIQUE_ID___addressable_snd_hdac_codec_link_down339 = internal global ptr @snd_hdac_codec_link_down, section ".discard.addressable", align 8, !dbg !5050
@__tracepoint_hda_send_cmd = external dso_local global %struct.tracepoint, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.8 = private unnamed_addr constant [18 x i8] c"sound/hda/trace.h\00", align 1, !dbg !5052
@trace_hda_send_cmd.__UNIQUE_ID___addressable___SCK__tp_func_hda_send_cmd297 = internal global ptr @__SCK__tp_func_hda_send_cmd, section ".discard.addressable", align 8, !dbg !5058
@__SCK__tp_func_hda_send_cmd = external dso_local global %struct.static_call_key, align 8
@trace_hda_send_cmd.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace298 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !5087
@__SCK__preempt_schedule_notrace = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@__tracepoint_hda_get_response = external dso_local global %struct.tracepoint, align 8
@trace_hda_get_response.__UNIQUE_ID___addressable___SCK__tp_func_hda_get_response305 = internal global ptr @__SCK__tp_func_hda_get_response, section ".discard.addressable", align 8, !dbg !5089
@__SCK__tp_func_hda_get_response = external dso_local global %struct.static_call_key, align 8
@trace_hda_get_response.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace306 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !5119
@__tracepoint_hda_unsol_event = external dso_local global %struct.tracepoint, align 8
@trace_hda_unsol_event.__UNIQUE_ID___addressable___SCK__tp_func_hda_unsol_event313 = internal global ptr @__SCK__tp_func_hda_unsol_event, section ".discard.addressable", align 8, !dbg !5121
@__SCK__tp_func_hda_unsol_event = external dso_local global %struct.static_call_key, align 8
@trace_hda_unsol_event.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace314 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !5151
@system_wq = external dso_local global ptr, align 8
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID___addressable_snd_hdac_bus_init335, ptr @__UNIQUE_ID___addressable_snd_hdac_bus_exit336, ptr @__UNIQUE_ID___addressable_snd_hdac_bus_exec_verb_unlocked337, ptr @__UNIQUE_ID___addressable_snd_hdac_codec_link_up338, ptr @__UNIQUE_ID___addressable_snd_hdac_codec_link_down339, ptr @trace_hda_send_cmd.__UNIQUE_ID___addressable___SCK__tp_func_hda_send_cmd297, ptr @trace_hda_send_cmd.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace298, ptr @trace_hda_get_response.__UNIQUE_ID___addressable___SCK__tp_func_hda_get_response305, ptr @trace_hda_get_response.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace306, ptr @trace_hda_unsol_event.__UNIQUE_ID___addressable___SCK__tp_func_hda_unsol_event313, ptr @trace_hda_unsol_event.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace314], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_hdac_bus_init(ptr noundef %bus, ptr noundef %dev, ptr noundef %ops) #0 align 16 !dbg !5007 {
entry:
  %bus.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  %.compoundliteral12 = alloca %struct.spinlock, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5011, metadata !DIExpression()), !dbg !5163
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5012, metadata !DIExpression()), !dbg !5164
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !5013, metadata !DIExpression()), !dbg !5165
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5166
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 1320, i1 false), !dbg !5167
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5168
  %2 = load ptr, ptr %bus.addr, align 8, !dbg !5169
  %dev1 = getelementptr inbounds %struct.hdac_bus, ptr %2, i32 0, i32 0, !dbg !5170
  store ptr %1, ptr %dev1, align 8, !dbg !5171
  %3 = load ptr, ptr %ops.addr, align 8, !dbg !5172
  %tobool = icmp ne ptr %3, null, !dbg !5172
  br i1 %tobool, label %if.then, label %if.else, !dbg !5174

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %ops.addr, align 8, !dbg !5175
  %5 = load ptr, ptr %bus.addr, align 8, !dbg !5176
  %ops2 = getelementptr inbounds %struct.hdac_bus, ptr %5, i32 0, i32 1, !dbg !5177
  store ptr %4, ptr %ops2, align 8, !dbg !5178
  br label %if.end, !dbg !5176

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %bus.addr, align 8, !dbg !5179
  %ops3 = getelementptr inbounds %struct.hdac_bus, ptr %6, i32 0, i32 1, !dbg !5180
  store ptr @default_ops, ptr %ops3, align 8, !dbg !5181
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load ptr, ptr %bus.addr, align 8, !dbg !5182
  %dma_type = getelementptr inbounds %struct.hdac_bus, ptr %7, i32 0, i32 26, !dbg !5183
  store i32 2, ptr %dma_type, align 8, !dbg !5184
  %8 = load ptr, ptr %bus.addr, align 8, !dbg !5185
  %stream_list = getelementptr inbounds %struct.hdac_bus, ptr %8, i32 0, i32 27, !dbg !5186
  call void @INIT_LIST_HEAD(ptr noundef %stream_list) #14, !dbg !5187
  %9 = load ptr, ptr %bus.addr, align 8, !dbg !5188
  %codec_list = getelementptr inbounds %struct.hdac_bus, ptr %9, i32 0, i32 11, !dbg !5189
  call void @INIT_LIST_HEAD(ptr noundef %codec_list) #14, !dbg !5190
  br label %do.body, !dbg !5191

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5192

do.body4:                                         ; preds = %do.body
  %10 = load ptr, ptr %bus.addr, align 8, !dbg !5194
  %unsol_work = getelementptr inbounds %struct.hdac_bus, ptr %10, i32 0, i32 17, !dbg !5194
  call void @__init_work(ptr noundef %unsol_work, i32 noundef 0) #14, !dbg !5194
  %11 = load ptr, ptr %bus.addr, align 8, !dbg !5194
  %unsol_work5 = getelementptr inbounds %struct.hdac_bus, ptr %11, i32 0, i32 17, !dbg !5194
  %data = getelementptr inbounds %struct.work_struct, ptr %unsol_work5, i32 0, i32 0, !dbg !5194
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !5194
  store i64 68719476704, ptr %counter, align 8, !dbg !5194
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %data, ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !5194
  %12 = load ptr, ptr %bus.addr, align 8, !dbg !5194
  %unsol_work6 = getelementptr inbounds %struct.hdac_bus, ptr %12, i32 0, i32 17, !dbg !5194
  %entry7 = getelementptr inbounds %struct.work_struct, ptr %unsol_work6, i32 0, i32 1, !dbg !5194
  call void @INIT_LIST_HEAD(ptr noundef %entry7) #14, !dbg !5194
  %13 = load ptr, ptr %bus.addr, align 8, !dbg !5194
  %unsol_work8 = getelementptr inbounds %struct.hdac_bus, ptr %13, i32 0, i32 17, !dbg !5194
  %func = getelementptr inbounds %struct.work_struct, ptr %unsol_work8, i32 0, i32 2, !dbg !5194
  store ptr @snd_hdac_bus_process_unsol_events, ptr %func, align 8, !dbg !5194
  br label %do.end, !dbg !5194

do.end:                                           ; preds = %do.body4
  br label %do.end9, !dbg !5192

do.end9:                                          ; preds = %do.end
  br label %do.body10, !dbg !5196

do.body10:                                        ; preds = %do.end9
  %14 = load ptr, ptr %bus.addr, align 8, !dbg !5197
  %reg_lock = getelementptr inbounds %struct.hdac_bus, ptr %14, i32 0, i32 32, !dbg !5197
  %call = call ptr @spinlock_check(ptr noundef %reg_lock) #14, !dbg !5197
  %15 = load ptr, ptr %bus.addr, align 8, !dbg !5197
  %reg_lock11 = getelementptr inbounds %struct.hdac_bus, ptr %15, i32 0, i32 32, !dbg !5197
  %16 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral12, i32 0, i32 0, !dbg !5197
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %16, i32 0, i32 0, !dbg !5197
  %17 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !5197
  %counter13 = getelementptr inbounds %struct.atomic_t, ptr %17, i32 0, i32 0, !dbg !5197
  store i32 0, ptr %counter13, align 4, !dbg !5197
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %reg_lock11, ptr align 4 %.compoundliteral12, i64 4, i1 false), !dbg !5197
  br label %do.end14, !dbg !5197

do.end14:                                         ; preds = %do.body10
  br label %do.body15, !dbg !5199

do.body15:                                        ; preds = %do.end14
  %18 = load ptr, ptr %bus.addr, align 8, !dbg !5200
  %cmd_mutex = getelementptr inbounds %struct.hdac_bus, ptr %18, i32 0, i32 33, !dbg !5200
  call void @__mutex_init(ptr noundef %cmd_mutex, ptr noundef @.str, ptr noundef @snd_hdac_bus_init.__key.1) #14, !dbg !5200
  br label %do.end16, !dbg !5200

do.end16:                                         ; preds = %do.body15
  br label %do.body17, !dbg !5202

do.body17:                                        ; preds = %do.end16
  %19 = load ptr, ptr %bus.addr, align 8, !dbg !5203
  %lock = getelementptr inbounds %struct.hdac_bus, ptr %19, i32 0, i32 34, !dbg !5203
  call void @__mutex_init(ptr noundef %lock, ptr noundef @.str.3, ptr noundef @snd_hdac_bus_init.__key.2) #14, !dbg !5203
  br label %do.end18, !dbg !5203

do.end18:                                         ; preds = %do.body17
  %20 = load ptr, ptr %bus.addr, align 8, !dbg !5205
  %hlink_list = getelementptr inbounds %struct.hdac_bus, ptr %20, i32 0, i32 40, !dbg !5206
  call void @INIT_LIST_HEAD(ptr noundef %hlink_list) #14, !dbg !5207
  br label %do.body19, !dbg !5208

do.body19:                                        ; preds = %do.end18
  %21 = load ptr, ptr %bus.addr, align 8, !dbg !5209
  %rirb_wq = getelementptr inbounds %struct.hdac_bus, ptr %21, i32 0, i32 23, !dbg !5209
  call void @__init_waitqueue_head(ptr noundef %rirb_wq, ptr noundef @.str.5, ptr noundef @snd_hdac_bus_init.__key.4) #14, !dbg !5209
  br label %do.end20, !dbg !5209

do.end20:                                         ; preds = %do.body19
  %22 = load ptr, ptr %bus.addr, align 8, !dbg !5211
  %irq = getelementptr inbounds %struct.hdac_bus, ptr %22, i32 0, i32 5, !dbg !5212
  store i32 -1, ptr %irq, align 8, !dbg !5213
  %23 = load ptr, ptr %bus.addr, align 8, !dbg !5214
  %sdo_limit = getelementptr inbounds %struct.hdac_bus, ptr %23, i32 0, i32 42, !dbg !5215
  store i32 8, ptr %sdo_limit, align 4, !dbg !5216
  ret i32 0, !dbg !5217
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #3 align 16 !dbg !5218 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5223, metadata !DIExpression()), !dbg !5224
  br label %do.body, !dbg !5225

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5226

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5228

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5226

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5230
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5230
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5230
  store volatile ptr %0, ptr %next, align 8, !dbg !5230
  br label %do.end3, !dbg !5230

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5226

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !5232

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5233

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5235

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5233

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5237
  %3 = load ptr, ptr %list.addr, align 8, !dbg !5237
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5237
  store volatile ptr %2, ptr %prev, align 8, !dbg !5237
  br label %do.end9, !dbg !5237

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5233

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !5239
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__init_work(ptr noundef %work, i32 noundef %onstack) #3 align 16 !dbg !5240 {
entry:
  %work.addr = alloca ptr, align 8
  %onstack.addr = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !5244, metadata !DIExpression()), !dbg !5246
  store i32 %onstack, ptr %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %onstack.addr, metadata !5245, metadata !DIExpression()), !dbg !5247
  ret void, !dbg !5248
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_hdac_bus_process_unsol_events(ptr noundef %work) #0 align 16 !dbg !5249 {
entry:
  %work.addr = alloca ptr, align 8
  %bus = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %codec = alloca ptr, align 8
  %drv = alloca ptr, align 8
  %rp = alloca i32, align 4
  %caddr = alloca i32, align 4
  %res = alloca i32, align 4
  %__mptr15 = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !5251, metadata !DIExpression()), !dbg !5263
  call void @llvm.lifetime.start.p0(i64 8, ptr %bus) #15, !dbg !5264
  call void @llvm.dbg.declare(metadata ptr %bus, metadata !5252, metadata !DIExpression()), !dbg !5265
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5266
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5253, metadata !DIExpression()), !dbg !5266
  %0 = load ptr, ptr %work.addr, align 8, !dbg !5266
  store ptr %0, ptr %__mptr, align 8, !dbg !5266
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5266
  %add.ptr = getelementptr i8, ptr %1, i64 -760, !dbg !5266
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5266
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5267
  %2 = load ptr, ptr %tmp, align 8, !dbg !5266
  store ptr %2, ptr %bus, align 8, !dbg !5265
  call void @llvm.lifetime.start.p0(i64 8, ptr %codec) #15, !dbg !5268
  call void @llvm.dbg.declare(metadata ptr %codec, metadata !5255, metadata !DIExpression()), !dbg !5269
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv) #15, !dbg !5270
  call void @llvm.dbg.declare(metadata ptr %drv, metadata !5256, metadata !DIExpression()), !dbg !5271
  call void @llvm.lifetime.start.p0(i64 4, ptr %rp) #15, !dbg !5272
  call void @llvm.dbg.declare(metadata ptr %rp, metadata !5257, metadata !DIExpression()), !dbg !5273
  call void @llvm.lifetime.start.p0(i64 4, ptr %caddr) #15, !dbg !5272
  call void @llvm.dbg.declare(metadata ptr %caddr, metadata !5258, metadata !DIExpression()), !dbg !5274
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #15, !dbg !5272
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5259, metadata !DIExpression()), !dbg !5275
  %3 = load ptr, ptr %bus, align 8, !dbg !5276
  %reg_lock = getelementptr inbounds %struct.hdac_bus, ptr %3, i32 0, i32 32, !dbg !5277
  call void @spin_lock_irq(ptr noundef %reg_lock) #14, !dbg !5278
  br label %while.cond, !dbg !5279

while.cond:                                       ; preds = %if.end21, %if.then12, %if.then, %entry
  %4 = load ptr, ptr %bus, align 8, !dbg !5280
  %unsol_rp = getelementptr inbounds %struct.hdac_bus, ptr %4, i32 0, i32 15, !dbg !5281
  %5 = load i32, ptr %unsol_rp, align 8, !dbg !5281
  %6 = load ptr, ptr %bus, align 8, !dbg !5282
  %unsol_wp = getelementptr inbounds %struct.hdac_bus, ptr %6, i32 0, i32 16, !dbg !5283
  %7 = load i32, ptr %unsol_wp, align 4, !dbg !5283
  %cmp = icmp ne i32 %5, %7, !dbg !5284
  br i1 %cmp, label %while.body, label %while.end, !dbg !5279

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %bus, align 8, !dbg !5285
  %unsol_rp1 = getelementptr inbounds %struct.hdac_bus, ptr %8, i32 0, i32 15, !dbg !5286
  %9 = load i32, ptr %unsol_rp1, align 8, !dbg !5286
  %add = add i32 %9, 1, !dbg !5287
  %rem = urem i32 %add, 64, !dbg !5288
  store i32 %rem, ptr %rp, align 4, !dbg !5289
  %10 = load i32, ptr %rp, align 4, !dbg !5290
  %11 = load ptr, ptr %bus, align 8, !dbg !5291
  %unsol_rp2 = getelementptr inbounds %struct.hdac_bus, ptr %11, i32 0, i32 15, !dbg !5292
  store i32 %10, ptr %unsol_rp2, align 8, !dbg !5293
  %12 = load i32, ptr %rp, align 4, !dbg !5294
  %shl = shl i32 %12, 1, !dbg !5294
  store i32 %shl, ptr %rp, align 4, !dbg !5294
  %13 = load ptr, ptr %bus, align 8, !dbg !5295
  %unsol_queue = getelementptr inbounds %struct.hdac_bus, ptr %13, i32 0, i32 14, !dbg !5296
  %14 = load i32, ptr %rp, align 4, !dbg !5297
  %idxprom = zext i32 %14 to i64, !dbg !5295
  %arrayidx = getelementptr [128 x i32], ptr %unsol_queue, i64 0, i64 %idxprom, !dbg !5295
  %15 = load i32, ptr %arrayidx, align 4, !dbg !5295
  store i32 %15, ptr %res, align 4, !dbg !5298
  %16 = load ptr, ptr %bus, align 8, !dbg !5299
  %unsol_queue3 = getelementptr inbounds %struct.hdac_bus, ptr %16, i32 0, i32 14, !dbg !5300
  %17 = load i32, ptr %rp, align 4, !dbg !5301
  %add4 = add i32 %17, 1, !dbg !5302
  %idxprom5 = zext i32 %add4 to i64, !dbg !5299
  %arrayidx6 = getelementptr [128 x i32], ptr %unsol_queue3, i64 0, i64 %idxprom5, !dbg !5299
  %18 = load i32, ptr %arrayidx6, align 4, !dbg !5299
  store i32 %18, ptr %caddr, align 4, !dbg !5303
  %19 = load i32, ptr %caddr, align 4, !dbg !5304
  %and = and i32 %19, 16, !dbg !5306
  %tobool = icmp ne i32 %and, 0, !dbg !5306
  br i1 %tobool, label %if.end, label %if.then, !dbg !5307

if.then:                                          ; preds = %while.body
  br label %while.cond, !dbg !5308, !llvm.loop !5309

if.end:                                           ; preds = %while.body
  %20 = load ptr, ptr %bus, align 8, !dbg !5313
  %caddr_tbl = getelementptr inbounds %struct.hdac_bus, ptr %20, i32 0, i32 13, !dbg !5314
  %21 = load i32, ptr %caddr, align 4, !dbg !5315
  %and7 = and i32 %21, 15, !dbg !5316
  %idxprom8 = zext i32 %and7 to i64, !dbg !5313
  %arrayidx9 = getelementptr [16 x ptr], ptr %caddr_tbl, i64 0, i64 %idxprom8, !dbg !5313
  %22 = load ptr, ptr %arrayidx9, align 8, !dbg !5313
  store ptr %22, ptr %codec, align 8, !dbg !5317
  %23 = load ptr, ptr %codec, align 8, !dbg !5318
  %tobool10 = icmp ne ptr %23, null, !dbg !5318
  br i1 %tobool10, label %lor.lhs.false, label %if.then12, !dbg !5320

lor.lhs.false:                                    ; preds = %if.end
  %24 = load ptr, ptr %codec, align 8, !dbg !5321
  %registered = getelementptr inbounds %struct.hdac_device, ptr %24, i32 0, i32 26, !dbg !5322
  %bf.load = load i8, ptr %registered, align 8, !dbg !5322
  %bf.lshr = lshr i8 %bf.load, 3, !dbg !5322
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5322
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5322
  %tobool11 = icmp ne i32 %bf.cast, 0, !dbg !5321
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !5323

if.then12:                                        ; preds = %lor.lhs.false, %if.end
  br label %while.cond, !dbg !5324, !llvm.loop !5309

if.end13:                                         ; preds = %lor.lhs.false
  %25 = load ptr, ptr %bus, align 8, !dbg !5325
  %reg_lock14 = getelementptr inbounds %struct.hdac_bus, ptr %25, i32 0, i32 32, !dbg !5326
  call void @spin_unlock_irq(ptr noundef %reg_lock14) #14, !dbg !5327
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr15) #15, !dbg !5328
  call void @llvm.dbg.declare(metadata ptr %__mptr15, metadata !5260, metadata !DIExpression()), !dbg !5328
  %26 = load ptr, ptr %codec, align 8, !dbg !5328
  %dev = getelementptr inbounds %struct.hdac_device, ptr %26, i32 0, i32 0, !dbg !5328
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6, !dbg !5328
  %27 = load ptr, ptr %driver, align 8, !dbg !5328
  store ptr %27, ptr %__mptr15, align 8, !dbg !5328
  %28 = load ptr, ptr %__mptr15, align 8, !dbg !5328
  %add.ptr17 = getelementptr i8, ptr %28, i64 0, !dbg !5328
  store ptr %add.ptr17, ptr %tmp16, align 8, !dbg !5328
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr15) #15, !dbg !5329
  %29 = load ptr, ptr %tmp16, align 8, !dbg !5328
  store ptr %29, ptr %drv, align 8, !dbg !5330
  %30 = load ptr, ptr %drv, align 8, !dbg !5331
  %unsol_event = getelementptr inbounds %struct.hdac_driver, ptr %30, i32 0, i32 4, !dbg !5333
  %31 = load ptr, ptr %unsol_event, align 8, !dbg !5333
  %tobool18 = icmp ne ptr %31, null, !dbg !5331
  br i1 %tobool18, label %if.then19, label %if.end21, !dbg !5334

if.then19:                                        ; preds = %if.end13
  %32 = load ptr, ptr %drv, align 8, !dbg !5335
  %unsol_event20 = getelementptr inbounds %struct.hdac_driver, ptr %32, i32 0, i32 4, !dbg !5336
  %33 = load ptr, ptr %unsol_event20, align 8, !dbg !5336
  %34 = load ptr, ptr %codec, align 8, !dbg !5337
  %35 = load i32, ptr %res, align 4, !dbg !5338
  call void %33(ptr noundef %34, i32 noundef %35) #14, !dbg !5335
  br label %if.end21, !dbg !5335

if.end21:                                         ; preds = %if.then19, %if.end13
  %36 = load ptr, ptr %bus, align 8, !dbg !5339
  %reg_lock22 = getelementptr inbounds %struct.hdac_bus, ptr %36, i32 0, i32 32, !dbg !5340
  call void @spin_lock_irq(ptr noundef %reg_lock22) #14, !dbg !5341
  br label %while.cond, !dbg !5279, !llvm.loop !5309

while.end:                                        ; preds = %while.cond
  %37 = load ptr, ptr %bus, align 8, !dbg !5342
  %reg_lock23 = getelementptr inbounds %struct.hdac_bus, ptr %37, i32 0, i32 32, !dbg !5343
  call void @spin_unlock_irq(ptr noundef %reg_lock23) #14, !dbg !5344
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #15, !dbg !5345
  call void @llvm.lifetime.end.p0(i64 4, ptr %caddr) #15, !dbg !5345
  call void @llvm.lifetime.end.p0(i64 4, ptr %rp) #15, !dbg !5345
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv) #15, !dbg !5345
  call void @llvm.lifetime.end.p0(i64 8, ptr %codec) #15, !dbg !5345
  call void @llvm.lifetime.end.p0(i64 8, ptr %bus) #15, !dbg !5345
  ret void, !dbg !5345
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #5 align 16 !dbg !5346 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5352, metadata !DIExpression()), !dbg !5353
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5354
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5355
  ret ptr %1, !dbg !5356
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5357 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5362 dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_hdac_bus_exit(ptr noundef %bus) #0 align 16 !dbg !5366 {
entry:
  %bus.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on25 = alloca i32, align 4
  %__flags44 = alloca i32, align 4
  %tmp57 = alloca i64, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5370, metadata !DIExpression()), !dbg !5381
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5382
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5371, metadata !DIExpression()), !dbg !5382
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5382
  %stream_list = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 27, !dbg !5382
  %call = call i32 @list_empty(ptr noundef %stream_list) #14, !dbg !5382
  %tobool = icmp ne i32 %call, 0, !dbg !5382
  %lnot = xor i1 %tobool, true, !dbg !5382
  %lnot1 = xor i1 %lnot, true, !dbg !5382
  %lnot2 = xor i1 %lnot1, true, !dbg !5382
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5382
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5382
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !5383
  %tobool3 = icmp ne i32 %1, 0, !dbg !5383
  %lnot4 = xor i1 %tobool3, true, !dbg !5383
  %lnot6 = xor i1 %lnot4, true, !dbg !5383
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5383
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5383
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5383
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5383
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5382

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5383

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !5384
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5373, metadata !DIExpression()), !dbg !5384
  store i32 2305, ptr %__flags, align 4, !dbg !5384
  br label %do.body9, !dbg !5384

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !5385

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !5385

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !5384

do.body10:                                        ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !5387
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, i32 72, i32 %2, i64 12) #15, !dbg !5387, !srcloc !5389
  br label %do.cond11, !dbg !5387

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5387

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !5384

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !5390

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5390

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !5383
  br label %do.cond16, !dbg !5384

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !5384

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !5384

if.end:                                           ; preds = %do.end17, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5382
  %tobool18 = icmp ne i32 %3, 0, !dbg !5382
  %lnot19 = xor i1 %tobool18, true, !dbg !5382
  %lnot21 = xor i1 %lnot19, true, !dbg !5382
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !5382
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !5382
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !5382
  store i64 %expval24, ptr %tmp, align 8, !dbg !5383
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5392
  %4 = load i64, ptr %tmp, align 8, !dbg !5382
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on25) #15, !dbg !5393
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on25, metadata !5376, metadata !DIExpression()), !dbg !5393
  %5 = load ptr, ptr %bus.addr, align 8, !dbg !5393
  %codec_list = getelementptr inbounds %struct.hdac_bus, ptr %5, i32 0, i32 11, !dbg !5393
  %call26 = call i32 @list_empty(ptr noundef %codec_list) #14, !dbg !5393
  %tobool27 = icmp ne i32 %call26, 0, !dbg !5393
  %lnot28 = xor i1 %tobool27, true, !dbg !5393
  %lnot30 = xor i1 %lnot28, true, !dbg !5393
  %lnot32 = xor i1 %lnot30, true, !dbg !5393
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !5393
  store i32 %lnot.ext33, ptr %__ret_warn_on25, align 4, !dbg !5393
  %6 = load i32, ptr %__ret_warn_on25, align 4, !dbg !5394
  %tobool34 = icmp ne i32 %6, 0, !dbg !5394
  %lnot35 = xor i1 %tobool34, true, !dbg !5394
  %lnot37 = xor i1 %lnot35, true, !dbg !5394
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !5394
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !5394
  %expval40 = call i64 @llvm.expect.i64(i64 %conv39, i64 0), !dbg !5394
  %tobool41 = icmp ne i64 %expval40, 0, !dbg !5394
  br i1 %tobool41, label %if.then42, label %if.end56, !dbg !5393

if.then42:                                        ; preds = %if.end
  br label %do.body43, !dbg !5394

do.body43:                                        ; preds = %if.then42
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags44) #15, !dbg !5395
  call void @llvm.dbg.declare(metadata ptr %__flags44, metadata !5378, metadata !DIExpression()), !dbg !5395
  store i32 2305, ptr %__flags44, align 4, !dbg !5395
  br label %do.body45, !dbg !5395

do.body45:                                        ; preds = %do.body43
  br label %do.cond46, !dbg !5396

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !5396

do.end47:                                         ; preds = %do.cond46
  br label %do.body48, !dbg !5395

do.body48:                                        ; preds = %do.end47
  %7 = load i32, ptr %__flags44, align 4, !dbg !5398
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, i32 73, i32 %7, i64 12) #15, !dbg !5398, !srcloc !5400
  br label %do.cond49, !dbg !5398

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !5398

do.end50:                                         ; preds = %do.cond49
  br label %do.body51, !dbg !5395

do.body51:                                        ; preds = %do.end50
  br label %do.cond52, !dbg !5401

do.cond52:                                        ; preds = %do.body51
  br label %do.end53, !dbg !5401

do.end53:                                         ; preds = %do.cond52
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags44) #15, !dbg !5394
  br label %do.cond54, !dbg !5395

do.cond54:                                        ; preds = %do.end53
  br label %do.end55, !dbg !5395

do.end55:                                         ; preds = %do.cond54
  br label %if.end56, !dbg !5395

if.end56:                                         ; preds = %do.end55, %if.end
  %8 = load i32, ptr %__ret_warn_on25, align 4, !dbg !5393
  %tobool58 = icmp ne i32 %8, 0, !dbg !5393
  %lnot59 = xor i1 %tobool58, true, !dbg !5393
  %lnot61 = xor i1 %lnot59, true, !dbg !5393
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !5393
  %conv63 = sext i32 %lnot.ext62 to i64, !dbg !5393
  %expval64 = call i64 @llvm.expect.i64(i64 %conv63, i64 0), !dbg !5393
  store i64 %expval64, ptr %tmp57, align 8, !dbg !5394
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on25) #15, !dbg !5403
  %9 = load i64, ptr %tmp57, align 8, !dbg !5393
  %10 = load ptr, ptr %bus.addr, align 8, !dbg !5404
  %unsol_work = getelementptr inbounds %struct.hdac_bus, ptr %10, i32 0, i32 17, !dbg !5405
  %call65 = call zeroext i1 @cancel_work_sync(ptr noundef %unsol_work) #14, !dbg !5406
  ret void, !dbg !5407
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #3 align 16 !dbg !5408 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5414, metadata !DIExpression()), !dbg !5415
  br label %do.body, !dbg !5416

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5418

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !5416
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !5416
  %1 = load volatile ptr, ptr %next, align 8, !dbg !5416
  store ptr %1, ptr %tmp, align 8, !dbg !5418
  %2 = load ptr, ptr %tmp, align 8, !dbg !5416
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5420
  %cmp = icmp eq ptr %2, %3, !dbg !5421
  %conv = zext i1 %cmp to i32, !dbg !5421
  ret i32 %conv, !dbg !5422
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5423 dso_local zeroext i1 @cancel_work_sync(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_hdac_bus_exec_verb(ptr noundef %bus, i32 noundef %addr, i32 noundef %cmd, ptr noundef %res) #0 align 16 !dbg !5426 {
entry:
  %bus.addr = alloca ptr, align 8
  %addr.addr = alloca i32, align 4
  %cmd.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5430, metadata !DIExpression()), !dbg !5435
  store i32 %addr, ptr %addr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5431, metadata !DIExpression()), !dbg !5436
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5432, metadata !DIExpression()), !dbg !5437
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5433, metadata !DIExpression()), !dbg !5438
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !5439
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5434, metadata !DIExpression()), !dbg !5440
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5441
  %cmd_mutex = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 33, !dbg !5442
  call void @mutex_lock(ptr noundef %cmd_mutex) #14, !dbg !5443
  %1 = load ptr, ptr %bus.addr, align 8, !dbg !5444
  %2 = load i32, ptr %addr.addr, align 4, !dbg !5445
  %3 = load i32, ptr %cmd.addr, align 4, !dbg !5446
  %4 = load ptr, ptr %res.addr, align 8, !dbg !5447
  %call = call i32 @snd_hdac_bus_exec_verb_unlocked(ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #14, !dbg !5448
  store i32 %call, ptr %err, align 4, !dbg !5449
  %5 = load ptr, ptr %bus.addr, align 8, !dbg !5450
  %cmd_mutex1 = getelementptr inbounds %struct.hdac_bus, ptr %5, i32 0, i32 33, !dbg !5451
  call void @mutex_unlock(ptr noundef %cmd_mutex1) #14, !dbg !5452
  %6 = load i32, ptr %err, align 4, !dbg !5453
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !5454
  ret i32 %6, !dbg !5455
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5456 dso_local void @mutex_lock(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_hdac_bus_exec_verb_unlocked(ptr noundef %bus, i32 noundef %addr, i32 noundef %cmd, ptr noundef %res) #0 align 16 !dbg !5459 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca ptr, align 8
  %addr.addr = alloca i32, align 4
  %cmd.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5461, metadata !DIExpression()), !dbg !5467
  store i32 %addr, ptr %addr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5462, metadata !DIExpression()), !dbg !5468
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5463, metadata !DIExpression()), !dbg !5469
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5464, metadata !DIExpression()), !dbg !5470
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #15, !dbg !5471
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !5465, metadata !DIExpression()), !dbg !5472
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !5473
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5466, metadata !DIExpression()), !dbg !5474
  %0 = load i32, ptr %cmd.addr, align 4, !dbg !5475
  %cmp = icmp eq i32 %0, -1, !dbg !5477
  br i1 %cmp, label %if.then, label %if.end, !dbg !5478

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5479
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5479

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %res.addr, align 8, !dbg !5480
  %tobool = icmp ne ptr %1, null, !dbg !5480
  br i1 %tobool, label %if.then1, label %if.else, !dbg !5482

if.then1:                                         ; preds = %if.end
  %2 = load ptr, ptr %res.addr, align 8, !dbg !5483
  store i32 -1, ptr %2, align 4, !dbg !5484
  br label %if.end4, !dbg !5485

if.else:                                          ; preds = %if.end
  %3 = load ptr, ptr %bus.addr, align 8, !dbg !5486
  %sync_write = getelementptr inbounds %struct.hdac_bus, ptr %3, i32 0, i32 28, !dbg !5488
  %bf.load = load i16, ptr %sync_write, align 8, !dbg !5488
  %bf.lshr = lshr i16 %bf.load, 2, !dbg !5488
  %bf.clear = and i16 %bf.lshr, 1, !dbg !5488
  %bf.cast = trunc i16 %bf.clear to i1, !dbg !5488
  br i1 %bf.cast, label %if.then2, label %if.end3, !dbg !5489

if.then2:                                         ; preds = %if.else
  store ptr %tmp, ptr %res.addr, align 8, !dbg !5490
  br label %if.end3, !dbg !5491

if.end3:                                          ; preds = %if.then2, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end3, %if.then1
  br label %for.cond, !dbg !5492

for.cond:                                         ; preds = %if.end12, %if.end4
  %4 = load ptr, ptr %bus.addr, align 8, !dbg !5493
  %5 = load i32, ptr %cmd.addr, align 4, !dbg !5497
  call void @trace_hda_send_cmd(ptr noundef %4, i32 noundef %5) #14, !dbg !5498
  %6 = load ptr, ptr %bus.addr, align 8, !dbg !5499
  %ops = getelementptr inbounds %struct.hdac_bus, ptr %6, i32 0, i32 1, !dbg !5500
  %7 = load ptr, ptr %ops, align 8, !dbg !5500
  %command = getelementptr inbounds %struct.hdac_bus_ops, ptr %7, i32 0, i32 0, !dbg !5501
  %8 = load ptr, ptr %command, align 8, !dbg !5501
  %9 = load ptr, ptr %bus.addr, align 8, !dbg !5502
  %10 = load i32, ptr %cmd.addr, align 4, !dbg !5503
  %call = call i32 %8(ptr noundef %9, i32 noundef %10) #14, !dbg !5499
  store i32 %call, ptr %err, align 4, !dbg !5504
  %11 = load i32, ptr %err, align 4, !dbg !5505
  %cmp5 = icmp ne i32 %11, -11, !dbg !5507
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !5508

if.then6:                                         ; preds = %for.cond
  br label %for.end, !dbg !5509

if.end7:                                          ; preds = %for.cond
  %12 = load ptr, ptr %bus.addr, align 8, !dbg !5510
  %ops8 = getelementptr inbounds %struct.hdac_bus, ptr %12, i32 0, i32 1, !dbg !5511
  %13 = load ptr, ptr %ops8, align 8, !dbg !5511
  %get_response = getelementptr inbounds %struct.hdac_bus_ops, ptr %13, i32 0, i32 1, !dbg !5512
  %14 = load ptr, ptr %get_response, align 8, !dbg !5512
  %15 = load ptr, ptr %bus.addr, align 8, !dbg !5513
  %16 = load i32, ptr %addr.addr, align 4, !dbg !5514
  %call9 = call i32 %14(ptr noundef %15, i32 noundef %16, ptr noundef %tmp) #14, !dbg !5510
  store i32 %call9, ptr %err, align 4, !dbg !5515
  %17 = load i32, ptr %err, align 4, !dbg !5516
  %tobool10 = icmp ne i32 %17, 0, !dbg !5516
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !5518

if.then11:                                        ; preds = %if.end7
  br label %for.end, !dbg !5519

if.end12:                                         ; preds = %if.end7
  br label %for.cond, !dbg !5520, !llvm.loop !5521

for.end:                                          ; preds = %if.then11, %if.then6
  %18 = load i32, ptr %err, align 4, !dbg !5524
  %tobool13 = icmp ne i32 %18, 0, !dbg !5524
  br i1 %tobool13, label %if.end19, label %land.lhs.true, !dbg !5526

land.lhs.true:                                    ; preds = %for.end
  %19 = load ptr, ptr %res.addr, align 8, !dbg !5527
  %tobool14 = icmp ne ptr %19, null, !dbg !5527
  br i1 %tobool14, label %if.then15, label %if.end19, !dbg !5528

if.then15:                                        ; preds = %land.lhs.true
  %20 = load ptr, ptr %bus.addr, align 8, !dbg !5529
  %ops16 = getelementptr inbounds %struct.hdac_bus, ptr %20, i32 0, i32 1, !dbg !5531
  %21 = load ptr, ptr %ops16, align 8, !dbg !5531
  %get_response17 = getelementptr inbounds %struct.hdac_bus_ops, ptr %21, i32 0, i32 1, !dbg !5532
  %22 = load ptr, ptr %get_response17, align 8, !dbg !5532
  %23 = load ptr, ptr %bus.addr, align 8, !dbg !5533
  %24 = load i32, ptr %addr.addr, align 4, !dbg !5534
  %25 = load ptr, ptr %res.addr, align 8, !dbg !5535
  %call18 = call i32 %22(ptr noundef %23, i32 noundef %24, ptr noundef %25) #14, !dbg !5529
  store i32 %call18, ptr %err, align 4, !dbg !5536
  %26 = load ptr, ptr %bus.addr, align 8, !dbg !5537
  %27 = load i32, ptr %addr.addr, align 4, !dbg !5538
  %28 = load ptr, ptr %res.addr, align 8, !dbg !5539
  %29 = load i32, ptr %28, align 4, !dbg !5540
  call void @trace_hda_get_response(ptr noundef %26, i32 noundef %27, i32 noundef %29) #14, !dbg !5541
  br label %if.end19, !dbg !5542

if.end19:                                         ; preds = %if.then15, %land.lhs.true, %for.end
  %30 = load i32, ptr %err, align 4, !dbg !5543
  store i32 %30, ptr %retval, align 4, !dbg !5544
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5544

cleanup:                                          ; preds = %if.end19, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !5545
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #15, !dbg !5545
  %31 = load i32, ptr %retval, align 4, !dbg !5545
  ret i32 %31, !dbg !5545
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5546 dso_local void @mutex_unlock(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_hda_send_cmd(ptr noundef %bus, i32 noundef %cmd) #3 align 16 !dbg !5060 {
entry:
  %bus.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %__idx = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp23 = alloca i64, align 8
  %it_func_ptr = alloca ptr, align 8
  %__data = alloca ptr, align 8
  %__UNIQUE_ID_rcu295 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5064, metadata !DIExpression()), !dbg !5547
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5065, metadata !DIExpression()), !dbg !5547
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hda_send_cmd, i32 0, i32 1)) #14, !dbg !5548
  br i1 %call, label %if.then, label %if.end68, !dbg !5547

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5548

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #15, !dbg !5549
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !5066, metadata !DIExpression()), !dbg !5549
  store i32 0, ptr %__idx, align 4, !dbg !5549
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #15, !dbg !5550
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5069, metadata !DIExpression()), !dbg !5550
  br label %do.body1, !dbg !5550

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !5551
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5072, metadata !DIExpression()), !dbg !5551
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5551
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5551
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !5550
  br label %do.cond, !dbg !5551

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5551

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #15, !dbg !5552
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5074, metadata !DIExpression()), !dbg !5552
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 2)) #15, !dbg !5552, !srcloc !5553
  store i32 %1, ptr %pfo_val__, align 4, !dbg !5552
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !5552
  %conv = zext i32 %2 to i64, !dbg !5552
  %conv2 = trunc i64 %conv to i32, !dbg !5552
  store i32 %conv2, ptr %tmp, align 4, !dbg !5552
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #15, !dbg !5550
  %3 = load i32, ptr %tmp, align 4, !dbg !5552
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !5550
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !5550
  store i32 %4, ptr %tmp3, align 4, !dbg !5550
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #15, !dbg !5554
  %5 = load i32, ptr %tmp3, align 4, !dbg !5550
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #14, !dbg !5554
  br i1 %call4, label %if.end, label %if.then5, !dbg !5549

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5554

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5555
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5076, metadata !DIExpression()), !dbg !5555
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !5555
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !5556
  %tobool = icmp ne i32 %6, 0, !dbg !5556
  %lnot = xor i1 %tobool, true, !dbg !5556
  %lnot6 = xor i1 %lnot, true, !dbg !5556
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !5556
  %conv7 = sext i32 %lnot.ext to i64, !dbg !5556
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !5556
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5556
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !5555

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !5556

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !5557
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5079, metadata !DIExpression()), !dbg !5557
  store i32 2307, ptr %__flags, align 4, !dbg !5557
  br label %do.body11, !dbg !5557

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !5558

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5558

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !5557

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !5560
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.8, i32 31, i32 %7, i64 12) #15, !dbg !5560, !srcloc !5562
  br label %do.cond15, !dbg !5560

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5560

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !5557

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !5563

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !5563

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !5556
  br label %do.cond20, !dbg !5557

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !5557

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !5557

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !5555
  %tobool24 = icmp ne i32 %8, 0, !dbg !5555
  %lnot25 = xor i1 %tobool24, true, !dbg !5555
  %lnot27 = xor i1 %lnot25, true, !dbg !5555
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !5555
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !5555
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !5555
  store i64 %expval30, ptr %tmp23, align 8, !dbg !5556
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5565
  %9 = load i64, ptr %tmp23, align 8, !dbg !5555
  %tobool31 = icmp ne i64 %9, 0, !dbg !5565
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !5549

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5565

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !5549

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #14, !dbg !5566
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !5566, !srcloc !5568
  br label %do.cond35, !dbg !5566

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !5566

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !5549

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #15, !dbg !5569
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !5082, metadata !DIExpression()), !dbg !5569
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #15, !dbg !5569
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !5084, metadata !DIExpression()), !dbg !5569
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu295) #15, !dbg !5570
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu295, metadata !5085, metadata !DIExpression()), !dbg !5570
  br label %do.body38, !dbg !5571

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !5573

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !5573

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hda_send_cmd, i32 0, i32 8), align 8, !dbg !5571
  store ptr %10, ptr %tmp41, align 8, !dbg !5573
  %11 = load ptr, ptr %tmp41, align 8, !dbg !5571
  store ptr %11, ptr %__UNIQUE_ID_rcu295, align 8, !dbg !5570
  %12 = load ptr, ptr %__UNIQUE_ID_rcu295, align 8, !dbg !5570
  store ptr %12, ptr %tmp42, align 8, !dbg !5570
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu295) #15, !dbg !5569
  %13 = load ptr, ptr %tmp42, align 8, !dbg !5570
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !5569
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !5575
  %tobool43 = icmp ne ptr %14, null, !dbg !5575
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !5569

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !5577
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !5577
  %16 = load ptr, ptr %data, align 8, !dbg !5577
  store ptr %16, ptr %__data, align 8, !dbg !5577
  store ptr @__SCT__tp_func_hda_send_cmd, ptr %tmp45, align 8, !dbg !5579
  %17 = load ptr, ptr %tmp45, align 8, !dbg !5579
  %18 = load ptr, ptr %__data, align 8, !dbg !5577
  %19 = load ptr, ptr %bus.addr, align 8, !dbg !5577
  %20 = load i32, ptr %cmd.addr, align 4, !dbg !5577
  %call46 = call i32 %17(ptr noundef %18, ptr noundef %19, i32 noundef %20) #14, !dbg !5577
  br label %if.end47, !dbg !5577

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #15, !dbg !5549
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #15, !dbg !5549
  br label %do.cond48, !dbg !5569

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !5569

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !5549

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !5581, !srcloc !5583
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #14, !dbg !5584
  %lnot52 = xor i1 %call51, true, !dbg !5584
  %lnot54 = xor i1 %lnot52, true, !dbg !5584
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !5584
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !5584
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !5584
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !5584
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !5581

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !5584

do.body60:                                        ; preds = %if.then59
  %21 = call i64 @llvm.read_register.i64(metadata !5153), !dbg !5586
  %22 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %21) #15, !dbg !5586, !srcloc !5588
  call void @llvm.write_register.i64(metadata !5153, i64 %22), !dbg !5586
  br label %do.cond61, !dbg !5586

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !5586

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !5586

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !5581

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !5581

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5548
  br label %cleanup, !dbg !5548

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #15, !dbg !5548
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !5549

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !5549

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !5547

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_hda_get_response(ptr noundef %bus, i32 noundef %addr, i32 noundef %res) #3 align 16 !dbg !5091 {
entry:
  %bus.addr = alloca ptr, align 8
  %addr.addr = alloca i32, align 4
  %res.addr = alloca i32, align 4
  %__idx = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp23 = alloca i64, align 8
  %it_func_ptr = alloca ptr, align 8
  %__data = alloca ptr, align 8
  %__UNIQUE_ID_rcu303 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5095, metadata !DIExpression()), !dbg !5589
  store i32 %addr, ptr %addr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5096, metadata !DIExpression()), !dbg !5589
  store i32 %res, ptr %res.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5097, metadata !DIExpression()), !dbg !5589
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hda_get_response, i32 0, i32 1)) #14, !dbg !5590
  br i1 %call, label %if.then, label %if.end68, !dbg !5589

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5590

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #15, !dbg !5591
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !5098, metadata !DIExpression()), !dbg !5591
  store i32 0, ptr %__idx, align 4, !dbg !5591
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #15, !dbg !5592
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5101, metadata !DIExpression()), !dbg !5592
  br label %do.body1, !dbg !5592

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !5593
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5104, metadata !DIExpression()), !dbg !5593
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5593
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5593
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !5592
  br label %do.cond, !dbg !5593

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5593

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #15, !dbg !5594
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5106, metadata !DIExpression()), !dbg !5594
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 2)) #15, !dbg !5594, !srcloc !5595
  store i32 %1, ptr %pfo_val__, align 4, !dbg !5594
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !5594
  %conv = zext i32 %2 to i64, !dbg !5594
  %conv2 = trunc i64 %conv to i32, !dbg !5594
  store i32 %conv2, ptr %tmp, align 4, !dbg !5594
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #15, !dbg !5592
  %3 = load i32, ptr %tmp, align 4, !dbg !5594
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !5592
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !5592
  store i32 %4, ptr %tmp3, align 4, !dbg !5592
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #15, !dbg !5596
  %5 = load i32, ptr %tmp3, align 4, !dbg !5592
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #14, !dbg !5596
  br i1 %call4, label %if.end, label %if.then5, !dbg !5591

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5596

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5597
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5108, metadata !DIExpression()), !dbg !5597
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !5597
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !5598
  %tobool = icmp ne i32 %6, 0, !dbg !5598
  %lnot = xor i1 %tobool, true, !dbg !5598
  %lnot6 = xor i1 %lnot, true, !dbg !5598
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !5598
  %conv7 = sext i32 %lnot.ext to i64, !dbg !5598
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !5598
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5598
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !5597

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !5598

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !5599
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5111, metadata !DIExpression()), !dbg !5599
  store i32 2307, ptr %__flags, align 4, !dbg !5599
  br label %do.body11, !dbg !5599

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !5600

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5600

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !5599

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !5602
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.8, i32 47, i32 %7, i64 12) #15, !dbg !5602, !srcloc !5604
  br label %do.cond15, !dbg !5602

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5602

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !5599

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !5605

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !5605

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !5598
  br label %do.cond20, !dbg !5599

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !5599

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !5599

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !5597
  %tobool24 = icmp ne i32 %8, 0, !dbg !5597
  %lnot25 = xor i1 %tobool24, true, !dbg !5597
  %lnot27 = xor i1 %lnot25, true, !dbg !5597
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !5597
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !5597
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !5597
  store i64 %expval30, ptr %tmp23, align 8, !dbg !5598
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5607
  %9 = load i64, ptr %tmp23, align 8, !dbg !5597
  %tobool31 = icmp ne i64 %9, 0, !dbg !5607
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !5591

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5607

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !5591

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #14, !dbg !5608
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !5608, !srcloc !5610
  br label %do.cond35, !dbg !5608

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !5608

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !5591

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #15, !dbg !5611
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !5114, metadata !DIExpression()), !dbg !5611
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #15, !dbg !5611
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !5116, metadata !DIExpression()), !dbg !5611
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu303) #15, !dbg !5612
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu303, metadata !5117, metadata !DIExpression()), !dbg !5612
  br label %do.body38, !dbg !5613

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !5615

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !5615

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hda_get_response, i32 0, i32 8), align 8, !dbg !5613
  store ptr %10, ptr %tmp41, align 8, !dbg !5615
  %11 = load ptr, ptr %tmp41, align 8, !dbg !5613
  store ptr %11, ptr %__UNIQUE_ID_rcu303, align 8, !dbg !5612
  %12 = load ptr, ptr %__UNIQUE_ID_rcu303, align 8, !dbg !5612
  store ptr %12, ptr %tmp42, align 8, !dbg !5612
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu303) #15, !dbg !5611
  %13 = load ptr, ptr %tmp42, align 8, !dbg !5612
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !5611
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !5617
  %tobool43 = icmp ne ptr %14, null, !dbg !5617
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !5611

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !5619
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !5619
  %16 = load ptr, ptr %data, align 8, !dbg !5619
  store ptr %16, ptr %__data, align 8, !dbg !5619
  store ptr @__SCT__tp_func_hda_get_response, ptr %tmp45, align 8, !dbg !5621
  %17 = load ptr, ptr %tmp45, align 8, !dbg !5621
  %18 = load ptr, ptr %__data, align 8, !dbg !5619
  %19 = load ptr, ptr %bus.addr, align 8, !dbg !5619
  %20 = load i32, ptr %addr.addr, align 4, !dbg !5619
  %21 = load i32, ptr %res.addr, align 4, !dbg !5619
  %call46 = call i32 %17(ptr noundef %18, ptr noundef %19, i32 noundef %20, i32 noundef %21) #14, !dbg !5619
  br label %if.end47, !dbg !5619

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #15, !dbg !5591
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #15, !dbg !5591
  br label %do.cond48, !dbg !5611

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !5611

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !5591

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !5623, !srcloc !5625
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #14, !dbg !5626
  %lnot52 = xor i1 %call51, true, !dbg !5626
  %lnot54 = xor i1 %lnot52, true, !dbg !5626
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !5626
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !5626
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !5626
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !5626
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !5623

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !5626

do.body60:                                        ; preds = %if.then59
  %22 = call i64 @llvm.read_register.i64(metadata !5153), !dbg !5628
  %23 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %22) #15, !dbg !5628, !srcloc !5630
  call void @llvm.write_register.i64(metadata !5153, i64 %23), !dbg !5628
  br label %do.cond61, !dbg !5628

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !5628

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !5628

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !5623

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !5623

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5590
  br label %cleanup, !dbg !5590

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #15, !dbg !5590
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !5591

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !5591

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !5589

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_hdac_bus_queue_event(ptr noundef %bus, i32 noundef %res, i32 noundef %res_ex) #0 align 16 !dbg !5631 {
entry:
  %bus.addr = alloca ptr, align 8
  %res.addr = alloca i32, align 4
  %res_ex.addr = alloca i32, align 4
  %wp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5633, metadata !DIExpression()), !dbg !5637
  store i32 %res, ptr %res.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5634, metadata !DIExpression()), !dbg !5638
  store i32 %res_ex, ptr %res_ex.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %res_ex.addr, metadata !5635, metadata !DIExpression()), !dbg !5639
  call void @llvm.lifetime.start.p0(i64 4, ptr %wp) #15, !dbg !5640
  call void @llvm.dbg.declare(metadata ptr %wp, metadata !5636, metadata !DIExpression()), !dbg !5641
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5642
  %tobool = icmp ne ptr %0, null, !dbg !5642
  br i1 %tobool, label %if.end, label %if.then, !dbg !5644

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5645

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %bus.addr, align 8, !dbg !5646
  %2 = load i32, ptr %res.addr, align 4, !dbg !5647
  %3 = load i32, ptr %res_ex.addr, align 4, !dbg !5648
  call void @trace_hda_unsol_event(ptr noundef %1, i32 noundef %2, i32 noundef %3) #14, !dbg !5649
  %4 = load ptr, ptr %bus.addr, align 8, !dbg !5650
  %unsol_wp = getelementptr inbounds %struct.hdac_bus, ptr %4, i32 0, i32 16, !dbg !5651
  %5 = load i32, ptr %unsol_wp, align 4, !dbg !5651
  %add = add i32 %5, 1, !dbg !5652
  %rem = urem i32 %add, 64, !dbg !5653
  store i32 %rem, ptr %wp, align 4, !dbg !5654
  %6 = load i32, ptr %wp, align 4, !dbg !5655
  %7 = load ptr, ptr %bus.addr, align 8, !dbg !5656
  %unsol_wp1 = getelementptr inbounds %struct.hdac_bus, ptr %7, i32 0, i32 16, !dbg !5657
  store i32 %6, ptr %unsol_wp1, align 4, !dbg !5658
  %8 = load i32, ptr %wp, align 4, !dbg !5659
  %shl = shl i32 %8, 1, !dbg !5659
  store i32 %shl, ptr %wp, align 4, !dbg !5659
  %9 = load i32, ptr %res.addr, align 4, !dbg !5660
  %10 = load ptr, ptr %bus.addr, align 8, !dbg !5661
  %unsol_queue = getelementptr inbounds %struct.hdac_bus, ptr %10, i32 0, i32 14, !dbg !5662
  %11 = load i32, ptr %wp, align 4, !dbg !5663
  %idxprom = zext i32 %11 to i64, !dbg !5661
  %arrayidx = getelementptr [128 x i32], ptr %unsol_queue, i64 0, i64 %idxprom, !dbg !5661
  store i32 %9, ptr %arrayidx, align 4, !dbg !5664
  %12 = load i32, ptr %res_ex.addr, align 4, !dbg !5665
  %13 = load ptr, ptr %bus.addr, align 8, !dbg !5666
  %unsol_queue2 = getelementptr inbounds %struct.hdac_bus, ptr %13, i32 0, i32 14, !dbg !5667
  %14 = load i32, ptr %wp, align 4, !dbg !5668
  %add3 = add i32 %14, 1, !dbg !5669
  %idxprom4 = zext i32 %add3 to i64, !dbg !5666
  %arrayidx5 = getelementptr [128 x i32], ptr %unsol_queue2, i64 0, i64 %idxprom4, !dbg !5666
  store i32 %12, ptr %arrayidx5, align 4, !dbg !5670
  %15 = load ptr, ptr %bus.addr, align 8, !dbg !5671
  %unsol_work = getelementptr inbounds %struct.hdac_bus, ptr %15, i32 0, i32 17, !dbg !5672
  %call = call zeroext i1 @schedule_work(ptr noundef %unsol_work) #14, !dbg !5673
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5674
  br label %cleanup, !dbg !5674

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %wp) #15, !dbg !5674
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5674

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_hda_unsol_event(ptr noundef %bus, i32 noundef %res, i32 noundef %res_ex) #3 align 16 !dbg !5123 {
entry:
  %bus.addr = alloca ptr, align 8
  %res.addr = alloca i32, align 4
  %res_ex.addr = alloca i32, align 4
  %__idx = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp23 = alloca i64, align 8
  %it_func_ptr = alloca ptr, align 8
  %__data = alloca ptr, align 8
  %__UNIQUE_ID_rcu311 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5127, metadata !DIExpression()), !dbg !5675
  store i32 %res, ptr %res.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5128, metadata !DIExpression()), !dbg !5675
  store i32 %res_ex, ptr %res_ex.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %res_ex.addr, metadata !5129, metadata !DIExpression()), !dbg !5675
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hda_unsol_event, i32 0, i32 1)) #14, !dbg !5676
  br i1 %call, label %if.then, label %if.end68, !dbg !5675

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5676

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #15, !dbg !5677
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !5130, metadata !DIExpression()), !dbg !5677
  store i32 0, ptr %__idx, align 4, !dbg !5677
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #15, !dbg !5678
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5133, metadata !DIExpression()), !dbg !5678
  br label %do.body1, !dbg !5678

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !5679
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5136, metadata !DIExpression()), !dbg !5679
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5679
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5679
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !5678
  br label %do.cond, !dbg !5679

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5679

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #15, !dbg !5680
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5138, metadata !DIExpression()), !dbg !5680
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 2)) #15, !dbg !5680, !srcloc !5681
  store i32 %1, ptr %pfo_val__, align 4, !dbg !5680
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !5680
  %conv = zext i32 %2 to i64, !dbg !5680
  %conv2 = trunc i64 %conv to i32, !dbg !5680
  store i32 %conv2, ptr %tmp, align 4, !dbg !5680
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #15, !dbg !5678
  %3 = load i32, ptr %tmp, align 4, !dbg !5680
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !5678
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !5678
  store i32 %4, ptr %tmp3, align 4, !dbg !5678
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #15, !dbg !5682
  %5 = load i32, ptr %tmp3, align 4, !dbg !5678
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #14, !dbg !5682
  br i1 %call4, label %if.end, label %if.then5, !dbg !5677

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5682

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5683
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5140, metadata !DIExpression()), !dbg !5683
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !5683
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !5684
  %tobool = icmp ne i32 %6, 0, !dbg !5684
  %lnot = xor i1 %tobool, true, !dbg !5684
  %lnot6 = xor i1 %lnot, true, !dbg !5684
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !5684
  %conv7 = sext i32 %lnot.ext to i64, !dbg !5684
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !5684
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5684
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !5683

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !5684

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !5685
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5143, metadata !DIExpression()), !dbg !5685
  store i32 2307, ptr %__flags, align 4, !dbg !5685
  br label %do.body11, !dbg !5685

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !5686

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5686

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !5685

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !5688
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.8, i32 64, i32 %7, i64 12) #15, !dbg !5688, !srcloc !5690
  br label %do.cond15, !dbg !5688

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5688

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !5685

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !5691

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !5691

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !5684
  br label %do.cond20, !dbg !5685

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !5685

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !5685

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !5683
  %tobool24 = icmp ne i32 %8, 0, !dbg !5683
  %lnot25 = xor i1 %tobool24, true, !dbg !5683
  %lnot27 = xor i1 %lnot25, true, !dbg !5683
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !5683
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !5683
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !5683
  store i64 %expval30, ptr %tmp23, align 8, !dbg !5684
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5693
  %9 = load i64, ptr %tmp23, align 8, !dbg !5683
  %tobool31 = icmp ne i64 %9, 0, !dbg !5693
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !5677

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5693

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !5677

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #14, !dbg !5694
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !5694, !srcloc !5696
  br label %do.cond35, !dbg !5694

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !5694

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !5677

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #15, !dbg !5697
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !5146, metadata !DIExpression()), !dbg !5697
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #15, !dbg !5697
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !5148, metadata !DIExpression()), !dbg !5697
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu311) #15, !dbg !5698
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu311, metadata !5149, metadata !DIExpression()), !dbg !5698
  br label %do.body38, !dbg !5699

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !5701

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !5701

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hda_unsol_event, i32 0, i32 8), align 8, !dbg !5699
  store ptr %10, ptr %tmp41, align 8, !dbg !5701
  %11 = load ptr, ptr %tmp41, align 8, !dbg !5699
  store ptr %11, ptr %__UNIQUE_ID_rcu311, align 8, !dbg !5698
  %12 = load ptr, ptr %__UNIQUE_ID_rcu311, align 8, !dbg !5698
  store ptr %12, ptr %tmp42, align 8, !dbg !5698
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu311) #15, !dbg !5697
  %13 = load ptr, ptr %tmp42, align 8, !dbg !5698
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !5697
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !5703
  %tobool43 = icmp ne ptr %14, null, !dbg !5703
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !5697

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !5705
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !5705
  %16 = load ptr, ptr %data, align 8, !dbg !5705
  store ptr %16, ptr %__data, align 8, !dbg !5705
  store ptr @__SCT__tp_func_hda_unsol_event, ptr %tmp45, align 8, !dbg !5707
  %17 = load ptr, ptr %tmp45, align 8, !dbg !5707
  %18 = load ptr, ptr %__data, align 8, !dbg !5705
  %19 = load ptr, ptr %bus.addr, align 8, !dbg !5705
  %20 = load i32, ptr %res.addr, align 4, !dbg !5705
  %21 = load i32, ptr %res_ex.addr, align 4, !dbg !5705
  %call46 = call i32 %17(ptr noundef %18, ptr noundef %19, i32 noundef %20, i32 noundef %21) #14, !dbg !5705
  br label %if.end47, !dbg !5705

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #15, !dbg !5677
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #15, !dbg !5677
  br label %do.cond48, !dbg !5697

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !5697

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !5677

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !5709, !srcloc !5711
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #14, !dbg !5712
  %lnot52 = xor i1 %call51, true, !dbg !5712
  %lnot54 = xor i1 %lnot52, true, !dbg !5712
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !5712
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !5712
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !5712
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !5712
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !5709

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !5712

do.body60:                                        ; preds = %if.then59
  %22 = call i64 @llvm.read_register.i64(metadata !5153), !dbg !5714
  %23 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %22) #15, !dbg !5714, !srcloc !5716
  call void @llvm.write_register.i64(metadata !5153, i64 %23), !dbg !5714
  br label %do.cond61, !dbg !5714

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !5714

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !5714

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !5709

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !5709

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5676
  br label %cleanup, !dbg !5676

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #15, !dbg !5676
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !5677

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !5677

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !5675

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @schedule_work(ptr noundef %work) #3 align 16 !dbg !5717 {
entry:
  %work.addr = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !5719, metadata !DIExpression()), !dbg !5720
  %0 = load ptr, ptr @system_wq, align 8, !dbg !5721
  %1 = load ptr, ptr %work.addr, align 8, !dbg !5722
  %call = call zeroext i1 @queue_work(ptr noundef %0, ptr noundef %1) #14, !dbg !5723
  ret i1 %call, !dbg !5724
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_hdac_bus_add_device(ptr noundef %bus, ptr noundef %codec) #0 align 16 !dbg !5725 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca ptr, align 8
  %codec.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5729, metadata !DIExpression()), !dbg !5731
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !5730, metadata !DIExpression()), !dbg !5732
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5733
  %caddr_tbl = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 13, !dbg !5735
  %1 = load ptr, ptr %codec.addr, align 8, !dbg !5736
  %addr = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 3, !dbg !5737
  %2 = load i32, ptr %addr, align 8, !dbg !5737
  %idxprom = zext i32 %2 to i64, !dbg !5733
  %arrayidx = getelementptr [16 x ptr], ptr %caddr_tbl, i64 0, i64 %idxprom, !dbg !5733
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !5733
  %tobool = icmp ne ptr %3, null, !dbg !5733
  br i1 %tobool, label %if.then, label %if.end, !dbg !5738

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5739

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !5742

do.end:                                           ; preds = %do.body
  %4 = load ptr, ptr %bus.addr, align 8, !dbg !5739
  %dev = getelementptr inbounds %struct.hdac_bus, ptr %4, i32 0, i32 0, !dbg !5739
  %5 = load ptr, ptr %dev, align 8, !dbg !5739
  %6 = load ptr, ptr %codec.addr, align 8, !dbg !5739
  %addr1 = getelementptr inbounds %struct.hdac_device, ptr %6, i32 0, i32 3, !dbg !5739
  %7 = load i32, ptr %addr1, align 8, !dbg !5739
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef @.str.7, i32 noundef %7) #16, !dbg !5739
  store i32 -16, ptr %retval, align 4, !dbg !5744
  br label %return, !dbg !5744

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %codec.addr, align 8, !dbg !5745
  %list = getelementptr inbounds %struct.hdac_device, ptr %8, i32 0, i32 4, !dbg !5746
  %9 = load ptr, ptr %bus.addr, align 8, !dbg !5747
  %codec_list = getelementptr inbounds %struct.hdac_bus, ptr %9, i32 0, i32 11, !dbg !5748
  call void @list_add_tail(ptr noundef %list, ptr noundef %codec_list) #14, !dbg !5749
  %10 = load ptr, ptr %codec.addr, align 8, !dbg !5750
  %11 = load ptr, ptr %bus.addr, align 8, !dbg !5751
  %caddr_tbl2 = getelementptr inbounds %struct.hdac_bus, ptr %11, i32 0, i32 13, !dbg !5752
  %12 = load ptr, ptr %codec.addr, align 8, !dbg !5753
  %addr3 = getelementptr inbounds %struct.hdac_device, ptr %12, i32 0, i32 3, !dbg !5754
  %13 = load i32, ptr %addr3, align 8, !dbg !5754
  %idxprom4 = zext i32 %13 to i64, !dbg !5751
  %arrayidx5 = getelementptr [16 x ptr], ptr %caddr_tbl2, i64 0, i64 %idxprom4, !dbg !5751
  store ptr %10, ptr %arrayidx5, align 8, !dbg !5755
  %14 = load ptr, ptr %codec.addr, align 8, !dbg !5756
  %addr6 = getelementptr inbounds %struct.hdac_device, ptr %14, i32 0, i32 3, !dbg !5757
  %15 = load i32, ptr %addr6, align 8, !dbg !5757
  %conv = zext i32 %15 to i64, !dbg !5756
  %16 = load ptr, ptr %bus.addr, align 8, !dbg !5758
  %codec_powered = getelementptr inbounds %struct.hdac_bus, ptr %16, i32 0, i32 19, !dbg !5759
  call void @set_bit(i64 noundef %conv, ptr noundef %codec_powered) #14, !dbg !5760
  %17 = load ptr, ptr %bus.addr, align 8, !dbg !5761
  %num_codecs = getelementptr inbounds %struct.hdac_bus, ptr %17, i32 0, i32 12, !dbg !5762
  %18 = load i32, ptr %num_codecs, align 8, !dbg !5763
  %inc = add i32 %18, 1, !dbg !5763
  store i32 %inc, ptr %num_codecs, align 8, !dbg !5763
  store i32 0, ptr %retval, align 4, !dbg !5764
  br label %return, !dbg !5764

return:                                           ; preds = %if.end, %do.end
  %19 = load i32, ptr %retval, align 4, !dbg !5765
  ret i32 %19, !dbg !5765
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5766 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !5770 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5774, metadata !DIExpression()), !dbg !5776
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5775, metadata !DIExpression()), !dbg !5777
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5778
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5779
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5780
  %2 = load ptr, ptr %prev, align 8, !dbg !5780
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5781
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #14, !dbg !5782
  ret void, !dbg !5783
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5784 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5791, metadata !DIExpression()), !dbg !5793
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5792, metadata !DIExpression()), !dbg !5794
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5795
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5796
  %div = sdiv i64 %1, 64, !dbg !5796
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5797
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #14, !dbg !5798
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5799
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5800
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !5801
  ret void, !dbg !5802
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_hdac_bus_remove_device(ptr noundef %bus, ptr noundef %codec) #0 align 16 !dbg !5803 {
entry:
  %bus.addr = alloca ptr, align 8
  %codec.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5807, metadata !DIExpression()), !dbg !5814
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !5808, metadata !DIExpression()), !dbg !5815
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5816
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5809, metadata !DIExpression()), !dbg !5816
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5816
  %1 = load ptr, ptr %codec.addr, align 8, !dbg !5816
  %bus1 = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 2, !dbg !5816
  %2 = load ptr, ptr %bus1, align 8, !dbg !5816
  %cmp = icmp ne ptr %0, %2, !dbg !5816
  %lnot = xor i1 %cmp, true, !dbg !5816
  %lnot2 = xor i1 %lnot, true, !dbg !5816
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5816
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5816
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5817
  %tobool = icmp ne i32 %3, 0, !dbg !5817
  %lnot3 = xor i1 %tobool, true, !dbg !5817
  %lnot5 = xor i1 %lnot3, true, !dbg !5817
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !5817
  %conv = sext i32 %lnot.ext6 to i64, !dbg !5817
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5817
  %tobool7 = icmp ne i64 %expval, 0, !dbg !5817
  br i1 %tobool7, label %if.then, label %if.end, !dbg !5816

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5817

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !5818
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5811, metadata !DIExpression()), !dbg !5818
  store i32 2305, ptr %__flags, align 4, !dbg !5818
  br label %do.body8, !dbg !5818

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !5819

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !5819

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !5818

do.body9:                                         ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !5821
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, i32 229, i32 %4, i64 12) #15, !dbg !5821, !srcloc !5823
  br label %do.cond10, !dbg !5821

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5821

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !5818

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !5824

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5824

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !5817
  br label %do.cond15, !dbg !5818

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !5818

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !5818

if.end:                                           ; preds = %do.end16, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !5816
  %tobool17 = icmp ne i32 %5, 0, !dbg !5816
  %lnot18 = xor i1 %tobool17, true, !dbg !5816
  %lnot20 = xor i1 %lnot18, true, !dbg !5816
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !5816
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !5816
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !5816
  store i64 %expval23, ptr %tmp, align 8, !dbg !5817
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5826
  %6 = load i64, ptr %tmp, align 8, !dbg !5816
  %7 = load ptr, ptr %codec.addr, align 8, !dbg !5827
  %list = getelementptr inbounds %struct.hdac_device, ptr %7, i32 0, i32 4, !dbg !5829
  %call = call i32 @list_empty(ptr noundef %list) #14, !dbg !5830
  %tobool24 = icmp ne i32 %call, 0, !dbg !5830
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !5831

if.then25:                                        ; preds = %if.end
  br label %return, !dbg !5832

if.end26:                                         ; preds = %if.end
  %8 = load ptr, ptr %codec.addr, align 8, !dbg !5833
  %list27 = getelementptr inbounds %struct.hdac_device, ptr %8, i32 0, i32 4, !dbg !5834
  call void @list_del_init(ptr noundef %list27) #14, !dbg !5835
  %9 = load ptr, ptr %bus.addr, align 8, !dbg !5836
  %caddr_tbl = getelementptr inbounds %struct.hdac_bus, ptr %9, i32 0, i32 13, !dbg !5837
  %10 = load ptr, ptr %codec.addr, align 8, !dbg !5838
  %addr = getelementptr inbounds %struct.hdac_device, ptr %10, i32 0, i32 3, !dbg !5839
  %11 = load i32, ptr %addr, align 8, !dbg !5839
  %idxprom = zext i32 %11 to i64, !dbg !5836
  %arrayidx = getelementptr [16 x ptr], ptr %caddr_tbl, i64 0, i64 %idxprom, !dbg !5836
  store ptr null, ptr %arrayidx, align 8, !dbg !5840
  %12 = load ptr, ptr %codec.addr, align 8, !dbg !5841
  %addr28 = getelementptr inbounds %struct.hdac_device, ptr %12, i32 0, i32 3, !dbg !5842
  %13 = load i32, ptr %addr28, align 8, !dbg !5842
  %conv29 = zext i32 %13 to i64, !dbg !5841
  %14 = load ptr, ptr %bus.addr, align 8, !dbg !5843
  %codec_powered = getelementptr inbounds %struct.hdac_bus, ptr %14, i32 0, i32 19, !dbg !5844
  call void @clear_bit(i64 noundef %conv29, ptr noundef %codec_powered) #14, !dbg !5845
  %15 = load ptr, ptr %bus.addr, align 8, !dbg !5846
  %num_codecs = getelementptr inbounds %struct.hdac_bus, ptr %15, i32 0, i32 12, !dbg !5847
  %16 = load i32, ptr %num_codecs, align 8, !dbg !5848
  %dec = add i32 %16, -1, !dbg !5848
  store i32 %dec, ptr %num_codecs, align 8, !dbg !5848
  %17 = load ptr, ptr %bus.addr, align 8, !dbg !5849
  %unsol_work = getelementptr inbounds %struct.hdac_bus, ptr %17, i32 0, i32 17, !dbg !5850
  %call30 = call zeroext i1 @flush_work(ptr noundef %unsol_work) #14, !dbg !5851
  br label %return, !dbg !5852

return:                                           ; preds = %if.end26, %if.then25
  ret void, !dbg !5852
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_init(ptr noundef %entry1) #3 align 16 !dbg !5853 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5855, metadata !DIExpression()), !dbg !5856
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5857
  call void @__list_del_entry(ptr noundef %0) #14, !dbg !5858
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5859
  call void @INIT_LIST_HEAD(ptr noundef %1) #14, !dbg !5860
  ret void, !dbg !5861
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5862 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5864, metadata !DIExpression()), !dbg !5866
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5865, metadata !DIExpression()), !dbg !5867
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5868
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5869
  %div = sdiv i64 %1, 64, !dbg !5869
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5870
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #14, !dbg !5871
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5872
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5873
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !5874
  ret void, !dbg !5875
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5876 dso_local zeroext i1 @flush_work(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_hdac_codec_link_up(ptr noundef %codec) #0 align 16 !dbg !5877 {
entry:
  %codec.addr = alloca ptr, align 8
  %bus = alloca ptr, align 8
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !5879, metadata !DIExpression()), !dbg !5881
  call void @llvm.lifetime.start.p0(i64 8, ptr %bus) #15, !dbg !5882
  call void @llvm.dbg.declare(metadata ptr %bus, metadata !5880, metadata !DIExpression()), !dbg !5883
  %0 = load ptr, ptr %codec.addr, align 8, !dbg !5884
  %bus1 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 2, !dbg !5885
  %1 = load ptr, ptr %bus1, align 8, !dbg !5885
  store ptr %1, ptr %bus, align 8, !dbg !5883
  %2 = load ptr, ptr %bus, align 8, !dbg !5886
  %ops = getelementptr inbounds %struct.hdac_bus, ptr %2, i32 0, i32 1, !dbg !5888
  %3 = load ptr, ptr %ops, align 8, !dbg !5888
  %link_power = getelementptr inbounds %struct.hdac_bus_ops, ptr %3, i32 0, i32 2, !dbg !5889
  %4 = load ptr, ptr %link_power, align 8, !dbg !5889
  %tobool = icmp ne ptr %4, null, !dbg !5886
  br i1 %tobool, label %if.then, label %if.else, !dbg !5890

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %bus, align 8, !dbg !5891
  %ops2 = getelementptr inbounds %struct.hdac_bus, ptr %5, i32 0, i32 1, !dbg !5892
  %6 = load ptr, ptr %ops2, align 8, !dbg !5892
  %link_power3 = getelementptr inbounds %struct.hdac_bus_ops, ptr %6, i32 0, i32 2, !dbg !5893
  %7 = load ptr, ptr %link_power3, align 8, !dbg !5893
  %8 = load ptr, ptr %codec.addr, align 8, !dbg !5894
  call void %7(ptr noundef %8, i1 noundef zeroext true) #14, !dbg !5891
  br label %if.end, !dbg !5891

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr %codec.addr, align 8, !dbg !5895
  call void @snd_hdac_bus_link_power(ptr noundef %9, i1 noundef zeroext true) #14, !dbg !5896
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bus) #15, !dbg !5897
  ret void, !dbg !5897
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5898 dso_local void @snd_hdac_bus_link_power(ptr noundef, i1 noundef zeroext) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_hdac_codec_link_down(ptr noundef %codec) #0 align 16 !dbg !5899 {
entry:
  %codec.addr = alloca ptr, align 8
  %bus = alloca ptr, align 8
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !5901, metadata !DIExpression()), !dbg !5903
  call void @llvm.lifetime.start.p0(i64 8, ptr %bus) #15, !dbg !5904
  call void @llvm.dbg.declare(metadata ptr %bus, metadata !5902, metadata !DIExpression()), !dbg !5905
  %0 = load ptr, ptr %codec.addr, align 8, !dbg !5906
  %bus1 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 2, !dbg !5907
  %1 = load ptr, ptr %bus1, align 8, !dbg !5907
  store ptr %1, ptr %bus, align 8, !dbg !5905
  %2 = load ptr, ptr %bus, align 8, !dbg !5908
  %ops = getelementptr inbounds %struct.hdac_bus, ptr %2, i32 0, i32 1, !dbg !5910
  %3 = load ptr, ptr %ops, align 8, !dbg !5910
  %link_power = getelementptr inbounds %struct.hdac_bus_ops, ptr %3, i32 0, i32 2, !dbg !5911
  %4 = load ptr, ptr %link_power, align 8, !dbg !5911
  %tobool = icmp ne ptr %4, null, !dbg !5908
  br i1 %tobool, label %if.then, label %if.else, !dbg !5912

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %bus, align 8, !dbg !5913
  %ops2 = getelementptr inbounds %struct.hdac_bus, ptr %5, i32 0, i32 1, !dbg !5914
  %6 = load ptr, ptr %ops2, align 8, !dbg !5914
  %link_power3 = getelementptr inbounds %struct.hdac_bus_ops, ptr %6, i32 0, i32 2, !dbg !5915
  %7 = load ptr, ptr %link_power3, align 8, !dbg !5915
  %8 = load ptr, ptr %codec.addr, align 8, !dbg !5916
  call void %7(ptr noundef %8, i1 noundef zeroext false) #14, !dbg !5913
  br label %if.end, !dbg !5913

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr %codec.addr, align 8, !dbg !5917
  call void @snd_hdac_bus_link_power(ptr noundef %9, i1 noundef zeroext false) #14, !dbg !5918
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bus) #15, !dbg !5919
  ret void, !dbg !5919
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @snd_hdac_bus_send_cmd(ptr noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @snd_hdac_bus_get_response(ptr noundef, i32 noundef, ptr noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #5 align 16 !dbg !5920 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5936, metadata !DIExpression()), !dbg !5937
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5938
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #14, !dbg !5939
  ret i1 %call, !dbg !5940
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #3 align 16 !dbg !5941 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5945, metadata !DIExpression()), !dbg !5946
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5947
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #14, !dbg !5948
  ret i1 %call, !dbg !5949
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #5 align 16 !dbg !5950 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5953, metadata !DIExpression()), !dbg !5960
  br label %do.body, !dbg !5961

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #15, !dbg !5962
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !5954, metadata !DIExpression()), !dbg !5962
  %0 = load i32, ptr %val.addr, align 4, !dbg !5962
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5962
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !5962

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !5962
  %cmp = icmp eq i32 %2, 1, !dbg !5962
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !5962

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !5962
  %cmp1 = icmp eq i32 %3, -1, !dbg !5962
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !5962

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !5962
  br label %cond.end, !dbg !5962

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !5962

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !5962
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !5962
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !5963
  %cmp2 = icmp eq i32 %5, 1, !dbg !5963
  br i1 %cmp2, label %if.then, label %if.else, !dbg !5962

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !5964, !srcloc !5966
  br label %if.end8, !dbg !5963

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !5967
  %cmp3 = icmp eq i32 %6, -1, !dbg !5967
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !5963

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !5968, !srcloc !5970
  br label %if.end, !dbg !5967

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !5967

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #15, !dbg !5971
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !5956, metadata !DIExpression()), !dbg !5971
  %7 = load i32, ptr %val.addr, align 4, !dbg !5971
  %conv = sext i32 %7 to i64, !dbg !5971
  %and = and i64 %conv, 4294967295, !dbg !5971
  %conv7 = trunc i64 %and to i32, !dbg !5971
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !5971
  %8 = load i32, ptr %pto_val__, align 4, !dbg !5971
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !5971, !srcloc !5972
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #15, !dbg !5967
  br label %do.cond, !dbg !5971

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !5971

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #15, !dbg !5961
  br label %do.end10, !dbg !5962

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !5973
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_hda_send_cmd(ptr noundef, ptr noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #5 align 16 !dbg !5974 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #15, !dbg !5978
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5976, metadata !DIExpression()), !dbg !5978
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !5978, !srcloc !5979
  %1 = icmp ult i8 %0, 2, !dbg !5978
  call void @llvm.assume(i1 %1), !dbg !5978
  store i8 %0, ptr %c, align 1, !dbg !5978
  %2 = load i8, ptr %c, align 1, !dbg !5978, !range !5980, !noundef !951
  %tobool = trunc i8 %2 to i1, !dbg !5978
  %frombool = zext i1 %tobool to i8, !dbg !5978
  store i8 %frombool, ptr %tmp, align 1, !dbg !5978
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #15, !dbg !5981
  %3 = load i8, ptr %tmp, align 1, !dbg !5978, !range !5980, !noundef !951
  %tobool1 = trunc i8 %3 to i1, !dbg !5978
  ret i1 %tobool1, !dbg !5982
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #10

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #5 align 16 !dbg !5983 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5988, metadata !DIExpression()), !dbg !5991
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !5989, metadata !DIExpression()), !dbg !5992
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5993
  %1 = load i8, ptr %branch.addr, align 1, !dbg !5994, !range !5980, !noundef !951
  %tobool = trunc i8 %1 to i1, !dbg !5994
  %conv = zext i1 %tobool to i32, !dbg !5994
  %or = or i32 2, %conv, !dbg !5995
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #15
          to label %asm.fallthrough [label %l_yes], !dbg !5996, !srcloc !5997

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5998
  br label %return, !dbg !5998

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !5990), !dbg !5999
  store i1 true, ptr %retval, align 1, !dbg !6000
  br label %return, !dbg !6000

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !6001
  ret i1 %2, !dbg !6001
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #5 align 16 !dbg !6002 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6006, metadata !DIExpression()), !dbg !6008
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !6007, metadata !DIExpression()), !dbg !6009
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6010
  %call = call i32 @cpumask_check(i32 noundef %0) #14, !dbg !6010
  %conv = zext i32 %call to i64, !dbg !6010
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !6010
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !6010
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6010
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #14, !dbg !6010
  ret i1 %call1, !dbg !6011
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6012 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6019, metadata !DIExpression()), !dbg !6021
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6020, metadata !DIExpression()), !dbg !6022
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6023
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6024
  %div = udiv i64 %1, 64, !dbg !6024
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6025
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #14, !dbg !6026
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6027
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6028
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !6029
  ret i1 %call, !dbg !6030
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #5 align 16 !dbg !6031 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6035, metadata !DIExpression()), !dbg !6036
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6037
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #14, !dbg !6038
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !6039
  ret i32 %1, !dbg !6040
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !6041 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6049, metadata !DIExpression()), !dbg !6051
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6050, metadata !DIExpression()), !dbg !6052
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6053
  %1 = load i64, ptr %size.addr, align 8, !dbg !6054
  %conv = trunc i64 %1 to i32, !dbg !6054
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #14, !dbg !6055
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6056
  %3 = load i64, ptr %size.addr, align 8, !dbg !6056
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #14, !dbg !6056
  ret void, !dbg !6057
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6058 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6061, metadata !DIExpression()), !dbg !6063
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6062, metadata !DIExpression()), !dbg !6064
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6065
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6066
  br i1 %1, label %cond.true, label %cond.false, !dbg !6066

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6067
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6068
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !6069
  %conv = zext i1 %call to i32, !dbg !6069
  br label %cond.end, !dbg !6066

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6070
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6071
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #14, !dbg !6072
  %conv2 = zext i1 %call1 to i32, !dbg !6072
  br label %cond.end, !dbg !6066

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6066
  %tobool = icmp ne i32 %cond, 0, !dbg !6066
  ret i1 %tobool, !dbg !6073
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6074 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6079, metadata !DIExpression()), !dbg !6081
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6080, metadata !DIExpression()), !dbg !6082
  ret i1 true, !dbg !6083
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !6084 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6089, metadata !DIExpression()), !dbg !6092
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6090, metadata !DIExpression()), !dbg !6093
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6091, metadata !DIExpression()), !dbg !6094
  ret void, !dbg !6095
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6096 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6100, metadata !DIExpression()), !dbg !6102
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6101, metadata !DIExpression()), !dbg !6103
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6104
  %and = and i64 %0, 63, !dbg !6105
  %shl = shl i64 1, %and, !dbg !6106
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6107
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6108
  %shr = ashr i64 %2, 6, !dbg !6109
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6107
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6107
  %and1 = and i64 %shl, %3, !dbg !6110
  %cmp = icmp ne i64 %and1, 0, !dbg !6111
  ret i1 %cmp, !dbg !6112
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6113 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6115, metadata !DIExpression()), !dbg !6118
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6116, metadata !DIExpression()), !dbg !6119
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #15, !dbg !6120
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6117, metadata !DIExpression()), !dbg !6121
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6122
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6123
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #15, !dbg !6124, !srcloc !6125
  %3 = icmp ult i8 %2, 2, !dbg !6124
  call void @llvm.assume(i1 %3), !dbg !6124
  store i8 %2, ptr %oldbit, align 1, !dbg !6124
  %4 = load i8, ptr %oldbit, align 1, !dbg !6126, !range !5980, !noundef !951
  %tobool = trunc i8 %4 to i1, !dbg !6126
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #15, !dbg !6127
  ret i1 %tobool, !dbg !6128
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #5 align 16 !dbg !6129 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6133, metadata !DIExpression()), !dbg !6135
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !6134, metadata !DIExpression()), !dbg !6136
  ret void, !dbg !6137
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #12

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_hda_get_response(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_hda_unsol_event(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_work(ptr noundef %wq, ptr noundef %work) #3 align 16 !dbg !6138 {
entry:
  %wq.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !6142, metadata !DIExpression()), !dbg !6144
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !6143, metadata !DIExpression()), !dbg !6145
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !6146
  %1 = load ptr, ptr %work.addr, align 8, !dbg !6147
  %call = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1) #14, !dbg !6148
  ret i1 %call, !dbg !6149
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6150 dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #5 align 16 !dbg !6153 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6157, metadata !DIExpression()), !dbg !6158
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6159
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6159
  call void @_raw_spin_lock_irq(ptr noundef %1) #14, !dbg !6159
  ret void, !dbg !6160
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #5 align 16 !dbg !6161 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6163, metadata !DIExpression()), !dbg !6164
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6165
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6165
  call void @_raw_spin_unlock_irq(ptr noundef %1) #14, !dbg !6165
  ret void, !dbg !6166
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6167 dso_local void @_raw_spin_lock_irq(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6171 dso_local void @_raw_spin_unlock_irq(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !6172 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6176, metadata !DIExpression()), !dbg !6179
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6177, metadata !DIExpression()), !dbg !6180
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6178, metadata !DIExpression()), !dbg !6181
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6182
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6184
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6185
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14, !dbg !6186
  br i1 %call, label %if.end, label %if.then, !dbg !6187

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6188

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6189
  %4 = load ptr, ptr %next.addr, align 8, !dbg !6190
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !6191
  store ptr %3, ptr %prev1, align 8, !dbg !6192
  %5 = load ptr, ptr %next.addr, align 8, !dbg !6193
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6194
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6195
  store ptr %5, ptr %next2, align 8, !dbg !6196
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6197
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6198
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6199
  store ptr %7, ptr %prev3, align 8, !dbg !6200
  br label %do.body, !dbg !6201

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6202

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6204

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6202

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6206
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !6206
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !6206
  store volatile ptr %9, ptr %next6, align 8, !dbg !6206
  br label %do.end7, !dbg !6206

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6202

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6208
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !6209 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6213, metadata !DIExpression()), !dbg !6216
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6214, metadata !DIExpression()), !dbg !6217
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6215, metadata !DIExpression()), !dbg !6218
  ret i1 true, !dbg !6219
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !6220 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6222, metadata !DIExpression()), !dbg !6224
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6223, metadata !DIExpression()), !dbg !6225
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6226
  %1 = load i64, ptr %size.addr, align 8, !dbg !6227
  %conv = trunc i64 %1 to i32, !dbg !6227
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !6228
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6229
  %3 = load i64, ptr %size.addr, align 8, !dbg !6229
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #14, !dbg !6229
  ret void, !dbg !6230
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6231 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6233, metadata !DIExpression()), !dbg !6235
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6234, metadata !DIExpression()), !dbg !6236
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6237
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6239
  br i1 %1, label %if.then, label %if.else, !dbg !6240

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6241
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6241
  %shr = ashr i64 %3, 3, !dbg !6241
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !6241
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6243
  %and = and i64 %4, 7, !dbg !6243
  %sh_prom = trunc i64 %and to i32, !dbg !6243
  %shl = shl i32 1, %sh_prom, !dbg !6243
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #15, !dbg !6244, !srcloc !6245
  br label %if.end, !dbg !6246

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6247
  %6 = load i64, ptr %nr.addr, align 8, !dbg !6249
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #15, !dbg !6250, !srcloc !6251
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6252
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6253 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6255, metadata !DIExpression()), !dbg !6257
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6256, metadata !DIExpression()), !dbg !6258
  ret i1 true, !dbg !6259
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #3 align 16 !dbg !6260 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6262, metadata !DIExpression()), !dbg !6263
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6264
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #14, !dbg !6266
  br i1 %call, label %if.end, label %if.then, !dbg !6267

if.then:                                          ; preds = %entry
  br label %return, !dbg !6268

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6269
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6270
  %2 = load ptr, ptr %prev, align 8, !dbg !6270
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6271
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6272
  %4 = load ptr, ptr %next, align 8, !dbg !6272
  call void @__list_del(ptr noundef %2, ptr noundef %4) #14, !dbg !6273
  br label %return, !dbg !6274

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6274
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #3 align 16 !dbg !6275 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6279, metadata !DIExpression()), !dbg !6280
  ret i1 true, !dbg !6281
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !6282 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6284, metadata !DIExpression()), !dbg !6286
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6285, metadata !DIExpression()), !dbg !6287
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6288
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6289
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6290
  store ptr %0, ptr %prev1, align 8, !dbg !6291
  br label %do.body, !dbg !6292

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6293

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6295

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6293

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6297
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6297
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6297
  store volatile ptr %2, ptr %next4, align 8, !dbg !6297
  br label %do.end5, !dbg !6297

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6293

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6299
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6300 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6302, metadata !DIExpression()), !dbg !6304
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6303, metadata !DIExpression()), !dbg !6305
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6306
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6308
  br i1 %1, label %if.then, label %if.else, !dbg !6309

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6310
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6310
  %shr = ashr i64 %3, 3, !dbg !6310
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !6310
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6312
  %and = and i64 %4, 7, !dbg !6312
  %sh_prom = trunc i64 %and to i32, !dbg !6312
  %shl = shl i32 1, %sh_prom, !dbg !6312
  %not = xor i32 %shl, -1, !dbg !6313
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #15, !dbg !6314, !srcloc !6315
  br label %if.end, !dbg !6316

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6317
  %6 = load i64, ptr %nr.addr, align 8, !dbg !6319
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #15, !dbg !6320, !srcloc !6321
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6322
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #11 = { nocallback nounwind }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { noredzone }
attributes #15 = { nounwind }
attributes #16 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!5153}
!llvm.module.flags = !{!5154, !5155, !5156, !5157, !5158, !5159, !5160, !5161}
!llvm.ident = !{!5162}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "default_ops", scope: !2, file: !3, line: 17, type: !4763, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF sound/hda/.hdac_bus.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22sound/hda/snd-hda-core\22 -D KBUILD_BASENAME=\22hdac_bus\22 -D KBUILD_MODNAME=\22snd_hda_core\22 -D __KBUILD_MODNAME=kmod_snd_hda_core -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o sound/hda/hdac_bus.ll sound/hda/hdac_bus.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !196, globals: !5004, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "sound/hda/hdac_bus.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3a9a38842a91014fbdb2ef13ae36b5d5")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !93, !100, !108, !116, !122, !129, !133, !142, !147, !152, !158, !165, !191}
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
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !166, line: 30, baseType: !7, size: 32, elements: !167)
!166 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!167 = !{!168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190}
!168 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!169 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!170 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!171 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!172 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!173 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!174 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!175 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!176 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!177 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!178 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!179 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!180 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!181 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!182 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!183 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!184 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!185 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!186 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!187 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!188 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!189 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!190 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !192, line: 10, baseType: !7, size: 32, elements: !193)
!192 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!193 = !{!194, !195}
!194 = !DIEnumerator(name: "false", value: 0)
!195 = !DIEnumerator(name: "true", value: 1)
!196 = !{!197, !198, !199, !207, !209, !109, !210, !213, !220, !229, !7, !230, !234, !4971, !5000, !5002}
!197 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !203, line: 190, size: 128, elements: !204)
!203 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!204 = !{!205, !206}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !202, file: !203, line: 191, baseType: !201, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !202, file: !203, line: 191, baseType: !201, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !215, line: 26, size: 192, elements: !216)
!215 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!216 = !{!217, !218, !219}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !214, file: !215, line: 27, baseType: !198, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !214, file: !215, line: 28, baseType: !198, size: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !214, file: !215, line: 29, baseType: !109, size: 32, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !223, line: 19, size: 64, elements: !224)
!223 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!224 = !{!225}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !222, file: !223, line: 19, baseType: !226, size: 64)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 64, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 1)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !231, line: 21, baseType: !232)
!231 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !233, line: 27, baseType: !7)
!233 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_bus", file: !236, line: 290, size: 10560, elements: !237)
!236 = !DIFile(filename: "./include/sound/hdaudio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "507832bfa56b8fb9054739385c0935fd")
!237 = !{!238, !4761, !4827, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4849, !4851, !4852, !4853, !4854, !4855, !4856, !4870, !4871, !4873, !4874, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4964, !4965, !4966, !4967, !4968, !4969, !4970}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !235, file: !236, line: 291, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !241)
!241 = !{!242, !4234, !4235, !4238, !4239, !4292, !4377, !4378, !4379, !4380, !4381, !4388, !4546, !4559, !4569, !4573, !4575, !4576, !4577, !4581, !4588, !4589, !4592, !4595, !4599, !4703, !4704, !4705, !4706, !4707, !4708, !4738, !4739, !4740, !4743, !4746, !4755, !4756, !4757, !4758, !4759, !4760}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !240, file: !94, line: 706, baseType: !243, size: 512)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !244, line: 64, size: 512, elements: !245)
!244 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!245 = !{!246, !250, !251, !253, !340, !4121, !4224, !4229, !4230, !4231, !4232, !4233}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !243, file: !244, line: 65, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!249 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !243, file: !244, line: 66, baseType: !202, size: 128, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !243, file: !244, line: 67, baseType: !252, size: 64, offset: 192)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !243, file: !244, line: 68, baseType: !254, size: 64, offset: 256)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !244, line: 168, size: 768, elements: !256)
!256 = !{!257, !258, !299, !300}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !255, file: !244, line: 169, baseType: !202, size: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !255, file: !244, line: 170, baseType: !259, size: 32, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !260, line: 29, baseType: !261)
!260 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !260, line: 17, size: 32, elements: !262)
!262 = !{!263}
!263 = !DIDerivedType(tag: DW_TAG_member, scope: !261, file: !260, line: 18, baseType: !264, size: 32)
!264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !261, file: !260, line: 18, size: 32, elements: !265)
!265 = !{!266}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !264, file: !260, line: 19, baseType: !267, size: 32)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !268, line: 14, size: 32, elements: !269)
!268 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!269 = !{!270}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !267, file: !268, line: 15, baseType: !271, size: 32)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !272, line: 44, baseType: !273)
!272 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !272, line: 14, size: 32, elements: !274)
!274 = !{!275}
!275 = !DIDerivedType(tag: DW_TAG_member, scope: !273, file: !272, line: 15, baseType: !276, size: 32)
!276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !273, file: !272, line: 15, size: 32, elements: !277)
!277 = !{!278, !283, !291}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !276, file: !272, line: 16, baseType: !279, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !203, line: 174, baseType: !280)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !203, line: 172, size: 32, elements: !281)
!281 = !{!282}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !280, file: !203, line: 173, baseType: !109, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, scope: !276, file: !272, line: 24, baseType: !284, size: 16)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !276, file: !272, line: 24, size: 16, elements: !285)
!285 = !{!286, !290}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !284, file: !272, line: 25, baseType: !287, size: 8)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !231, line: 17, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !233, line: 21, baseType: !289)
!289 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !284, file: !272, line: 26, baseType: !287, size: 8, offset: 8)
!291 = !DIDerivedType(tag: DW_TAG_member, scope: !276, file: !272, line: 28, baseType: !292, size: 32)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !276, file: !272, line: 28, size: 32, elements: !293)
!293 = !{!294, !298}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !292, file: !272, line: 29, baseType: !295, size: 16)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !231, line: 19, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !233, line: 24, baseType: !297)
!297 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !292, file: !272, line: 30, baseType: !295, size: 16, offset: 16)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !255, file: !244, line: 171, baseType: !243, size: 512, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !255, file: !244, line: 172, baseType: !301, size: 64, offset: 704)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !244, line: 133, size: 192, elements: !304)
!304 = !{!305, !312, !317}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !303, file: !244, line: 134, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!109, !310}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !303, file: !244, line: 135, baseType: !313, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!247, !310}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !303, file: !244, line: 136, baseType: !318, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!109, !310, !322}
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !244, line: 125, size: 20736, elements: !324)
!324 = !{!325, !330, !334, !335, !339}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !323, file: !244, line: 126, baseType: !326, size: 192)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 192, elements: !328)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!328 = !{!329}
!329 = !DISubrange(count: 3)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !323, file: !244, line: 127, baseType: !331, size: 4096, offset: 192)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 4096, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !323, file: !244, line: 128, baseType: !109, size: 32, offset: 4288)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !323, file: !244, line: 129, baseType: !336, size: 16384, offset: 4320)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 16384, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 2048)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !323, file: !244, line: 130, baseType: !109, size: 32, offset: 20704)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !243, file: !244, line: 69, baseType: !341, size: 64, offset: 320)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !244, line: 116, size: 384, elements: !344)
!344 = !{!345, !349, !377, !4083, !4111, !4115}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !343, file: !244, line: 117, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !252}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !343, file: !244, line: 118, baseType: !350, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !353, line: 254, size: 128, elements: !354)
!353 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!354 = !{!355, !370}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !352, file: !353, line: 255, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{!359, !252, !364, !327}
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !203, line: 66, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !361, line: 73, baseType: !362)
!361 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !361, line: 15, baseType: !363)
!363 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !353, line: 30, size: 128, elements: !366)
!366 = !{!367, !368}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !365, file: !353, line: 31, baseType: !247, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !365, file: !353, line: 32, baseType: !369, size: 16, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !203, line: 24, baseType: !297)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !352, file: !353, line: 256, baseType: !371, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{!359, !252, !364, !247, !374}
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !203, line: 61, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !361, line: 72, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !361, line: 16, baseType: !197)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !343, file: !244, line: 119, baseType: !378, size: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !353, line: 84, size: 320, elements: !382)
!382 = !{!383, !384, !388, !4079, !4081}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !381, file: !353, line: 85, baseType: !247, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !381, file: !353, line: 86, baseType: !385, size: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{!369, !252, !364, !109}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !381, file: !353, line: 88, baseType: !389, size: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!369, !252, !392, !109}
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !353, line: 175, size: 512, elements: !394)
!394 = !{!395, !396, !397, !398, !4070, !4074, !4075}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !393, file: !353, line: 176, baseType: !365, size: 128)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !393, file: !353, line: 177, baseType: !374, size: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !393, file: !353, line: 178, baseType: !198, size: 64, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !393, file: !353, line: 179, baseType: !399, size: 64, offset: 256)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!402}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !404)
!404 = !{!405, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !4064, !4065, !4066, !4067, !4068, !4069}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !403, file: !14, line: 473, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !408)
!408 = !{!409, !410, !411, !419, !420, !427, !428, !431, !432, !3843, !3844, !3845, !3846, !3847, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3887, !3890, !3891, !3892, !3901, !3902, !3903, !3904}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !407, file: !14, line: 642, baseType: !369, size: 16)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !407, file: !14, line: 643, baseType: !297, size: 16, offset: 16)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !407, file: !14, line: 644, baseType: !412, size: 32, offset: 32)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !413, line: 23, baseType: !414)
!413 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !413, line: 21, size: 32, elements: !415)
!415 = !{!416}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !414, file: !413, line: 22, baseType: !417, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !203, line: 37, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !361, line: 49, baseType: !7)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !407, file: !14, line: 645, baseType: !202, size: 128, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !407, file: !14, line: 646, baseType: !421, size: 32, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !413, line: 28, baseType: !422)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !413, line: 26, size: 32, elements: !423)
!423 = !{!424}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !422, file: !413, line: 27, baseType: !425, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !203, line: 38, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !361, line: 50, baseType: !7)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !407, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !407, file: !14, line: 650, baseType: !429, size: 64, offset: 256)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !407, file: !14, line: 651, baseType: !429, size: 64, offset: 320)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !407, file: !14, line: 654, baseType: !433, size: 64, offset: 384)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !435)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !436)
!436 = !{!437, !3677, !3687, !3691, !3695, !3699, !3703, !3707, !3711, !3715, !3719, !3720, !3724, !3728, !3765, !3794, !3798, !3804, !3808, !3812, !3816, !3820, !3824, !3830, !3834}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !435, file: !14, line: 1967, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!441, !406, !441, !7}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !443, line: 82, size: 1536, elements: !444)
!443 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!444 = !{!445, !446, !456, !464, !465, !483, !484, !488, !501, !3661, !3662, !3663, !3664, !3669, !3670, !3671}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !442, file: !443, line: 84, baseType: !7, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !442, file: !443, line: 85, baseType: !447, size: 32, offset: 32)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !448, line: 275, baseType: !449)
!448 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !448, line: 275, size: 32, elements: !450)
!450 = !{!451}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !449, file: !448, line: 275, baseType: !452, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !448, line: 69, baseType: !453)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !448, line: 64, size: 32, elements: !454)
!454 = !{!455}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !453, file: !448, line: 65, baseType: !7, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !442, file: !443, line: 86, baseType: !457, size: 128, offset: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !458, line: 38, size: 128, elements: !459)
!458 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!459 = !{!460, !462}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !457, file: !458, line: 39, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !457, file: !458, line: 39, baseType: !463, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !442, file: !443, line: 87, baseType: !441, size: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !442, file: !443, line: 88, baseType: !466, size: 128, offset: 256)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !443, line: 49, size: 128, elements: !467)
!467 = !{!468, !480}
!468 = !DIDerivedType(tag: DW_TAG_member, scope: !466, file: !443, line: 50, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !466, file: !443, line: 50, size: 64, elements: !470)
!470 = !{!471, !476}
!471 = !DIDerivedType(tag: DW_TAG_member, scope: !469, file: !443, line: 51, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !469, file: !443, line: 51, size: 64, elements: !473)
!473 = !{!474, !475}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !472, file: !443, line: 52, baseType: !230, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !472, file: !443, line: 52, baseType: !230, size: 32, offset: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !469, file: !443, line: 54, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !231, line: 23, baseType: !478)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !233, line: 31, baseType: !479)
!479 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !466, file: !443, line: 56, baseType: !481, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !442, file: !443, line: 89, baseType: !406, size: 64, offset: 384)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !442, file: !443, line: 91, baseType: !485, size: 256, offset: 448)
!485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 256, elements: !486)
!486 = !{!487}
!487 = !DISubrange(count: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !442, file: !443, line: 94, baseType: !489, size: 64, offset: 704)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !490, line: 25, size: 64, elements: !491)
!490 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!491 = !{!492}
!492 = !DIDerivedType(tag: DW_TAG_member, scope: !489, file: !490, line: 26, baseType: !493, size: 64)
!493 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !489, file: !490, line: 26, size: 64, elements: !494)
!494 = !{!495, !496}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !493, file: !490, line: 28, baseType: !478, size: 64, align: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, scope: !493, file: !490, line: 30, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !493, file: !490, line: 30, size: 64, elements: !498)
!498 = !{!499, !500}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !497, file: !490, line: 31, baseType: !259, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !497, file: !490, line: 32, baseType: !109, size: 32, offset: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !442, file: !443, line: 95, baseType: !502, size: 64, offset: 768)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !504)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !443, line: 128, size: 1024, align: 512, elements: !505)
!505 = !{!506, !510, !511, !518, !524, !528, !532, !536, !537, !541, !545, !3651, !3655}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !504, file: !443, line: 129, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!109, !441, !7}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !504, file: !443, line: 130, baseType: !507, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !504, file: !443, line: 131, baseType: !512, size: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!109, !515, !517}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !442)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !504, file: !443, line: 132, baseType: !519, size: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!109, !515, !7, !247, !522}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !504, file: !443, line: 134, baseType: !525, size: 64, offset: 256)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!109, !515}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !504, file: !443, line: 135, baseType: !529, size: 64, offset: 320)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!109, !441}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !504, file: !443, line: 136, baseType: !533, size: 64, offset: 384)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !441}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !504, file: !443, line: 137, baseType: !533, size: 64, offset: 448)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !504, file: !443, line: 138, baseType: !538, size: 64, offset: 512)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !441, !406}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !504, file: !443, line: 139, baseType: !542, size: 64, offset: 576)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!327, !441, !327, !109}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !504, file: !443, line: 140, baseType: !546, size: 64, offset: 640)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!549, !3650}
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !551, line: 70, size: 256, elements: !552)
!551 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!552 = !{!553, !554, !3646, !3647}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !550, file: !551, line: 71, baseType: !441, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !550, file: !551, line: 72, baseType: !555, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !557)
!557 = !{!558, !559, !562, !563, !564, !568, !1049, !1189, !1229, !1319, !1323, !1324, !1325, !1326, !1327, !1336, !1337, !1338, !1339, !1344, !1348, !1349, !1352, !1355, !1358, !1361, !1362, !1363, !1404, !3579, !3580, !3581, !3582, !3583, !3584, !3587, !3589, !3596, !3597, !3598, !3599, !3600, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !556, file: !14, line: 1191, baseType: !202, size: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !556, file: !14, line: 1192, baseType: !560, size: 32, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !203, line: 21, baseType: !561)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !203, line: 18, baseType: !230)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !556, file: !14, line: 1193, baseType: !289, size: 8, offset: 160)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !556, file: !14, line: 1194, baseType: !197, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !556, file: !14, line: 1195, baseType: !565, size: 64, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !203, line: 52, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !361, line: 88, baseType: !567)
!567 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !556, file: !14, line: 1196, baseType: !569, size: 64, offset: 320)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !571)
!571 = !{!572, !573, !574, !581, !585, !589, !593, !1034, !1035, !1039, !1041, !1042, !1043, !1045, !1046, !1047, !1048}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !570, file: !14, line: 2367, baseType: !247, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !570, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !570, file: !14, line: 2376, baseType: !575, size: 64, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!109, !578}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !580, line: 32, flags: DIFlagFwdDecl)
!580 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!581 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !570, file: !14, line: 2377, baseType: !582, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !584)
!584 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !570, file: !14, line: 2378, baseType: !586, size: 64, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!441, !569, !109, !247, !198}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !570, file: !14, line: 2380, baseType: !590, size: 64, offset: 320)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !555}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !570, file: !14, line: 2381, baseType: !594, size: 64, offset: 384)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !596)
!596 = !{!597, !598, !599, !603, !625, !651, !652, !653, !654, !658, !663, !664, !684, !740, !741, !742, !743, !744, !747, !748, !749, !757, !761, !788, !808, !809, !810, !811, !820, !843, !844, !847, !850, !851, !852, !853, !854, !855, !856, !860, !861, !988, !996, !997, !998, !1000, !1004, !1005, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1027, !1028, !1029, !1033}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !595, file: !6, line: 403, baseType: !5, size: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !595, file: !6, line: 406, baseType: !202, size: 128, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !595, file: !6, line: 409, baseType: !600, size: 448, offset: 192)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 448, elements: !601)
!601 = !{!602}
!602 = !DISubrange(count: 56)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !595, file: !6, line: 417, baseType: !604, size: 768, offset: 640)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !605)
!605 = !{!606, !607, !608, !609, !612}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !604, file: !6, line: 46, baseType: !243, size: 512)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !604, file: !6, line: 47, baseType: !594, size: 64, offset: 512)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !604, file: !6, line: 48, baseType: !252, size: 64, offset: 576)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !604, file: !6, line: 49, baseType: !610, size: 64, offset: 640)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !604, file: !6, line: 50, baseType: !613, size: 64, offset: 704)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !615, line: 26, size: 256, elements: !616)
!615 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!616 = !{!617, !618}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !614, file: !615, line: 27, baseType: !7, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !614, file: !615, line: 28, baseType: !619, size: 192, offset: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !620, line: 43, size: 192, elements: !621)
!620 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!621 = !{!622, !624}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !619, file: !620, line: 44, baseType: !623, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !268, line: 23, baseType: !267)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !619, file: !620, line: 45, baseType: !202, size: 128, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !595, file: !6, line: 418, baseType: !626, size: 64, offset: 1408)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !628)
!628 = !{!629, !630, !635, !639, !643, !647}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !627, file: !6, line: 54, baseType: !365, size: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !627, file: !6, line: 55, baseType: !631, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!359, !626, !634, !327}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !627, file: !6, line: 57, baseType: !636, size: 64, offset: 192)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!359, !626, !634, !247, !374}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !627, file: !6, line: 59, baseType: !640, size: 64, offset: 256)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{null, !594, !247}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !627, file: !6, line: 60, baseType: !644, size: 64, offset: 320)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!109, !594}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !627, file: !6, line: 61, baseType: !648, size: 64, offset: 384)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{null, !594}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !595, file: !6, line: 419, baseType: !247, size: 64, offset: 1472)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !595, file: !6, line: 420, baseType: !247, size: 64, offset: 1536)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !595, file: !6, line: 421, baseType: !252, size: 64, offset: 1600)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !595, file: !6, line: 424, baseType: !655, size: 64, offset: 1664)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !657)
!657 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !595, file: !6, line: 425, baseType: !659, size: 64, offset: 1728)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !661)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !231, line: 20, baseType: !662)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !233, line: 26, baseType: !109)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !595, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !595, file: !6, line: 435, baseType: !665, size: 256, offset: 1856)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !666, line: 66, size: 256, elements: !667)
!666 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!667 = !{!668, !677, !678, !683}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !665, file: !666, line: 67, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !670, line: 13, baseType: !671)
!670 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !203, line: 181, baseType: !672)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !203, line: 179, size: 64, elements: !673)
!673 = !{!674}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !672, file: !203, line: 180, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !231, line: 22, baseType: !676)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !233, line: 30, baseType: !567)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !665, file: !666, line: 68, baseType: !623, size: 32, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !665, file: !666, line: 70, baseType: !679, size: 32, offset: 96)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !680, line: 15, size: 32, elements: !681)
!680 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!681 = !{!682}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !679, file: !680, line: 20, baseType: !279, size: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !665, file: !666, line: 72, baseType: !202, size: 128, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !595, file: !6, line: 437, baseType: !685, size: 64, offset: 2112)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !687, line: 69, size: 320, elements: !688)
!687 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!688 = !{!689, !690, !691, !711, !713, !717, !718}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !686, file: !687, line: 70, baseType: !247, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !686, file: !687, line: 71, baseType: !594, size: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !686, file: !687, line: 72, baseType: !692, size: 64, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !694)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !687, line: 47, size: 256, elements: !695)
!695 = !{!696, !697, !703, !707}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !694, file: !687, line: 49, baseType: !7, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !694, file: !687, line: 51, baseType: !698, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!109, !247, !701}
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !686)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !694, file: !687, line: 53, baseType: !704, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!109, !327, !701}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !694, file: !687, line: 55, baseType: !708, size: 64, offset: 192)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{null, !198}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !686, file: !687, line: 73, baseType: !712, size: 16, offset: 192)
!712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !686, file: !687, line: 74, baseType: !714, size: 8, offset: 208)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !231, line: 16, baseType: !715)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !233, line: 20, baseType: !716)
!716 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !686, file: !687, line: 75, baseType: !287, size: 8, offset: 216)
!718 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !687, line: 76, baseType: !719, size: 64, offset: 256)
!719 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !686, file: !687, line: 76, size: 64, elements: !720)
!720 = !{!721, !722, !729}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !719, file: !687, line: 77, baseType: !198, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !719, file: !687, line: 78, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !725)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !687, line: 86, size: 128, elements: !726)
!726 = !{!727, !728}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !725, file: !687, line: 87, baseType: !7, size: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !725, file: !687, line: 88, baseType: !327, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !719, file: !687, line: 79, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !732)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !687, line: 92, size: 256, elements: !733)
!733 = !{!734, !735, !736, !738, !739}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !732, file: !687, line: 94, baseType: !7, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !732, file: !687, line: 95, baseType: !7, size: 32, offset: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !732, file: !687, line: 96, baseType: !737, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !732, file: !687, line: 97, baseType: !692, size: 64, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !732, file: !687, line: 98, baseType: !198, size: 64, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !595, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !595, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !595, file: !6, line: 442, baseType: !655, size: 64, offset: 2240)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !595, file: !6, line: 443, baseType: !659, size: 64, offset: 2304)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !595, file: !6, line: 444, baseType: !745, size: 8, offset: 2368)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !203, line: 35, baseType: !746)
!746 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !595, file: !6, line: 451, baseType: !745, size: 8, offset: 2376)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !595, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !595, file: !6, line: 455, baseType: !750, size: 64, offset: 2432)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !752, line: 23, size: 96, elements: !753)
!752 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!753 = !{!754, !755, !756}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !751, file: !752, line: 24, baseType: !109, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !751, file: !752, line: 24, baseType: !109, size: 32, offset: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !751, file: !752, line: 24, baseType: !109, size: 32, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !595, file: !6, line: 458, baseType: !758, size: 64, offset: 2496)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{!109}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !595, file: !6, line: 460, baseType: !762, size: 4032, align: 512, offset: 2560)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !763, size: 4032, elements: !786)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !764)
!764 = !{!765, !766, !767}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !763, file: !6, line: 363, baseType: !198, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !763, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !763, file: !6, line: 367, baseType: !768, size: 448, offset: 128)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !769)
!769 = !{!770, !771}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !768, file: !6, line: 320, baseType: !594, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !768, file: !6, line: 321, baseType: !772, size: 384, offset: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !773, line: 40, size: 384, elements: !774)
!773 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!774 = !{!775}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !772, file: !773, line: 41, baseType: !776, size: 384, align: 64)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, size: 384, align: 64, elements: !784)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !778, line: 5, size: 192, align: 64, elements: !779)
!778 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!779 = !{!780, !781, !783}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !777, file: !778, line: 6, baseType: !197, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !777, file: !778, line: 7, baseType: !782, size: 64, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !777, file: !778, line: 8, baseType: !782, size: 64, offset: 128)
!784 = !{!785}
!785 = !DISubrange(count: 2)
!786 = !{!787}
!787 = !DISubrange(count: 7)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !595, file: !6, line: 463, baseType: !789, size: 192, offset: 6592)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !790, line: 8, size: 192, elements: !791)
!790 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!791 = !{!792, !793, !794}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !789, file: !790, line: 10, baseType: !7, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !789, file: !790, line: 11, baseType: !209, size: 64, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !789, file: !790, line: 12, baseType: !795, size: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !797, line: 59, size: 48, elements: !798)
!797 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!798 = !{!799, !803, !804, !805, !806, !807}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !796, file: !797, line: 60, baseType: !800, size: 16)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !231, line: 18, baseType: !801)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !233, line: 23, baseType: !802)
!802 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !796, file: !797, line: 61, baseType: !800, size: 16, offset: 16)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !796, file: !797, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !796, file: !797, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !796, file: !797, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !796, file: !797, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !595, file: !6, line: 465, baseType: !197, size: 64, offset: 6784)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !595, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !595, file: !6, line: 470, baseType: !202, size: 128, offset: 6912)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !595, file: !6, line: 471, baseType: !812, size: 64, offset: 7040)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !814, line: 33, size: 96, elements: !815)
!814 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!815 = !{!816, !817, !818, !819}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !813, file: !814, line: 37, baseType: !109, size: 32)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !813, file: !814, line: 43, baseType: !109, size: 32, offset: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !813, file: !814, line: 45, baseType: !297, size: 16, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !813, file: !814, line: 47, baseType: !297, size: 16, offset: 80)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !595, file: !6, line: 476, baseType: !821, size: 64, offset: 7104)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !823)
!823 = !{!824, !840, !841, !842}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !822, file: !6, line: 379, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !827, line: 204, baseType: !828)
!827 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !827, line: 197, size: 192, elements: !829)
!829 = !{!830, !832, !833, !834, !836, !838}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !828, file: !827, line: 198, baseType: !831, size: 32)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !827, line: 21, baseType: !232)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !828, file: !827, line: 199, baseType: !289, size: 8, offset: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !828, file: !827, line: 200, baseType: !289, size: 8, offset: 40)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !828, file: !827, line: 201, baseType: !835, size: 16, offset: 48)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !827, line: 17, baseType: !296)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !828, file: !827, line: 202, baseType: !837, size: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !827, line: 16, baseType: !478)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !828, file: !827, line: 203, baseType: !839, size: 64, offset: 128)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !827, line: 22, baseType: !478)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !822, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !822, file: !6, line: 381, baseType: !327, size: 64, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !822, file: !6, line: 382, baseType: !327, size: 64, offset: 192)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !595, file: !6, line: 477, baseType: !822, size: 256, offset: 7168)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !595, file: !6, line: 480, baseType: !845, size: 64, offset: 7424)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !595, file: !6, line: 483, baseType: !848, size: 64, offset: 7488)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !595, file: !6, line: 488, baseType: !327, size: 64, offset: 7552)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !595, file: !6, line: 492, baseType: !198, size: 64, offset: 7616)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !595, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !595, file: !6, line: 495, baseType: !198, size: 64, offset: 7744)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !595, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !595, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !595, file: !6, line: 500, baseType: !857, size: 64, offset: 7872)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !215, line: 45, baseType: !859)
!859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !595, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !595, file: !6, line: 504, baseType: !862, size: 64, offset: 8000)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !865, line: 96, size: 192, elements: !866)
!865 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!866 = !{!867, !868, !948, !952}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !864, file: !865, line: 97, baseType: !7, size: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !864, file: !865, line: 98, baseType: !869, size: 64, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !865, line: 24, size: 3072, elements: !871)
!871 = !{!872, !874, !875, !876, !877, !901, !902, !903, !904, !922, !933, !934, !945, !946, !947}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !870, file: !865, line: 26, baseType: !873, size: 128)
!873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !669, size: 128, elements: !784)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !870, file: !865, line: 27, baseType: !873, size: 128, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !870, file: !865, line: 28, baseType: !109, size: 32, offset: 256)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !870, file: !865, line: 31, baseType: !259, size: 32, align: 512, offset: 512)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !870, file: !865, line: 32, baseType: !878, size: 960, offset: 576)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !879, line: 206, size: 960, elements: !880)
!879 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!880 = !{!881, !890, !895, !897, !898, !900}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !878, file: !879, line: 207, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !203, line: 232, size: 128, align: 64, elements: !884)
!884 = !{!885, !886}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !883, file: !203, line: 233, baseType: !882, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !883, file: !203, line: 234, baseType: !887, size: 64, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{null, !882}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !878, file: !879, line: 208, baseType: !891, size: 256, offset: 64)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !892, size: 256, elements: !893)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!893 = !{!894}
!894 = !DISubrange(count: 4)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !878, file: !879, line: 209, baseType: !896, size: 256, offset: 320)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 256, elements: !893)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !878, file: !879, line: 213, baseType: !363, size: 64, offset: 576)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !878, file: !879, line: 215, baseType: !899, size: 256, offset: 640)
!899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 256, elements: !893)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !878, file: !879, line: 216, baseType: !287, size: 8, offset: 896)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !870, file: !865, line: 33, baseType: !197, size: 64, offset: 1536)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !870, file: !865, line: 34, baseType: !197, size: 64, offset: 1600)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !870, file: !865, line: 35, baseType: !745, size: 8, offset: 1664)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !870, file: !865, line: 36, baseType: !905, size: 320, offset: 1728)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !906, line: 11, size: 320, elements: !907)
!906 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!907 = !{!908, !915, !916, !921}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !905, file: !906, line: 16, baseType: !909, size: 128)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !203, line: 198, size: 128, elements: !910)
!910 = !{!911, !913}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !909, file: !203, line: 199, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !909, file: !203, line: 199, baseType: !914, size: 64, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !905, file: !906, line: 17, baseType: !197, size: 64, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !905, file: !906, line: 18, baseType: !917, size: 64, offset: 192)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{null, !920}
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !905, file: !906, line: 19, baseType: !230, size: 32, offset: 256)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !870, file: !865, line: 37, baseType: !923, size: 256, offset: 2048)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !166, line: 98, size: 256, elements: !924)
!924 = !{!925, !926, !927}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !923, file: !166, line: 99, baseType: !669, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !923, file: !166, line: 100, baseType: !202, size: 128, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !923, file: !166, line: 101, baseType: !928, size: 64, offset: 192)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !166, line: 21, baseType: !929)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{null, !932}
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !870, file: !865, line: 38, baseType: !883, size: 128, align: 64, offset: 2304)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !870, file: !865, line: 39, baseType: !935, size: 64, offset: 2432)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !865, line: 49, size: 768, elements: !937)
!937 = !{!938, !939, !940, !941, !942, !943, !944}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !936, file: !865, line: 50, baseType: !259, size: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !936, file: !865, line: 51, baseType: !896, size: 256, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !936, file: !865, line: 53, baseType: !896, size: 256, offset: 320)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !936, file: !865, line: 54, baseType: !197, size: 64, offset: 576)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !936, file: !865, line: 55, baseType: !935, size: 64, offset: 640)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !936, file: !865, line: 56, baseType: !109, size: 32, offset: 704)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !936, file: !865, line: 57, baseType: !109, size: 32, offset: 736)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !870, file: !865, line: 40, baseType: !197, size: 64, offset: 2496)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !870, file: !865, line: 42, baseType: !109, size: 32, offset: 2560)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !870, file: !865, line: 43, baseType: !863, size: 64, offset: 2624)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !864, file: !865, line: 99, baseType: !949, offset: 128)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !950, line: 211, elements: !951)
!950 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!951 = !{}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !864, file: !865, line: 100, baseType: !953, size: 64, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !865, line: 63, size: 3008, elements: !955)
!955 = !{!956, !957, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !987}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !954, file: !865, line: 64, baseType: !935, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !954, file: !865, line: 65, baseType: !958, size: 192, offset: 64)
!958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !935, size: 192, elements: !328)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !954, file: !865, line: 67, baseType: !109, size: 32, offset: 256)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !954, file: !865, line: 68, baseType: !665, size: 256, offset: 320)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !954, file: !865, line: 69, baseType: !259, size: 32, offset: 576)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !954, file: !865, line: 70, baseType: !665, size: 256, offset: 640)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !954, file: !865, line: 71, baseType: !197, size: 64, offset: 896)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !954, file: !865, line: 72, baseType: !197, size: 64, offset: 960)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !954, file: !865, line: 73, baseType: !197, size: 64, offset: 1024)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !954, file: !865, line: 74, baseType: !197, size: 64, offset: 1088)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !954, file: !865, line: 75, baseType: !197, size: 64, offset: 1152)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !954, file: !865, line: 76, baseType: !197, size: 64, offset: 1216)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !954, file: !865, line: 77, baseType: !197, size: 64, offset: 1280)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !954, file: !865, line: 78, baseType: !197, size: 64, offset: 1344)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !954, file: !865, line: 79, baseType: !745, size: 8, offset: 1408)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !954, file: !865, line: 80, baseType: !197, size: 64, offset: 1472)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !954, file: !865, line: 81, baseType: !665, size: 256, offset: 1536)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !954, file: !865, line: 82, baseType: !614, size: 256, offset: 1792)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !954, file: !865, line: 84, baseType: !279, size: 32, offset: 2048)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !954, file: !865, line: 87, baseType: !197, size: 64, offset: 2112)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !954, file: !865, line: 88, baseType: !197, size: 64, offset: 2176)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !954, file: !865, line: 89, baseType: !979, size: 704, offset: 2240)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !166, line: 111, size: 704, elements: !980)
!980 = !{!981, !982, !983, !986}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !979, file: !166, line: 112, baseType: !923, size: 256)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !979, file: !166, line: 113, baseType: !905, size: 320, offset: 256)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !979, file: !166, line: 116, baseType: !984, size: 64, offset: 576)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !166, line: 18, flags: DIFlagFwdDecl)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !979, file: !166, line: 117, baseType: !109, size: 32, offset: 640)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !954, file: !865, line: 90, baseType: !863, size: 64, offset: 2944)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !595, file: !6, line: 515, baseType: !989, size: 64, offset: 8064)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !991, line: 117, size: 128, elements: !992)
!991 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!992 = !{!993, !994, !995}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !990, file: !991, line: 118, baseType: !661, size: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !990, file: !991, line: 119, baseType: !661, size: 32, offset: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !990, file: !991, line: 120, baseType: !363, size: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !595, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !595, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !595, file: !6, line: 520, baseType: !999, size: 64, offset: 8192)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !595, file: !6, line: 523, baseType: !1001, size: 64, offset: 8256)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !595, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !595, file: !6, line: 525, baseType: !1006, size: 64, offset: 8384)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !1009, line: 28, size: 192, elements: !1010)
!1009 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!1010 = !{!1011, !1012, !1013}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !1008, file: !1009, line: 29, baseType: !247, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !1008, file: !1009, line: 30, baseType: !247, size: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !1008, file: !1009, line: 31, baseType: !197, size: 64, offset: 128)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !595, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !595, file: !6, line: 533, baseType: !198, size: 64, offset: 8512)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !595, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !595, file: !6, line: 535, baseType: !229, size: 64, offset: 8640)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !595, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !595, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !595, file: !6, line: 540, baseType: !1021, size: 64, offset: 8768)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1023, line: 32, size: 64, elements: !1024)
!1023 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1024 = !{!1025, !1026}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1022, file: !1023, line: 33, baseType: !661, size: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1022, file: !1023, line: 34, baseType: !661, size: 32, offset: 32)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !595, file: !6, line: 563, baseType: !202, size: 128, offset: 8832)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !595, file: !6, line: 565, baseType: !202, size: 128, offset: 8960)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !595, file: !6, line: 568, baseType: !1030, size: 64, offset: 9088)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{null}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !595, file: !6, line: 570, baseType: !279, size: 32, offset: 9152)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !570, file: !14, line: 2382, baseType: !569, size: 64, offset: 448)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !570, file: !14, line: 2383, baseType: !1036, size: 64, offset: 512)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !203, line: 194, size: 64, elements: !1037)
!1037 = !{!1038}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1036, file: !203, line: 195, baseType: !912, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !570, file: !14, line: 2385, baseType: !1040, offset: 576)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !950, line: 206, elements: !951)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !570, file: !14, line: 2386, baseType: !1040, offset: 576)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !570, file: !14, line: 2387, baseType: !1040, offset: 576)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !570, file: !14, line: 2388, baseType: !1044, offset: 576)
!1044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1040, elements: !328)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !570, file: !14, line: 2390, baseType: !1040, offset: 576)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !570, file: !14, line: 2391, baseType: !1040, offset: 576)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !570, file: !14, line: 2392, baseType: !1040, offset: 576)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !570, file: !14, line: 2393, baseType: !1040, offset: 576)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !556, file: !14, line: 1197, baseType: !1050, size: 64, offset: 384)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1052)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1053)
!1053 = !{!1054, !1058, !1062, !1063, !1067, !1073, !1077, !1078, !1079, !1083, !1087, !1091, !1092, !1093, !1099, !1103, !1104, !1111, !1112, !1113, !1114, !1118, !1122, !1171, !1187, !1188}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1052, file: !14, line: 2058, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!406, !555}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1052, file: !14, line: 2059, baseType: !1059, size: 64, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{null, !406}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1052, file: !14, line: 2060, baseType: !1059, size: 64, offset: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1052, file: !14, line: 2062, baseType: !1064, size: 64, offset: 192)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{null, !406, !109}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1052, file: !14, line: 2063, baseType: !1068, size: 64, offset: 256)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!109, !406, !1071}
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1052, file: !14, line: 2064, baseType: !1074, size: 64, offset: 320)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!109, !406}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1052, file: !14, line: 2065, baseType: !1059, size: 64, offset: 384)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1052, file: !14, line: 2066, baseType: !590, size: 64, offset: 448)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1052, file: !14, line: 2067, baseType: !1080, size: 64, offset: 512)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!109, !555, !109}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1052, file: !14, line: 2068, baseType: !1084, size: 64, offset: 576)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!109, !555, !13}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1052, file: !14, line: 2069, baseType: !1088, size: 64, offset: 640)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!109, !555}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1052, file: !14, line: 2070, baseType: !1084, size: 64, offset: 704)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1052, file: !14, line: 2071, baseType: !1088, size: 64, offset: 768)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1052, file: !14, line: 2072, baseType: !1094, size: 64, offset: 832)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!109, !441, !1097}
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1052, file: !14, line: 2073, baseType: !1100, size: 64, offset: 896)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!109, !555, !209, !327}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1052, file: !14, line: 2074, baseType: !590, size: 64, offset: 960)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1052, file: !14, line: 2076, baseType: !1105, size: 64, offset: 1024)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!109, !1108, !441}
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1110, line: 66, flags: DIFlagFwdDecl)
!1110 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1052, file: !14, line: 2077, baseType: !1105, size: 64, offset: 1088)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1052, file: !14, line: 2078, baseType: !1105, size: 64, offset: 1152)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1052, file: !14, line: 2079, baseType: !1105, size: 64, offset: 1216)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1052, file: !14, line: 2081, baseType: !1115, size: 64, offset: 1280)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!359, !555, !109, !327, !374, !565}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1052, file: !14, line: 2082, baseType: !1119, size: 64, offset: 1344)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!359, !555, !109, !247, !374, !565}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1052, file: !14, line: 2083, baseType: !1123, size: 64, offset: 1408)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!1126, !406}
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !1129)
!1129 = !{!1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1154, !1155, !1156}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1128, file: !19, line: 297, baseType: !909, size: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1128, file: !19, line: 298, baseType: !202, size: 128, offset: 128)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1128, file: !19, line: 299, baseType: !202, size: 128, offset: 256)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1128, file: !19, line: 300, baseType: !202, size: 128, offset: 384)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1128, file: !19, line: 301, baseType: !665, size: 256, offset: 512)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1128, file: !19, line: 302, baseType: !259, size: 32, offset: 768)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1128, file: !19, line: 303, baseType: !279, size: 32, offset: 800)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1128, file: !19, line: 304, baseType: !555, size: 64, offset: 832)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1128, file: !19, line: 305, baseType: !1139, size: 64, offset: 896)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1140)
!1140 = !{!1141, !1153}
!1141 = !DIDerivedType(tag: DW_TAG_member, scope: !1139, file: !19, line: 69, baseType: !1142, size: 32)
!1142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1139, file: !19, line: 69, size: 32, elements: !1143)
!1143 = !{!1144, !1145, !1146}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1142, file: !19, line: 70, baseType: !412, size: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1142, file: !19, line: 71, baseType: !421, size: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1142, file: !19, line: 72, baseType: !1147, size: 32)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1148, line: 24, baseType: !1149)
!1148 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1148, line: 22, size: 32, elements: !1150)
!1150 = !{!1151}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1149, file: !1148, line: 23, baseType: !1152, size: 32)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1148, line: 20, baseType: !418)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1139, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1128, file: !19, line: 306, baseType: !565, size: 64, offset: 960)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1128, file: !19, line: 307, baseType: !197, size: 64, offset: 1024)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1128, file: !19, line: 308, baseType: !1157, size: 576, offset: 1088)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1158)
!1158 = !{!1159, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1170}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1157, file: !19, line: 206, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !567)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1157, file: !19, line: 207, baseType: !1160, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1157, file: !19, line: 208, baseType: !1160, size: 64, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1157, file: !19, line: 209, baseType: !1160, size: 64, offset: 192)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1157, file: !19, line: 210, baseType: !1160, size: 64, offset: 256)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1157, file: !19, line: 211, baseType: !1160, size: 64, offset: 320)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1157, file: !19, line: 212, baseType: !1160, size: 64, offset: 384)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1157, file: !19, line: 213, baseType: !1168, size: 64, offset: 448)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1169, line: 8, baseType: !676)
!1169 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1157, file: !19, line: 214, baseType: !1168, size: 64, offset: 512)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1052, file: !14, line: 2085, baseType: !1172, size: 64, offset: 1472)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!363, !555, !1175}
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1177, line: 15, size: 256, elements: !1178)
!1177 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1178 = !{!1179, !1181, !1182, !1183, !1184}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1176, file: !1177, line: 16, baseType: !1180, size: 32)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !203, line: 154, baseType: !7)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1176, file: !1177, line: 19, baseType: !109, size: 32, offset: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1176, file: !1177, line: 26, baseType: !197, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1176, file: !1177, line: 33, baseType: !197, size: 64, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1176, file: !1177, line: 36, baseType: !1185, size: 64, offset: 192)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1052, file: !14, line: 2087, baseType: !1172, size: 64, offset: 1536)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1052, file: !14, line: 2089, baseType: !590, size: 64, offset: 1600)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !556, file: !14, line: 1198, baseType: !1190, size: 64, offset: 448)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1192)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !1193)
!1193 = !{!1194, !1198, !1202, !1206, !1207, !1208, !1209, !1210, !1215, !1220, !1224}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1192, file: !19, line: 325, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!109, !1127}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1192, file: !19, line: 326, baseType: !1199, size: 64, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!1127, !555, !109}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1192, file: !19, line: 327, baseType: !1203, size: 64, offset: 128)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{null, !1127}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1192, file: !19, line: 328, baseType: !1195, size: 64, offset: 192)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1192, file: !19, line: 329, baseType: !1195, size: 64, offset: 256)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1192, file: !19, line: 330, baseType: !1195, size: 64, offset: 320)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1192, file: !19, line: 331, baseType: !1080, size: 64, offset: 384)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1192, file: !19, line: 334, baseType: !1211, size: 64, offset: 448)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!1214, !406}
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1192, file: !19, line: 335, baseType: !1216, size: 64, offset: 512)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!109, !406, !1219}
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1192, file: !19, line: 337, baseType: !1221, size: 64, offset: 576)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!109, !406, !1214}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1192, file: !19, line: 339, baseType: !1225, size: 64, offset: 640)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!109, !555, !1228}
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !556, file: !14, line: 1199, baseType: !1230, size: 64, offset: 512)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1232)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !1233)
!1233 = !{!1234, !1245, !1246, !1250, !1251, !1252, !1267, !1290, !1294, !1295, !1318}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1232, file: !19, line: 431, baseType: !1235, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!109, !555, !109, !109, !1238}
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1240)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1241, line: 8, size: 128, elements: !1242)
!1241 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1242 = !{!1243, !1244}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1240, file: !1241, line: 9, baseType: !549, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1240, file: !1241, line: 10, baseType: !441, size: 64, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1232, file: !19, line: 432, baseType: !1080, size: 64, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1232, file: !19, line: 433, baseType: !1247, size: 64, offset: 128)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!109, !555, !7}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1232, file: !19, line: 434, baseType: !1247, size: 64, offset: 192)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1232, file: !19, line: 435, baseType: !1080, size: 64, offset: 256)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1232, file: !19, line: 436, baseType: !1253, size: 64, offset: 320)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!109, !555, !109, !1256}
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !1258)
!1258 = !{!1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1257, file: !19, line: 418, baseType: !109, size: 32)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1257, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1257, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1257, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1257, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1257, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1257, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1257, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1232, file: !19, line: 437, baseType: !1268, size: 64, offset: 384)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!109, !555, !1139, !1271}
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !1273)
!1273 = !{!1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1272, file: !19, line: 346, baseType: !109, size: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1272, file: !19, line: 347, baseType: !477, size: 64, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1272, file: !19, line: 348, baseType: !477, size: 64, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1272, file: !19, line: 349, baseType: !477, size: 64, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1272, file: !19, line: 350, baseType: !477, size: 64, offset: 256)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1272, file: !19, line: 351, baseType: !477, size: 64, offset: 320)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1272, file: !19, line: 352, baseType: !477, size: 64, offset: 384)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1272, file: !19, line: 353, baseType: !675, size: 64, offset: 448)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1272, file: !19, line: 355, baseType: !675, size: 64, offset: 512)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1272, file: !19, line: 356, baseType: !109, size: 32, offset: 576)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1272, file: !19, line: 357, baseType: !109, size: 32, offset: 608)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1272, file: !19, line: 358, baseType: !477, size: 64, offset: 640)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1272, file: !19, line: 359, baseType: !477, size: 64, offset: 704)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1272, file: !19, line: 360, baseType: !477, size: 64, offset: 768)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1272, file: !19, line: 361, baseType: !675, size: 64, offset: 832)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1272, file: !19, line: 362, baseType: !109, size: 32, offset: 896)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1232, file: !19, line: 438, baseType: !1291, size: 64, offset: 448)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!109, !555, !1228, !1271}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1232, file: !19, line: 440, baseType: !1268, size: 64, offset: 512)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1232, file: !19, line: 441, baseType: !1296, size: 64, offset: 576)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!109, !555, !1299}
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !1301)
!1301 = !{!1302, !1303}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1300, file: !19, line: 412, baseType: !7, size: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1300, file: !19, line: 413, baseType: !1304, size: 1344, offset: 64)
!1304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1305, size: 1344, elements: !328)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !1306)
!1306 = !{!1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1317}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1305, file: !19, line: 398, baseType: !7, size: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1305, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1305, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1305, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1305, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1305, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1305, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1305, file: !19, line: 406, baseType: !479, size: 64, offset: 256)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1305, file: !19, line: 407, baseType: !1316, size: 64, offset: 320)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !203, line: 132, baseType: !477)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1305, file: !19, line: 408, baseType: !1316, size: 64, offset: 384)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1232, file: !19, line: 442, baseType: !1247, size: 64, offset: 640)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !556, file: !14, line: 1200, baseType: !1320, size: 64, offset: 576)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1322)
!1322 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !556, file: !14, line: 1201, baseType: !197, size: 64, offset: 640)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !556, file: !14, line: 1202, baseType: !197, size: 64, offset: 704)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !556, file: !14, line: 1203, baseType: !197, size: 64, offset: 768)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !556, file: !14, line: 1204, baseType: !441, size: 64, offset: 832)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !556, file: !14, line: 1205, baseType: !1328, size: 320, offset: 896)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1329, line: 48, size: 320, elements: !1330)
!1329 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1330 = !{!1331, !1332, !1333, !1334, !1335}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1328, file: !1329, line: 49, baseType: !669, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1328, file: !1329, line: 55, baseType: !669, size: 64, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1328, file: !1329, line: 57, baseType: !679, size: 32, offset: 128)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1328, file: !1329, line: 59, baseType: !623, size: 32, offset: 160)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1328, file: !1329, line: 60, baseType: !202, size: 128, offset: 192)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !556, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !556, file: !14, line: 1207, baseType: !279, size: 32, offset: 1248)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !556, file: !14, line: 1209, baseType: !198, size: 64, offset: 1280)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !556, file: !14, line: 1211, baseType: !1340, size: 64, offset: 1344)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1343)
!1343 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !556, file: !14, line: 1223, baseType: !1345, size: 64, offset: 1408)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !458, line: 34, size: 64, elements: !1346)
!1346 = !{!1347}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1345, file: !458, line: 35, baseType: !461, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !556, file: !14, line: 1224, baseType: !202, size: 128, offset: 1472)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !556, file: !14, line: 1225, baseType: !1350, size: 64, offset: 1600)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !556, file: !14, line: 1226, baseType: !1353, size: 64, offset: 1664)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !556, file: !14, line: 1227, baseType: !1356, size: 64, offset: 1728)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !556, file: !14, line: 1228, baseType: !1359, size: 64, offset: 1792)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !556, file: !14, line: 1229, baseType: !909, size: 128, offset: 1856)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !556, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !556, file: !14, line: 1231, baseType: !1364, size: 2496, offset: 2048)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !1365)
!1365 = !{!1366, !1367, !1368, !1370, !1402}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1364, file: !19, line: 522, baseType: !7, size: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1364, file: !19, line: 523, baseType: !1328, size: 320, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1364, file: !19, line: 524, baseType: !1369, size: 192, offset: 384)
!1369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 192, elements: !328)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1364, file: !19, line: 525, baseType: !1371, size: 1728, offset: 576)
!1371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1372, size: 1728, elements: !328)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1373)
!1373 = !{!1374, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1372, file: !19, line: 223, baseType: !1375, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !1377)
!1377 = !{!1378, !1379, !1392, !1393}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1376, file: !19, line: 446, baseType: !109, size: 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1376, file: !19, line: 447, baseType: !1380, size: 64, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1382)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !1383)
!1383 = !{!1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1382, file: !19, line: 313, baseType: !1080, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1382, file: !19, line: 314, baseType: !1080, size: 64, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1382, file: !19, line: 315, baseType: !1080, size: 64, offset: 128)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1382, file: !19, line: 316, baseType: !1080, size: 64, offset: 192)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1382, file: !19, line: 317, baseType: !1195, size: 64, offset: 256)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1382, file: !19, line: 318, baseType: !1195, size: 64, offset: 320)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1382, file: !19, line: 319, baseType: !1195, size: 64, offset: 384)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1382, file: !19, line: 320, baseType: !1225, size: 64, offset: 448)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1376, file: !19, line: 448, baseType: !594, size: 64, offset: 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1376, file: !19, line: 449, baseType: !1375, size: 64, offset: 192)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1372, file: !19, line: 224, baseType: !109, size: 32, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1372, file: !19, line: 226, baseType: !202, size: 128, offset: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1372, file: !19, line: 227, baseType: !197, size: 64, offset: 256)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1372, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1372, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1372, file: !19, line: 230, baseType: !1160, size: 64, offset: 384)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1372, file: !19, line: 231, baseType: !1160, size: 64, offset: 448)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1372, file: !19, line: 232, baseType: !198, size: 64, offset: 512)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1364, file: !19, line: 526, baseType: !1403, size: 192, offset: 2304)
!1403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1380, size: 192, elements: !328)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !556, file: !14, line: 1233, baseType: !1405, size: 2368, offset: 4544)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1406)
!1406 = !{!1407, !1408, !1409}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1405, file: !14, line: 1185, baseType: !297, size: 16)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1405, file: !14, line: 1186, baseType: !297, size: 16, offset: 16)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1405, file: !14, line: 1187, baseType: !1410, size: 2304, offset: 64)
!1410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1411, size: 2304, elements: !328)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1412, line: 12, size: 768, elements: !1413)
!1412 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1413 = !{!1414, !1428, !1429, !3577, !3578}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1411, file: !1412, line: 13, baseType: !1415, size: 384)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1416, line: 17, size: 384, elements: !1417)
!1416 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1417 = !{!1418, !1419, !1420, !1427}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1415, file: !1416, line: 18, baseType: !109, size: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1415, file: !1416, line: 19, baseType: !109, size: 32, offset: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1415, file: !1416, line: 20, baseType: !1421, size: 192, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1422, line: 41, baseType: !1423)
!1422 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1422, line: 37, size: 192, elements: !1424)
!1424 = !{!1425, !1426}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1423, file: !1422, line: 38, baseType: !259, size: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1423, file: !1422, line: 39, baseType: !202, size: 128, offset: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1415, file: !1416, line: 22, baseType: !883, size: 128, align: 64, offset: 256)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1411, file: !1412, line: 14, baseType: !737, size: 64, offset: 384)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1411, file: !1412, line: 15, baseType: !1430, size: 64, offset: 448)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1431, line: 16, size: 64, elements: !1432)
!1431 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1432 = !{!1433}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1430, file: !1431, line: 17, baseType: !1434, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1110, line: 746, size: 58368, elements: !1436)
!1436 = !{!1437, !1445, !1446, !1447, !1453, !1454, !1455, !1456, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1527, !1538, !1633, !1637, !1640, !1671, !1672, !1673, !1674, !1678, !1680, !1681, !1682, !1683, !1684, !1685, !1696, !1697, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1714, !1715, !1722, !1723, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2751, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2799, !2805, !2806, !2807, !2808, !2809, !2813, !2816, !2823, !2828, !2831, !2834, !2837, !2840, !2978, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3016, !3017, !3018, !3027, !3035, !3036, !3037, !3038, !3039, !3044, !3045, !3046, !3049, !3050, !3053, !3056, !3059, !3067, !3070, !3071, !3157, !3158, !3159, !3160, !3161, !3167, !3168, !3169, !3170, !3173, !3174, !3177, !3180, !3181, !3184, !3185, !3186, !3189, !3190, !3191, !3192, !3193, !3194, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3226, !3227, !3233, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3245, !3317, !3319, !3320, !3321, !3322, !3323, !3324, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3354, !3355, !3356}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1435, file: !1110, line: 752, baseType: !1438, size: 192)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1439, line: 56, size: 192, elements: !1440)
!1439 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1440 = !{!1441, !1442, !1443, !1444}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1438, file: !1439, line: 57, baseType: !197, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1438, file: !1439, line: 58, baseType: !197, size: 64, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1438, file: !1439, line: 59, baseType: !230, size: 32, offset: 128)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1438, file: !1439, line: 61, baseType: !230, size: 32, offset: 160)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1435, file: !1110, line: 754, baseType: !7, size: 32, offset: 192)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1435, file: !1110, line: 767, baseType: !198, size: 64, offset: 256)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1435, file: !1110, line: 768, baseType: !1448, size: 32, offset: 320)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1449, line: 113, baseType: !1450)
!1449 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1449, line: 111, size: 32, elements: !1451)
!1451 = !{!1452}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1450, file: !1449, line: 112, baseType: !279, size: 32)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1435, file: !1110, line: 770, baseType: !7, size: 32, offset: 352)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1435, file: !1110, line: 771, baseType: !7, size: 32, offset: 384)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1435, file: !1110, line: 774, baseType: !109, size: 32, offset: 416)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1435, file: !1110, line: 775, baseType: !1457, size: 128, offset: 448)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1458, line: 58, size: 128, elements: !1459)
!1458 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1459 = !{!1460, !1466, !1471, !1472}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1457, file: !1458, line: 59, baseType: !1461, size: 64)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1462, line: 60, size: 64, elements: !1463)
!1462 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1463 = !{!1464}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1461, file: !1462, line: 61, baseType: !1465, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, scope: !1457, file: !1458, line: 60, baseType: !1467, size: 32, offset: 64)
!1467 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1457, file: !1458, line: 60, size: 32, elements: !1468)
!1468 = !{!1469, !1470}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1467, file: !1458, line: 61, baseType: !7, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1467, file: !1458, line: 62, baseType: !279, size: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1457, file: !1458, line: 65, baseType: !295, size: 16, offset: 96)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1457, file: !1458, line: 65, baseType: !295, size: 16, offset: 112)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1435, file: !1110, line: 776, baseType: !7, size: 32, offset: 576)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1435, file: !1110, line: 777, baseType: !197, size: 64, offset: 640)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1435, file: !1110, line: 778, baseType: !1434, size: 64, offset: 704)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1435, file: !1110, line: 787, baseType: !109, size: 32, offset: 768)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1435, file: !1110, line: 788, baseType: !109, size: 32, offset: 800)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1435, file: !1110, line: 790, baseType: !109, size: 32, offset: 832)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1435, file: !1110, line: 792, baseType: !109, size: 32, offset: 864)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1435, file: !1110, line: 793, baseType: !109, size: 32, offset: 896)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1435, file: !1110, line: 794, baseType: !109, size: 32, offset: 928)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1435, file: !1110, line: 795, baseType: !7, size: 32, offset: 960)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1435, file: !1110, line: 797, baseType: !1484, size: 2048, offset: 1024)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1110, line: 551, size: 2048, elements: !1485)
!1485 = !{!1486, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1506, !1509, !1510, !1511}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1484, file: !1110, line: 553, baseType: !1487, size: 128)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1110, line: 411, size: 128, elements: !1488)
!1488 = !{!1489, !1490}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1487, file: !1110, line: 412, baseType: !197, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1487, file: !1110, line: 413, baseType: !230, size: 32, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1484, file: !1110, line: 554, baseType: !777, size: 192, align: 64, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1484, file: !1110, line: 555, baseType: !477, size: 64, offset: 320)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1484, file: !1110, line: 556, baseType: !477, size: 64, offset: 384)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1484, file: !1110, line: 558, baseType: !202, size: 128, offset: 448)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1484, file: !1110, line: 559, baseType: !7, size: 32, offset: 576)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1484, file: !1110, line: 561, baseType: !477, size: 64, offset: 640)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1484, file: !1110, line: 562, baseType: !477, size: 64, offset: 704)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1484, file: !1110, line: 563, baseType: !477, size: 64, offset: 768)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1484, file: !1110, line: 564, baseType: !477, size: 64, offset: 832)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1484, file: !1110, line: 565, baseType: !675, size: 64, offset: 896)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1484, file: !1110, line: 566, baseType: !477, size: 64, offset: 960)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1484, file: !1110, line: 568, baseType: !477, size: 64, offset: 1024)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1484, file: !1110, line: 571, baseType: !109, size: 32, offset: 1088)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1484, file: !1110, line: 572, baseType: !1505, size: 64, offset: 1152)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1484, file: !1110, line: 574, baseType: !1507, size: 64, offset: 1216)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1110, line: 49, flags: DIFlagFwdDecl)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1484, file: !1110, line: 576, baseType: !1507, size: 64, offset: 1280)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1484, file: !1110, line: 578, baseType: !197, size: 64, offset: 1344)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1484, file: !1110, line: 588, baseType: !1512, size: 512, align: 512, offset: 1536)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1110, line: 497, size: 512, align: 512, elements: !1513)
!1513 = !{!1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1512, file: !1110, line: 498, baseType: !477, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1512, file: !1110, line: 499, baseType: !477, size: 64, offset: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1512, file: !1110, line: 500, baseType: !477, size: 64, offset: 128)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1512, file: !1110, line: 501, baseType: !230, size: 32, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1512, file: !1110, line: 502, baseType: !230, size: 32, offset: 224)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1512, file: !1110, line: 503, baseType: !197, size: 64, offset: 256)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1512, file: !1110, line: 504, baseType: !197, size: 64, offset: 320)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1512, file: !1110, line: 505, baseType: !197, size: 64, offset: 384)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1512, file: !1110, line: 506, baseType: !1523, size: 64, align: 64, offset: 448)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1110, line: 445, size: 64, align: 64, elements: !1524)
!1524 = !{!1525, !1526}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1523, file: !1110, line: 446, baseType: !7, size: 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1523, file: !1110, line: 447, baseType: !7, size: 32, offset: 32)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1435, file: !1110, line: 798, baseType: !1528, size: 384, offset: 3072)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1110, line: 592, size: 384, elements: !1529)
!1529 = !{!1530, !1531, !1532, !1533, !1534, !1535, !1536}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1528, file: !1110, line: 593, baseType: !202, size: 128)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1528, file: !1110, line: 594, baseType: !197, size: 64, offset: 128)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1528, file: !1110, line: 595, baseType: !197, size: 64, offset: 192)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1528, file: !1110, line: 596, baseType: !7, size: 32, offset: 256)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1528, file: !1110, line: 597, baseType: !297, size: 16, offset: 288)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1528, file: !1110, line: 598, baseType: !297, size: 16, offset: 304)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1528, file: !1110, line: 600, baseType: !1537, size: 64, offset: 320)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1435, file: !1110, line: 799, baseType: !1539, size: 1792, offset: 3456)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1110, line: 610, size: 1792, elements: !1540)
!1540 = !{!1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1630, !1631}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1539, file: !1110, line: 611, baseType: !777, size: 192, align: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1539, file: !1110, line: 618, baseType: !477, size: 64, offset: 192)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1539, file: !1110, line: 619, baseType: !477, size: 64, offset: 256)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1539, file: !1110, line: 620, baseType: !477, size: 64, offset: 320)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1539, file: !1110, line: 621, baseType: !477, size: 64, offset: 384)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1539, file: !1110, line: 622, baseType: !477, size: 64, offset: 448)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1539, file: !1110, line: 629, baseType: !675, size: 64, offset: 512)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1539, file: !1110, line: 630, baseType: !477, size: 64, offset: 576)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1539, file: !1110, line: 631, baseType: !7, size: 32, offset: 640)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1539, file: !1110, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1539, file: !1110, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1539, file: !1110, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1539, file: !1110, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1539, file: !1110, line: 662, baseType: !1555, size: 512, offset: 704)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1556)
!1556 = !{!1557, !1565, !1566, !1571, !1626, !1627, !1628, !1629}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1555, file: !25, line: 119, baseType: !1558, size: 256)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1559, line: 9, size: 256, elements: !1560)
!1559 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1560 = !{!1561, !1562}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1558, file: !1559, line: 10, baseType: !777, size: 192, align: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1558, file: !1559, line: 11, baseType: !1563, size: 64, offset: 192)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1564, line: 29, baseType: !675)
!1564 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1555, file: !25, line: 120, baseType: !1563, size: 64, offset: 256)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1555, file: !25, line: 121, baseType: !1567, size: 64, offset: 320)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!24, !1570}
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1555, file: !25, line: 122, baseType: !1572, size: 64, offset: 384)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1574)
!1574 = !{!1575, !1600, !1601, !1604, !1609, !1610, !1621, !1625}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1573, file: !25, line: 160, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1578)
!1578 = !{!1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1577, file: !25, line: 216, baseType: !623, size: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1577, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1577, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1577, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1577, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1577, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1577, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1577, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1577, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1577, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1577, file: !25, line: 227, baseType: !297, size: 16, offset: 192)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1577, file: !25, line: 228, baseType: !297, size: 16, offset: 208)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1577, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1577, file: !25, line: 235, baseType: !1563, size: 64, offset: 256)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1577, file: !25, line: 236, baseType: !1570, size: 64, offset: 320)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1577, file: !25, line: 237, baseType: !1563, size: 64, offset: 384)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1577, file: !25, line: 238, baseType: !1570, size: 64, offset: 448)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1577, file: !25, line: 239, baseType: !1597, size: 4096, align: 512, offset: 512)
!1597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1573, size: 4096, align: 512, elements: !1598)
!1598 = !{!1599}
!1599 = !DISubrange(count: 8)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1573, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1573, file: !25, line: 162, baseType: !1602, size: 32, offset: 96)
!1602 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !203, line: 32, baseType: !1603)
!1603 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !361, line: 96, baseType: !109)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1573, file: !25, line: 163, baseType: !1605, size: 32, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !448, line: 274, baseType: !1606)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !448, line: 274, size: 32, elements: !1607)
!1607 = !{!1608}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1606, file: !448, line: 274, baseType: !452, size: 32)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1573, file: !25, line: 164, baseType: !1570, size: 64, offset: 192)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1573, file: !25, line: 165, baseType: !1611, size: 128, offset: 256)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1559, line: 14, size: 128, elements: !1612)
!1612 = !{!1613}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1611, file: !1559, line: 15, baseType: !1614, size: 128)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !778, line: 26, size: 128, elements: !1615)
!1615 = !{!1616, !1620}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1614, file: !778, line: 27, baseType: !1617, size: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !778, line: 12, size: 64, elements: !1618)
!1618 = !{!1619}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1617, file: !778, line: 13, baseType: !782, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1614, file: !778, line: 28, baseType: !782, size: 64, offset: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1573, file: !25, line: 166, baseType: !1622, size: 64, offset: 384)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!1563}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1573, file: !25, line: 167, baseType: !1563, size: 64, offset: 448)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1555, file: !25, line: 123, baseType: !287, size: 8, offset: 448)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1555, file: !25, line: 124, baseType: !287, size: 8, offset: 456)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1555, file: !25, line: 125, baseType: !287, size: 8, offset: 464)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1555, file: !25, line: 126, baseType: !287, size: 8, offset: 472)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1539, file: !1110, line: 671, baseType: !1555, size: 512, offset: 1216)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1539, file: !1110, line: 679, baseType: !1632, size: 64, offset: 1728)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1435, file: !1110, line: 800, baseType: !1634, size: 64, offset: 5248)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1636)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1110, line: 800, flags: DIFlagFwdDecl)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1435, file: !1110, line: 809, baseType: !1638, size: 64, offset: 5312)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1110, line: 70, flags: DIFlagFwdDecl)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1435, file: !1110, line: 825, baseType: !1641, size: 2048, align: 512, offset: 5632)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1110, line: 509, size: 2048, align: 512, elements: !1642)
!1642 = !{!1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1641, file: !1110, line: 511, baseType: !477, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1641, file: !1110, line: 512, baseType: !477, size: 64, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1641, file: !1110, line: 513, baseType: !477, size: 64, offset: 128)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1641, file: !1110, line: 514, baseType: !477, size: 64, offset: 192)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1641, file: !1110, line: 515, baseType: !477, size: 64, offset: 256)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1641, file: !1110, line: 516, baseType: !477, size: 64, offset: 320)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1641, file: !1110, line: 518, baseType: !477, size: 64, offset: 384)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1641, file: !1110, line: 519, baseType: !477, size: 64, offset: 448)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1641, file: !1110, line: 520, baseType: !675, size: 64, offset: 512)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1641, file: !1110, line: 522, baseType: !477, size: 64, offset: 576)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1641, file: !1110, line: 523, baseType: !477, size: 64, offset: 640)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1641, file: !1110, line: 524, baseType: !675, size: 64, offset: 704)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1641, file: !1110, line: 526, baseType: !675, size: 64, offset: 768)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1641, file: !1110, line: 527, baseType: !477, size: 64, offset: 832)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1641, file: !1110, line: 529, baseType: !477, size: 64, offset: 896)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1641, file: !1110, line: 530, baseType: !477, size: 64, offset: 960)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1641, file: !1110, line: 531, baseType: !477, size: 64, offset: 1024)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1641, file: !1110, line: 532, baseType: !477, size: 64, offset: 1088)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1641, file: !1110, line: 533, baseType: !477, size: 64, offset: 1152)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1641, file: !1110, line: 535, baseType: !477, size: 64, offset: 1216)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1641, file: !1110, line: 536, baseType: !477, size: 64, offset: 1280)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1641, file: !1110, line: 537, baseType: !477, size: 64, offset: 1344)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1641, file: !1110, line: 538, baseType: !477, size: 64, offset: 1408)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1641, file: !1110, line: 539, baseType: !477, size: 64, offset: 1472)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1641, file: !1110, line: 540, baseType: !477, size: 64, offset: 1536)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1641, file: !1110, line: 541, baseType: !477, size: 64, offset: 1600)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1641, file: !1110, line: 542, baseType: !477, size: 64, offset: 1664)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1641, file: !1110, line: 543, baseType: !477, size: 64, offset: 1728)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1435, file: !1110, line: 833, baseType: !7, size: 32, offset: 7680)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1435, file: !1110, line: 836, baseType: !7, size: 32, offset: 7712)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1435, file: !1110, line: 837, baseType: !109, size: 32, offset: 7744)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1435, file: !1110, line: 838, baseType: !1675, size: 64, offset: 7808)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1677)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !223, line: 19, baseType: !222)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1435, file: !1110, line: 839, baseType: !1679, size: 64, offset: 7872)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1435, file: !1110, line: 840, baseType: !1677, size: 64, offset: 7936)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1435, file: !1110, line: 841, baseType: !198, size: 64, offset: 8000)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1435, file: !1110, line: 843, baseType: !297, size: 16, offset: 8064)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1435, file: !1110, line: 845, baseType: !297, size: 16, offset: 8080)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1435, file: !1110, line: 848, baseType: !109, size: 32, offset: 8096)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1435, file: !1110, line: 849, baseType: !1686, size: 32, offset: 8128)
!1686 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1110, line: 718, size: 32, elements: !1687)
!1687 = !{!1688, !1695}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1686, file: !1110, line: 724, baseType: !1689, size: 32)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1686, file: !1110, line: 719, size: 32, elements: !1690)
!1690 = !{!1691, !1692, !1693, !1694}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1689, file: !1110, line: 720, baseType: !287, size: 8)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1689, file: !1110, line: 721, baseType: !287, size: 8, offset: 8)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1689, file: !1110, line: 722, baseType: !287, size: 8, offset: 16)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1689, file: !1110, line: 723, baseType: !287, size: 8, offset: 24)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1686, file: !1110, line: 725, baseType: !230, size: 32)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1435, file: !1110, line: 850, baseType: !202, size: 128, offset: 8192)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1435, file: !1110, line: 851, baseType: !1698, size: 64, offset: 8320)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1110, line: 60, flags: DIFlagFwdDecl)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1435, file: !1110, line: 855, baseType: !197, size: 64, offset: 8384)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1435, file: !1110, line: 856, baseType: !287, size: 8, offset: 8448)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1435, file: !1110, line: 857, baseType: !287, size: 8, offset: 8456)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1435, file: !1110, line: 858, baseType: !109, size: 32, offset: 8480)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1435, file: !1110, line: 859, baseType: !202, size: 128, offset: 8512)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1435, file: !1110, line: 860, baseType: !109, size: 32, offset: 8640)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1435, file: !1110, line: 861, baseType: !202, size: 128, offset: 8704)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1435, file: !1110, line: 873, baseType: !1708, size: 256, offset: 8832)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1110, line: 376, size: 256, elements: !1709)
!1709 = !{!1710, !1711, !1712, !1713}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1708, file: !1110, line: 381, baseType: !197, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1708, file: !1110, line: 384, baseType: !479, size: 64, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1708, file: !1110, line: 389, baseType: !479, size: 64, offset: 128)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1708, file: !1110, line: 392, baseType: !479, size: 64, offset: 192)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1435, file: !1110, line: 875, baseType: !202, size: 128, offset: 9088)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1435, file: !1110, line: 877, baseType: !1716, size: 320, offset: 9216)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1717, line: 86, size: 320, elements: !1718)
!1717 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1718 = !{!1719, !1720, !1721}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1716, file: !1717, line: 87, baseType: !109, size: 32)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1716, file: !1717, line: 88, baseType: !202, size: 128, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1716, file: !1717, line: 89, baseType: !202, size: 128, offset: 192)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1435, file: !1110, line: 878, baseType: !777, size: 192, align: 64, offset: 9536)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1435, file: !1110, line: 881, baseType: !1724, size: 64, offset: 9728)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1726)
!1726 = !{!1727, !2665}
!1727 = !DIDerivedType(tag: DW_TAG_member, scope: !1725, file: !38, line: 734, baseType: !1728, size: 10240)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1725, file: !38, line: 734, size: 10240, elements: !1729)
!1729 = !{!1730, !1734, !1747, !2542, !2543, !2544, !2545, !2546, !2547, !2554, !2555, !2556, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2595, !2597, !2600, !2645, !2646, !2647, !2650, !2651, !2652, !2655, !2656, !2657, !2663, !2664}
!1730 = !DIDerivedType(tag: DW_TAG_member, scope: !1728, file: !38, line: 739, baseType: !1731, size: 512, align: 512)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1728, file: !38, line: 739, size: 512, align: 512, elements: !1732)
!1732 = !{!1733}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1731, file: !38, line: 747, baseType: !279, size: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1728, file: !38, line: 750, baseType: !1735, size: 128, offset: 512)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1736, line: 218, size: 128, elements: !1737)
!1736 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1737 = !{!1738, !1745, !1746}
!1738 = !DIDerivedType(tag: DW_TAG_member, scope: !1735, file: !1736, line: 219, baseType: !1739, size: 32)
!1739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1735, file: !1736, line: 219, size: 32, elements: !1740)
!1740 = !{!1741, !1742}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1739, file: !1736, line: 220, baseType: !259, size: 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1739, file: !1736, line: 221, baseType: !1743)
!1743 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1736, line: 197, baseType: !1744)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1736, line: 197, elements: !951)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1735, file: !1736, line: 223, baseType: !7, size: 32, offset: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1735, file: !1736, line: 224, baseType: !198, size: 64, offset: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1728, file: !38, line: 752, baseType: !1748, size: 64, offset: 640)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!197, !1751, !197, !197, !197, !197}
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1753)
!1753 = !{!1754, !1760, !1761, !1763, !1764, !1765, !1766, !1767, !1817, !2007, !2016, !2017, !2018, !2532, !2533, !2534, !2535, !2537, !2538, !2541}
!1754 = !DIDerivedType(tag: DW_TAG_member, scope: !1752, file: !14, line: 995, baseType: !1755, size: 128)
!1755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1752, file: !14, line: 995, size: 128, elements: !1756)
!1756 = !{!1757, !1758, !1759}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1755, file: !14, line: 996, baseType: !1461, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1755, file: !14, line: 997, baseType: !883, size: 128, align: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1755, file: !14, line: 998, baseType: !7, size: 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1752, file: !14, line: 1005, baseType: !259, size: 32, offset: 128)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1752, file: !14, line: 1006, baseType: !1762, size: 32, offset: 160)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !203, line: 156, baseType: !7)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1752, file: !14, line: 1007, baseType: !669, size: 64, offset: 192)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1752, file: !14, line: 1008, baseType: !665, size: 256, offset: 256)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1752, file: !14, line: 1009, baseType: !565, size: 64, offset: 512)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1752, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1752, file: !14, line: 1011, baseType: !1768, size: 256, offset: 640)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1769)
!1769 = !{!1770, !1791, !1813, !1814, !1815, !1816}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1768, file: !14, line: 949, baseType: !1771, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1772, line: 34, baseType: !1773)
!1772 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1772, line: 25, size: 64, elements: !1774)
!1774 = !{!1775}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1773, file: !1772, line: 26, baseType: !1776, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1777, line: 27, baseType: !1778)
!1777 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1777, line: 13, size: 64, elements: !1779)
!1779 = !{!1780, !1790}
!1780 = !DIDerivedType(tag: DW_TAG_member, scope: !1778, file: !1777, line: 14, baseType: !1781, size: 32)
!1781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1778, file: !1777, line: 14, size: 32, elements: !1782)
!1782 = !{!1783, !1784}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1781, file: !1777, line: 15, baseType: !279, size: 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, scope: !1781, file: !1777, line: 16, baseType: !1785, size: 32)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1781, file: !1777, line: 16, size: 32, elements: !1786)
!1786 = !{!1787, !1788}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1785, file: !1777, line: 18, baseType: !287, size: 8)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1785, file: !1777, line: 19, baseType: !1789, size: 24, offset: 8)
!1789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 24, elements: !328)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1778, file: !1777, line: 26, baseType: !271, size: 32, offset: 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1768, file: !14, line: 950, baseType: !1792, size: 64, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1794)
!1794 = !{!1795, !1796, !1797, !1798, !1800, !1801, !1802, !1803}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1793, file: !30, line: 61, baseType: !1448, size: 32)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1793, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1793, file: !30, line: 63, baseType: !259, size: 32, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1793, file: !30, line: 65, baseType: !1799, size: 256, offset: 128)
!1799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1036, size: 256, elements: !893)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1793, file: !30, line: 66, baseType: !1036, size: 64, offset: 384)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1793, file: !30, line: 68, baseType: !1421, size: 192, offset: 448)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1793, file: !30, line: 69, baseType: !883, size: 128, align: 64, offset: 640)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1793, file: !30, line: 70, baseType: !1804, offset: 768)
!1804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1805, elements: !1811)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1806)
!1806 = !{!1807, !1808}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1805, file: !30, line: 55, baseType: !109, size: 32)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1805, file: !30, line: 56, baseType: !1809, size: 64, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1811 = !{!1812}
!1812 = !DISubrange(count: -1)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1768, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1768, file: !14, line: 952, baseType: !412, size: 32, offset: 160)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1768, file: !14, line: 952, baseType: !412, size: 32, offset: 192)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1768, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1752, file: !14, line: 1012, baseType: !1818, size: 64, offset: 896)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1820)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1821, line: 110, size: 1472, elements: !1822)
!1821 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1822 = !{!1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1839, !1840, !1841, !1842, !1843, !1844, !1952, !1953, !1954, !1955, !1956, !1987, !1990, !1994, !2002}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1820, file: !1821, line: 111, baseType: !669, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1820, file: !1821, line: 112, baseType: !412, size: 32, offset: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1820, file: !1821, line: 113, baseType: !421, size: 32, offset: 96)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1820, file: !1821, line: 114, baseType: !412, size: 32, offset: 128)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1820, file: !1821, line: 115, baseType: !421, size: 32, offset: 160)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1820, file: !1821, line: 116, baseType: !412, size: 32, offset: 192)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1820, file: !1821, line: 117, baseType: !421, size: 32, offset: 224)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1820, file: !1821, line: 118, baseType: !412, size: 32, offset: 256)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1820, file: !1821, line: 119, baseType: !421, size: 32, offset: 288)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1820, file: !1821, line: 120, baseType: !7, size: 32, offset: 320)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1820, file: !1821, line: 121, baseType: !1834, size: 64, offset: 384)
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1835, line: 24, baseType: !1836)
!1835 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1835, line: 24, size: 64, elements: !1837)
!1837 = !{!1838}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1836, file: !1835, line: 24, baseType: !477, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1820, file: !1821, line: 122, baseType: !1834, size: 64, offset: 448)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1820, file: !1821, line: 123, baseType: !1834, size: 64, offset: 512)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1820, file: !1821, line: 124, baseType: !1834, size: 64, offset: 576)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1820, file: !1821, line: 125, baseType: !1834, size: 64, offset: 640)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1820, file: !1821, line: 127, baseType: !289, size: 8, offset: 704)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1820, file: !1821, line: 129, baseType: !1845, size: 64, offset: 768)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1847, line: 195, size: 1728, elements: !1848)
!1847 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1848 = !{!1849, !1850, !1853, !1858, !1859, !1862, !1863, !1868, !1869, !1870, !1871, !1874, !1875, !1876, !1877, !1878, !1916, !1937}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1846, file: !1847, line: 196, baseType: !1448, size: 32)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1846, file: !1847, line: 197, baseType: !1851, size: 32, offset: 32)
!1851 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1847, line: 28, baseType: !1852)
!1852 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !203, line: 104, baseType: !661)
!1853 = !DIDerivedType(tag: DW_TAG_member, scope: !1846, file: !1847, line: 198, baseType: !1854, size: 192, offset: 64)
!1854 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1846, file: !1847, line: 198, size: 192, elements: !1855)
!1855 = !{!1856, !1857}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1854, file: !1847, line: 199, baseType: !202, size: 128)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1854, file: !1847, line: 200, baseType: !777, size: 192, align: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1846, file: !1847, line: 205, baseType: !1328, size: 320, offset: 256)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1846, file: !1847, line: 206, baseType: !1860, size: 64, offset: 576)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1847, line: 206, flags: DIFlagFwdDecl)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1846, file: !1847, line: 207, baseType: !198, size: 64, offset: 640)
!1863 = !DIDerivedType(tag: DW_TAG_member, scope: !1846, file: !1847, line: 208, baseType: !1864, size: 64, offset: 704)
!1864 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1846, file: !1847, line: 208, size: 64, elements: !1865)
!1865 = !{!1866, !1867}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1864, file: !1847, line: 209, baseType: !1168, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1864, file: !1847, line: 210, baseType: !1168, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1846, file: !1847, line: 212, baseType: !1168, size: 64, offset: 768)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1846, file: !1847, line: 213, baseType: !412, size: 32, offset: 832)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1846, file: !1847, line: 214, baseType: !421, size: 32, offset: 864)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1846, file: !1847, line: 215, baseType: !1872, size: 32, offset: 896)
!1872 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1847, line: 31, baseType: !1873)
!1873 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !203, line: 110, baseType: !230)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1846, file: !1847, line: 216, baseType: !297, size: 16, offset: 928)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1846, file: !1847, line: 217, baseType: !297, size: 16, offset: 944)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1846, file: !1847, line: 221, baseType: !802, size: 16, offset: 960)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1846, file: !1847, line: 228, baseType: !197, size: 64, offset: 1024)
!1878 = !DIDerivedType(tag: DW_TAG_member, scope: !1846, file: !1847, line: 245, baseType: !1879, size: 320, offset: 1088)
!1879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1846, file: !1847, line: 245, size: 320, elements: !1880)
!1880 = !{!1881, !1908}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1879, file: !1847, line: 246, baseType: !1882, size: 320)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1847, line: 114, size: 320, elements: !1883)
!1883 = !{!1884, !1885, !1897, !1900, !1907}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1882, file: !1847, line: 116, baseType: !197, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, scope: !1882, file: !1847, line: 117, baseType: !1886, size: 64, offset: 64)
!1886 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1882, file: !1847, line: 117, size: 64, elements: !1887)
!1887 = !{!1888, !1896}
!1888 = !DIDerivedType(tag: DW_TAG_member, scope: !1886, file: !1847, line: 118, baseType: !1889, size: 64)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1886, file: !1847, line: 118, size: 64, elements: !1890)
!1890 = !{!1891, !1892}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1889, file: !1847, line: 120, baseType: !295, size: 16)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1889, file: !1847, line: 121, baseType: !1893, size: 48, offset: 16)
!1893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 48, elements: !1894)
!1894 = !{!1895}
!1895 = !DISubrange(count: 6)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1886, file: !1847, line: 127, baseType: !197, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1882, file: !1847, line: 129, baseType: !1898, size: 64, offset: 128)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1847, line: 102, flags: DIFlagFwdDecl)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1882, file: !1847, line: 130, baseType: !1901, size: 64, offset: 192)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1847, line: 108, size: 192, elements: !1903)
!1903 = !{!1904, !1905, !1906}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1902, file: !1847, line: 109, baseType: !883, size: 128, align: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1902, file: !1847, line: 110, baseType: !1448, size: 32, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1902, file: !1847, line: 111, baseType: !745, size: 8, offset: 160)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1882, file: !1847, line: 131, baseType: !247, size: 64, offset: 256)
!1908 = !DIDerivedType(tag: DW_TAG_member, scope: !1879, file: !1847, line: 247, baseType: !1909, size: 320)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1879, file: !1847, line: 247, size: 320, elements: !1910)
!1910 = !{!1911, !1912, !1913, !1914, !1915}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1909, file: !1847, line: 248, baseType: !197, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1909, file: !1847, line: 249, baseType: !197, size: 64, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1909, file: !1847, line: 250, baseType: !1898, size: 64, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1909, file: !1847, line: 251, baseType: !1901, size: 64, offset: 192)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1909, file: !1847, line: 252, baseType: !327, size: 64, offset: 256)
!1916 = !DIDerivedType(tag: DW_TAG_member, scope: !1846, file: !1847, line: 260, baseType: !1917, size: 256, offset: 1408)
!1917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1846, file: !1847, line: 260, size: 256, elements: !1918)
!1918 = !{!1919, !1925}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1917, file: !1847, line: 261, baseType: !1920, size: 256)
!1920 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1847, line: 134, size: 256, elements: !1921)
!1921 = !{!1922, !1923}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1920, file: !1847, line: 135, baseType: !198, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1920, file: !1847, line: 136, baseType: !1924, size: 256)
!1924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 256, elements: !893)
!1925 = !DIDerivedType(tag: DW_TAG_member, scope: !1917, file: !1847, line: 262, baseType: !1926, size: 256)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1917, file: !1847, line: 262, size: 256, elements: !1927)
!1927 = !{!1928, !1929}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1926, file: !1847, line: 264, baseType: !202, size: 128)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1926, file: !1847, line: 265, baseType: !1930, size: 128, offset: 128)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1931, line: 22, size: 128, elements: !1932)
!1931 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1932 = !{!1933, !1936}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1930, file: !1931, line: 23, baseType: !1934, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1931, line: 23, flags: DIFlagFwdDecl)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1930, file: !1931, line: 24, baseType: !197, size: 64, offset: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1846, file: !1847, line: 280, baseType: !1938, size: 64, offset: 1664)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1847, line: 176, size: 192, elements: !1940)
!1940 = !{!1941, !1950, !1951}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1939, file: !1847, line: 177, baseType: !1942, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1847, line: 171, baseType: !1943)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!109, !1845, !1946, !1948, !1845}
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1899)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1920)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1939, file: !1847, line: 178, baseType: !1845, size: 64, offset: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1939, file: !1847, line: 179, baseType: !1898, size: 64, offset: 128)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1820, file: !1821, line: 130, baseType: !1845, size: 64, offset: 832)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1820, file: !1821, line: 131, baseType: !1845, size: 64, offset: 896)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1820, file: !1821, line: 132, baseType: !1845, size: 64, offset: 960)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1820, file: !1821, line: 135, baseType: !198, size: 64, offset: 1024)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1820, file: !1821, line: 137, baseType: !1957, size: 64, offset: 1088)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1959, line: 14, size: 1088, elements: !1960)
!1959 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1960 = !{!1961, !1962, !1971, !1972, !1973, !1974, !1975, !1976}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1958, file: !1959, line: 15, baseType: !1448, size: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1958, file: !1959, line: 17, baseType: !1963, size: 320, offset: 64)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1964, line: 22, size: 320, elements: !1965)
!1964 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1965 = !{!1966, !1967, !1968, !1969}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1963, file: !1964, line: 23, baseType: !623, size: 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1963, file: !1964, line: 24, baseType: !675, size: 64, offset: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1963, file: !1964, line: 26, baseType: !202, size: 128, offset: 128)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1963, file: !1964, line: 28, baseType: !1970, size: 64, offset: 256)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1958, file: !1959, line: 19, baseType: !197, size: 64, offset: 384)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1958, file: !1959, line: 20, baseType: !669, size: 64, offset: 448)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1958, file: !1959, line: 23, baseType: !909, size: 128, offset: 512)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1958, file: !1959, line: 24, baseType: !412, size: 32, offset: 640)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1958, file: !1959, line: 29, baseType: !669, size: 64, offset: 704)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1958, file: !1959, line: 36, baseType: !1977, size: 320, offset: 768)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1978, line: 15, size: 320, elements: !1979)
!1978 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1979 = !{!1980, !1981, !1982, !1983, !1984, !1985, !1986}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1977, file: !1978, line: 16, baseType: !623, size: 32)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1977, file: !1978, line: 18, baseType: !109, size: 32, offset: 32)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1977, file: !1978, line: 19, baseType: !109, size: 32, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1977, file: !1978, line: 20, baseType: !109, size: 32, offset: 96)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1977, file: !1978, line: 21, baseType: !109, size: 32, offset: 128)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1977, file: !1978, line: 22, baseType: !197, size: 64, offset: 192)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1977, file: !1978, line: 23, baseType: !197, size: 64, offset: 256)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1820, file: !1821, line: 138, baseType: !1988, size: 64, offset: 1152)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !413, line: 18, flags: DIFlagFwdDecl)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1820, file: !1821, line: 139, baseType: !1991, size: 64, offset: 1216)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1993, line: 16, flags: DIFlagFwdDecl)
!1993 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1820, file: !1821, line: 140, baseType: !1995, size: 64, offset: 1280)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1821, line: 25, size: 64, elements: !1997)
!1997 = !{!1998, !1999, !2000}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1996, file: !1821, line: 26, baseType: !279, size: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1996, file: !1821, line: 27, baseType: !109, size: 32, offset: 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1996, file: !1821, line: 28, baseType: !2001, offset: 64)
!2001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, elements: !1811)
!2002 = !DIDerivedType(tag: DW_TAG_member, scope: !1820, file: !1821, line: 142, baseType: !2003, size: 128, offset: 1344)
!2003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1820, file: !1821, line: 142, size: 128, elements: !2004)
!2004 = !{!2005, !2006}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2003, file: !1821, line: 143, baseType: !109, size: 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2003, file: !1821, line: 144, baseType: !883, size: 128, align: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1752, file: !14, line: 1013, baseType: !2008, size: 256, offset: 960)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !2009)
!2009 = !{!2010, !2011, !2012, !2013, !2014, !2015}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2008, file: !14, line: 971, baseType: !197, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2008, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2008, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2008, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2008, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2008, file: !14, line: 976, baseType: !565, size: 64, offset: 192)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1752, file: !14, line: 1014, baseType: !1240, size: 128, offset: 1216)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1752, file: !14, line: 1015, baseType: !406, size: 64, offset: 1344)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1752, file: !14, line: 1016, baseType: !2019, size: 64, offset: 1408)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2021)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !2022)
!2022 = !{!2023, !2024, !2028, !2033, !2037, !2121, !2122, !2128, !2141, !2158, !2162, !2163, !2454, !2455, !2459, !2464, !2465, !2469, !2473, !2479, !2480, !2484, !2485, !2491, !2495, !2499, !2505, !2509, !2513, !2517, !2521, !2522, !2528}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2021, file: !14, line: 1915, baseType: !594, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2021, file: !14, line: 1916, baseType: !2025, size: 64, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!565, !1751, !565, !109}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2021, file: !14, line: 1917, baseType: !2029, size: 64, offset: 128)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!359, !1751, !327, !374, !2032}
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2021, file: !14, line: 1918, baseType: !2034, size: 64, offset: 192)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!359, !1751, !247, !374, !2032}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2021, file: !14, line: 1919, baseType: !2038, size: 64, offset: 256)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!359, !2041, !2063}
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !2043)
!2043 = !{!2044, !2045, !2046, !2050, !2051, !2052, !2053}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2042, file: !14, line: 374, baseType: !1751, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2042, file: !14, line: 375, baseType: !565, size: 64, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2042, file: !14, line: 376, baseType: !2047, size: 64, offset: 128)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{null, !2041, !363}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2042, file: !14, line: 377, baseType: !198, size: 64, offset: 192)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2042, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2042, file: !14, line: 379, baseType: !295, size: 16, offset: 288)
!2053 = !DIDerivedType(tag: DW_TAG_member, scope: !2042, file: !14, line: 380, baseType: !2054, size: 64, offset: 320)
!2054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2042, file: !14, line: 380, size: 64, elements: !2055)
!2055 = !{!2056, !2059}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2054, file: !14, line: 386, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2054, file: !14, line: 395, baseType: !2060, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!359, !198}
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2065, line: 41, size: 320, elements: !2066)
!2065 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2066 = !{!2067, !2068, !2069, !2070, !2071, !2072, !2077, !2116}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2064, file: !2065, line: 42, baseType: !287, size: 8)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !2064, file: !2065, line: 43, baseType: !745, size: 8, offset: 8)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !2064, file: !2065, line: 44, baseType: !745, size: 8, offset: 16)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !2064, file: !2065, line: 45, baseType: !745, size: 8, offset: 24)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !2064, file: !2065, line: 46, baseType: !745, size: 8, offset: 32)
!2072 = !DIDerivedType(tag: DW_TAG_member, scope: !2064, file: !2065, line: 47, baseType: !2073, size: 64, offset: 64)
!2073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2064, file: !2065, line: 47, size: 64, elements: !2074)
!2074 = !{!2075, !2076}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2073, file: !2065, line: 48, baseType: !374, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2073, file: !2065, line: 49, baseType: !109, size: 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, scope: !2064, file: !2065, line: 61, baseType: !2078, size: 128, offset: 128)
!2078 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2064, file: !2065, line: 61, size: 128, elements: !2079)
!2079 = !{!2080, !2086}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2078, file: !2065, line: 67, baseType: !2081, size: 128)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2082, line: 17, size: 128, elements: !2083)
!2082 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2083 = !{!2084, !2085}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2081, file: !2082, line: 19, baseType: !198, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2081, file: !2082, line: 20, baseType: !375, size: 64, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, scope: !2078, file: !2065, line: 68, baseType: !2087, size: 128)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2078, file: !2065, line: 68, size: 128, elements: !2088)
!2088 = !{!2089, !2115}
!2089 = !DIDerivedType(tag: DW_TAG_member, scope: !2087, file: !2065, line: 69, baseType: !2090, size: 64)
!2090 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2087, file: !2065, line: 69, size: 64, elements: !2091)
!2091 = !{!2092, !2095, !2102, !2106, !2114}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2090, file: !2065, line: 71, baseType: !2093, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2081)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2090, file: !2065, line: 72, baseType: !2096, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2098)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !2065, line: 17, size: 128, elements: !2099)
!2099 = !{!2100, !2101}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2098, file: !2065, line: 18, baseType: !198, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2098, file: !2065, line: 19, baseType: !374, size: 64, offset: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2090, file: !2065, line: 73, baseType: !2103, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2105)
!2105 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2065, line: 73, flags: DIFlagFwdDecl)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2090, file: !2065, line: 74, baseType: !2107, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2109, line: 296, size: 128, elements: !2110)
!2109 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!2110 = !{!2111, !2112, !2113}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2108, file: !2109, line: 297, baseType: !259, size: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2108, file: !2109, line: 299, baseType: !1180, size: 32, offset: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2108, file: !2109, line: 300, baseType: !198, size: 64, offset: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2090, file: !2065, line: 75, baseType: !198, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2087, file: !2065, line: 77, baseType: !374, size: 64, offset: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, scope: !2064, file: !2065, line: 80, baseType: !2117, size: 64, offset: 256)
!2117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2064, file: !2065, line: 80, size: 64, elements: !2118)
!2118 = !{!2119, !2120}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2117, file: !2065, line: 81, baseType: !197, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2117, file: !2065, line: 82, baseType: !565, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2021, file: !14, line: 1920, baseType: !2038, size: 64, offset: 320)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2021, file: !14, line: 1921, baseType: !2123, size: 64, offset: 384)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!109, !2041, !2126, !7}
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2021, file: !14, line: 1923, baseType: !2129, size: 64, offset: 448)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!109, !1751, !2132}
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2134)
!2134 = !{!2135, !2140}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2133, file: !14, line: 1859, baseType: !2136, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2137)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!745, !2132, !247, !109, !565, !477, !7}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2133, file: !14, line: 1860, baseType: !565, size: 64, offset: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2021, file: !14, line: 1924, baseType: !2142, size: 64, offset: 512)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!2145, !1751, !2147}
!2145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2146, line: 59, baseType: !7)
!2146 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2149, line: 37, size: 128, elements: !2150)
!2149 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2150 = !{!2151, !2157}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2148, file: !2149, line: 38, baseType: !2152, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2149, line: 31, baseType: !2153)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{null, !1751, !2156, !2147}
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2148, file: !2149, line: 39, baseType: !2145, size: 32, offset: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2021, file: !14, line: 1925, baseType: !2159, size: 64, offset: 576)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!363, !1751, !7, !197}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2021, file: !14, line: 1926, baseType: !2159, size: 64, offset: 640)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2021, file: !14, line: 1927, baseType: !2164, size: 64, offset: 704)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!109, !1751, !2167}
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !2169)
!2169 = !{!2170, !2179, !2180, !2188, !2195, !2196, !2201, !2202, !2207, !2208, !2211, !2447, !2448, !2449, !2450, !2451, !2452}
!2170 = !DIDerivedType(tag: DW_TAG_member, scope: !2168, file: !38, line: 628, baseType: !2171, size: 128)
!2171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2168, file: !38, line: 628, size: 128, elements: !2172)
!2172 = !{!2173, !2178}
!2173 = !DIDerivedType(tag: DW_TAG_member, scope: !2171, file: !38, line: 629, baseType: !2174, size: 128)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2171, file: !38, line: 629, size: 128, elements: !2175)
!2175 = !{!2176, !2177}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2174, file: !38, line: 631, baseType: !197, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2174, file: !38, line: 632, baseType: !197, size: 64, offset: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2171, file: !38, line: 635, baseType: !883, size: 128, align: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2168, file: !38, line: 639, baseType: !1724, size: 64, offset: 128)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2168, file: !38, line: 640, baseType: !2181, size: 64, offset: 192)
!2181 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2182, line: 297, baseType: !2183)
!2182 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2182, line: 297, size: 64, elements: !2184)
!2184 = !{!2185}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2183, file: !2182, line: 297, baseType: !2186, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2187, line: 19, baseType: !197)
!2187 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2188 = !DIDerivedType(tag: DW_TAG_member, scope: !2168, file: !38, line: 646, baseType: !2189, size: 64, offset: 256)
!2189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2168, file: !38, line: 646, size: 64, elements: !2190)
!2190 = !{!2191, !2194}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2189, file: !38, line: 647, baseType: !2192, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2193)
!2193 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !197)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2189, file: !38, line: 648, baseType: !2193, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2168, file: !38, line: 666, baseType: !109, size: 32, offset: 320)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2168, file: !38, line: 667, baseType: !2197, size: 64, offset: 384)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !2199)
!2199 = !{!2200}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2198, file: !38, line: 580, baseType: !1328, size: 320)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2168, file: !38, line: 670, baseType: !745, size: 8, offset: 448)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2168, file: !38, line: 681, baseType: !2203, size: 256, offset: 512)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2168, file: !38, line: 678, size: 256, elements: !2204)
!2204 = !{!2205, !2206}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2203, file: !38, line: 679, baseType: !777, size: 192, align: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2203, file: !38, line: 680, baseType: !197, size: 64, offset: 192)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2168, file: !38, line: 689, baseType: !202, size: 128, offset: 768)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2168, file: !38, line: 691, baseType: !2209, size: 64, offset: 896)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2168, file: !38, line: 694, baseType: !2212, size: 64, offset: 960)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2214)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2215, line: 563, size: 1024, elements: !2216)
!2215 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2216 = !{!2217, !2221, !2222, !2226, !2230, !2234, !2411, !2415, !2419, !2423, !2424, !2425, !2429, !2433, !2439, !2443}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2214, file: !2215, line: 564, baseType: !2218, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{null, !2167}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2214, file: !2215, line: 569, baseType: !2218, size: 64, offset: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2214, file: !2215, line: 571, baseType: !2223, size: 64, offset: 128)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!109, !2167, !197}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2214, file: !2215, line: 572, baseType: !2227, size: 64, offset: 192)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!109, !2167}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2214, file: !2215, line: 578, baseType: !2231, size: 64, offset: 256)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!109, !2167, !197, !197, !197}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2214, file: !2215, line: 580, baseType: !2235, size: 64, offset: 320)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!2238, !2239}
!2238 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2215, line: 512, size: 896, elements: !2241)
!2241 = !{!2242, !2250, !2251, !2258, !2265, !2275, !2404, !2405, !2407, !2409}
!2242 = !DIDerivedType(tag: DW_TAG_member, scope: !2240, file: !2215, line: 513, baseType: !2243, size: 320)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2240, file: !2215, line: 513, size: 320, elements: !2244)
!2244 = !{!2245, !2246, !2247, !2248, !2249}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2243, file: !2215, line: 514, baseType: !2167, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2243, file: !2215, line: 515, baseType: !1180, size: 32, offset: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2243, file: !2215, line: 516, baseType: !197, size: 64, offset: 128)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2243, file: !2215, line: 517, baseType: !197, size: 64, offset: 192)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2243, file: !2215, line: 518, baseType: !197, size: 64, offset: 256)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2240, file: !2215, line: 520, baseType: !37, size: 32, offset: 320)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2240, file: !2215, line: 522, baseType: !2252, size: 64, offset: 384)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2187, line: 22, baseType: !2254)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2187, line: 22, size: 64, elements: !2255)
!2255 = !{!2256}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2254, file: !2187, line: 22, baseType: !2257, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2187, line: 15, baseType: !197)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2240, file: !2215, line: 524, baseType: !2259, size: 64, offset: 448)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2182, line: 372, baseType: !2261)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2182, line: 372, size: 64, elements: !2262)
!2262 = !{!2263}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2261, file: !2182, line: 372, baseType: !2264, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2187, line: 16, baseType: !197)
!2265 = !DIDerivedType(tag: DW_TAG_member, scope: !2240, file: !2215, line: 527, baseType: !2266, size: 64, offset: 512)
!2266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2240, file: !2215, line: 527, size: 64, elements: !2267)
!2267 = !{!2268, !2274}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2266, file: !2215, line: 528, baseType: !2269, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2187, line: 21, baseType: !2270)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2187, line: 21, size: 64, elements: !2271)
!2271 = !{!2272}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2270, file: !2187, line: 21, baseType: !2273, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2187, line: 14, baseType: !197)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2266, file: !2215, line: 529, baseType: !2253, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2240, file: !2215, line: 534, baseType: !2276, size: 64, offset: 576)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !2278)
!2278 = !{!2279, !2280, !2398, !2403}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2277, file: !38, line: 75, baseType: !197, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, scope: !2277, file: !38, line: 83, baseType: !2281, size: 320, offset: 64)
!2281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2277, file: !38, line: 83, size: 320, elements: !2282)
!2282 = !{!2283, !2304, !2318, !2322, !2397}
!2283 = !DIDerivedType(tag: DW_TAG_member, scope: !2281, file: !38, line: 84, baseType: !2284, size: 320)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2281, file: !38, line: 84, size: 320, elements: !2285)
!2285 = !{!2286, !2297, !2298, !2303}
!2286 = !DIDerivedType(tag: DW_TAG_member, scope: !2284, file: !38, line: 90, baseType: !2287, size: 128)
!2287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2284, file: !38, line: 90, size: 128, elements: !2288)
!2288 = !{!2289, !2290, !2295, !2296}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2287, file: !38, line: 91, baseType: !202, size: 128)
!2290 = !DIDerivedType(tag: DW_TAG_member, scope: !2287, file: !38, line: 94, baseType: !2291, size: 128)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2287, file: !38, line: 94, size: 128, elements: !2292)
!2292 = !{!2293, !2294}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2291, file: !38, line: 96, baseType: !198, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2291, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2287, file: !38, line: 102, baseType: !202, size: 128)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2287, file: !38, line: 103, baseType: !202, size: 128)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2284, file: !38, line: 106, baseType: !402, size: 64, offset: 128)
!2298 = !DIDerivedType(tag: DW_TAG_member, scope: !2284, file: !38, line: 107, baseType: !2299, size: 64, offset: 192)
!2299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2284, file: !38, line: 107, size: 64, elements: !2300)
!2300 = !{!2301, !2302}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2299, file: !38, line: 108, baseType: !197, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2299, file: !38, line: 109, baseType: !197, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2284, file: !38, line: 117, baseType: !197, size: 64, offset: 256)
!2304 = !DIDerivedType(tag: DW_TAG_member, scope: !2281, file: !38, line: 119, baseType: !2305, size: 320)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2281, file: !38, line: 119, size: 320, elements: !2306)
!2306 = !{!2307, !2308, !2311, !2312, !2313}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2305, file: !38, line: 124, baseType: !197, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2305, file: !38, line: 125, baseType: !2309, size: 64, offset: 64)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2305, file: !38, line: 126, baseType: !197, size: 64, offset: 128)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2305, file: !38, line: 127, baseType: !197, size: 64, offset: 192)
!2313 = !DIDerivedType(tag: DW_TAG_member, scope: !2305, file: !38, line: 128, baseType: !2314, size: 64, offset: 256)
!2314 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2305, file: !38, line: 128, size: 64, elements: !2315)
!2315 = !{!2316, !2317}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2314, file: !38, line: 133, baseType: !197, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2314, file: !38, line: 138, baseType: !669, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, scope: !2281, file: !38, line: 141, baseType: !2319, size: 64)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2281, file: !38, line: 141, size: 64, elements: !2320)
!2320 = !{!2321}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2319, file: !38, line: 142, baseType: !197, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, scope: !2281, file: !38, line: 144, baseType: !2323, size: 128)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2281, file: !38, line: 144, size: 128, elements: !2324)
!2324 = !{!2325, !2396}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2323, file: !38, line: 146, baseType: !2326, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !2328)
!2328 = !{!2329, !2339, !2360, !2361, !2362, !2363, !2364, !2378, !2379, !2380}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2327, file: !54, line: 127, baseType: !2330, size: 384)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !2331)
!2331 = !{!2332, !2333, !2335, !2336, !2337, !2338}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2330, file: !54, line: 22, baseType: !197, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2330, file: !54, line: 23, baseType: !2334, size: 64, offset: 64)
!2334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2330, file: !54, line: 24, baseType: !2334, size: 64, offset: 128)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2330, file: !54, line: 25, baseType: !197, size: 64, offset: 192)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2330, file: !54, line: 26, baseType: !197, size: 64, offset: 256)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2330, file: !54, line: 27, baseType: !197, size: 64, offset: 320)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2327, file: !54, line: 128, baseType: !2340, size: 128, offset: 384)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2341, line: 105, size: 128, elements: !2342)
!2341 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2342 = !{!2343, !2344}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2340, file: !2341, line: 110, baseType: !197, size: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2340, file: !2341, line: 118, baseType: !2345, size: 64, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2341, line: 95, size: 448, elements: !2347)
!2347 = !{!2348, !2349, !2355, !2356, !2357, !2358, !2359}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2346, file: !2341, line: 96, baseType: !669, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2346, file: !2341, line: 97, baseType: !2350, size: 64, offset: 64)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2341, line: 60, baseType: !2352)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{null, !2354}
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2346, file: !2341, line: 98, baseType: !2350, size: 64, offset: 128)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2346, file: !2341, line: 99, baseType: !745, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2346, file: !2341, line: 100, baseType: !745, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2346, file: !2341, line: 101, baseType: !883, size: 128, align: 64, offset: 256)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2346, file: !2341, line: 102, baseType: !2354, size: 64, offset: 384)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2327, file: !54, line: 129, baseType: !614, size: 256, offset: 512)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2327, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2327, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2327, file: !54, line: 132, baseType: !197, size: 64, offset: 832)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2327, file: !54, line: 133, baseType: !2365, size: 64, offset: 896)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2367)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !2368)
!2368 = !{!2369, !2373, !2374}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2367, file: !54, line: 83, baseType: !2370, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{null, !2276}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2367, file: !54, line: 89, baseType: !2235, size: 64, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2367, file: !54, line: 100, baseType: !2375, size: 64, offset: 128)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!109, !2326, !197, !197, !109}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2327, file: !54, line: 134, baseType: !198, size: 64, offset: 960)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2327, file: !54, line: 135, baseType: !109, size: 32, offset: 1024)
!2380 = !DIDerivedType(tag: DW_TAG_member, scope: !2327, file: !54, line: 136, baseType: !2381, size: 128, offset: 1088)
!2381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2327, file: !54, line: 136, size: 128, elements: !2382)
!2382 = !{!2383, !2389}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2381, file: !54, line: 137, baseType: !2384, size: 128)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2385, line: 6, size: 128, elements: !2386)
!2385 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2386 = !{!2387, !2388}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2384, file: !2385, line: 7, baseType: !477, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2384, file: !2385, line: 8, baseType: !477, size: 64, offset: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, scope: !2381, file: !54, line: 138, baseType: !2390)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2381, file: !54, line: 138, elements: !2391)
!2391 = !{!2392, !2394}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2390, file: !54, line: 138, baseType: !2393)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2390, file: !54, line: 138, elements: !951)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2390, file: !54, line: 138, baseType: !2395)
!2395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2384, elements: !1811)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2323, file: !38, line: 147, baseType: !198, size: 64, offset: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2281, file: !38, line: 161, baseType: !883, size: 128, align: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, scope: !2277, file: !38, line: 164, baseType: !2399, size: 32, offset: 384)
!2399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2277, file: !38, line: 164, size: 32, elements: !2400)
!2400 = !{!2401, !2402}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2399, file: !38, line: 169, baseType: !279, size: 32)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2399, file: !38, line: 177, baseType: !7, size: 32)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2277, file: !38, line: 181, baseType: !279, size: 32, offset: 416)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2240, file: !2215, line: 535, baseType: !2276, size: 64, offset: 640)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2240, file: !2215, line: 541, baseType: !2406, size: 64, offset: 704)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2240, file: !2215, line: 545, baseType: !2408, size: 64, offset: 768)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2240, file: !2215, line: 549, baseType: !2410, size: 64, offset: 832)
!2410 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2182, line: 520, baseType: !2276)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2214, file: !2215, line: 581, baseType: !2412, size: 64, offset: 384)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!2238, !2239, !7}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2214, file: !2215, line: 582, baseType: !2416, size: 64, offset: 448)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!2238, !2239, !197, !197}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2214, file: !2215, line: 584, baseType: !2420, size: 64, offset: 512)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!197, !2167}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2214, file: !2215, line: 588, baseType: !2235, size: 64, offset: 576)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2214, file: !2215, line: 591, baseType: !2235, size: 64, offset: 640)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2214, file: !2215, line: 597, baseType: !2426, size: 64, offset: 704)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!109, !2167, !197, !198, !109, !109}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2214, file: !2215, line: 603, baseType: !2430, size: 64, offset: 768)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!247, !2167}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2214, file: !2215, line: 613, baseType: !2434, size: 64, offset: 832)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!109, !2167, !2437}
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1110, line: 54, flags: DIFlagFwdDecl)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2214, file: !2215, line: 625, baseType: !2440, size: 64, offset: 896)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!2437, !2167, !197}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2214, file: !2215, line: 633, baseType: !2444, size: 64, offset: 960)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!2276, !2167, !197}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2168, file: !38, line: 697, baseType: !197, size: 64, offset: 1024)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2168, file: !38, line: 699, baseType: !1751, size: 64, offset: 1088)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2168, file: !38, line: 700, baseType: !198, size: 64, offset: 1152)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2168, file: !38, line: 711, baseType: !669, size: 64, offset: 1216)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2168, file: !38, line: 717, baseType: !2437, size: 64, offset: 1280)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2168, file: !38, line: 722, baseType: !2453, offset: 1344)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !951)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2021, file: !14, line: 1928, baseType: !197, size: 64, offset: 768)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2021, file: !14, line: 1929, baseType: !2456, size: 64, offset: 832)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!109, !406, !1751}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2021, file: !14, line: 1930, baseType: !2460, size: 64, offset: 896)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!109, !1751, !2463}
!2463 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !198)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2021, file: !14, line: 1931, baseType: !2456, size: 64, offset: 960)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2021, file: !14, line: 1932, baseType: !2466, size: 64, offset: 1024)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!109, !1751, !565, !565, !109}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2021, file: !14, line: 1933, baseType: !2470, size: 64, offset: 1088)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!109, !109, !1751, !109}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2021, file: !14, line: 1934, baseType: !2474, size: 64, offset: 1152)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!109, !1751, !109, !2477}
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2021, file: !14, line: 1935, baseType: !1748, size: 64, offset: 1216)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2021, file: !14, line: 1936, baseType: !2481, size: 64, offset: 1280)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!109, !109}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2021, file: !14, line: 1937, baseType: !2474, size: 64, offset: 1344)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2021, file: !14, line: 1938, baseType: !2486, size: 64, offset: 1408)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!359, !2489, !1751, !2032, !374, !7}
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1110, line: 59, flags: DIFlagFwdDecl)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2021, file: !14, line: 1939, baseType: !2492, size: 64, offset: 1472)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!359, !1751, !2032, !2489, !374, !7}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2021, file: !14, line: 1940, baseType: !2496, size: 64, offset: 1536)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{null, !1751}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2021, file: !14, line: 1941, baseType: !2500, size: 64, offset: 1600)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!109, !1751, !109, !2503, !2504}
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2021, file: !14, line: 1942, baseType: !2506, size: 64, offset: 1664)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!363, !1751, !109, !565, !565}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2021, file: !14, line: 1944, baseType: !2510, size: 64, offset: 1728)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{null, !1108, !1751}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2021, file: !14, line: 1948, baseType: !2514, size: 64, offset: 1792)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!359, !1751, !565, !1751, !565, !374, !7}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2021, file: !14, line: 1950, baseType: !2518, size: 64, offset: 1856)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!565, !1751, !565, !1751, !565, !565, !7}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2021, file: !14, line: 1953, baseType: !2466, size: 64, offset: 1920)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2021, file: !14, line: 1954, baseType: !2523, size: 64, offset: 1984)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!109, !2526, !7}
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2021, file: !14, line: 1955, baseType: !2529, size: 64, offset: 2048)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!109, !2526, !2126, !7}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1752, file: !14, line: 1018, baseType: !477, size: 64, offset: 1472)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1752, file: !14, line: 1020, baseType: !198, size: 64, offset: 1536)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1752, file: !14, line: 1023, baseType: !198, size: 64, offset: 1600)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1752, file: !14, line: 1027, baseType: !2536, size: 64, offset: 1664)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1752, file: !14, line: 1029, baseType: !402, size: 64, offset: 1728)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1752, file: !14, line: 1030, baseType: !2539, size: 32, offset: 1792)
!2539 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2540, line: 8, baseType: !230)
!2540 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1752, file: !14, line: 1031, baseType: !2539, size: 32, offset: 1824)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1728, file: !38, line: 756, baseType: !197, size: 64, offset: 704)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1728, file: !38, line: 757, baseType: !197, size: 64, offset: 768)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1728, file: !38, line: 760, baseType: !197, size: 64, offset: 832)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1728, file: !38, line: 761, baseType: !197, size: 64, offset: 896)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1728, file: !38, line: 763, baseType: !197, size: 64, offset: 960)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1728, file: !38, line: 764, baseType: !2548, size: 64, offset: 1024)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2182, line: 299, baseType: !2550)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2182, line: 299, size: 64, elements: !2551)
!2551 = !{!2552}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2550, file: !2182, line: 299, baseType: !2553, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2187, line: 18, baseType: !197)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1728, file: !38, line: 773, baseType: !279, size: 32, offset: 1088)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1728, file: !38, line: 785, baseType: !279, size: 32, offset: 1120)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1728, file: !38, line: 795, baseType: !2557, size: 64, offset: 1152)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2559)
!2559 = !{!2560, !2561}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2558, file: !38, line: 727, baseType: !477, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2558, file: !38, line: 728, baseType: !109, size: 32, offset: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1728, file: !38, line: 801, baseType: !197, size: 64, offset: 1216)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1728, file: !38, line: 804, baseType: !669, size: 64, offset: 1280)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1728, file: !38, line: 806, baseType: !109, size: 32, offset: 1344)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1728, file: !38, line: 808, baseType: !259, size: 32, offset: 1376)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1728, file: !38, line: 823, baseType: !1328, size: 320, offset: 1408)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1728, file: !38, line: 825, baseType: !202, size: 128, offset: 1728)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1728, file: !38, line: 845, baseType: !109, size: 32, offset: 1856)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1728, file: !38, line: 849, baseType: !197, size: 64, offset: 1920)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1728, file: !38, line: 850, baseType: !197, size: 64, offset: 1984)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1728, file: !38, line: 852, baseType: !197, size: 64, offset: 2048)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1728, file: !38, line: 853, baseType: !197, size: 64, offset: 2112)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1728, file: !38, line: 854, baseType: !671, size: 64, offset: 2176)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1728, file: !38, line: 855, baseType: !197, size: 64, offset: 2240)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1728, file: !38, line: 856, baseType: !197, size: 64, offset: 2304)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1728, file: !38, line: 857, baseType: !197, size: 64, offset: 2368)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1728, file: !38, line: 858, baseType: !197, size: 64, offset: 2432)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1728, file: !38, line: 865, baseType: !452, size: 32, offset: 2496)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1728, file: !38, line: 867, baseType: !259, size: 32, offset: 2528)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1728, file: !38, line: 869, baseType: !197, size: 64, offset: 2560)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1728, file: !38, line: 869, baseType: !197, size: 64, offset: 2624)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1728, file: !38, line: 869, baseType: !197, size: 64, offset: 2688)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1728, file: !38, line: 869, baseType: !197, size: 64, offset: 2752)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1728, file: !38, line: 870, baseType: !197, size: 64, offset: 2816)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1728, file: !38, line: 870, baseType: !197, size: 64, offset: 2880)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1728, file: !38, line: 870, baseType: !197, size: 64, offset: 2944)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1728, file: !38, line: 871, baseType: !197, size: 64, offset: 3008)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1728, file: !38, line: 871, baseType: !197, size: 64, offset: 3072)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1728, file: !38, line: 871, baseType: !197, size: 64, offset: 3136)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1728, file: !38, line: 871, baseType: !197, size: 64, offset: 3200)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1728, file: !38, line: 873, baseType: !2592, size: 3328, offset: 3264)
!2592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 3328, elements: !2593)
!2593 = !{!2594}
!2594 = !DISubrange(count: 52)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1728, file: !38, line: 875, baseType: !2596, size: 1280, offset: 6592)
!2596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1963, size: 1280, elements: !893)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1728, file: !38, line: 877, baseType: !2598, size: 64, offset: 7872)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1728, file: !38, line: 880, baseType: !2601, size: 1088, offset: 7936)
!2601 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2602, line: 72, baseType: !2603)
!2602 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2602, line: 23, size: 1088, elements: !2604)
!2604 = !{!2605, !2606, !2607, !2608, !2609, !2612, !2613, !2614, !2615, !2642, !2643, !2644}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2603, file: !2602, line: 28, baseType: !477, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2603, file: !2602, line: 38, baseType: !671, size: 64, offset: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2603, file: !2602, line: 40, baseType: !197, size: 64, offset: 128)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2603, file: !2602, line: 43, baseType: !1328, size: 320, offset: 192)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2603, file: !2602, line: 44, baseType: !2610, size: 64, offset: 512)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2602, line: 44, flags: DIFlagFwdDecl)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2603, file: !2602, line: 48, baseType: !197, size: 64, offset: 576)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2603, file: !2602, line: 59, baseType: !665, size: 256, offset: 640)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2603, file: !2602, line: 60, baseType: !198, size: 64, offset: 896)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2603, file: !2602, line: 61, baseType: !2616, size: 64, offset: 960)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2618)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2619, line: 13, size: 1216, elements: !2620)
!2619 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2620 = !{!2621, !2622, !2623, !2624, !2625, !2626, !2627, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2618, file: !2619, line: 14, baseType: !198, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2618, file: !2619, line: 15, baseType: !197, size: 64, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2618, file: !2619, line: 17, baseType: !197, size: 64, offset: 128)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2618, file: !2619, line: 17, baseType: !197, size: 64, offset: 192)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2618, file: !2619, line: 18, baseType: !197, size: 64, offset: 256)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2618, file: !2619, line: 18, baseType: !197, size: 64, offset: 320)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2618, file: !2619, line: 19, baseType: !2628, size: 64, offset: 384)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2618, file: !2619, line: 21, baseType: !363, size: 64, offset: 448)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2618, file: !2619, line: 23, baseType: !363, size: 64, offset: 512)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2618, file: !2619, line: 24, baseType: !363, size: 64, offset: 576)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2618, file: !2619, line: 25, baseType: !363, size: 64, offset: 640)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2618, file: !2619, line: 26, baseType: !363, size: 64, offset: 704)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2618, file: !2619, line: 27, baseType: !363, size: 64, offset: 768)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2618, file: !2619, line: 28, baseType: !363, size: 64, offset: 832)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2618, file: !2619, line: 29, baseType: !363, size: 64, offset: 896)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2618, file: !2619, line: 30, baseType: !363, size: 64, offset: 960)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2618, file: !2619, line: 31, baseType: !363, size: 64, offset: 1024)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2618, file: !2619, line: 32, baseType: !363, size: 64, offset: 1088)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2618, file: !2619, line: 33, baseType: !363, size: 64, offset: 1152)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2603, file: !2602, line: 63, baseType: !279, size: 32, offset: 1024)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2603, file: !2602, line: 69, baseType: !295, size: 16, offset: 1056)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2603, file: !2602, line: 70, baseType: !800, size: 16, offset: 1072)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1728, file: !38, line: 882, baseType: !197, size: 64, offset: 9024)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1728, file: !38, line: 885, baseType: !259, size: 32, offset: 9088)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1728, file: !38, line: 886, baseType: !2648, size: 64, offset: 9152)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1728, file: !38, line: 901, baseType: !1988, size: 64, offset: 9216)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1728, file: !38, line: 904, baseType: !1751, size: 64, offset: 9280)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1728, file: !38, line: 906, baseType: !2653, size: 64, offset: 9344)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1728, file: !38, line: 930, baseType: !279, size: 32, offset: 9408)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1728, file: !38, line: 933, baseType: !279, size: 32, offset: 9440)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1728, file: !38, line: 935, baseType: !2658, size: 64, offset: 9472)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2659)
!2659 = !{!2660}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2658, file: !68, line: 104, baseType: !2661, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1728, file: !38, line: 940, baseType: !669, size: 64, offset: 9536)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1728, file: !38, line: 942, baseType: !923, size: 256, offset: 9600)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1725, file: !38, line: 986, baseType: !2666, offset: 10240)
!2666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, elements: !1811)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1435, file: !1110, line: 882, baseType: !1724, size: 64, offset: 9792)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1435, file: !1110, line: 884, baseType: !109, size: 32, offset: 9856)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1435, file: !1110, line: 885, baseType: !109, size: 32, offset: 9888)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1435, file: !1110, line: 886, baseType: !109, size: 32, offset: 9920)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1435, file: !1110, line: 888, baseType: !109, size: 32, offset: 9952)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1435, file: !1110, line: 890, baseType: !197, size: 64, offset: 9984)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1435, file: !1110, line: 893, baseType: !7, size: 32, offset: 10048)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1435, file: !1110, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1435, file: !1110, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1435, file: !1110, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1435, file: !1110, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1435, file: !1110, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1435, file: !1110, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1435, file: !1110, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1435, file: !1110, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1435, file: !1110, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1435, file: !1110, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1435, file: !1110, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1435, file: !1110, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1435, file: !1110, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1435, file: !1110, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1435, file: !1110, line: 969, baseType: !197, size: 64, offset: 10176)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1435, file: !1110, line: 971, baseType: !2690, size: 448, offset: 10240)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2691)
!2691 = !{!2692, !2693, !2698}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2690, file: !62, line: 26, baseType: !197, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2690, file: !62, line: 27, baseType: !2694, size: 64, offset: 64)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!363, !2697}
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, scope: !2690, file: !62, line: 28, baseType: !2699, size: 320, offset: 128)
!2699 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2690, file: !62, line: 28, size: 320, elements: !2700)
!2700 = !{!2701, !2711, !2736}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2699, file: !62, line: 37, baseType: !2702, size: 320)
!2702 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2699, file: !62, line: 30, size: 320, elements: !2703)
!2703 = !{!2704, !2706, !2707, !2708, !2709, !2710}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2702, file: !62, line: 31, baseType: !2705, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2702, file: !62, line: 32, baseType: !230, size: 32, offset: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2702, file: !62, line: 33, baseType: !230, size: 32, offset: 96)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2702, file: !62, line: 34, baseType: !230, size: 32, offset: 128)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2702, file: !62, line: 35, baseType: !477, size: 64, offset: 192)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2702, file: !62, line: 36, baseType: !2705, size: 64, offset: 256)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2699, file: !62, line: 47, baseType: !2712, size: 192)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2699, file: !62, line: 39, size: 192, elements: !2713)
!2713 = !{!2714, !2715, !2716, !2735}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2712, file: !62, line: 40, baseType: !1602, size: 32)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2712, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2716 = !DIDerivedType(tag: DW_TAG_member, scope: !2712, file: !62, line: 42, baseType: !2717, size: 64, offset: 64)
!2717 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2712, file: !62, line: 42, size: 64, elements: !2718)
!2718 = !{!2719, !2727}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2717, file: !62, line: 43, baseType: !2720, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2722, line: 7, size: 128, elements: !2723)
!2722 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2723 = !{!2724, !2726}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2721, file: !2722, line: 8, baseType: !2725, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !361, line: 93, baseType: !567)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2721, file: !2722, line: 9, baseType: !567, size: 64, offset: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2717, file: !62, line: 44, baseType: !2728, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2730, line: 7, size: 64, elements: !2731)
!2730 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2731 = !{!2732, !2734}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2729, file: !2730, line: 8, baseType: !2733, size: 32)
!2733 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2730, line: 5, baseType: !661)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2729, file: !2730, line: 9, baseType: !661, size: 32, offset: 32)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2712, file: !62, line: 46, baseType: !477, size: 64, offset: 128)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2699, file: !62, line: 55, baseType: !2737, size: 256)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2699, file: !62, line: 49, size: 256, elements: !2738)
!2738 = !{!2739, !2747, !2748, !2749, !2750}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2737, file: !62, line: 50, baseType: !2740, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2742, line: 36, size: 64, elements: !2743)
!2742 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!2743 = !{!2744, !2745, !2746}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2741, file: !2742, line: 37, baseType: !109, size: 32)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2741, file: !2742, line: 38, baseType: !802, size: 16, offset: 32)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2741, file: !2742, line: 39, baseType: !802, size: 16, offset: 48)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2737, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2737, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2737, file: !62, line: 53, baseType: !197, size: 64, offset: 128)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2737, file: !62, line: 54, baseType: !197, size: 64, offset: 192)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1435, file: !1110, line: 973, baseType: !2752, size: 32, offset: 10688)
!2752 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !203, line: 27, baseType: !2753)
!2753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !361, line: 28, baseType: !109)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1435, file: !1110, line: 974, baseType: !2752, size: 32, offset: 10720)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1435, file: !1110, line: 978, baseType: !197, size: 64, offset: 10752)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1435, file: !1110, line: 987, baseType: !1434, size: 64, offset: 10816)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1435, file: !1110, line: 990, baseType: !1434, size: 64, offset: 10880)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1435, file: !1110, line: 995, baseType: !202, size: 128, offset: 10944)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1435, file: !1110, line: 996, baseType: !202, size: 128, offset: 11072)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1435, file: !1110, line: 997, baseType: !1434, size: 64, offset: 11200)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1435, file: !1110, line: 1005, baseType: !202, size: 128, offset: 11264)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1435, file: !1110, line: 1006, baseType: !202, size: 128, offset: 11392)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1435, file: !1110, line: 1009, baseType: !1792, size: 64, offset: 11520)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1435, file: !1110, line: 1010, baseType: !2765, size: 512, offset: 11584)
!2765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !909, size: 512, elements: !893)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1435, file: !1110, line: 1011, baseType: !202, size: 128, offset: 12096)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1435, file: !1110, line: 1012, baseType: !202, size: 128, offset: 12224)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1435, file: !1110, line: 1014, baseType: !613, size: 64, offset: 12352)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1435, file: !1110, line: 1017, baseType: !209, size: 64, offset: 12416)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1435, file: !1110, line: 1020, baseType: !209, size: 64, offset: 12480)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1435, file: !1110, line: 1023, baseType: !198, size: 64, offset: 12544)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1435, file: !1110, line: 1025, baseType: !477, size: 64, offset: 12608)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1435, file: !1110, line: 1026, baseType: !477, size: 64, offset: 12672)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1435, file: !1110, line: 1031, baseType: !477, size: 64, offset: 12736)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1435, file: !1110, line: 1032, baseType: !2776, size: 192, offset: 12800)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1110, line: 324, size: 192, elements: !2777)
!2777 = !{!2778, !2779, !2780}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2776, file: !1110, line: 326, baseType: !477, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2776, file: !1110, line: 327, baseType: !477, size: 64, offset: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2776, file: !1110, line: 328, baseType: !623, size: 32, offset: 128)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1435, file: !1110, line: 1041, baseType: !197, size: 64, offset: 12992)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1435, file: !1110, line: 1042, baseType: !197, size: 64, offset: 13056)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1435, file: !1110, line: 1045, baseType: !477, size: 64, offset: 13120)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1435, file: !1110, line: 1048, baseType: !477, size: 64, offset: 13184)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1435, file: !1110, line: 1051, baseType: !197, size: 64, offset: 13248)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1435, file: !1110, line: 1052, baseType: !197, size: 64, offset: 13312)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1435, file: !1110, line: 1055, baseType: !2788, size: 640, offset: 13376)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2789, line: 132, size: 640, elements: !2790)
!2789 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2790 = !{!2791, !2797, !2798}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2788, file: !2789, line: 133, baseType: !2792, size: 576)
!2792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2793, size: 576, elements: !328)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2789, line: 117, size: 192, elements: !2794)
!2794 = !{!2795, !2796}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2793, file: !2789, line: 118, baseType: !477, size: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2793, file: !2789, line: 119, baseType: !1611, size: 128, offset: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2788, file: !2789, line: 134, baseType: !7, size: 32, offset: 576)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2788, file: !2789, line: 135, baseType: !7, size: 32, offset: 608)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1435, file: !1110, line: 1058, baseType: !2800, size: 448, offset: 14016)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2789, line: 144, size: 448, elements: !2801)
!2801 = !{!2802, !2803, !2804}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2800, file: !2789, line: 145, baseType: !883, size: 128, align: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2800, file: !2789, line: 146, baseType: !665, size: 256, offset: 128)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2800, file: !2789, line: 147, baseType: !7, size: 32, offset: 384)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1435, file: !1110, line: 1064, baseType: !1818, size: 64, offset: 14464)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1435, file: !1110, line: 1067, baseType: !1818, size: 64, offset: 14528)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1435, file: !1110, line: 1070, baseType: !1818, size: 64, offset: 14592)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1435, file: !1110, line: 1074, baseType: !1845, size: 64, offset: 14656)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1435, file: !1110, line: 1084, baseType: !2810, size: 128, offset: 14720)
!2810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 128, elements: !2811)
!2811 = !{!2812}
!2812 = !DISubrange(count: 16)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1435, file: !1110, line: 1086, baseType: !2814, size: 64, offset: 14848)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1110, line: 55, flags: DIFlagFwdDecl)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1435, file: !1110, line: 1089, baseType: !2817, size: 64, offset: 14912)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2818, line: 12, size: 64, elements: !2819)
!2818 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2819 = !{!2820}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2817, file: !2818, line: 13, baseType: !2821, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2818, line: 8, flags: DIFlagFwdDecl)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1435, file: !1110, line: 1090, baseType: !2824, size: 128, offset: 14976)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2825, line: 13, size: 128, elements: !2826)
!2825 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2826 = !{!2827}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2824, file: !2825, line: 14, baseType: !202, size: 128)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1435, file: !1110, line: 1097, baseType: !2829, size: 64, offset: 15104)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1110, line: 50, flags: DIFlagFwdDecl)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1435, file: !1110, line: 1100, baseType: !2832, size: 64, offset: 15168)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1110, line: 1100, flags: DIFlagFwdDecl)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1435, file: !1110, line: 1103, baseType: !2835, size: 64, offset: 15232)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1110, line: 53, flags: DIFlagFwdDecl)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1435, file: !1110, line: 1107, baseType: !2838, size: 64, offset: 15296)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1110, line: 56, flags: DIFlagFwdDecl)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1435, file: !1110, line: 1110, baseType: !2841, size: 64, offset: 15360)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2843, line: 93, size: 8768, elements: !2844)
!2843 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2844 = !{!2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2892, !2901, !2902, !2904, !2905, !2906, !2909, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2947, !2948, !2955, !2965, !2968, !2969, !2972, !2973, !2974, !2975, !2976, !2977}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2842, file: !2843, line: 94, baseType: !1448, size: 32)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2842, file: !2843, line: 95, baseType: !279, size: 32, offset: 32)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2842, file: !2843, line: 96, baseType: !109, size: 32, offset: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2842, file: !2843, line: 97, baseType: !109, size: 32, offset: 96)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2842, file: !2843, line: 98, baseType: !202, size: 128, offset: 128)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2842, file: !2843, line: 100, baseType: !1421, size: 192, offset: 256)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2842, file: !2843, line: 103, baseType: !1434, size: 64, offset: 448)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2842, file: !2843, line: 106, baseType: !2853, size: 192, offset: 512)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1993, line: 32, size: 192, elements: !2854)
!2854 = !{!2855, !2856}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2853, file: !1993, line: 33, baseType: !202, size: 128)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2853, file: !1993, line: 34, baseType: !2857, size: 64, offset: 128)
!2857 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2858, line: 25, baseType: !2859)
!2858 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2858, line: 23, size: 64, elements: !2860)
!2860 = !{!2861}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2859, file: !2858, line: 24, baseType: !226, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2842, file: !2843, line: 109, baseType: !1036, size: 64, offset: 704)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2842, file: !2843, line: 112, baseType: !109, size: 32, offset: 768)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2842, file: !2843, line: 114, baseType: !109, size: 32, offset: 800)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2842, file: !2843, line: 115, baseType: !1434, size: 64, offset: 832)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2842, file: !2843, line: 118, baseType: !109, size: 32, offset: 896)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2842, file: !2843, line: 119, baseType: !7, size: 32, offset: 928)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2842, file: !2843, line: 121, baseType: !2869, size: 64, offset: 960)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2843, line: 80, size: 448, elements: !2871)
!2871 = !{!2872, !2873, !2879}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2870, file: !2843, line: 81, baseType: !279, size: 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2870, file: !2843, line: 82, baseType: !2874, size: 128, offset: 64)
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2843, line: 75, size: 128, elements: !2875)
!2875 = !{!2876, !2877}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2874, file: !2843, line: 76, baseType: !1434, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2874, file: !2843, line: 77, baseType: !2878, size: 64, offset: 64)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2870, file: !2843, line: 83, baseType: !614, size: 256, offset: 192)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2842, file: !2843, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2842, file: !2843, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2842, file: !2843, line: 138, baseType: !7, size: 32, offset: 1056)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2842, file: !2843, line: 139, baseType: !202, size: 128, offset: 1088)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2842, file: !2843, line: 142, baseType: !1555, size: 512, offset: 1216)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2842, file: !2843, line: 143, baseType: !1563, size: 64, offset: 1728)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2842, file: !2843, line: 150, baseType: !2887, size: 256, offset: 1792)
!2887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2888, size: 256, elements: !784)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2843, line: 38, size: 128, elements: !2889)
!2889 = !{!2890, !2891}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2888, file: !2843, line: 39, baseType: !477, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2888, file: !2843, line: 40, baseType: !477, size: 64, offset: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2842, file: !2843, line: 156, baseType: !2893, size: 192, offset: 2048)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2843, line: 66, size: 192, elements: !2894)
!2894 = !{!2895}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2893, file: !2843, line: 67, baseType: !2896, size: 192)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2843, line: 47, size: 192, elements: !2897)
!2897 = !{!2898, !2899, !2900}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2896, file: !2843, line: 48, baseType: !671, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2896, file: !2843, line: 49, baseType: !671, size: 64, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2896, file: !2843, line: 50, baseType: !671, size: 64, offset: 128)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2842, file: !2843, line: 160, baseType: !2788, size: 640, offset: 2240)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2842, file: !2843, line: 163, baseType: !2903, size: 256, offset: 2880)
!2903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1792, size: 256, elements: !893)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2842, file: !2843, line: 169, baseType: !1792, size: 64, offset: 3136)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2842, file: !2843, line: 172, baseType: !109, size: 32, offset: 3200)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2842, file: !2843, line: 174, baseType: !2907, size: 64, offset: 3264)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2843, line: 174, flags: DIFlagFwdDecl)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2842, file: !2843, line: 185, baseType: !2910, size: 64, offset: 3328)
!2910 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !448, line: 860, baseType: !2911)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !448, line: 853, size: 64, elements: !2912)
!2912 = !{!2913, !2914}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2911, file: !448, line: 858, baseType: !447, size: 32)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2911, file: !448, line: 859, baseType: !259, size: 32, offset: 32)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2842, file: !2843, line: 186, baseType: !477, size: 64, offset: 3392)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2842, file: !2843, line: 186, baseType: !477, size: 64, offset: 3456)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2842, file: !2843, line: 186, baseType: !477, size: 64, offset: 3520)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2842, file: !2843, line: 186, baseType: !477, size: 64, offset: 3584)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2842, file: !2843, line: 187, baseType: !477, size: 64, offset: 3648)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2842, file: !2843, line: 188, baseType: !477, size: 64, offset: 3712)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2842, file: !2843, line: 189, baseType: !2776, size: 192, offset: 3776)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2842, file: !2843, line: 190, baseType: !197, size: 64, offset: 3968)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2842, file: !2843, line: 190, baseType: !197, size: 64, offset: 4032)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2842, file: !2843, line: 190, baseType: !197, size: 64, offset: 4096)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2842, file: !2843, line: 190, baseType: !197, size: 64, offset: 4160)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2842, file: !2843, line: 191, baseType: !197, size: 64, offset: 4224)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2842, file: !2843, line: 191, baseType: !197, size: 64, offset: 4288)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2842, file: !2843, line: 191, baseType: !197, size: 64, offset: 4352)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2842, file: !2843, line: 191, baseType: !197, size: 64, offset: 4416)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2842, file: !2843, line: 192, baseType: !197, size: 64, offset: 4480)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2842, file: !2843, line: 192, baseType: !197, size: 64, offset: 4544)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2842, file: !2843, line: 192, baseType: !197, size: 64, offset: 4608)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2842, file: !2843, line: 192, baseType: !197, size: 64, offset: 4672)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2842, file: !2843, line: 193, baseType: !197, size: 64, offset: 4736)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2842, file: !2843, line: 193, baseType: !197, size: 64, offset: 4800)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2842, file: !2843, line: 194, baseType: !2937, size: 448, offset: 4864)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2938, line: 12, size: 448, elements: !2939)
!2938 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2939 = !{!2940, !2941, !2942, !2943, !2944, !2945, !2946}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2937, file: !2938, line: 15, baseType: !477, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2937, file: !2938, line: 17, baseType: !477, size: 64, offset: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2937, file: !2938, line: 19, baseType: !477, size: 64, offset: 128)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2937, file: !2938, line: 21, baseType: !477, size: 64, offset: 192)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2937, file: !2938, line: 29, baseType: !477, size: 64, offset: 256)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2937, file: !2938, line: 35, baseType: !477, size: 64, offset: 320)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2937, file: !2938, line: 44, baseType: !477, size: 64, offset: 384)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2842, file: !2843, line: 202, baseType: !479, size: 64, offset: 5312)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2842, file: !2843, line: 213, baseType: !2949, size: 2048, offset: 5376)
!2949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2950, size: 2048, elements: !2811)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2951, line: 43, size: 128, elements: !2952)
!2951 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2952 = !{!2953, !2954}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2950, file: !2951, line: 44, baseType: !376, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2950, file: !2951, line: 45, baseType: !376, size: 64, offset: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2842, file: !2843, line: 216, baseType: !2956, size: 448, offset: 7424)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2843, line: 30, size: 448, elements: !2957)
!2957 = !{!2958, !2959, !2960, !2961, !2962, !2963, !2964}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2956, file: !2843, line: 31, baseType: !109, size: 32)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2956, file: !2843, line: 32, baseType: !363, size: 64, offset: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2956, file: !2843, line: 33, baseType: !197, size: 64, offset: 128)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2956, file: !2843, line: 34, baseType: !477, size: 64, offset: 192)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2956, file: !2843, line: 34, baseType: !477, size: 64, offset: 256)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2956, file: !2843, line: 35, baseType: !197, size: 64, offset: 320)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2956, file: !2843, line: 35, baseType: !197, size: 64, offset: 384)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2842, file: !2843, line: 219, baseType: !2966, size: 64, offset: 7872)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2843, line: 219, flags: DIFlagFwdDecl)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2842, file: !2843, line: 222, baseType: !7, size: 32, offset: 7936)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2842, file: !2843, line: 223, baseType: !2970, size: 64, offset: 8000)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2843, line: 223, flags: DIFlagFwdDecl)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2842, file: !2843, line: 230, baseType: !745, size: 8, offset: 8064)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2842, file: !2843, line: 231, baseType: !802, size: 16, offset: 8080)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2842, file: !2843, line: 232, baseType: !802, size: 16, offset: 8096)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2842, file: !2843, line: 234, baseType: !1724, size: 64, offset: 8128)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2842, file: !2843, line: 237, baseType: !665, size: 256, offset: 8192)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2842, file: !2843, line: 243, baseType: !1328, size: 320, offset: 8448)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1435, file: !1110, line: 1111, baseType: !2979, size: 64, offset: 15424)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2843, line: 20, size: 16640, elements: !2981)
!2981 = !{!2982, !2983, !2984, !2985}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2980, file: !2843, line: 21, baseType: !259, size: 32)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2980, file: !2843, line: 22, baseType: !1448, size: 32, offset: 32)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2980, file: !2843, line: 23, baseType: !1421, size: 192, offset: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2980, file: !2843, line: 24, baseType: !2986, size: 16384, offset: 256)
!2986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2987, size: 16384, elements: !332)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1993, line: 51, size: 256, elements: !2988)
!2988 = !{!2989}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2987, file: !1993, line: 52, baseType: !2990, size: 256)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1993, line: 37, size: 256, elements: !2991)
!2991 = !{!2992, !2999, !3000, !3004}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2990, file: !1993, line: 39, baseType: !2993, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2994, line: 83, baseType: !2995)
!2994 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2994, line: 82, baseType: !2997)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{null, !109}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2990, file: !1993, line: 40, baseType: !197, size: 64, offset: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2990, file: !1993, line: 46, baseType: !3001, size: 64, offset: 128)
!3001 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2994, line: 86, baseType: !3002)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2994, line: 85, baseType: !1031)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2990, file: !1993, line: 48, baseType: !2857, size: 64, offset: 192)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1435, file: !1110, line: 1112, baseType: !2857, size: 64, offset: 15488)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1435, file: !1110, line: 1113, baseType: !2857, size: 64, offset: 15552)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1435, file: !1110, line: 1115, baseType: !2857, size: 64, offset: 15616)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1435, file: !1110, line: 1116, baseType: !2853, size: 192, offset: 15680)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1435, file: !1110, line: 1117, baseType: !197, size: 64, offset: 15872)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1435, file: !1110, line: 1118, baseType: !374, size: 64, offset: 15936)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1435, file: !1110, line: 1119, baseType: !7, size: 32, offset: 16000)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1435, file: !1110, line: 1121, baseType: !882, size: 64, offset: 16064)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1435, file: !1110, line: 1125, baseType: !3014, size: 64, offset: 16128)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1110, line: 43, flags: DIFlagFwdDecl)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1435, file: !1110, line: 1127, baseType: !412, size: 32, offset: 16192)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1435, file: !1110, line: 1128, baseType: !7, size: 32, offset: 16224)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1435, file: !1110, line: 1130, baseType: !3019, size: 128, offset: 16256)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3020, line: 37, size: 128, elements: !3021)
!3020 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3021 = !{!3022, !3023, !3024}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3019, file: !3020, line: 38, baseType: !109, size: 32)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3019, file: !3020, line: 39, baseType: !279, size: 32, offset: 32)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3019, file: !3020, line: 40, baseType: !3025, size: 64, offset: 64)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3020, line: 24, flags: DIFlagFwdDecl)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1435, file: !1110, line: 1131, baseType: !3028, size: 256, offset: 16384)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3029, line: 12, size: 256, elements: !3030)
!3029 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3030 = !{!3031, !3032, !3033, !3034}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3028, file: !3029, line: 13, baseType: !327, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3028, file: !3029, line: 14, baseType: !197, size: 64, offset: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3028, file: !3029, line: 15, baseType: !197, size: 64, offset: 128)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3028, file: !3029, line: 16, baseType: !745, size: 8, offset: 192)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1435, file: !1110, line: 1134, baseType: !477, size: 64, offset: 16640)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1435, file: !1110, line: 1135, baseType: !477, size: 64, offset: 16704)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1435, file: !1110, line: 1138, baseType: !259, size: 32, offset: 16768)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1435, file: !1110, line: 1141, baseType: !623, size: 32, offset: 16800)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1435, file: !1110, line: 1143, baseType: !3040, size: 64, offset: 16832)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1110, line: 735, size: 64, elements: !3041)
!3041 = !{!3042}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3040, file: !1110, line: 736, baseType: !3043, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1435, file: !1110, line: 1147, baseType: !1614, size: 128, offset: 16896)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1435, file: !1110, line: 1149, baseType: !1434, size: 64, offset: 17024)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1435, file: !1110, line: 1151, baseType: !3047, size: 64, offset: 17088)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1110, line: 1151, flags: DIFlagFwdDecl)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1435, file: !1110, line: 1188, baseType: !198, size: 64, offset: 17152)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1435, file: !1110, line: 1191, baseType: !3051, size: 64, offset: 17216)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1110, line: 44, flags: DIFlagFwdDecl)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1435, file: !1110, line: 1194, baseType: !3054, size: 64, offset: 17280)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1110, line: 45, flags: DIFlagFwdDecl)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1435, file: !1110, line: 1197, baseType: !3057, size: 64, offset: 17344)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1110, line: 61, flags: DIFlagFwdDecl)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1435, file: !1110, line: 1199, baseType: !3060, size: 64, offset: 17408)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3062, line: 99, size: 128, elements: !3063)
!3062 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3063 = !{!3064, !3065, !3066}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3061, file: !3062, line: 100, baseType: !669, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3061, file: !3062, line: 101, baseType: !279, size: 32, offset: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3061, file: !3062, line: 103, baseType: !297, size: 16, offset: 96)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1435, file: !1110, line: 1202, baseType: !3068, size: 64, offset: 17472)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1110, line: 48, flags: DIFlagFwdDecl)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1435, file: !1110, line: 1205, baseType: !197, size: 64, offset: 17536)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1435, file: !1110, line: 1206, baseType: !3072, size: 64, offset: 17600)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1993, line: 14, baseType: !3074)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1993, line: 12, size: 384, elements: !3075)
!3075 = !{!3076}
!3076 = !DIDerivedType(tag: DW_TAG_member, scope: !3074, file: !1993, line: 13, baseType: !3077, size: 384)
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3074, file: !1993, line: 13, size: 384, elements: !3078)
!3078 = !{!3079, !3080, !3081, !3082}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3077, file: !1993, line: 13, baseType: !109, size: 32)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3077, file: !1993, line: 13, baseType: !109, size: 32, offset: 32)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3077, file: !1993, line: 13, baseType: !109, size: 32, offset: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3077, file: !1993, line: 13, baseType: !3083, size: 256, offset: 128)
!3083 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3084, line: 37, size: 256, elements: !3085)
!3084 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3085 = !{!3086, !3091, !3104, !3110, !3119, !3146, !3151}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3083, file: !3084, line: 42, baseType: !3087, size: 64)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3083, file: !3084, line: 39, size: 64, elements: !3088)
!3088 = !{!3089, !3090}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3087, file: !3084, line: 40, baseType: !2753, size: 32)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3087, file: !3084, line: 41, baseType: !418, size: 32, offset: 32)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3083, file: !3084, line: 50, baseType: !3092, size: 192)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3083, file: !3084, line: 45, size: 192, elements: !3093)
!3093 = !{!3094, !3096, !3097, !3103}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3092, file: !3084, line: 46, baseType: !3095, size: 32)
!3095 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !361, line: 95, baseType: !109)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3092, file: !3084, line: 47, baseType: !109, size: 32, offset: 32)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3092, file: !3084, line: 48, baseType: !3098, size: 64, offset: 64)
!3098 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3084, line: 11, baseType: !3099)
!3099 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3084, line: 8, size: 64, elements: !3100)
!3100 = !{!3101, !3102}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3099, file: !3084, line: 9, baseType: !109, size: 32)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3099, file: !3084, line: 10, baseType: !198, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3092, file: !3084, line: 49, baseType: !109, size: 32, offset: 128)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3083, file: !3084, line: 57, baseType: !3105, size: 128)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3083, file: !3084, line: 53, size: 128, elements: !3106)
!3106 = !{!3107, !3108, !3109}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3105, file: !3084, line: 54, baseType: !2753, size: 32)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3105, file: !3084, line: 55, baseType: !418, size: 32, offset: 32)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3105, file: !3084, line: 56, baseType: !3098, size: 64, offset: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3083, file: !3084, line: 66, baseType: !3111, size: 256)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3083, file: !3084, line: 60, size: 256, elements: !3112)
!3112 = !{!3113, !3114, !3115, !3116, !3118}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3111, file: !3084, line: 61, baseType: !2753, size: 32)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3111, file: !3084, line: 62, baseType: !418, size: 32, offset: 32)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3111, file: !3084, line: 63, baseType: !109, size: 32, offset: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3111, file: !3084, line: 64, baseType: !3117, size: 64, offset: 128)
!3117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !361, line: 94, baseType: !362)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3111, file: !3084, line: 65, baseType: !3117, size: 64, offset: 192)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3083, file: !3084, line: 105, baseType: !3120, size: 256)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3083, file: !3084, line: 69, size: 256, elements: !3121)
!3121 = !{!3122, !3123}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3120, file: !3084, line: 70, baseType: !198, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, scope: !3120, file: !3084, line: 79, baseType: !3124, size: 192, offset: 64)
!3124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3120, file: !3084, line: 79, size: 192, elements: !3125)
!3125 = !{!3126, !3127, !3128, !3135, !3140}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3124, file: !3084, line: 81, baseType: !109, size: 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3124, file: !3084, line: 86, baseType: !802, size: 16)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3124, file: !3084, line: 92, baseType: !3129, size: 192)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3124, file: !3084, line: 88, size: 192, elements: !3130)
!3130 = !{!3131, !3133, !3134}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3129, file: !3084, line: 89, baseType: !3132, size: 64)
!3132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 64, elements: !1598)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3129, file: !3084, line: 90, baseType: !198, size: 64, offset: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3129, file: !3084, line: 91, baseType: !198, size: 64, offset: 128)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3124, file: !3084, line: 97, baseType: !3136, size: 96)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3124, file: !3084, line: 94, size: 96, elements: !3137)
!3137 = !{!3138, !3139}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3136, file: !3084, line: 95, baseType: !3132, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3136, file: !3084, line: 96, baseType: !232, size: 32, offset: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3124, file: !3084, line: 103, baseType: !3141, size: 128)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3124, file: !3084, line: 99, size: 128, elements: !3142)
!3142 = !{!3143, !3144, !3145}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3141, file: !3084, line: 100, baseType: !197, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3141, file: !3084, line: 101, baseType: !232, size: 32, offset: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3141, file: !3084, line: 102, baseType: !232, size: 32, offset: 96)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3083, file: !3084, line: 111, baseType: !3147, size: 128)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3083, file: !3084, line: 108, size: 128, elements: !3148)
!3148 = !{!3149, !3150}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3147, file: !3084, line: 109, baseType: !363, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3147, file: !3084, line: 110, baseType: !109, size: 32, offset: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3083, file: !3084, line: 118, baseType: !3152, size: 128)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3083, file: !3084, line: 114, size: 128, elements: !3153)
!3153 = !{!3154, !3155, !3156}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3152, file: !3084, line: 115, baseType: !198, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3152, file: !3084, line: 116, baseType: !109, size: 32, offset: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3152, file: !3084, line: 117, baseType: !7, size: 32, offset: 96)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1435, file: !1110, line: 1208, baseType: !2937, size: 448, offset: 17664)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1435, file: !1110, line: 1215, baseType: !477, size: 64, offset: 18112)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1435, file: !1110, line: 1217, baseType: !477, size: 64, offset: 18176)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1435, file: !1110, line: 1219, baseType: !477, size: 64, offset: 18240)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1435, file: !1110, line: 1223, baseType: !3162, size: 64, offset: 18304)
!3162 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3163, line: 99, baseType: !3164)
!3163 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3163, line: 99, size: 64, elements: !3165)
!3165 = !{!3166}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3164, file: !3163, line: 99, baseType: !226, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1435, file: !1110, line: 1225, baseType: !447, size: 32, offset: 18368)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1435, file: !1110, line: 1226, baseType: !109, size: 32, offset: 18400)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1435, file: !1110, line: 1227, baseType: !109, size: 32, offset: 18432)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1435, file: !1110, line: 1231, baseType: !3171, size: 64, offset: 18496)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1110, line: 1231, flags: DIFlagFwdDecl)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1435, file: !1110, line: 1233, baseType: !202, size: 128, offset: 18560)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1435, file: !1110, line: 1240, baseType: !3175, size: 64, offset: 18688)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1110, line: 62, flags: DIFlagFwdDecl)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1435, file: !1110, line: 1242, baseType: !3178, size: 64, offset: 18752)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1110, line: 1242, flags: DIFlagFwdDecl)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1435, file: !1110, line: 1244, baseType: !202, size: 128, offset: 18816)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1435, file: !1110, line: 1245, baseType: !3182, size: 64, offset: 18944)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1110, line: 51, flags: DIFlagFwdDecl)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1435, file: !1110, line: 1246, baseType: !665, size: 256, offset: 19008)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1435, file: !1110, line: 1247, baseType: !7, size: 32, offset: 19264)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1435, file: !1110, line: 1250, baseType: !3187, size: 64, offset: 19328)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1110, line: 57, flags: DIFlagFwdDecl)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1435, file: !1110, line: 1251, baseType: !665, size: 256, offset: 19392)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1435, file: !1110, line: 1252, baseType: !202, size: 128, offset: 19648)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1435, file: !1110, line: 1259, baseType: !2437, size: 64, offset: 19776)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1435, file: !1110, line: 1260, baseType: !802, size: 16, offset: 19840)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1435, file: !1110, line: 1261, baseType: !802, size: 16, offset: 19856)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1435, file: !1110, line: 1314, baseType: !3195, size: 64, offset: 19904)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3197, line: 62, size: 256, align: 256, elements: !3198)
!3197 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3198 = !{!3199, !3200, !3201, !3202, !3203, !3204, !3205}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3196, file: !3197, line: 75, baseType: !232, size: 32)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3196, file: !3197, line: 90, baseType: !232, size: 32, offset: 32)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3196, file: !3197, line: 112, baseType: !478, size: 64, offset: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3196, file: !3197, line: 132, baseType: !232, size: 32, offset: 128)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3196, file: !3197, line: 140, baseType: !232, size: 32, offset: 160)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3196, file: !3197, line: 149, baseType: !232, size: 32, offset: 192)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3196, file: !3197, line: 154, baseType: !3206, offset: 224)
!3206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, elements: !1811)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1435, file: !1110, line: 1315, baseType: !230, size: 32, offset: 19968)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1435, file: !1110, line: 1316, baseType: !230, size: 32, offset: 20000)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1435, file: !1110, line: 1321, baseType: !197, size: 64, offset: 20032)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1435, file: !1110, line: 1325, baseType: !109, size: 32, offset: 20096)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1435, file: !1110, line: 1326, baseType: !109, size: 32, offset: 20128)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1435, file: !1110, line: 1327, baseType: !109, size: 32, offset: 20160)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1435, file: !1110, line: 1328, baseType: !109, size: 32, offset: 20192)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1435, file: !1110, line: 1329, baseType: !883, size: 128, align: 64, offset: 20224)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1435, file: !1110, line: 1332, baseType: !3216, size: 128, offset: 20352)
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3217, line: 51, size: 128, elements: !3218)
!3217 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3218 = !{!3219, !3224, !3225}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3216, file: !3217, line: 60, baseType: !3220, size: 64)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3221, line: 7, size: 64, elements: !3222)
!3221 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3222 = !{!3223}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3220, file: !3221, line: 12, baseType: !222, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3216, file: !3217, line: 63, baseType: !745, size: 8, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3216, file: !3217, line: 70, baseType: !745, size: 8, offset: 72)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1435, file: !1110, line: 1335, baseType: !2489, size: 64, offset: 20480)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1435, file: !1110, line: 1337, baseType: !3228, size: 128, offset: 20544)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3217, line: 39, size: 128, elements: !3229)
!3229 = !{!3230, !3231, !3232}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3228, file: !3217, line: 40, baseType: !2276, size: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3228, file: !3217, line: 42, baseType: !232, size: 32, offset: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3228, file: !3217, line: 43, baseType: !232, size: 32, offset: 96)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1435, file: !1110, line: 1340, baseType: !3234, size: 64, offset: 20672)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1110, line: 69, flags: DIFlagFwdDecl)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1435, file: !1110, line: 1351, baseType: !109, size: 32, offset: 20736)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1435, file: !1110, line: 1352, baseType: !109, size: 32, offset: 20768)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1435, file: !1110, line: 1354, baseType: !197, size: 64, offset: 20800)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1435, file: !1110, line: 1364, baseType: !477, size: 64, offset: 20864)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1435, file: !1110, line: 1365, baseType: !477, size: 64, offset: 20928)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1435, file: !1110, line: 1412, baseType: !197, size: 64, offset: 20992)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1435, file: !1110, line: 1453, baseType: !3243, size: 64, offset: 21056)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1110, line: 1453, flags: DIFlagFwdDecl)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1435, file: !1110, line: 1457, baseType: !3246, size: 64, offset: 21120)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3248)
!3248 = !{!3249, !3250, !3269, !3272, !3273, !3306, !3316}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3247, file: !68, line: 62, baseType: !67, size: 32)
!3250 = !DIDerivedType(tag: DW_TAG_member, scope: !3247, file: !68, line: 64, baseType: !3251, size: 192, offset: 64)
!3251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3247, file: !68, line: 64, size: 192, elements: !3252)
!3252 = !{!3253, !3264}
!3253 = !DIDerivedType(tag: DW_TAG_member, scope: !3251, file: !68, line: 65, baseType: !3254, size: 192)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3251, file: !68, line: 65, size: 192, elements: !3255)
!3255 = !{!3256, !3263}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3254, file: !68, line: 66, baseType: !3257, size: 128)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3258, line: 50, size: 128, elements: !3259)
!3258 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3259 = !{!3260, !3261, !3262}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3257, file: !3258, line: 52, baseType: !197, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3257, file: !3258, line: 54, baseType: !7, size: 32, offset: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3257, file: !3258, line: 55, baseType: !7, size: 32, offset: 96)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3254, file: !68, line: 67, baseType: !197, size: 64, offset: 128)
!3264 = !DIDerivedType(tag: DW_TAG_member, scope: !3251, file: !68, line: 70, baseType: !3265, size: 192)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3251, file: !68, line: 70, size: 192, elements: !3266)
!3266 = !{!3267, !3268}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3265, file: !68, line: 71, baseType: !883, size: 128, align: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3265, file: !68, line: 72, baseType: !197, size: 64, offset: 128)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3247, file: !68, line: 76, baseType: !3270, size: 64, offset: 256)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3247, file: !68, line: 77, baseType: !197, size: 64, offset: 320)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3247, file: !68, line: 79, baseType: !3274, size: 64, offset: 384)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3258, line: 25, size: 256, elements: !3276)
!3276 = !{!3277, !3283, !3287}
!3277 = !DIDerivedType(tag: DW_TAG_member, scope: !3275, file: !3258, line: 26, baseType: !3278, size: 128)
!3278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3275, file: !3258, line: 26, size: 128, elements: !3279)
!3279 = !{!3280, !3282}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3278, file: !3258, line: 27, baseType: !3281, size: 128)
!3281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 128, elements: !2811)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3278, file: !3258, line: 28, baseType: !3281, size: 128)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3275, file: !3258, line: 31, baseType: !3284, size: 64, offset: 128)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3286)
!3286 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3258, line: 23, flags: DIFlagFwdDecl)
!3287 = !DIDerivedType(tag: DW_TAG_member, scope: !3275, file: !3258, line: 33, baseType: !3288, size: 64, offset: 192)
!3288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3275, file: !3258, line: 33, size: 64, elements: !3289)
!3289 = !{!3290, !3296, !3301}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3288, file: !3258, line: 38, baseType: !3291, size: 64)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3288, file: !3258, line: 34, size: 64, elements: !3292)
!3292 = !{!3293, !3294, !3295}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3291, file: !3258, line: 35, baseType: !661, size: 32)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3291, file: !3258, line: 36, baseType: !287, size: 8, offset: 32)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3291, file: !3258, line: 37, baseType: !287, size: 8, offset: 40)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3288, file: !3258, line: 42, baseType: !3297, size: 16)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3288, file: !3258, line: 39, size: 16, elements: !3298)
!3298 = !{!3299, !3300}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3297, file: !3258, line: 40, baseType: !287, size: 8)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3297, file: !3258, line: 41, baseType: !287, size: 8, offset: 8)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3288, file: !3258, line: 46, baseType: !3302, size: 16)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3288, file: !3258, line: 43, size: 16, elements: !3303)
!3303 = !{!3304, !3305}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3302, file: !3258, line: 44, baseType: !287, size: 8)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3302, file: !3258, line: 45, baseType: !287, size: 8, offset: 8)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3247, file: !68, line: 81, baseType: !3307, size: 64, offset: 448)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3309)
!3309 = !{!3310, !3311, !3312, !3313, !3314, !3315}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3308, file: !68, line: 86, baseType: !3270, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3308, file: !68, line: 87, baseType: !197, size: 64, offset: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3308, file: !68, line: 88, baseType: !197, size: 64, offset: 128)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3308, file: !68, line: 89, baseType: !197, size: 64, offset: 192)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3308, file: !68, line: 90, baseType: !745, size: 8, offset: 256)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3308, file: !68, line: 92, baseType: !3307, size: 64, offset: 320)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3247, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1435, file: !1110, line: 1463, baseType: !3318, offset: 21184)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1110, line: 739, elements: !951)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1435, file: !1110, line: 1470, baseType: !883, size: 128, align: 64, offset: 21184)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1435, file: !1110, line: 1471, baseType: !1448, size: 32, offset: 21312)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1435, file: !1110, line: 1472, baseType: !109, size: 32, offset: 21344)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1435, file: !1110, line: 1474, baseType: !1434, size: 64, offset: 21376)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1435, file: !1110, line: 1475, baseType: !905, size: 320, offset: 21440)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1435, file: !1110, line: 1478, baseType: !3325, size: 64, offset: 21760)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3327, line: 49, size: 512, elements: !3328)
!3327 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3328 = !{!3329, !3330, !3331, !3332, !3333, !3335, !3336, !3337, !3339}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3326, file: !3327, line: 50, baseType: !3325, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3326, file: !3327, line: 51, baseType: !198, size: 64, offset: 64)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3326, file: !3327, line: 52, baseType: !197, size: 64, offset: 128)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3326, file: !3327, line: 53, baseType: !197, size: 64, offset: 192)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3326, file: !3327, line: 54, baseType: !3334, size: 64, offset: 256)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3326, file: !3327, line: 56, baseType: !7, size: 32, offset: 320)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3326, file: !3327, line: 58, baseType: !7, size: 32, offset: 352)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3326, file: !3327, line: 59, baseType: !3338, size: 64, offset: 384)
!3338 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !203, line: 159, baseType: !477)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3326, file: !3327, line: 60, baseType: !2628, size: 64, offset: 448)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1435, file: !1110, line: 1482, baseType: !1448, size: 32, offset: 21824)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1435, file: !1110, line: 1489, baseType: !198, size: 64, offset: 21888)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1435, file: !1110, line: 1504, baseType: !198, size: 64, offset: 21952)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1435, file: !1110, line: 1505, baseType: !478, size: 64, offset: 22016)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1435, file: !1110, line: 1506, baseType: !477, size: 64, offset: 22080)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1435, file: !1110, line: 1507, baseType: !478, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1435, file: !1110, line: 1508, baseType: !478, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1435, file: !1110, line: 1509, baseType: !478, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1435, file: !1110, line: 1510, baseType: !883, size: 128, align: 64, offset: 22208)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1435, file: !1110, line: 1511, baseType: !109, size: 32, offset: 22336)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1435, file: !1110, line: 1515, baseType: !3351, size: 64, offset: 22400)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1462, line: 56, size: 64, elements: !3352)
!3352 = !{!3353}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3351, file: !1462, line: 57, baseType: !1465, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1435, file: !1110, line: 1518, baseType: !3351, size: 64, offset: 22464)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1435, file: !1110, line: 1528, baseType: !883, size: 128, align: 64, offset: 22528)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1435, file: !1110, line: 1552, baseType: !3357, size: 35328, offset: 23040)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3358, line: 430, size: 35328, elements: !3359)
!3358 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3359 = !{!3360, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3389, !3390, !3391, !3392, !3393, !3394, !3397, !3398, !3399, !3400}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3357, file: !3358, line: 432, baseType: !3361, size: 192)
!3361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3362, size: 192, elements: !328)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3363, line: 16, size: 64, elements: !3364)
!3363 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3364 = !{!3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3362, file: !3363, line: 17, baseType: !295, size: 16)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3362, file: !3363, line: 18, baseType: !295, size: 16, offset: 16)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3362, file: !3363, line: 19, baseType: !295, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3362, file: !3363, line: 19, baseType: !295, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3362, file: !3363, line: 19, baseType: !295, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3362, file: !3363, line: 19, baseType: !295, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3362, file: !3363, line: 19, baseType: !295, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3362, file: !3363, line: 20, baseType: !295, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3362, file: !3363, line: 20, baseType: !295, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3362, file: !3363, line: 20, baseType: !295, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3362, file: !3363, line: 20, baseType: !295, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3362, file: !3363, line: 20, baseType: !295, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3362, file: !3363, line: 20, baseType: !295, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3357, file: !3358, line: 436, baseType: !197, size: 64, offset: 192)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3357, file: !3358, line: 440, baseType: !297, size: 16, offset: 256)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3357, file: !3358, line: 441, baseType: !297, size: 16, offset: 272)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3357, file: !3358, line: 442, baseType: !297, size: 16, offset: 288)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3357, file: !3358, line: 443, baseType: !297, size: 16, offset: 304)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3357, file: !3358, line: 447, baseType: !197, size: 64, offset: 320)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3357, file: !3358, line: 448, baseType: !197, size: 64, offset: 384)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3357, file: !3358, line: 459, baseType: !3386, size: 256, offset: 448)
!3386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3387, size: 256, elements: !893)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3358, line: 428, flags: DIFlagFwdDecl)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3357, file: !3358, line: 461, baseType: !197, size: 64, offset: 704)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3357, file: !3358, line: 463, baseType: !197, size: 64, offset: 768)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3357, file: !3358, line: 465, baseType: !197, size: 64, offset: 832)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3357, file: !3358, line: 466, baseType: !197, size: 64, offset: 896)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3357, file: !3358, line: 467, baseType: !197, size: 64, offset: 960)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3357, file: !3358, line: 473, baseType: !3395, size: 64, offset: 1024)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3358, line: 10, flags: DIFlagFwdDecl)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3357, file: !3358, line: 480, baseType: !197, size: 64, offset: 1088)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3357, file: !3358, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3357, file: !3358, line: 491, baseType: !230, size: 32, offset: 1184)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3357, file: !3358, line: 501, baseType: !3401, size: 33792, offset: 1536)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3402, line: 448, size: 33792, elements: !3403)
!3402 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3403 = !{!3404, !3405, !3406, !3568, !3569, !3575, !3576}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3401, file: !3402, line: 461, baseType: !7, size: 32)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3401, file: !3402, line: 468, baseType: !197, size: 64, offset: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3401, file: !3402, line: 476, baseType: !3407, size: 64, offset: 128)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3402, line: 356, size: 33280, align: 512, elements: !3409)
!3409 = !{!3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3408, file: !3402, line: 358, baseType: !7, size: 32)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3408, file: !3402, line: 361, baseType: !7, size: 32, offset: 32)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3408, file: !3402, line: 364, baseType: !477, size: 64, offset: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3408, file: !3402, line: 367, baseType: !477, size: 64, offset: 128)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3408, file: !3402, line: 370, baseType: !477, size: 64, offset: 192)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3408, file: !3402, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3408, file: !3402, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3408, file: !3402, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3408, file: !3402, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3408, file: !3402, line: 397, baseType: !3420, size: 32768, offset: 512)
!3420 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3402, line: 348, size: 32768, elements: !3421)
!3421 = !{!3422, !3437, !3474, !3551, !3564}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3420, file: !3402, line: 349, baseType: !3423, size: 896)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3402, line: 12, size: 896, elements: !3424)
!3424 = !{!3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3436}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3423, file: !3402, line: 13, baseType: !230, size: 32)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3423, file: !3402, line: 14, baseType: !230, size: 32, offset: 32)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3423, file: !3402, line: 15, baseType: !230, size: 32, offset: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3423, file: !3402, line: 16, baseType: !230, size: 32, offset: 96)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3423, file: !3402, line: 17, baseType: !230, size: 32, offset: 128)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3423, file: !3402, line: 18, baseType: !230, size: 32, offset: 160)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3423, file: !3402, line: 19, baseType: !230, size: 32, offset: 192)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3423, file: !3402, line: 22, baseType: !3433, size: 640, offset: 224)
!3433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 640, elements: !3434)
!3434 = !{!3435}
!3435 = !DISubrange(count: 20)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3423, file: !3402, line: 25, baseType: !230, size: 32, offset: 864)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3420, file: !3402, line: 350, baseType: !3438, size: 4096, align: 128)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3402, line: 34, size: 4096, align: 128, elements: !3439)
!3439 = !{!3440, !3441, !3442, !3443, !3444, !3459, !3460, !3461, !3463, !3465, !3469}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3438, file: !3402, line: 35, baseType: !295, size: 16)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3438, file: !3402, line: 36, baseType: !295, size: 16, offset: 16)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3438, file: !3402, line: 37, baseType: !295, size: 16, offset: 32)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3438, file: !3402, line: 38, baseType: !295, size: 16, offset: 48)
!3444 = !DIDerivedType(tag: DW_TAG_member, scope: !3438, file: !3402, line: 39, baseType: !3445, size: 128, offset: 64)
!3445 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3438, file: !3402, line: 39, size: 128, elements: !3446)
!3446 = !{!3447, !3452}
!3447 = !DIDerivedType(tag: DW_TAG_member, scope: !3445, file: !3402, line: 40, baseType: !3448, size: 128)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3445, file: !3402, line: 40, size: 128, elements: !3449)
!3449 = !{!3450, !3451}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3448, file: !3402, line: 41, baseType: !477, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3448, file: !3402, line: 42, baseType: !477, size: 64, offset: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, scope: !3445, file: !3402, line: 44, baseType: !3453, size: 128)
!3453 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3445, file: !3402, line: 44, size: 128, elements: !3454)
!3454 = !{!3455, !3456, !3457, !3458}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3453, file: !3402, line: 45, baseType: !230, size: 32)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3453, file: !3402, line: 46, baseType: !230, size: 32, offset: 32)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3453, file: !3402, line: 47, baseType: !230, size: 32, offset: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3453, file: !3402, line: 48, baseType: !230, size: 32, offset: 96)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3438, file: !3402, line: 51, baseType: !230, size: 32, offset: 192)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3438, file: !3402, line: 52, baseType: !230, size: 32, offset: 224)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3438, file: !3402, line: 55, baseType: !3462, size: 1024, offset: 256)
!3462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 1024, elements: !486)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3438, file: !3402, line: 58, baseType: !3464, size: 2048, offset: 1280)
!3464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 2048, elements: !332)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3438, file: !3402, line: 60, baseType: !3466, size: 384, offset: 3328)
!3466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 384, elements: !3467)
!3467 = !{!3468}
!3468 = !DISubrange(count: 12)
!3469 = !DIDerivedType(tag: DW_TAG_member, scope: !3438, file: !3402, line: 62, baseType: !3470, size: 384, offset: 3712)
!3470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3438, file: !3402, line: 62, size: 384, elements: !3471)
!3471 = !{!3472, !3473}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3470, file: !3402, line: 63, baseType: !3466, size: 384)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3470, file: !3402, line: 64, baseType: !3466, size: 384)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3420, file: !3402, line: 351, baseType: !3475, size: 1088)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3402, line: 79, size: 1088, elements: !3476)
!3476 = !{!3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3550}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3475, file: !3402, line: 80, baseType: !230, size: 32)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3475, file: !3402, line: 81, baseType: !230, size: 32, offset: 32)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3475, file: !3402, line: 82, baseType: !230, size: 32, offset: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3475, file: !3402, line: 83, baseType: !230, size: 32, offset: 96)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3475, file: !3402, line: 84, baseType: !230, size: 32, offset: 128)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3475, file: !3402, line: 85, baseType: !230, size: 32, offset: 160)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3475, file: !3402, line: 86, baseType: !230, size: 32, offset: 192)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3475, file: !3402, line: 88, baseType: !3433, size: 640, offset: 224)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3475, file: !3402, line: 89, baseType: !287, size: 8, offset: 864)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3475, file: !3402, line: 90, baseType: !287, size: 8, offset: 872)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3475, file: !3402, line: 91, baseType: !287, size: 8, offset: 880)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3475, file: !3402, line: 92, baseType: !287, size: 8, offset: 888)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3475, file: !3402, line: 93, baseType: !287, size: 8, offset: 896)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3475, file: !3402, line: 94, baseType: !287, size: 8, offset: 904)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3475, file: !3402, line: 95, baseType: !3492, size: 64, offset: 960)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3494, line: 11, size: 128, elements: !3495)
!3494 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3495 = !{!3496, !3497}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3493, file: !3494, line: 12, baseType: !363, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3493, file: !3494, line: 13, baseType: !3498, size: 64, offset: 64)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3500, line: 103, size: 1344, elements: !3501)
!3500 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3501 = !{!3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3530, !3531, !3532}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3499, file: !3500, line: 109, baseType: !197, size: 64)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3499, file: !3500, line: 110, baseType: !197, size: 64, offset: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3499, file: !3500, line: 111, baseType: !197, size: 64, offset: 128)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3499, file: !3500, line: 112, baseType: !197, size: 64, offset: 192)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3499, file: !3500, line: 113, baseType: !197, size: 64, offset: 256)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3499, file: !3500, line: 114, baseType: !197, size: 64, offset: 320)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3499, file: !3500, line: 117, baseType: !197, size: 64, offset: 384)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3499, file: !3500, line: 118, baseType: !197, size: 64, offset: 448)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3499, file: !3500, line: 119, baseType: !197, size: 64, offset: 512)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3499, file: !3500, line: 120, baseType: !197, size: 64, offset: 576)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3499, file: !3500, line: 121, baseType: !197, size: 64, offset: 640)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3499, file: !3500, line: 122, baseType: !197, size: 64, offset: 704)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3499, file: !3500, line: 123, baseType: !197, size: 64, offset: 768)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3499, file: !3500, line: 124, baseType: !197, size: 64, offset: 832)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3499, file: !3500, line: 125, baseType: !197, size: 64, offset: 896)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3499, file: !3500, line: 139, baseType: !197, size: 64, offset: 960)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3499, file: !3500, line: 142, baseType: !197, size: 64, offset: 1024)
!3519 = !DIDerivedType(tag: DW_TAG_member, scope: !3499, file: !3500, line: 144, baseType: !3520, size: 64, offset: 1088)
!3520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3499, file: !3500, line: 144, size: 64, elements: !3521)
!3521 = !{!3522, !3523, !3524}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3520, file: !3500, line: 146, baseType: !295, size: 16)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3520, file: !3500, line: 148, baseType: !477, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3520, file: !3500, line: 150, baseType: !3525, size: 64)
!3525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3500, line: 59, size: 64, elements: !3526)
!3526 = !{!3527, !3528, !3529}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3525, file: !3500, line: 61, baseType: !477, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3525, file: !3500, line: 63, baseType: !477, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3525, file: !3500, line: 65, baseType: !477, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3499, file: !3500, line: 153, baseType: !197, size: 64, offset: 1152)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3499, file: !3500, line: 154, baseType: !197, size: 64, offset: 1216)
!3532 = !DIDerivedType(tag: DW_TAG_member, scope: !3499, file: !3500, line: 156, baseType: !3533, size: 64, offset: 1280)
!3533 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3499, file: !3500, line: 156, size: 64, elements: !3534)
!3534 = !{!3535, !3536, !3537}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3533, file: !3500, line: 158, baseType: !295, size: 16)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3533, file: !3500, line: 160, baseType: !477, size: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3533, file: !3500, line: 162, baseType: !3538, size: 64)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3500, line: 69, size: 64, elements: !3539)
!3539 = !{!3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3538, file: !3500, line: 71, baseType: !477, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3538, file: !3500, line: 73, baseType: !477, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3538, file: !3500, line: 75, baseType: !477, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3538, file: !3500, line: 77, baseType: !477, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3538, file: !3500, line: 80, baseType: !477, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3538, file: !3500, line: 83, baseType: !477, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3538, file: !3500, line: 86, baseType: !477, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3538, file: !3500, line: 88, baseType: !477, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3538, file: !3500, line: 93, baseType: !477, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3538, file: !3500, line: 100, baseType: !477, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3475, file: !3402, line: 96, baseType: !230, size: 32, offset: 1024)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3420, file: !3402, line: 352, baseType: !3552, size: 4608, align: 512)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3402, line: 333, size: 4608, align: 512, elements: !3553)
!3553 = !{!3554, !3555, !3562}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3552, file: !3402, line: 334, baseType: !3438, size: 4096, align: 128)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3552, file: !3402, line: 335, baseType: !3556, size: 512, offset: 4096)
!3556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3402, line: 312, size: 512, elements: !3557)
!3557 = !{!3558, !3559, !3560}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3556, file: !3402, line: 313, baseType: !477, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3556, file: !3402, line: 314, baseType: !477, size: 64, offset: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3556, file: !3402, line: 315, baseType: !3561, size: 384, offset: 128)
!3561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !477, size: 384, elements: !1894)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3552, file: !3402, line: 336, baseType: !3563, offset: 4608)
!3563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, elements: !1811)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3420, file: !3402, line: 353, baseType: !3565, size: 32768)
!3565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 32768, elements: !3566)
!3566 = !{!3567}
!3567 = !DISubrange(count: 4096)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3401, file: !3402, line: 484, baseType: !3407, size: 64, offset: 192)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3401, file: !3402, line: 491, baseType: !3570, size: 128, offset: 256)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3402, line: 404, size: 128, elements: !3571)
!3571 = !{!3572, !3573, !3574}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3570, file: !3402, line: 424, baseType: !477, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3570, file: !3402, line: 432, baseType: !7, size: 32, offset: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3570, file: !3402, line: 440, baseType: !7, size: 32, offset: 96)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3401, file: !3402, line: 498, baseType: !3570, size: 128, offset: 384)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3401, file: !3402, line: 508, baseType: !3408, size: 33280, align: 512, offset: 512)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1411, file: !1412, line: 16, baseType: !1421, size: 192, offset: 512)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1411, file: !1412, line: 17, baseType: !279, size: 32, offset: 704)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !556, file: !14, line: 1240, baseType: !198, size: 64, offset: 6912)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !556, file: !14, line: 1243, baseType: !230, size: 32, offset: 6976)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !556, file: !14, line: 1245, baseType: !1168, size: 64, offset: 7040)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !556, file: !14, line: 1246, baseType: !1168, size: 64, offset: 7104)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !556, file: !14, line: 1248, baseType: !232, size: 32, offset: 7168)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !556, file: !14, line: 1249, baseType: !3585, size: 64, offset: 7232)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !556, file: !14, line: 1252, baseType: !3588, size: 256, offset: 7296)
!3588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 256, elements: !486)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !556, file: !14, line: 1253, baseType: !3590, size: 128, offset: 7552)
!3590 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3591, line: 21, baseType: !3592)
!3591 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3591, line: 19, size: 128, elements: !3593)
!3593 = !{!3594}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3592, file: !3591, line: 20, baseType: !3595, size: 128)
!3595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 128, elements: !2811)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !556, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !556, file: !14, line: 1261, baseType: !665, size: 256, offset: 7744)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !556, file: !14, line: 1267, baseType: !247, size: 64, offset: 8000)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !556, file: !14, line: 1269, baseType: !502, size: 64, offset: 8064)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !556, file: !14, line: 1271, baseType: !3601, size: 448, offset: 8128)
!3601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1177, line: 63, size: 448, elements: !3602)
!3602 = !{!3603, !3608, !3609, !3610, !3611, !3612, !3613}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3601, file: !1177, line: 64, baseType: !3604, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{!197, !3607, !1175}
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3601, file: !1177, line: 66, baseType: !3604, size: 64, offset: 64)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3601, file: !1177, line: 69, baseType: !363, size: 64, offset: 128)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3601, file: !1177, line: 70, baseType: !109, size: 32, offset: 192)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3601, file: !1177, line: 71, baseType: !7, size: 32, offset: 224)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3601, file: !1177, line: 74, baseType: !202, size: 128, offset: 256)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3601, file: !1177, line: 85, baseType: !3614, size: 64, offset: 384)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !556, file: !14, line: 1274, baseType: !669, size: 64, offset: 8576)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !556, file: !14, line: 1280, baseType: !669, size: 64, offset: 8640)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !556, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !556, file: !14, line: 1286, baseType: !2539, size: 32, offset: 8736)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !556, file: !14, line: 1289, baseType: !984, size: 64, offset: 8768)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !556, file: !14, line: 1290, baseType: !1036, size: 64, offset: 8832)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !556, file: !14, line: 1297, baseType: !1988, size: 64, offset: 8896)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !556, file: !14, line: 1304, baseType: !3623, size: 64, offset: 8960)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3624, line: 49, size: 64, elements: !3625)
!3624 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3625 = !{!3626}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3623, file: !3624, line: 50, baseType: !3627, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3624, line: 41, size: 512, align: 512, elements: !3629)
!3629 = !{!3630, !3631, !3636}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3628, file: !3624, line: 43, baseType: !259, size: 32)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3628, file: !3624, line: 45, baseType: !3632, size: 192, offset: 64)
!3632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3624, line: 29, size: 192, elements: !3633)
!3633 = !{!3634, !3635}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3632, file: !3624, line: 30, baseType: !202, size: 128)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3632, file: !3624, line: 32, baseType: !363, size: 64, offset: 128)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3628, file: !3624, line: 46, baseType: !363, size: 64, offset: 256)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !556, file: !14, line: 1305, baseType: !3623, size: 64, offset: 9024)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !556, file: !14, line: 1306, baseType: !883, size: 128, align: 64, offset: 9088)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !556, file: !14, line: 1307, baseType: !923, size: 256, offset: 9216)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !556, file: !14, line: 1309, baseType: !665, size: 256, offset: 9472)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !556, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !556, file: !14, line: 1317, baseType: !259, size: 32, align: 512, offset: 10240)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !556, file: !14, line: 1318, baseType: !202, size: 128, offset: 10304)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !556, file: !14, line: 1320, baseType: !259, size: 32, offset: 10432)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !556, file: !14, line: 1321, baseType: !202, size: 128, offset: 10496)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !550, file: !551, line: 73, baseType: !109, size: 32, offset: 128)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !550, file: !551, line: 74, baseType: !3648, size: 64, offset: 192)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1835, line: 42, flags: DIFlagFwdDecl)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !504, file: !443, line: 141, baseType: !3652, size: 64, offset: 704)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{!109, !1238, !745}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !504, file: !443, line: 142, baseType: !3656, size: 64, offset: 768)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!441, !441, !3659}
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !442, file: !443, line: 96, baseType: !555, size: 64, offset: 832)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !442, file: !443, line: 97, baseType: !197, size: 64, offset: 896)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !442, file: !443, line: 98, baseType: !198, size: 64, offset: 960)
!3664 = !DIDerivedType(tag: DW_TAG_member, scope: !442, file: !443, line: 100, baseType: !3665, size: 128, offset: 1024)
!3665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !442, file: !443, line: 100, size: 128, elements: !3666)
!3666 = !{!3667, !3668}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3665, file: !443, line: 101, baseType: !202, size: 128)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3665, file: !443, line: 102, baseType: !2156, size: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !442, file: !443, line: 104, baseType: !202, size: 128, offset: 1152)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !442, file: !443, line: 105, baseType: !202, size: 128, offset: 1280)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !442, file: !443, line: 113, baseType: !3672, size: 128, offset: 1408)
!3672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !442, file: !443, line: 109, size: 128, elements: !3673)
!3673 = !{!3674, !3675, !3676}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3672, file: !443, line: 110, baseType: !909, size: 128)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3672, file: !443, line: 111, baseType: !457, size: 128)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3672, file: !443, line: 112, baseType: !883, size: 128, align: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !435, file: !14, line: 1968, baseType: !3678, size: 64, offset: 64)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!247, !441, !406, !3681}
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3683, line: 10, size: 128, elements: !3684)
!3683 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3684 = !{!3685, !3686}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3682, file: !3683, line: 11, baseType: !708, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3682, file: !3683, line: 12, baseType: !198, size: 64, offset: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !435, file: !14, line: 1969, baseType: !3688, size: 64, offset: 128)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!109, !3648, !406, !109}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !435, file: !14, line: 1970, baseType: !3692, size: 64, offset: 192)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!429, !406, !109, !745}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !435, file: !14, line: 1972, baseType: !3696, size: 64, offset: 256)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!109, !441, !327, !109}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !435, file: !14, line: 1974, baseType: !3700, size: 64, offset: 320)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!109, !3648, !406, !441, !369, !745}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !435, file: !14, line: 1976, baseType: !3704, size: 64, offset: 384)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!109, !441, !406, !441}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !435, file: !14, line: 1977, baseType: !3708, size: 64, offset: 448)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!109, !406, !441}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !435, file: !14, line: 1978, baseType: !3712, size: 64, offset: 512)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!109, !3648, !406, !441, !247}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !435, file: !14, line: 1980, baseType: !3716, size: 64, offset: 576)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!109, !3648, !406, !441, !369}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !435, file: !14, line: 1982, baseType: !3708, size: 64, offset: 640)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !435, file: !14, line: 1983, baseType: !3721, size: 64, offset: 704)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!109, !3648, !406, !441, !369, !560}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !435, file: !14, line: 1985, baseType: !3725, size: 64, offset: 768)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!109, !3648, !406, !441, !406, !441, !7}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !435, file: !14, line: 1987, baseType: !3729, size: 64, offset: 832)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!109, !3648, !441, !3732}
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3734)
!3734 = !{!3735, !3736, !3737, !3747, !3756, !3757, !3762, !3763, !3764}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3733, file: !14, line: 227, baseType: !7, size: 32)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3733, file: !14, line: 228, baseType: !369, size: 16, offset: 32)
!3737 = !DIDerivedType(tag: DW_TAG_member, scope: !3733, file: !14, line: 241, baseType: !3738, size: 32, offset: 64)
!3738 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3733, file: !14, line: 241, size: 32, elements: !3739)
!3739 = !{!3740, !3741}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3738, file: !14, line: 242, baseType: !412, size: 32)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3738, file: !14, line: 243, baseType: !3742, size: 32)
!3742 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3743, line: 16, baseType: !3744)
!3743 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3744 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3743, line: 14, size: 32, elements: !3745)
!3745 = !{!3746}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3744, file: !3743, line: 15, baseType: !417, size: 32)
!3747 = !DIDerivedType(tag: DW_TAG_member, scope: !3733, file: !14, line: 245, baseType: !3748, size: 32, offset: 96)
!3748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3733, file: !14, line: 245, size: 32, elements: !3749)
!3749 = !{!3750, !3751}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3748, file: !14, line: 246, baseType: !421, size: 32)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3748, file: !14, line: 247, baseType: !3752, size: 32)
!3752 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3743, line: 20, baseType: !3753)
!3753 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3743, line: 18, size: 32, elements: !3754)
!3754 = !{!3755}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3753, file: !3743, line: 19, baseType: !425, size: 32)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3733, file: !14, line: 249, baseType: !565, size: 64, offset: 128)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3733, file: !14, line: 250, baseType: !3758, size: 128, offset: 192)
!3758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1169, line: 13, size: 128, elements: !3759)
!3759 = !{!3760, !3761}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3758, file: !1169, line: 14, baseType: !1168, size: 64)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3758, file: !1169, line: 15, baseType: !363, size: 64, offset: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3733, file: !14, line: 251, baseType: !3758, size: 128, offset: 320)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3733, file: !14, line: 252, baseType: !3758, size: 128, offset: 448)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3733, file: !14, line: 259, baseType: !1751, size: 64, offset: 576)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !435, file: !14, line: 1988, baseType: !3766, size: 64, offset: 896)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!109, !3648, !1238, !3769, !230, !7}
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3771, line: 22, size: 1280, elements: !3772)
!3771 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3772 = !{!3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3770, file: !3771, line: 23, baseType: !230, size: 32)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3770, file: !3771, line: 24, baseType: !369, size: 16, offset: 32)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3770, file: !3771, line: 25, baseType: !7, size: 32, offset: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3770, file: !3771, line: 26, baseType: !1873, size: 32, offset: 96)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3770, file: !3771, line: 27, baseType: !477, size: 64, offset: 128)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3770, file: !3771, line: 28, baseType: !477, size: 64, offset: 192)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3770, file: !3771, line: 41, baseType: !477, size: 64, offset: 256)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3770, file: !3771, line: 42, baseType: !560, size: 32, offset: 320)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3770, file: !3771, line: 43, baseType: !560, size: 32, offset: 352)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3770, file: !3771, line: 44, baseType: !412, size: 32, offset: 384)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3770, file: !3771, line: 45, baseType: !421, size: 32, offset: 416)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3770, file: !3771, line: 46, baseType: !565, size: 64, offset: 448)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3770, file: !3771, line: 47, baseType: !3758, size: 128, offset: 512)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3770, file: !3771, line: 48, baseType: !3758, size: 128, offset: 640)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3770, file: !3771, line: 49, baseType: !3758, size: 128, offset: 768)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3770, file: !3771, line: 50, baseType: !3758, size: 128, offset: 896)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3770, file: !3771, line: 51, baseType: !477, size: 64, offset: 1024)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3770, file: !3771, line: 52, baseType: !477, size: 64, offset: 1088)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3770, file: !3771, line: 53, baseType: !230, size: 32, offset: 1152)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3770, file: !3771, line: 54, baseType: !230, size: 32, offset: 1184)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3770, file: !3771, line: 55, baseType: !477, size: 64, offset: 1216)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !435, file: !14, line: 1990, baseType: !3795, size: 64, offset: 960)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!359, !441, !327, !374}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !435, file: !14, line: 1991, baseType: !3799, size: 64, offset: 1024)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!109, !406, !3802, !477, !477}
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !435, file: !14, line: 1993, baseType: !3805, size: 64, offset: 1088)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!109, !406, !109}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !435, file: !14, line: 1994, baseType: !3809, size: 64, offset: 1152)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!109, !406, !441, !1751, !7, !369}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !435, file: !14, line: 1997, baseType: !3813, size: 64, offset: 1216)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!109, !3648, !406, !1751, !369}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !435, file: !14, line: 1999, baseType: !3817, size: 64, offset: 1280)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!429, !3648, !441, !109}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !435, file: !14, line: 2001, baseType: !3821, size: 64, offset: 1344)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!109, !3648, !441, !429, !109}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !435, file: !14, line: 2003, baseType: !3825, size: 64, offset: 1408)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!109, !3648, !441, !3828}
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !435, file: !14, line: 2005, baseType: !3831, size: 64, offset: 1472)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!109, !441, !3828}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !435, file: !14, line: 2006, baseType: !3835, size: 64, offset: 1536)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!3838, !406}
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3840)
!3840 = !{!3841, !3842}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3839, file: !14, line: 3193, baseType: !2108, size: 128)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3839, file: !14, line: 3194, baseType: !230, size: 32, offset: 128)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !407, file: !14, line: 655, baseType: !555, size: 64, offset: 448)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !407, file: !14, line: 656, baseType: !402, size: 64, offset: 512)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !407, file: !14, line: 659, baseType: !198, size: 64, offset: 576)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !407, file: !14, line: 663, baseType: !197, size: 64, offset: 640)
!3847 = !DIDerivedType(tag: DW_TAG_member, scope: !407, file: !14, line: 671, baseType: !3848, size: 32, offset: 704)
!3848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !407, file: !14, line: 671, size: 32, elements: !3849)
!3849 = !{!3850, !3852}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3848, file: !14, line: 672, baseType: !3851, size: 32)
!3851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3848, file: !14, line: 673, baseType: !7, size: 32)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !407, file: !14, line: 675, baseType: !560, size: 32, offset: 736)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !407, file: !14, line: 676, baseType: !565, size: 64, offset: 768)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !407, file: !14, line: 677, baseType: !3758, size: 128, offset: 832)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !407, file: !14, line: 678, baseType: !3758, size: 128, offset: 960)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !407, file: !14, line: 679, baseType: !3758, size: 128, offset: 1088)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !407, file: !14, line: 680, baseType: !259, size: 32, offset: 1216)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !407, file: !14, line: 681, baseType: !297, size: 16, offset: 1248)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !407, file: !14, line: 682, baseType: !287, size: 8, offset: 1264)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !407, file: !14, line: 683, baseType: !287, size: 8, offset: 1272)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !407, file: !14, line: 684, baseType: !1316, size: 64, offset: 1280)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !407, file: !14, line: 691, baseType: !197, size: 64, offset: 1344)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !407, file: !14, line: 692, baseType: !1328, size: 320, offset: 1408)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !407, file: !14, line: 694, baseType: !197, size: 64, offset: 1728)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !407, file: !14, line: 695, baseType: !197, size: 64, offset: 1792)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !407, file: !14, line: 697, baseType: !909, size: 128, offset: 1856)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !407, file: !14, line: 698, baseType: !202, size: 128, offset: 1984)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !407, file: !14, line: 707, baseType: !202, size: 128, offset: 2112)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !407, file: !14, line: 708, baseType: !202, size: 128, offset: 2240)
!3871 = !DIDerivedType(tag: DW_TAG_member, scope: !407, file: !14, line: 709, baseType: !3872, size: 128, offset: 2368)
!3872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !407, file: !14, line: 709, size: 128, elements: !3873)
!3873 = !{!3874, !3875}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3872, file: !14, line: 710, baseType: !1036, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3872, file: !14, line: 711, baseType: !883, size: 128, align: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !407, file: !14, line: 713, baseType: !671, size: 64, offset: 2496)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !407, file: !14, line: 714, baseType: !671, size: 64, offset: 2560)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !407, file: !14, line: 715, baseType: !279, size: 32, offset: 2624)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !407, file: !14, line: 716, baseType: !279, size: 32, offset: 2656)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !407, file: !14, line: 717, baseType: !279, size: 32, offset: 2688)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !407, file: !14, line: 719, baseType: !279, size: 32, offset: 2720)
!3882 = !DIDerivedType(tag: DW_TAG_member, scope: !407, file: !14, line: 721, baseType: !3883, size: 64, offset: 2752)
!3883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !407, file: !14, line: 721, size: 64, elements: !3884)
!3884 = !{!3885, !3886}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3883, file: !14, line: 722, baseType: !2019, size: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3883, file: !14, line: 723, baseType: !1059, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !407, file: !14, line: 725, baseType: !3888, size: 64, offset: 2816)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !407, file: !14, line: 726, baseType: !403, size: 1536, align: 64, offset: 2880)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !407, file: !14, line: 727, baseType: !202, size: 128, offset: 4416)
!3892 = !DIDerivedType(tag: DW_TAG_member, scope: !407, file: !14, line: 728, baseType: !3893, size: 64, offset: 4544)
!3893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !407, file: !14, line: 728, size: 64, elements: !3894)
!3894 = !{!3895, !3896, !3899, !3900}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3893, file: !14, line: 729, baseType: !2489, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3893, file: !14, line: 730, baseType: !3897, size: 64)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3893, file: !14, line: 731, baseType: !327, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3893, file: !14, line: 732, baseType: !7, size: 32)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !407, file: !14, line: 735, baseType: !232, size: 32, offset: 4608)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !407, file: !14, line: 738, baseType: !232, size: 32, offset: 4640)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !407, file: !14, line: 739, baseType: !3585, size: 64, offset: 4672)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !407, file: !14, line: 750, baseType: !198, size: 64, offset: 4736)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !403, file: !14, line: 474, baseType: !2108, size: 128, offset: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !403, file: !14, line: 475, baseType: !1328, size: 320, offset: 192)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !403, file: !14, line: 476, baseType: !1180, size: 32, offset: 512)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !403, file: !14, line: 477, baseType: !279, size: 32, offset: 544)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !403, file: !14, line: 482, baseType: !1614, size: 128, offset: 576)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !403, file: !14, line: 483, baseType: !197, size: 64, offset: 704)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !403, file: !14, line: 484, baseType: !197, size: 64, offset: 768)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !403, file: !14, line: 485, baseType: !3913, size: 64, offset: 832)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3915)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3916)
!3916 = !{!3917, !3921, !3991, !3995, !3999, !4005, !4009, !4013, !4018, !4022, !4026, !4030, !4031, !4035, !4039, !4043, !4048, !4052, !4059, !4060}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3915, file: !14, line: 405, baseType: !3918, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!109, !2276, !1071}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3915, file: !14, line: 406, baseType: !3922, size: 64, offset: 64)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!109, !1751, !3925}
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3927)
!3927 = !{!3928, !3958, !3972}
!3928 = !DIDerivedType(tag: DW_TAG_member, scope: !3926, file: !38, line: 295, baseType: !3929, size: 512)
!3929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3926, file: !38, line: 295, size: 512, elements: !3930)
!3930 = !{!3931, !3957}
!3931 = !DIDerivedType(tag: DW_TAG_member, scope: !3929, file: !38, line: 296, baseType: !3932, size: 448)
!3932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3929, file: !38, line: 296, size: 448, elements: !3933)
!3933 = !{!3934, !3935, !3944, !3945, !3946, !3955, !3956}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3932, file: !38, line: 298, baseType: !197, size: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, scope: !3932, file: !38, line: 299, baseType: !3936, size: 128, offset: 64)
!3936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3932, file: !38, line: 299, size: 128, elements: !3937)
!3937 = !{!3938, !3939}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3936, file: !38, line: 300, baseType: !202, size: 128)
!3939 = !DIDerivedType(tag: DW_TAG_member, scope: !3936, file: !38, line: 302, baseType: !3940, size: 128)
!3940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3936, file: !38, line: 302, size: 128, elements: !3941)
!3941 = !{!3942, !3943}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3940, file: !38, line: 303, baseType: !198, size: 64)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3940, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3932, file: !38, line: 310, baseType: !402, size: 64, offset: 192)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3932, file: !38, line: 311, baseType: !197, size: 64, offset: 256)
!3946 = !DIDerivedType(tag: DW_TAG_member, scope: !3932, file: !38, line: 312, baseType: !3947, size: 64, offset: 320)
!3947 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3932, file: !38, line: 312, size: 64, elements: !3948)
!3948 = !{!3949, !3950}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3947, file: !38, line: 313, baseType: !198, size: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3947, file: !38, line: 314, baseType: !3951, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3952)
!3952 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3953)
!3953 = !{!3954}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3952, file: !38, line: 256, baseType: !197, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3932, file: !38, line: 316, baseType: !279, size: 32, offset: 384)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3932, file: !38, line: 317, baseType: !279, size: 32, offset: 416)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3929, file: !38, line: 323, baseType: !2277, size: 512, align: 128)
!3958 = !DIDerivedType(tag: DW_TAG_member, scope: !3926, file: !38, line: 325, baseType: !3959, size: 512, offset: 512)
!3959 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3926, file: !38, line: 325, size: 512, elements: !3960)
!3960 = !{!3961, !3971}
!3961 = !DIDerivedType(tag: DW_TAG_member, scope: !3959, file: !38, line: 326, baseType: !3962, size: 320)
!3962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3959, file: !38, line: 326, size: 320, elements: !3963)
!3963 = !{!3964, !3965, !3966, !3967, !3968, !3969, !3970}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3962, file: !38, line: 327, baseType: !197, size: 64)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3962, file: !38, line: 328, baseType: !197, size: 64, offset: 64)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3962, file: !38, line: 329, baseType: !197, size: 64, offset: 128)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3962, file: !38, line: 331, baseType: !279, size: 32, offset: 192)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3962, file: !38, line: 332, baseType: !279, size: 32, offset: 224)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3962, file: !38, line: 333, baseType: !279, size: 32, offset: 256)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3962, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3959, file: !38, line: 339, baseType: !2277, size: 512, align: 128)
!3972 = !DIDerivedType(tag: DW_TAG_member, scope: !3926, file: !38, line: 341, baseType: !3973, size: 512, offset: 1024)
!3973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3926, file: !38, line: 341, size: 512, elements: !3974)
!3974 = !{!3975, !3984, !3990}
!3975 = !DIDerivedType(tag: DW_TAG_member, scope: !3973, file: !38, line: 342, baseType: !3976, size: 384)
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3973, file: !38, line: 342, size: 384, elements: !3977)
!3977 = !{!3978, !3979, !3980, !3981, !3982, !3983}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3976, file: !38, line: 343, baseType: !197, size: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3976, file: !38, line: 344, baseType: !197, size: 64, offset: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3976, file: !38, line: 346, baseType: !198, size: 64, offset: 128)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3976, file: !38, line: 347, baseType: !198, size: 64, offset: 192)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3976, file: !38, line: 348, baseType: !198, size: 64, offset: 256)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3976, file: !38, line: 349, baseType: !198, size: 64, offset: 320)
!3984 = !DIDerivedType(tag: DW_TAG_member, scope: !3973, file: !38, line: 352, baseType: !3985, size: 256)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3973, file: !38, line: 352, size: 256, elements: !3986)
!3986 = !{!3987, !3988, !3989}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3985, file: !38, line: 353, baseType: !197, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3985, file: !38, line: 354, baseType: !197, size: 64, offset: 64)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3985, file: !38, line: 356, baseType: !202, size: 128, offset: 128)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3973, file: !38, line: 359, baseType: !2277, size: 512, align: 128)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3915, file: !14, line: 409, baseType: !3992, size: 64, offset: 128)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!109, !402, !1071}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3915, file: !14, line: 412, baseType: !3996, size: 64, offset: 192)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!745, !402, !3925}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3915, file: !14, line: 414, baseType: !4000, size: 64, offset: 256)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{null, !4003}
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3915, file: !14, line: 416, baseType: !4006, size: 64, offset: 320)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!109, !1751, !402, !565, !7, !3334, !2504}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3915, file: !14, line: 419, baseType: !4010, size: 64, offset: 384)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!109, !1751, !402, !565, !7, !7, !2276, !198}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3915, file: !14, line: 424, baseType: !4014, size: 64, offset: 448)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!4017, !402, !4017}
!4017 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !203, line: 131, baseType: !477)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3915, file: !14, line: 425, baseType: !4019, size: 64, offset: 512)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{null, !3925, !374, !374}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3915, file: !14, line: 426, baseType: !4023, size: 64, offset: 576)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!745, !3925, !1180}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3915, file: !14, line: 427, baseType: !4027, size: 64, offset: 640)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{null, !3925}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3915, file: !14, line: 428, baseType: !2038, size: 64, offset: 704)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3915, file: !14, line: 433, baseType: !4032, size: 64, offset: 768)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!109, !402, !3925, !3925, !74}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3915, file: !14, line: 435, baseType: !4036, size: 64, offset: 832)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!109, !3925}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3915, file: !14, line: 436, baseType: !4040, size: 64, offset: 896)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DISubroutineType(types: !4042)
!4042 = !{!745, !3925, !374, !374}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3915, file: !14, line: 438, baseType: !4044, size: 64, offset: 960)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{null, !3925, !4047, !4047}
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3915, file: !14, line: 439, baseType: !4049, size: 64, offset: 1024)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!109, !402, !2276}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3915, file: !14, line: 442, baseType: !4053, size: 64, offset: 1088)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!109, !4056, !1751, !4058}
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3915, file: !14, line: 444, baseType: !2496, size: 64, offset: 1152)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3915, file: !14, line: 445, baseType: !4061, size: 64, offset: 1216)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{!109, !2041, !2063}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !403, file: !14, line: 486, baseType: !197, size: 64, offset: 896)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !403, file: !14, line: 487, baseType: !1328, size: 320, offset: 960)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !403, file: !14, line: 488, baseType: !2539, size: 32, offset: 1280)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !403, file: !14, line: 489, baseType: !259, size: 32, offset: 1312)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !403, file: !14, line: 490, baseType: !202, size: 128, offset: 1344)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !403, file: !14, line: 491, baseType: !198, size: 64, offset: 1472)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !393, file: !353, line: 180, baseType: !4071, size: 64, offset: 320)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!359, !1751, !252, !392, !327, !565, !374}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !393, file: !353, line: 182, baseType: !4071, size: 64, offset: 384)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !393, file: !353, line: 184, baseType: !4076, size: 64, offset: 448)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{!109, !1751, !252, !392, !2167}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !381, file: !353, line: 90, baseType: !4080, size: 64, offset: 192)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !381, file: !353, line: 91, baseType: !4082, size: 64, offset: 256)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !343, file: !244, line: 120, baseType: !4084, size: 64, offset: 192)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{!4087, !310}
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4089)
!4089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !4090)
!4090 = !{!4091, !4092, !4096, !4100, !4106, !4110}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4089, file: !82, line: 40, baseType: !81, size: 32)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4089, file: !82, line: 41, baseType: !4093, size: 64, offset: 64)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!745}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4089, file: !82, line: 42, baseType: !4097, size: 64, offset: 128)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{!198}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4089, file: !82, line: 43, baseType: !4101, size: 64, offset: 192)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{!2628, !4104}
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4089, file: !82, line: 44, baseType: !4107, size: 64, offset: 256)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!2628}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4089, file: !82, line: 45, baseType: !708, size: 64, offset: 320)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !343, file: !244, line: 121, baseType: !4112, size: 64, offset: 256)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{!2628, !310}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !343, file: !244, line: 122, baseType: !4116, size: 64, offset: 320)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{null, !310, !4119, !4120}
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !243, file: !244, line: 70, baseType: !4122, size: 64, offset: 384)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !580, line: 190, size: 1152, elements: !4124)
!4124 = !{!4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4216, !4217, !4218, !4219, !4220, !4223}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4123, file: !580, line: 191, baseType: !279, size: 32)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4123, file: !580, line: 192, baseType: !279, size: 32, offset: 32)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4123, file: !580, line: 202, baseType: !4122, size: 64, offset: 64)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4123, file: !580, line: 203, baseType: !247, size: 64, offset: 128)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4123, file: !580, line: 205, baseType: !777, size: 192, align: 64, offset: 192)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4123, file: !580, line: 207, baseType: !2628, size: 64, offset: 384)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4123, file: !580, line: 208, baseType: !7, size: 32, offset: 448)
!4132 = !DIDerivedType(tag: DW_TAG_member, scope: !4123, file: !580, line: 209, baseType: !4133, size: 256, offset: 512)
!4133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4123, file: !580, line: 209, size: 256, elements: !4134)
!4134 = !{!4135, !4144, !4148}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4133, file: !580, line: 210, baseType: !4136, size: 256)
!4136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !580, line: 153, size: 256, elements: !4137)
!4137 = !{!4138, !4139, !4140, !4143}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4136, file: !580, line: 154, baseType: !197, size: 64)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4136, file: !580, line: 156, baseType: !1617, size: 64, offset: 64)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4136, file: !580, line: 162, baseType: !4141, size: 64, offset: 128)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !580, line: 162, flags: DIFlagFwdDecl)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4136, file: !580, line: 167, baseType: !197, size: 64, offset: 192)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4133, file: !580, line: 211, baseType: !4145, size: 64)
!4145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !580, line: 170, size: 64, elements: !4146)
!4146 = !{!4147}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4145, file: !580, line: 171, baseType: !4122, size: 64)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4133, file: !580, line: 212, baseType: !4149, size: 256)
!4149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !580, line: 174, size: 256, elements: !4150)
!4150 = !{!4151, !4211, !4214, !4215}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4149, file: !580, line: 175, baseType: !4152, size: 64)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4154)
!4154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !580, line: 271, size: 768, elements: !4155)
!4155 = !{!4156, !4176, !4180, !4184, !4188, !4192, !4196, !4200, !4201, !4202, !4203, !4207}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4154, file: !580, line: 276, baseType: !4157, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{!109, !4160}
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !580, line: 251, size: 1216, elements: !4162)
!4162 = !{!4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4161, file: !580, line: 253, baseType: !4122, size: 64)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4161, file: !580, line: 254, baseType: !1751, size: 64, offset: 64)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4161, file: !580, line: 255, baseType: !1108, size: 64, offset: 128)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4161, file: !580, line: 256, baseType: !198, size: 64, offset: 192)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4161, file: !580, line: 259, baseType: !665, size: 256, offset: 256)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4161, file: !580, line: 260, baseType: !665, size: 256, offset: 512)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4161, file: !580, line: 261, baseType: !109, size: 32, offset: 768)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4161, file: !580, line: 262, baseType: !202, size: 128, offset: 832)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4161, file: !580, line: 263, baseType: !327, size: 64, offset: 960)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4161, file: !580, line: 265, baseType: !374, size: 64, offset: 1024)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4161, file: !580, line: 266, baseType: !745, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4161, file: !580, line: 267, baseType: !745, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4161, file: !580, line: 268, baseType: !2212, size: 64, offset: 1152)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4154, file: !580, line: 277, baseType: !4177, size: 64, offset: 64)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{null, !4160}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4154, file: !580, line: 290, baseType: !4181, size: 64, offset: 128)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{!109, !1108, !198}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4154, file: !580, line: 292, baseType: !4185, size: 64, offset: 192)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!198, !1108, !2032}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4154, file: !580, line: 293, baseType: !4189, size: 64, offset: 256)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!198, !1108, !198, !2032}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4154, file: !580, line: 294, baseType: !4193, size: 64, offset: 320)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{null, !1108, !198}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4154, file: !580, line: 296, baseType: !4197, size: 64, offset: 384)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!359, !4160, !327, !374, !565}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4154, file: !580, line: 306, baseType: !374, size: 64, offset: 448)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4154, file: !580, line: 313, baseType: !745, size: 8, offset: 512)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4154, file: !580, line: 314, baseType: !4197, size: 64, offset: 576)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4154, file: !580, line: 317, baseType: !4204, size: 64, offset: 640)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{!2145, !4160, !2147}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4154, file: !580, line: 320, baseType: !4208, size: 64, offset: 704)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!109, !4160, !2167}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4149, file: !580, line: 176, baseType: !4212, size: 64, offset: 64)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !580, line: 35, flags: DIFlagFwdDecl)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4149, file: !580, line: 177, baseType: !565, size: 64, offset: 128)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4149, file: !580, line: 178, baseType: !4122, size: 64, offset: 192)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4123, file: !580, line: 215, baseType: !198, size: 64, offset: 768)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4123, file: !580, line: 221, baseType: !477, size: 64, offset: 832)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4123, file: !580, line: 223, baseType: !297, size: 16, offset: 896)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4123, file: !580, line: 224, baseType: !369, size: 16, offset: 912)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4123, file: !580, line: 225, baseType: !4221, size: 64, offset: 960)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !580, line: 36, flags: DIFlagFwdDecl)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4123, file: !580, line: 227, baseType: !883, size: 128, align: 64, offset: 1024)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !243, file: !244, line: 71, baseType: !4225, size: 32, offset: 448)
!4225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4226, line: 19, size: 32, elements: !4227)
!4226 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4227 = !{!4228}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4225, file: !4226, line: 20, baseType: !1448, size: 32)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !243, file: !244, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !243, file: !244, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !243, file: !244, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !243, file: !244, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !243, file: !244, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !240, file: !94, line: 707, baseType: !239, size: 64, offset: 512)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !240, file: !94, line: 709, baseType: !4236, size: 64, offset: 576)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !240, file: !94, line: 711, baseType: !247, size: 64, offset: 640)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !240, file: !94, line: 712, baseType: !4240, size: 64, offset: 704)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4242)
!4242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4243)
!4243 = !{!4244, !4245, !4246, !4252, !4257, !4261}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4242, file: !94, line: 90, baseType: !247, size: 64)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4242, file: !94, line: 91, baseType: !378, size: 64, offset: 64)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4242, file: !94, line: 92, baseType: !4247, size: 64, offset: 128)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{!109, !4250, !322}
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4242, file: !94, line: 93, baseType: !4253, size: 64, offset: 192)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!327, !4250, !4256, !4119, !4120}
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4242, file: !94, line: 95, baseType: !4258, size: 64, offset: 256)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{null, !239}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4242, file: !94, line: 97, baseType: !4262, size: 64, offset: 320)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4264)
!4264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4265)
!4265 = !{!4266, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4264, file: !101, line: 287, baseType: !4267, size: 64)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{!109, !239}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4264, file: !101, line: 288, baseType: !4258, size: 64, offset: 64)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4264, file: !101, line: 289, baseType: !4267, size: 64, offset: 128)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4264, file: !101, line: 290, baseType: !4267, size: 64, offset: 192)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4264, file: !101, line: 291, baseType: !4267, size: 64, offset: 256)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4264, file: !101, line: 292, baseType: !4267, size: 64, offset: 320)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4264, file: !101, line: 293, baseType: !4267, size: 64, offset: 384)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4264, file: !101, line: 294, baseType: !4267, size: 64, offset: 448)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4264, file: !101, line: 295, baseType: !4267, size: 64, offset: 512)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4264, file: !101, line: 296, baseType: !4267, size: 64, offset: 576)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4264, file: !101, line: 297, baseType: !4267, size: 64, offset: 640)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4264, file: !101, line: 298, baseType: !4267, size: 64, offset: 704)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4264, file: !101, line: 299, baseType: !4267, size: 64, offset: 768)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4264, file: !101, line: 300, baseType: !4267, size: 64, offset: 832)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4264, file: !101, line: 301, baseType: !4267, size: 64, offset: 896)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4264, file: !101, line: 302, baseType: !4267, size: 64, offset: 960)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4264, file: !101, line: 303, baseType: !4267, size: 64, offset: 1024)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4264, file: !101, line: 304, baseType: !4267, size: 64, offset: 1088)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4264, file: !101, line: 305, baseType: !4267, size: 64, offset: 1152)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4264, file: !101, line: 306, baseType: !4267, size: 64, offset: 1216)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4264, file: !101, line: 307, baseType: !4267, size: 64, offset: 1280)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4264, file: !101, line: 308, baseType: !4267, size: 64, offset: 1344)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4264, file: !101, line: 309, baseType: !4267, size: 64, offset: 1408)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !240, file: !94, line: 714, baseType: !4293, size: 64, offset: 768)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4295)
!4295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4296, line: 80, size: 1344, elements: !4297)
!4296 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4297 = !{!4298, !4299, !4300, !4301, !4302, !4303, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4376}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4295, file: !4296, line: 81, baseType: !247, size: 64)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4295, file: !4296, line: 82, baseType: !247, size: 64, offset: 64)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4295, file: !4296, line: 83, baseType: !378, size: 64, offset: 128)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4295, file: !4296, line: 84, baseType: !378, size: 64, offset: 192)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4295, file: !4296, line: 85, baseType: !378, size: 64, offset: 256)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4295, file: !4296, line: 87, baseType: !4304, size: 64, offset: 320)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{!109, !239, !4307}
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4309)
!4309 = !{!4310, !4311, !4312, !4313, !4314, !4315, !4316, !4329, !4339, !4340, !4341, !4342, !4343, !4351, !4352, !4353, !4354, !4355, !4356}
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4308, file: !88, line: 97, baseType: !247, size: 64)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4308, file: !88, line: 98, baseType: !4293, size: 64, offset: 64)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4308, file: !88, line: 100, baseType: !594, size: 64, offset: 128)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4308, file: !88, line: 101, baseType: !247, size: 64, offset: 192)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4308, file: !88, line: 103, baseType: !745, size: 8, offset: 256)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4308, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4308, file: !88, line: 106, baseType: !4317, size: 64, offset: 320)
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4319)
!4319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4320, line: 282, size: 1600, elements: !4321)
!4320 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4321 = !{!4322, !4323, !4324, !4328}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4319, file: !4320, line: 283, baseType: !3588, size: 256)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4319, file: !4320, line: 284, baseType: !3588, size: 256, offset: 256)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4319, file: !4320, line: 285, baseType: !4325, size: 1024, offset: 512)
!4325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 1024, elements: !4326)
!4326 = !{!4327}
!4327 = !DISubrange(count: 128)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4319, file: !4320, line: 286, baseType: !2628, size: 64, offset: 1536)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4308, file: !88, line: 107, baseType: !4330, size: 64, offset: 384)
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4332)
!4332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4320, line: 217, size: 256, elements: !4333)
!4333 = !{!4334, !4335, !4337, !4338}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4332, file: !4320, line: 218, baseType: !3595, size: 128)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4332, file: !4320, line: 219, baseType: !4336, size: 64, offset: 128)
!4336 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4320, line: 15, baseType: !197)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4332, file: !4320, line: 220, baseType: !232, size: 32, offset: 192)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4332, file: !4320, line: 221, baseType: !232, size: 32, offset: 224)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4308, file: !88, line: 109, baseType: !4267, size: 64, offset: 448)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4308, file: !88, line: 110, baseType: !4258, size: 64, offset: 512)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4308, file: !88, line: 111, baseType: !4267, size: 64, offset: 576)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4308, file: !88, line: 112, baseType: !4258, size: 64, offset: 640)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4308, file: !88, line: 113, baseType: !4344, size: 64, offset: 704)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!109, !239, !4347}
!4347 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4348)
!4348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4349)
!4349 = !{!4350}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4348, file: !101, line: 59, baseType: !109, size: 32)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4308, file: !88, line: 114, baseType: !4267, size: 64, offset: 768)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4308, file: !88, line: 115, baseType: !378, size: 64, offset: 832)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4308, file: !88, line: 116, baseType: !378, size: 64, offset: 896)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4308, file: !88, line: 118, baseType: !4262, size: 64, offset: 960)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4308, file: !88, line: 119, baseType: !4258, size: 64, offset: 1024)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4308, file: !88, line: 121, baseType: !4357, size: 64, offset: 1088)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4295, file: !4296, line: 88, baseType: !4247, size: 64, offset: 384)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4295, file: !4296, line: 89, baseType: !4267, size: 64, offset: 448)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4295, file: !4296, line: 90, baseType: !4258, size: 64, offset: 512)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4295, file: !4296, line: 91, baseType: !4258, size: 64, offset: 576)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4295, file: !4296, line: 92, baseType: !4258, size: 64, offset: 640)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4295, file: !4296, line: 94, baseType: !4267, size: 64, offset: 704)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4295, file: !4296, line: 95, baseType: !4267, size: 64, offset: 768)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4295, file: !4296, line: 97, baseType: !4344, size: 64, offset: 832)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4295, file: !4296, line: 98, baseType: !4267, size: 64, offset: 896)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4295, file: !4296, line: 100, baseType: !4267, size: 64, offset: 960)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4295, file: !4296, line: 102, baseType: !4267, size: 64, offset: 1024)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4295, file: !4296, line: 103, baseType: !4258, size: 64, offset: 1088)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4295, file: !4296, line: 105, baseType: !4262, size: 64, offset: 1152)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4295, file: !4296, line: 107, baseType: !4373, size: 64, offset: 1216)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4375)
!4375 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4296, line: 107, flags: DIFlagFwdDecl)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4295, file: !4296, line: 109, baseType: !745, size: 8, offset: 1280)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !240, file: !94, line: 715, baseType: !4307, size: 64, offset: 832)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !240, file: !94, line: 717, baseType: !198, size: 64, offset: 896)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !240, file: !94, line: 719, baseType: !198, size: 64, offset: 960)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !240, file: !94, line: 721, baseType: !665, size: 256, offset: 1024)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !240, file: !94, line: 725, baseType: !4382, size: 448, offset: 1280)
!4382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4383)
!4383 = !{!4384, !4385, !4386, !4387}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4382, file: !94, line: 518, baseType: !202, size: 128)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4382, file: !94, line: 519, baseType: !202, size: 128, offset: 128)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4382, file: !94, line: 520, baseType: !202, size: 128, offset: 256)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4382, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !240, file: !94, line: 726, baseType: !4389, size: 2496, offset: 1728)
!4389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4390)
!4390 = !{!4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4473, !4477}
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4389, file: !101, line: 664, baseType: !4347, size: 32)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4389, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4389, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4389, file: !101, line: 667, baseType: !745, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4389, file: !101, line: 668, baseType: !745, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4389, file: !101, line: 669, baseType: !745, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4389, file: !101, line: 670, baseType: !745, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4389, file: !101, line: 671, baseType: !745, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4389, file: !101, line: 672, baseType: !745, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4389, file: !101, line: 673, baseType: !745, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4389, file: !101, line: 674, baseType: !745, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4389, file: !101, line: 675, baseType: !230, size: 32, offset: 64)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4389, file: !101, line: 676, baseType: !259, size: 32, offset: 96)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4389, file: !101, line: 678, baseType: !202, size: 128, offset: 128)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4389, file: !101, line: 679, baseType: !614, size: 256, offset: 256)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4389, file: !101, line: 680, baseType: !4407, size: 64, offset: 512)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4409, line: 43, size: 1536, elements: !4410)
!4409 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4410 = !{!4411, !4412, !4413, !4414, !4415, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4408, file: !4409, line: 44, baseType: !247, size: 64)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4408, file: !4409, line: 45, baseType: !109, size: 32, offset: 64)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4408, file: !4409, line: 46, baseType: !202, size: 128, offset: 128)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4408, file: !4409, line: 47, baseType: !259, size: 32, offset: 256)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4408, file: !4409, line: 48, baseType: !4416, size: 64, offset: 320)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4408, file: !4409, line: 49, baseType: !905, size: 320, offset: 384)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4408, file: !4409, line: 50, baseType: !197, size: 64, offset: 704)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4408, file: !4409, line: 51, baseType: !1563, size: 64, offset: 768)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4408, file: !4409, line: 52, baseType: !1563, size: 64, offset: 832)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4408, file: !4409, line: 53, baseType: !1563, size: 64, offset: 896)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4408, file: !4409, line: 54, baseType: !1563, size: 64, offset: 960)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4408, file: !4409, line: 55, baseType: !1563, size: 64, offset: 1024)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4408, file: !4409, line: 56, baseType: !197, size: 64, offset: 1088)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4408, file: !4409, line: 57, baseType: !197, size: 64, offset: 1152)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4408, file: !4409, line: 58, baseType: !197, size: 64, offset: 1216)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4408, file: !4409, line: 59, baseType: !197, size: 64, offset: 1280)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4408, file: !4409, line: 60, baseType: !197, size: 64, offset: 1344)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4408, file: !4409, line: 61, baseType: !239, size: 64, offset: 1408)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4408, file: !4409, line: 62, baseType: !745, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4408, file: !4409, line: 63, baseType: !745, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4389, file: !101, line: 681, baseType: !745, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4389, file: !101, line: 682, baseType: !745, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4389, file: !101, line: 683, baseType: !745, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4389, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4389, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4389, file: !101, line: 690, baseType: !1555, size: 512, offset: 640)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4389, file: !101, line: 691, baseType: !477, size: 64, offset: 1152)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4389, file: !101, line: 692, baseType: !923, size: 256, offset: 1216)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4389, file: !101, line: 693, baseType: !1421, size: 192, offset: 1472)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4389, file: !101, line: 694, baseType: !4416, size: 64, offset: 1664)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4389, file: !101, line: 695, baseType: !279, size: 32, offset: 1728)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4389, file: !101, line: 696, baseType: !279, size: 32, offset: 1760)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4389, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4389, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4389, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4389, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4389, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4389, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4389, file: !101, line: 703, baseType: !745, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4389, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4389, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4389, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4389, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4389, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4389, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4389, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4389, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4389, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4389, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4389, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4389, file: !101, line: 715, baseType: !477, size: 64, offset: 2048)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4389, file: !101, line: 716, baseType: !477, size: 64, offset: 2112)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4389, file: !101, line: 717, baseType: !477, size: 64, offset: 2176)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4389, file: !101, line: 718, baseType: !477, size: 64, offset: 2240)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4389, file: !101, line: 720, baseType: !4468, size: 64, offset: 2304)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4470)
!4470 = !{!4471, !4472}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4469, file: !101, line: 633, baseType: !259, size: 32)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4469, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4389, file: !101, line: 721, baseType: !4474, size: 64, offset: 2368)
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4475, size: 64)
!4475 = !DISubroutineType(types: !4476)
!4476 = !{null, !239, !661}
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4389, file: !101, line: 722, baseType: !4478, size: 64, offset: 2432)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !117, line: 117, size: 2432, elements: !4480)
!4480 = !{!4481, !4509, !4510, !4517, !4522, !4544, !4545}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !4479, file: !117, line: 118, baseType: !4482, size: 320)
!4482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !117, line: 52, size: 320, elements: !4483)
!4483 = !{!4484, !4488, !4489, !4490, !4491, !4492}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4482, file: !117, line: 53, baseType: !4485, size: 128)
!4485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !1717, line: 82, size: 128, elements: !4486)
!4486 = !{!4487}
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !4485, file: !1717, line: 83, baseType: !202, size: 128)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !4482, file: !117, line: 54, baseType: !661, size: 32, offset: 128)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !4482, file: !117, line: 55, baseType: !661, size: 32, offset: 160)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !4482, file: !117, line: 56, baseType: !661, size: 32, offset: 192)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4482, file: !117, line: 57, baseType: !116, size: 32, offset: 224)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !4482, file: !117, line: 58, baseType: !4493, size: 64, offset: 256)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !4495, line: 65, size: 384, elements: !4496)
!4495 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!4496 = !{!4497, !4498}
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !4494, file: !4495, line: 66, baseType: !1328, size: 320)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4494, file: !4495, line: 67, baseType: !4499, size: 64, offset: 320)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !4495, line: 54, size: 192, elements: !4501)
!4501 = !{!4502, !4507, !4508}
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !4500, file: !4495, line: 55, baseType: !4503, size: 64)
!4503 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !4495, line: 51, baseType: !4504)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DISubroutineType(types: !4506)
!4506 = !{!109, !4499, !197, !198}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4500, file: !4495, line: 56, baseType: !4499, size: 64, offset: 64)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4500, file: !4495, line: 57, baseType: !109, size: 32, offset: 128)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !4479, file: !117, line: 119, baseType: !4482, size: 320, offset: 320)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !4479, file: !117, line: 120, baseType: !4511, size: 1408, offset: 640)
!4511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !117, line: 85, size: 1408, elements: !4512)
!4512 = !{!4513, !4514, !4515, !4516}
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !4511, file: !117, line: 86, baseType: !4482, size: 320)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !4511, file: !117, line: 87, baseType: !4494, size: 384, offset: 320)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !4511, file: !117, line: 88, baseType: !4482, size: 320, offset: 704)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !4511, file: !117, line: 89, baseType: !4494, size: 384, offset: 1024)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4479, file: !117, line: 121, baseType: !4518, size: 192, offset: 2048)
!4518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !117, line: 71, size: 192, elements: !4519)
!4519 = !{!4520, !4521}
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4518, file: !117, line: 72, baseType: !202, size: 128)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !4518, file: !117, line: 73, baseType: !661, size: 32, offset: 128)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !4479, file: !117, line: 122, baseType: !4523, size: 64, offset: 2240)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !117, line: 107, size: 576, elements: !4525)
!4525 = !{!4526, !4527, !4543}
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4524, file: !117, line: 108, baseType: !122, size: 32)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4524, file: !117, line: 113, baseType: !4528, size: 448, offset: 64)
!4528 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4524, file: !117, line: 109, size: 448, elements: !4529)
!4529 = !{!4530, !4531, !4536}
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !4528, file: !117, line: 110, baseType: !1716, size: 320)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !4528, file: !117, line: 111, baseType: !4532, size: 192)
!4532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !117, line: 66, size: 192, elements: !4533)
!4533 = !{!4534, !4535}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4532, file: !117, line: 67, baseType: !202, size: 128)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4532, file: !117, line: 68, baseType: !661, size: 32, offset: 128)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !4528, file: !117, line: 112, baseType: !4537, size: 448)
!4537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !117, line: 92, size: 448, elements: !4538)
!4538 = !{!4539, !4540, !4541}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4537, file: !117, line: 93, baseType: !129, size: 32)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !4537, file: !117, line: 94, baseType: !1716, size: 320, offset: 64)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4537, file: !117, line: 95, baseType: !4542, size: 64, offset: 384)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4511, size: 64)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4524, file: !117, line: 114, baseType: !239, size: 64, offset: 512)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !4479, file: !117, line: 123, baseType: !4523, size: 64, offset: 2304)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !4479, file: !117, line: 124, baseType: !4523, size: 64, offset: 2368)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !240, file: !94, line: 727, baseType: !4547, size: 64, offset: 4224)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4549)
!4549 = !{!4550, !4551, !4552, !4556, !4557, !4558}
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4548, file: !101, line: 743, baseType: !4264, size: 1472)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4548, file: !101, line: 744, baseType: !4267, size: 64, offset: 1472)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4548, file: !101, line: 745, baseType: !4553, size: 64, offset: 1536)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{null, !239, !745}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4548, file: !101, line: 746, baseType: !4267, size: 64, offset: 1600)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4548, file: !101, line: 747, baseType: !4258, size: 64, offset: 1664)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4548, file: !101, line: 748, baseType: !4258, size: 64, offset: 1728)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !240, file: !94, line: 736, baseType: !4560, size: 128, offset: 4288)
!4560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4561)
!4561 = !{!4562, !4566}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4560, file: !94, line: 531, baseType: !4563, size: 64)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4565, line: 13, flags: DIFlagFwdDecl)
!4565 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4560, file: !94, line: 532, baseType: !4567, size: 64, offset: 64)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !240, file: !94, line: 738, baseType: !4570, size: 64, offset: 4416)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4572)
!4572 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !240, file: !94, line: 740, baseType: !4574, size: 64, offset: 4480)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !240, file: !94, line: 741, baseType: !477, size: 64, offset: 4544)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !240, file: !94, line: 746, baseType: !477, size: 64, offset: 4608)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !240, file: !94, line: 747, baseType: !4578, size: 64, offset: 4672)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4580)
!4580 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !240, file: !94, line: 749, baseType: !4582, size: 64, offset: 4736)
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4584)
!4584 = !{!4585, !4586, !4587}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4583, file: !94, line: 433, baseType: !7, size: 32)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4583, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4583, file: !94, line: 435, baseType: !197, size: 64, offset: 64)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !240, file: !94, line: 751, baseType: !202, size: 128, offset: 4800)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !240, file: !94, line: 762, baseType: !4590, size: 64, offset: 4928)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !240, file: !94, line: 770, baseType: !4593, offset: 4992)
!4593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4594, line: 5, elements: !951)
!4594 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !240, file: !94, line: 772, baseType: !4596, size: 64, offset: 4992)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4598, line: 18, flags: DIFlagFwdDecl)
!4598 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !240, file: !94, line: 773, baseType: !4600, size: 64, offset: 5056)
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4602, line: 41, size: 512, elements: !4603)
!4602 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4603 = !{!4604, !4605, !4699, !4700, !4701, !4702}
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4601, file: !4602, line: 42, baseType: !4600, size: 64)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4601, file: !4602, line: 43, baseType: !4606, size: 64, offset: 64)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4608)
!4608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4602, line: 125, size: 1408, elements: !4609)
!4609 = !{!4610, !4614, !4618, !4624, !4628, !4629, !4634, !4638, !4642, !4646, !4650, !4651, !4655, !4659, !4663, !4674, !4675, !4676, !4677, !4687, !4691, !4695}
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4608, file: !4602, line: 126, baseType: !4611, size: 64)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = !DISubroutineType(types: !4613)
!4613 = !{!4600, !4600}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4608, file: !4602, line: 127, baseType: !4615, size: 64, offset: 64)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{null, !4600}
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4608, file: !4602, line: 128, baseType: !4619, size: 64, offset: 128)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!745, !4622}
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4601)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4608, file: !4602, line: 129, baseType: !4625, size: 64, offset: 192)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!2628, !4622, !4250}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4608, file: !4602, line: 131, baseType: !4619, size: 64, offset: 256)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4608, file: !4602, line: 133, baseType: !4630, size: 64, offset: 320)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!4633, !4622}
!4633 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4602, line: 132, flags: DIFlagFwdDecl)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4608, file: !4602, line: 134, baseType: !4635, size: 64, offset: 384)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DISubroutineType(types: !4637)
!4637 = !{!745, !4622, !247}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4608, file: !4602, line: 136, baseType: !4639, size: 64, offset: 448)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{!109, !4622, !247, !7, !198, !374}
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4608, file: !4602, line: 141, baseType: !4643, size: 64, offset: 512)
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4644, size: 64)
!4644 = !DISubroutineType(types: !4645)
!4645 = !{!109, !4622, !247, !999, !374}
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4608, file: !4602, line: 144, baseType: !4647, size: 64, offset: 576)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{!247, !4622}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4608, file: !4602, line: 145, baseType: !4647, size: 64, offset: 640)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4608, file: !4602, line: 146, baseType: !4652, size: 64, offset: 704)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{!4600, !4622}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4608, file: !4602, line: 148, baseType: !4656, size: 64, offset: 768)
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4657 = !DISubroutineType(types: !4658)
!4658 = !{!4600, !4622, !4600}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4608, file: !4602, line: 151, baseType: !4660, size: 64, offset: 832)
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{!4600, !4622, !247}
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4608, file: !4602, line: 153, baseType: !4664, size: 64, offset: 896)
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4665, size: 64)
!4665 = !DISubroutineType(types: !4666)
!4666 = !{!109, !4622, !247, !247, !7, !7, !4667}
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4602, line: 94, size: 640, elements: !4669)
!4669 = !{!4670, !4671, !4672}
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4668, file: !4602, line: 95, baseType: !4600, size: 64)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4668, file: !4602, line: 96, baseType: !7, size: 32, offset: 64)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4668, file: !4602, line: 97, baseType: !4673, size: 512, offset: 128)
!4673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !477, size: 512, elements: !1598)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4608, file: !4602, line: 158, baseType: !4656, size: 64, offset: 960)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4608, file: !4602, line: 161, baseType: !4652, size: 64, offset: 1024)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4608, file: !4602, line: 163, baseType: !4611, size: 64, offset: 1088)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4608, file: !4602, line: 164, baseType: !4678, size: 64, offset: 1152)
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4679 = !DISubroutineType(types: !4680)
!4680 = !{!109, !4622, !4681}
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4682, size: 64)
!4682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4602, line: 73, size: 128, elements: !4683)
!4683 = !{!4684, !4685, !4686}
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4682, file: !4602, line: 74, baseType: !7, size: 32)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4682, file: !4602, line: 75, baseType: !7, size: 32, offset: 32)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4682, file: !4602, line: 76, baseType: !4622, size: 64, offset: 64)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4608, file: !4602, line: 166, baseType: !4688, size: 64, offset: 1216)
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4689 = !DISubroutineType(types: !4690)
!4690 = !{!198, !4600, !109}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4608, file: !4602, line: 167, baseType: !4692, size: 64, offset: 1280)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = !DISubroutineType(types: !4694)
!4694 = !{!109, !4622, !7}
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4608, file: !4602, line: 168, baseType: !4696, size: 64, offset: 1344)
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!109, !4600}
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4601, file: !4602, line: 44, baseType: !239, size: 64, offset: 128)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4601, file: !4602, line: 45, baseType: !202, size: 128, offset: 192)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4601, file: !4602, line: 46, baseType: !202, size: 128, offset: 320)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4601, file: !4602, line: 47, baseType: !287, size: 8, offset: 448)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !240, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !240, file: !94, line: 778, baseType: !560, size: 32, offset: 5152)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !240, file: !94, line: 779, baseType: !230, size: 32, offset: 5184)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !240, file: !94, line: 781, baseType: !259, size: 32, offset: 5216)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !240, file: !94, line: 782, baseType: !202, size: 128, offset: 5248)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !240, file: !94, line: 784, baseType: !4709, size: 64, offset: 5376)
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4710, size: 64)
!4710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4711)
!4711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4712, line: 52, size: 768, elements: !4713)
!4712 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4713 = !{!4714, !4715, !4716, !4717, !4718, !4722, !4726, !4727, !4728, !4729, !4733, !4737}
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4711, file: !4712, line: 53, baseType: !247, size: 64)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4711, file: !4712, line: 55, baseType: !378, size: 64, offset: 64)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4711, file: !4712, line: 56, baseType: !378, size: 64, offset: 128)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4711, file: !4712, line: 58, baseType: !4247, size: 64, offset: 192)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4711, file: !4712, line: 59, baseType: !4719, size: 64, offset: 256)
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4720, size: 64)
!4720 = !DISubroutineType(types: !4721)
!4721 = !{!327, !4250, !4256}
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4711, file: !4712, line: 61, baseType: !4723, size: 64, offset: 320)
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4724, size: 64)
!4724 = !DISubroutineType(types: !4725)
!4725 = !{null, !4709}
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4711, file: !4712, line: 62, baseType: !4258, size: 64, offset: 384)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4711, file: !4712, line: 64, baseType: !4267, size: 64, offset: 448)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4711, file: !4712, line: 66, baseType: !4087, size: 64, offset: 512)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4711, file: !4712, line: 67, baseType: !4730, size: 64, offset: 576)
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4731, size: 64)
!4731 = !DISubroutineType(types: !4732)
!4732 = !{!2628, !4250}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4711, file: !4712, line: 69, baseType: !4734, size: 64, offset: 640)
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = !DISubroutineType(types: !4736)
!4736 = !{null, !4250, !4119, !4120}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4711, file: !4712, line: 71, baseType: !4262, size: 64, offset: 704)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !240, file: !94, line: 785, baseType: !378, size: 64, offset: 5440)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !240, file: !94, line: 787, baseType: !4258, size: 64, offset: 5504)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !240, file: !94, line: 788, baseType: !4741, size: 64, offset: 5568)
!4741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4742, size: 64)
!4742 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !240, file: !94, line: 789, baseType: !4744, size: 64, offset: 5632)
!4744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4745, size: 64)
!4745 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !240, file: !94, line: 791, baseType: !4747, size: 64, offset: 5696)
!4747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4748, size: 64)
!4748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4749)
!4749 = !{!4750, !4751, !4752, !4753, !4754}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4748, file: !94, line: 598, baseType: !133, size: 32)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4748, file: !94, line: 599, baseType: !142, size: 32, offset: 32)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4748, file: !94, line: 600, baseType: !147, size: 32, offset: 64)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4748, file: !94, line: 601, baseType: !745, size: 8, offset: 96)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4748, file: !94, line: 602, baseType: !745, size: 8, offset: 104)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !240, file: !94, line: 793, baseType: !152, size: 32, offset: 5760)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !240, file: !94, line: 795, baseType: !745, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !240, file: !94, line: 796, baseType: !745, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !240, file: !94, line: 797, baseType: !745, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !240, file: !94, line: 798, baseType: !745, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !240, file: !94, line: 799, baseType: !745, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !235, file: !236, line: 292, baseType: !4762, size: 64, offset: 64)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 64)
!4763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4764)
!4764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_bus_ops", file: !236, line: 242, size: 192, elements: !4765)
!4765 = !{!4766, !4770, !4774}
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !4764, file: !236, line: 244, baseType: !4767, size: 64)
!4767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4768, size: 64)
!4768 = !DISubroutineType(types: !4769)
!4769 = !{!109, !234, !7}
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "get_response", scope: !4764, file: !236, line: 246, baseType: !4771, size: 64, offset: 64)
!4771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4772, size: 64)
!4772 = !DISubroutineType(types: !4773)
!4773 = !{!109, !234, !7, !737}
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "link_power", scope: !4764, file: !236, line: 249, baseType: !4775, size: 64, offset: 128)
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = !DISubroutineType(types: !4777)
!4777 = !{null, !4778, !745}
!4778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4779, size: 64)
!4779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_device", file: !236, line: 52, size: 7616, elements: !4780)
!4780 = !{!4781, !4782, !4783, !4784, !4785, !4786, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4803, !4804, !4805, !4806, !4807, !4808, !4811, !4814, !4815, !4823, !4824, !4825, !4826}
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4779, file: !236, line: 53, baseType: !240, size: 5824)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4779, file: !236, line: 54, baseType: !109, size: 32, offset: 5824)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4779, file: !236, line: 55, baseType: !234, size: 64, offset: 5888)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4779, file: !236, line: 56, baseType: !7, size: 32, offset: 5952)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4779, file: !236, line: 57, baseType: !202, size: 128, offset: 6016)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "afg", scope: !4779, file: !236, line: 59, baseType: !4787, size: 16, offset: 6144)
!4787 = !DIDerivedType(tag: DW_TAG_typedef, name: "hda_nid_t", file: !236, line: 24, baseType: !295)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "mfg", scope: !4779, file: !236, line: 60, baseType: !4787, size: 16, offset: 6160)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_id", scope: !4779, file: !236, line: 63, baseType: !7, size: 32, offset: 6176)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_id", scope: !4779, file: !236, line: 64, baseType: !7, size: 32, offset: 6208)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !4779, file: !236, line: 65, baseType: !7, size: 32, offset: 6240)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "afg_function_id", scope: !4779, file: !236, line: 66, baseType: !7, size: 32, offset: 6272)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "mfg_function_id", scope: !4779, file: !236, line: 67, baseType: !7, size: 32, offset: 6304)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "afg_unsol", scope: !4779, file: !236, line: 68, baseType: !7, size: 1, offset: 6336, flags: DIFlagBitField, extraData: i64 6336)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "mfg_unsol", scope: !4779, file: !236, line: 69, baseType: !7, size: 1, offset: 6337, flags: DIFlagBitField, extraData: i64 6336)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "power_caps", scope: !4779, file: !236, line: 71, baseType: !7, size: 32, offset: 6368)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_name", scope: !4779, file: !236, line: 73, baseType: !247, size: 64, offset: 6400)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "chip_name", scope: !4779, file: !236, line: 74, baseType: !247, size: 64, offset: 6464)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "exec_verb", scope: !4779, file: !236, line: 77, baseType: !4800, size: 64, offset: 6528)
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4801 = !DISubroutineType(types: !4802)
!4802 = !{!109, !4778, !7, !7, !737}
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !4779, file: !236, line: 81, baseType: !7, size: 32, offset: 6592)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "start_nid", scope: !4779, file: !236, line: 82, baseType: !4787, size: 16, offset: 6624)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "end_nid", scope: !4779, file: !236, line: 82, baseType: !4787, size: 16, offset: 6640)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "in_pm", scope: !4779, file: !236, line: 85, baseType: !279, size: 32, offset: 6656)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "widget_lock", scope: !4779, file: !236, line: 88, baseType: !665, size: 256, offset: 6720)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "widgets", scope: !4779, file: !236, line: 89, baseType: !4809, size: 64, offset: 6976)
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4810 = !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_widget_tree", file: !236, line: 30, flags: DIFlagFwdDecl)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "regmap", scope: !4779, file: !236, line: 92, baseType: !4812, size: 64, offset: 7040)
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4813, size: 64)
!4813 = !DICompositeType(tag: DW_TAG_structure_type, name: "regmap", file: !236, line: 92, flags: DIFlagFwdDecl)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "regmap_lock", scope: !4779, file: !236, line: 93, baseType: !665, size: 256, offset: 7104)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_verbs", scope: !4779, file: !236, line: 94, baseType: !4816, size: 192, offset: 7360)
!4816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_array", file: !236, line: 41, size: 192, elements: !4817)
!4817 = !{!4818, !4819, !4820, !4821, !4822}
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !4816, file: !236, line: 42, baseType: !7, size: 32)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "alloced", scope: !4816, file: !236, line: 43, baseType: !7, size: 32, offset: 32)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "elem_size", scope: !4816, file: !236, line: 44, baseType: !7, size: 32, offset: 64)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_align", scope: !4816, file: !236, line: 45, baseType: !7, size: 32, offset: 96)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4816, file: !236, line: 46, baseType: !198, size: 64, offset: 128)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "lazy_cache", scope: !4779, file: !236, line: 95, baseType: !745, size: 1, offset: 7552, flags: DIFlagBitField, extraData: i64 7552)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "caps_overwriting", scope: !4779, file: !236, line: 96, baseType: !745, size: 1, offset: 7553, flags: DIFlagBitField, extraData: i64 7552)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "cache_coef", scope: !4779, file: !236, line: 97, baseType: !745, size: 1, offset: 7554, flags: DIFlagBitField, extraData: i64 7552)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4779, file: !236, line: 98, baseType: !7, size: 1, offset: 7555, flags: DIFlagBitField, extraData: i64 7552)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "ext_ops", scope: !235, file: !236, line: 293, baseType: !4828, size: 64, offset: 128)
!4828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 64)
!4829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4830)
!4830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_ext_bus_ops", file: !236, line: 255, size: 128, elements: !4831)
!4831 = !{!4832, !4836}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "hdev_attach", scope: !4830, file: !236, line: 256, baseType: !4833, size: 64)
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64)
!4834 = !DISubroutineType(types: !4835)
!4835 = !{!109, !4778}
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "hdev_detach", scope: !4830, file: !236, line: 257, baseType: !4833, size: 64, offset: 64)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !235, file: !236, line: 296, baseType: !197, size: 64, offset: 192)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "remap_addr", scope: !235, file: !236, line: 297, baseType: !198, size: 64, offset: 256)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !235, file: !236, line: 298, baseType: !109, size: 32, offset: 320)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "ppcap", scope: !235, file: !236, line: 300, baseType: !198, size: 64, offset: 384)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "spbcap", scope: !235, file: !236, line: 301, baseType: !198, size: 64, offset: 448)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "mlcap", scope: !235, file: !236, line: 302, baseType: !198, size: 64, offset: 512)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "gtscap", scope: !235, file: !236, line: 303, baseType: !198, size: 64, offset: 576)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "drsmcap", scope: !235, file: !236, line: 304, baseType: !198, size: 64, offset: 640)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "codec_list", scope: !235, file: !236, line: 307, baseType: !202, size: 128, offset: 704)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "num_codecs", scope: !235, file: !236, line: 308, baseType: !7, size: 32, offset: 832)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "caddr_tbl", scope: !235, file: !236, line: 311, baseType: !4848, size: 1024, offset: 896)
!4848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4778, size: 1024, elements: !2811)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "unsol_queue", scope: !235, file: !236, line: 314, baseType: !4850, size: 4096, offset: 1920)
!4850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 4096, elements: !4326)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "unsol_rp", scope: !235, file: !236, line: 315, baseType: !7, size: 32, offset: 6016)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "unsol_wp", scope: !235, file: !236, line: 315, baseType: !7, size: 32, offset: 6048)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "unsol_work", scope: !235, file: !236, line: 316, baseType: !923, size: 256, offset: 6080)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "codec_mask", scope: !235, file: !236, line: 319, baseType: !197, size: 64, offset: 6336)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "codec_powered", scope: !235, file: !236, line: 322, baseType: !197, size: 64, offset: 6400)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "corb", scope: !235, file: !236, line: 325, baseType: !4857, size: 704, offset: 6464)
!4857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_rb", file: !236, line: 268, size: 704, elements: !4858)
!4858 = !{!4859, !4862, !4864, !4865, !4866, !4868}
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4857, file: !236, line: 269, baseType: !4860, size: 64)
!4860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4861, size: 64)
!4861 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !2146, line: 38, baseType: !232)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4857, file: !236, line: 270, baseType: !4863, size: 64, offset: 64)
!4863 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !203, line: 149, baseType: !477)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "rp", scope: !4857, file: !236, line: 271, baseType: !297, size: 16, offset: 128)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !4857, file: !236, line: 271, baseType: !297, size: 16, offset: 144)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "cmds", scope: !4857, file: !236, line: 272, baseType: !4867, size: 256, offset: 160)
!4867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 256, elements: !1598)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !4857, file: !236, line: 273, baseType: !4869, size: 256, offset: 416)
!4869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 256, elements: !1598)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "rirb", scope: !235, file: !236, line: 326, baseType: !4857, size: 704, offset: 7168)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !235, file: !236, line: 327, baseType: !4872, size: 256, offset: 7872)
!4872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !1598)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "rirb_wq", scope: !235, file: !236, line: 328, baseType: !1421, size: 192, offset: 8128)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !235, file: !236, line: 331, baseType: !4875, size: 448, offset: 8320)
!4875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_dma_buffer", file: !4876, line: 60, size: 448, elements: !4877)
!4876 = !DIFile(filename: "./include/sound/memalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5a311c7e83a04625a087234f49540c88")
!4877 = !{!4878, !4885, !4887, !4888, !4889}
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4875, file: !4876, line: 61, baseType: !4879, size: 192)
!4879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_dma_device", file: !4876, line: 22, size: 192, elements: !4880)
!4880 = !{!4881, !4882, !4883, !4884}
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4879, file: !4876, line: 23, baseType: !109, size: 32)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4879, file: !4876, line: 24, baseType: !158, size: 32, offset: 32)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "need_sync", scope: !4879, file: !4876, line: 25, baseType: !745, size: 8, offset: 64)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4879, file: !4876, line: 26, baseType: !239, size: 64, offset: 128)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "area", scope: !4875, file: !4876, line: 62, baseType: !4886, size: 64, offset: 192)
!4886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4875, file: !4876, line: 63, baseType: !4863, size: 64, offset: 256)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !4875, file: !4876, line: 64, baseType: !374, size: 64, offset: 320)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !4875, file: !4876, line: 65, baseType: !198, size: 64, offset: 384)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "posbuf", scope: !235, file: !236, line: 332, baseType: !4875, size: 448, offset: 8768)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "dma_type", scope: !235, file: !236, line: 333, baseType: !109, size: 32, offset: 9216)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "stream_list", scope: !235, file: !236, line: 336, baseType: !202, size: 128, offset: 9280)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "chip_init", scope: !235, file: !236, line: 339, baseType: !745, size: 1, offset: 9408, flags: DIFlagBitField, extraData: i64 9408)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "aligned_mmio", scope: !235, file: !236, line: 342, baseType: !745, size: 1, offset: 9409, flags: DIFlagBitField, extraData: i64 9408)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "sync_write", scope: !235, file: !236, line: 343, baseType: !745, size: 1, offset: 9410, flags: DIFlagBitField, extraData: i64 9408)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "use_posbuf", scope: !235, file: !236, line: 344, baseType: !745, size: 1, offset: 9411, flags: DIFlagBitField, extraData: i64 9408)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "snoop", scope: !235, file: !236, line: 345, baseType: !745, size: 1, offset: 9412, flags: DIFlagBitField, extraData: i64 9408)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "align_bdle_4k", scope: !235, file: !236, line: 346, baseType: !745, size: 1, offset: 9413, flags: DIFlagBitField, extraData: i64 9408)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "reverse_assign", scope: !235, file: !236, line: 347, baseType: !745, size: 1, offset: 9414, flags: DIFlagBitField, extraData: i64 9408)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "corbrp_self_clear", scope: !235, file: !236, line: 348, baseType: !745, size: 1, offset: 9415, flags: DIFlagBitField, extraData: i64 9408)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "polling_mode", scope: !235, file: !236, line: 349, baseType: !745, size: 1, offset: 9416, flags: DIFlagBitField, extraData: i64 9408)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "needs_damn_long_delay", scope: !235, file: !236, line: 350, baseType: !745, size: 1, offset: 9417, flags: DIFlagBitField, extraData: i64 9408)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "not_use_interrupts", scope: !235, file: !236, line: 351, baseType: !745, size: 1, offset: 9418, flags: DIFlagBitField, extraData: i64 9408)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "access_sdnctl_in_dword", scope: !235, file: !236, line: 352, baseType: !745, size: 1, offset: 9419, flags: DIFlagBitField, extraData: i64 9408)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "poll_count", scope: !235, file: !236, line: 354, baseType: !109, size: 32, offset: 9440)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "bdl_pos_adj", scope: !235, file: !236, line: 356, baseType: !109, size: 32, offset: 9472)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "dma_stop_delay", scope: !235, file: !236, line: 359, baseType: !7, size: 32, offset: 9504)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "reg_lock", scope: !235, file: !236, line: 362, baseType: !259, size: 32, offset: 9536)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_mutex", scope: !235, file: !236, line: 363, baseType: !665, size: 256, offset: 9600)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !235, file: !236, line: 364, baseType: !665, size: 256, offset: 9856)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "audio_component", scope: !235, file: !236, line: 367, baseType: !4912, size: 64, offset: 10112)
!4912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4913, size: 64)
!4913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_audio_component", file: !4914, line: 110, size: 448, elements: !4915)
!4914 = !DIFile(filename: "./include/drm/drm_audio_component.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5876290eae632618019af7818f71dd5e")
!4915 = !{!4916, !4917, !4941, !4963}
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4913, file: !4914, line: 114, baseType: !239, size: 64)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4913, file: !4914, line: 118, baseType: !4918, size: 64, offset: 64)
!4918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4919, size: 64)
!4919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4920)
!4920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_audio_component_ops", file: !4914, line: 16, size: 448, elements: !4921)
!4921 = !{!4922, !4923, !4927, !4931, !4932, !4933, !4937}
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4920, file: !4914, line: 20, baseType: !594, size: 64)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "get_power", scope: !4920, file: !4914, line: 29, baseType: !4924, size: 64, offset: 64)
!4924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4925, size: 64)
!4925 = !DISubroutineType(types: !4926)
!4926 = !{!197, !239}
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "put_power", scope: !4920, file: !4914, line: 35, baseType: !4928, size: 64, offset: 128)
!4928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4929, size: 64)
!4929 = !DISubroutineType(types: !4930)
!4930 = !{null, !239, !197}
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "codec_wake_override", scope: !4920, file: !4914, line: 39, baseType: !4553, size: 64, offset: 192)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "get_cdclk_freq", scope: !4920, file: !4914, line: 43, baseType: !4267, size: 64, offset: 256)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "sync_audio_rate", scope: !4920, file: !4914, line: 50, baseType: !4934, size: 64, offset: 320)
!4934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4935, size: 64)
!4935 = !DISubroutineType(types: !4936)
!4936 = !{!109, !239, !109, !109, !109}
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "get_eld", scope: !4920, file: !4914, line: 63, baseType: !4938, size: 64, offset: 384)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{!109, !239, !109, !109, !4047, !4886, !109}
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "audio_ops", scope: !4913, file: !4914, line: 122, baseType: !4942, size: 64, offset: 128)
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64)
!4943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4944)
!4944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_audio_component_audio_ops", file: !4914, line: 70, size: 320, elements: !4945)
!4945 = !{!4946, !4947, !4951, !4955, !4959}
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "audio_ptr", scope: !4944, file: !4914, line: 74, baseType: !198, size: 64)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "pin_eld_notify", scope: !4944, file: !4914, line: 83, baseType: !4948, size: 64, offset: 64)
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!4949 = !DISubroutineType(types: !4950)
!4950 = !{null, !198, !109, !109}
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "pin2port", scope: !4944, file: !4914, line: 90, baseType: !4952, size: 64, offset: 128)
!4952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4953, size: 64)
!4953 = !DISubroutineType(types: !4954)
!4954 = !{!109, !198, !109}
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "master_bind", scope: !4944, file: !4914, line: 97, baseType: !4956, size: 64, offset: 192)
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4957, size: 64)
!4957 = !DISubroutineType(types: !4958)
!4958 = !{!109, !239, !4912}
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "master_unbind", scope: !4944, file: !4914, line: 104, baseType: !4960, size: 64, offset: 256)
!4960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4961, size: 64)
!4961 = !DISubroutineType(types: !4962)
!4962 = !{null, !239, !4912}
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "master_bind_complete", scope: !4913, file: !4914, line: 126, baseType: !614, size: 256, offset: 192)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "display_power_status", scope: !235, file: !236, line: 368, baseType: !363, size: 64, offset: 10176)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "display_power_active", scope: !235, file: !236, line: 369, baseType: !197, size: 64, offset: 10240)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "num_streams", scope: !235, file: !236, line: 372, baseType: !109, size: 32, offset: 10304)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !235, file: !236, line: 373, baseType: !109, size: 32, offset: 10336)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "hlink_list", scope: !235, file: !236, line: 376, baseType: !202, size: 128, offset: 10368)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_dma_state", scope: !235, file: !236, line: 377, baseType: !745, size: 8, offset: 10496)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "sdo_limit", scope: !235, file: !236, line: 380, baseType: !7, size: 32, offset: 10528)
!4971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4972, size: 64)
!4972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_driver", file: !236, line: 221, size: 1600, elements: !4973)
!4973 = !{!4974, !4975, !4976, !4986, !4990, !4994, !4995, !4996}
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4972, file: !236, line: 222, baseType: !4308, size: 1152)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4972, file: !236, line: 223, baseType: !109, size: 32, offset: 1152)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4972, file: !236, line: 224, baseType: !4977, size: 64, offset: 1216)
!4977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4978, size: 64)
!4978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4979)
!4979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hda_device_id", file: !4320, line: 263, size: 256, elements: !4980)
!4980 = !{!4981, !4982, !4983, !4984, !4985}
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_id", scope: !4979, file: !4320, line: 264, baseType: !232, size: 32)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "rev_id", scope: !4979, file: !4320, line: 265, baseType: !232, size: 32, offset: 32)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "api_version", scope: !4979, file: !4320, line: 266, baseType: !288, size: 8, offset: 64)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4979, file: !4320, line: 267, baseType: !247, size: 64, offset: 128)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4979, file: !4320, line: 268, baseType: !197, size: 64, offset: 192)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4972, file: !236, line: 225, baseType: !4987, size: 64, offset: 1280)
!4987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4988, size: 64)
!4988 = !DISubroutineType(types: !4989)
!4989 = !{!109, !4778, !4971}
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "unsol_event", scope: !4972, file: !236, line: 226, baseType: !4991, size: 64, offset: 1344)
!4991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4992, size: 64)
!4992 = !DISubroutineType(types: !4993)
!4993 = !{null, !4778, !7}
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4972, file: !236, line: 229, baseType: !4833, size: 64, offset: 1408)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4972, file: !236, line: 230, baseType: !4833, size: 64, offset: 1472)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4972, file: !236, line: 231, baseType: !4997, size: 64, offset: 1536)
!4997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4998, size: 64)
!4998 = !DISubroutineType(types: !4999)
!4999 = !{null, !4778}
!5000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5001, size: 64)
!5001 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !249)
!5002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5003, size: 64)
!5003 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !363)
!5004 = !{!5005, !5014, !5016, !5018, !5020, !5025, !5027, !5032, !5034, !5039, !5041, !5043, !5048, !5050, !0, !5052, !5058, !5087, !5089, !5119, !5121, !5151}
!5005 = !DIGlobalVariableExpression(var: !5006, expr: !DIExpression())
!5006 = distinct !DIGlobalVariable(name: "__key", scope: !5007, file: !3, line: 43, type: !1040, isLocal: true, isDefinition: true)
!5007 = distinct !DISubprogram(name: "snd_hdac_bus_init", scope: !3, file: !3, line: 31, type: !5008, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5010)
!5008 = !DISubroutineType(types: !5009)
!5009 = !{!109, !234, !239, !4762}
!5010 = !{!5011, !5012, !5013}
!5011 = !DILocalVariable(name: "bus", arg: 1, scope: !5007, file: !3, line: 31, type: !234)
!5012 = !DILocalVariable(name: "dev", arg: 2, scope: !5007, file: !3, line: 31, type: !239)
!5013 = !DILocalVariable(name: "ops", arg: 3, scope: !5007, file: !3, line: 32, type: !4762)
!5014 = !DIGlobalVariableExpression(var: !5015, expr: !DIExpression())
!5015 = distinct !DIGlobalVariable(name: "__key", scope: !5007, file: !3, line: 45, type: !1040, isLocal: true, isDefinition: true)
!5016 = !DIGlobalVariableExpression(var: !5017, expr: !DIExpression())
!5017 = distinct !DIGlobalVariable(scope: null, file: !3, line: 45, type: !2810, isLocal: true, isDefinition: true)
!5018 = !DIGlobalVariableExpression(var: !5019, expr: !DIExpression())
!5019 = distinct !DIGlobalVariable(name: "__key", scope: !5007, file: !3, line: 46, type: !1040, isLocal: true, isDefinition: true)
!5020 = !DIGlobalVariableExpression(var: !5021, expr: !DIExpression())
!5021 = distinct !DIGlobalVariable(scope: null, file: !3, line: 46, type: !5022, isLocal: true, isDefinition: true)
!5022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 88, elements: !5023)
!5023 = !{!5024}
!5024 = !DISubrange(count: 11)
!5025 = !DIGlobalVariableExpression(var: !5026, expr: !DIExpression())
!5026 = distinct !DIGlobalVariable(name: "__key", scope: !5007, file: !3, line: 48, type: !1040, isLocal: true, isDefinition: true)
!5027 = !DIGlobalVariableExpression(var: !5028, expr: !DIExpression())
!5028 = distinct !DIGlobalVariable(scope: null, file: !3, line: 48, type: !5029, isLocal: true, isDefinition: true)
!5029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 112, elements: !5030)
!5030 = !{!5031}
!5031 = !DISubrange(count: 14)
!5032 = !DIGlobalVariableExpression(var: !5033, expr: !DIExpression())
!5033 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_bus_init335", scope: !2, file: !3, line: 64, type: !198, isLocal: true, isDefinition: true)
!5034 = !DIGlobalVariableExpression(var: !5035, expr: !DIExpression())
!5035 = distinct !DIGlobalVariable(scope: null, file: !3, line: 72, type: !5036, isLocal: true, isDefinition: true)
!5036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 168, elements: !5037)
!5037 = !{!5038}
!5038 = !DISubrange(count: 21)
!5039 = !DIGlobalVariableExpression(var: !5040, expr: !DIExpression())
!5040 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_bus_exit336", scope: !2, file: !3, line: 76, type: !198, isLocal: true, isDefinition: true)
!5041 = !DIGlobalVariableExpression(var: !5042, expr: !DIExpression())
!5042 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_bus_exec_verb_unlocked337", scope: !2, file: !3, line: 136, type: !198, isLocal: true, isDefinition: true)
!5043 = !DIGlobalVariableExpression(var: !5044, expr: !DIExpression())
!5044 = distinct !DIGlobalVariable(scope: null, file: !3, line: 209, type: !5045, isLocal: true, isDefinition: true)
!5045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 272, elements: !5046)
!5046 = !{!5047}
!5047 = !DISubrange(count: 34)
!5048 = !DIGlobalVariableExpression(var: !5049, expr: !DIExpression())
!5049 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_codec_link_up338", scope: !2, file: !3, line: 278, type: !198, isLocal: true, isDefinition: true)
!5050 = !DIGlobalVariableExpression(var: !5051, expr: !DIExpression())
!5051 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_codec_link_down339", scope: !2, file: !3, line: 289, type: !198, isLocal: true, isDefinition: true)
!5052 = !DIGlobalVariableExpression(var: !5053, expr: !DIExpression())
!5053 = distinct !DIGlobalVariable(scope: null, file: !5054, line: 19, type: !5055, isLocal: true, isDefinition: true)
!5054 = !DIFile(filename: "sound/hda/trace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2ca8596f98d73e7c9dcb6e727f74898a")
!5055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 144, elements: !5056)
!5056 = !{!5057}
!5057 = !DISubrange(count: 18)
!5058 = !DIGlobalVariableExpression(var: !5059, expr: !DIExpression())
!5059 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_hda_send_cmd297", scope: !5060, file: !5054, line: 19, type: !198, isLocal: true, isDefinition: true)
!5060 = distinct !DISubprogram(name: "trace_hda_send_cmd", scope: !5054, file: !5054, line: 19, type: !5061, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5063)
!5061 = !DISubroutineType(types: !5062)
!5062 = !{null, !234, !7}
!5063 = !{!5064, !5065, !5066, !5069, !5072, !5074, !5076, !5079, !5082, !5084, !5085}
!5064 = !DILocalVariable(name: "bus", arg: 1, scope: !5060, file: !5054, line: 19, type: !234)
!5065 = !DILocalVariable(name: "cmd", arg: 2, scope: !5060, file: !5054, line: 19, type: !7)
!5066 = !DILocalVariable(name: "__idx", scope: !5067, file: !5054, line: 19, type: !109)
!5067 = distinct !DILexicalBlock(scope: !5068, file: !5054, line: 19, column: 1)
!5068 = distinct !DILexicalBlock(scope: !5060, file: !5054, line: 19, column: 1)
!5069 = !DILocalVariable(name: "pscr_ret__", scope: !5070, file: !5054, line: 19, type: !109)
!5070 = distinct !DILexicalBlock(scope: !5071, file: !5054, line: 19, column: 1)
!5071 = distinct !DILexicalBlock(scope: !5067, file: !5054, line: 19, column: 1)
!5072 = !DILocalVariable(name: "__vpp_verify", scope: !5073, file: !5054, line: 19, type: !2628)
!5073 = distinct !DILexicalBlock(scope: !5070, file: !5054, line: 19, column: 1)
!5074 = !DILocalVariable(name: "pfo_val__", scope: !5075, file: !5054, line: 19, type: !230)
!5075 = distinct !DILexicalBlock(scope: !5070, file: !5054, line: 19, column: 1)
!5076 = !DILocalVariable(name: "__ret_warn_on", scope: !5077, file: !5054, line: 19, type: !109)
!5077 = distinct !DILexicalBlock(scope: !5078, file: !5054, line: 19, column: 1)
!5078 = distinct !DILexicalBlock(scope: !5067, file: !5054, line: 19, column: 1)
!5079 = !DILocalVariable(name: "__flags", scope: !5080, file: !5054, line: 19, type: !109)
!5080 = distinct !DILexicalBlock(scope: !5081, file: !5054, line: 19, column: 1)
!5081 = distinct !DILexicalBlock(scope: !5077, file: !5054, line: 19, column: 1)
!5082 = !DILocalVariable(name: "it_func_ptr", scope: !5083, file: !5054, line: 19, type: !213)
!5083 = distinct !DILexicalBlock(scope: !5067, file: !5054, line: 19, column: 1)
!5084 = !DILocalVariable(name: "__data", scope: !5083, file: !5054, line: 19, type: !198)
!5085 = !DILocalVariable(name: "__UNIQUE_ID_rcu295", scope: !5086, file: !5054, line: 19, type: !213)
!5086 = distinct !DILexicalBlock(scope: !5083, file: !5054, line: 19, column: 1)
!5087 = !DIGlobalVariableExpression(var: !5088, expr: !DIExpression())
!5088 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace298", scope: !5060, file: !5054, line: 19, type: !198, isLocal: true, isDefinition: true)
!5089 = !DIGlobalVariableExpression(var: !5090, expr: !DIExpression())
!5090 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_hda_get_response305", scope: !5091, file: !5054, line: 33, type: !198, isLocal: true, isDefinition: true)
!5091 = distinct !DISubprogram(name: "trace_hda_get_response", scope: !5054, file: !5054, line: 33, type: !5092, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5094)
!5092 = !DISubroutineType(types: !5093)
!5093 = !{null, !234, !7, !7}
!5094 = !{!5095, !5096, !5097, !5098, !5101, !5104, !5106, !5108, !5111, !5114, !5116, !5117}
!5095 = !DILocalVariable(name: "bus", arg: 1, scope: !5091, file: !5054, line: 33, type: !234)
!5096 = !DILocalVariable(name: "addr", arg: 2, scope: !5091, file: !5054, line: 33, type: !7)
!5097 = !DILocalVariable(name: "res", arg: 3, scope: !5091, file: !5054, line: 33, type: !7)
!5098 = !DILocalVariable(name: "__idx", scope: !5099, file: !5054, line: 33, type: !109)
!5099 = distinct !DILexicalBlock(scope: !5100, file: !5054, line: 33, column: 1)
!5100 = distinct !DILexicalBlock(scope: !5091, file: !5054, line: 33, column: 1)
!5101 = !DILocalVariable(name: "pscr_ret__", scope: !5102, file: !5054, line: 33, type: !109)
!5102 = distinct !DILexicalBlock(scope: !5103, file: !5054, line: 33, column: 1)
!5103 = distinct !DILexicalBlock(scope: !5099, file: !5054, line: 33, column: 1)
!5104 = !DILocalVariable(name: "__vpp_verify", scope: !5105, file: !5054, line: 33, type: !2628)
!5105 = distinct !DILexicalBlock(scope: !5102, file: !5054, line: 33, column: 1)
!5106 = !DILocalVariable(name: "pfo_val__", scope: !5107, file: !5054, line: 33, type: !230)
!5107 = distinct !DILexicalBlock(scope: !5102, file: !5054, line: 33, column: 1)
!5108 = !DILocalVariable(name: "__ret_warn_on", scope: !5109, file: !5054, line: 33, type: !109)
!5109 = distinct !DILexicalBlock(scope: !5110, file: !5054, line: 33, column: 1)
!5110 = distinct !DILexicalBlock(scope: !5099, file: !5054, line: 33, column: 1)
!5111 = !DILocalVariable(name: "__flags", scope: !5112, file: !5054, line: 33, type: !109)
!5112 = distinct !DILexicalBlock(scope: !5113, file: !5054, line: 33, column: 1)
!5113 = distinct !DILexicalBlock(scope: !5109, file: !5054, line: 33, column: 1)
!5114 = !DILocalVariable(name: "it_func_ptr", scope: !5115, file: !5054, line: 33, type: !213)
!5115 = distinct !DILexicalBlock(scope: !5099, file: !5054, line: 33, column: 1)
!5116 = !DILocalVariable(name: "__data", scope: !5115, file: !5054, line: 33, type: !198)
!5117 = !DILocalVariable(name: "__UNIQUE_ID_rcu303", scope: !5118, file: !5054, line: 33, type: !213)
!5118 = distinct !DILexicalBlock(scope: !5115, file: !5054, line: 33, column: 1)
!5119 = !DIGlobalVariableExpression(var: !5120, expr: !DIExpression())
!5120 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace306", scope: !5091, file: !5054, line: 33, type: !198, isLocal: true, isDefinition: true)
!5121 = !DIGlobalVariableExpression(var: !5122, expr: !DIExpression())
!5122 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_hda_unsol_event313", scope: !5123, file: !5054, line: 49, type: !198, isLocal: true, isDefinition: true)
!5123 = distinct !DISubprogram(name: "trace_hda_unsol_event", scope: !5054, file: !5054, line: 49, type: !5124, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5126)
!5124 = !DISubroutineType(types: !5125)
!5125 = !{null, !234, !230, !230}
!5126 = !{!5127, !5128, !5129, !5130, !5133, !5136, !5138, !5140, !5143, !5146, !5148, !5149}
!5127 = !DILocalVariable(name: "bus", arg: 1, scope: !5123, file: !5054, line: 49, type: !234)
!5128 = !DILocalVariable(name: "res", arg: 2, scope: !5123, file: !5054, line: 49, type: !230)
!5129 = !DILocalVariable(name: "res_ex", arg: 3, scope: !5123, file: !5054, line: 49, type: !230)
!5130 = !DILocalVariable(name: "__idx", scope: !5131, file: !5054, line: 49, type: !109)
!5131 = distinct !DILexicalBlock(scope: !5132, file: !5054, line: 49, column: 1)
!5132 = distinct !DILexicalBlock(scope: !5123, file: !5054, line: 49, column: 1)
!5133 = !DILocalVariable(name: "pscr_ret__", scope: !5134, file: !5054, line: 49, type: !109)
!5134 = distinct !DILexicalBlock(scope: !5135, file: !5054, line: 49, column: 1)
!5135 = distinct !DILexicalBlock(scope: !5131, file: !5054, line: 49, column: 1)
!5136 = !DILocalVariable(name: "__vpp_verify", scope: !5137, file: !5054, line: 49, type: !2628)
!5137 = distinct !DILexicalBlock(scope: !5134, file: !5054, line: 49, column: 1)
!5138 = !DILocalVariable(name: "pfo_val__", scope: !5139, file: !5054, line: 49, type: !230)
!5139 = distinct !DILexicalBlock(scope: !5134, file: !5054, line: 49, column: 1)
!5140 = !DILocalVariable(name: "__ret_warn_on", scope: !5141, file: !5054, line: 49, type: !109)
!5141 = distinct !DILexicalBlock(scope: !5142, file: !5054, line: 49, column: 1)
!5142 = distinct !DILexicalBlock(scope: !5131, file: !5054, line: 49, column: 1)
!5143 = !DILocalVariable(name: "__flags", scope: !5144, file: !5054, line: 49, type: !109)
!5144 = distinct !DILexicalBlock(scope: !5145, file: !5054, line: 49, column: 1)
!5145 = distinct !DILexicalBlock(scope: !5141, file: !5054, line: 49, column: 1)
!5146 = !DILocalVariable(name: "it_func_ptr", scope: !5147, file: !5054, line: 49, type: !213)
!5147 = distinct !DILexicalBlock(scope: !5131, file: !5054, line: 49, column: 1)
!5148 = !DILocalVariable(name: "__data", scope: !5147, file: !5054, line: 49, type: !198)
!5149 = !DILocalVariable(name: "__UNIQUE_ID_rcu311", scope: !5150, file: !5054, line: 49, type: !213)
!5150 = distinct !DILexicalBlock(scope: !5147, file: !5054, line: 49, column: 1)
!5151 = !DIGlobalVariableExpression(var: !5152, expr: !DIExpression())
!5152 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace314", scope: !5123, file: !5054, line: 49, type: !198, isLocal: true, isDefinition: true)
!5153 = !{!"rsp"}
!5154 = !{i32 7, !"Dwarf Version", i32 5}
!5155 = !{i32 2, !"Debug Info Version", i32 3}
!5156 = !{i32 1, !"wchar_size", i32 2}
!5157 = !{i32 8, !"cf-protection-branch", i32 1}
!5158 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5159 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5160 = !{i32 1, !"Code Model", i32 2}
!5161 = !{i32 1, !"override-stack-alignment", i32 8}
!5162 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5163 = !DILocation(line: 31, column: 40, scope: !5007)
!5164 = !DILocation(line: 31, column: 60, scope: !5007)
!5165 = !DILocation(line: 32, column: 36, scope: !5007)
!5166 = !DILocation(line: 34, column: 9, scope: !5007)
!5167 = !DILocation(line: 34, column: 2, scope: !5007)
!5168 = !DILocation(line: 35, column: 13, scope: !5007)
!5169 = !DILocation(line: 35, column: 2, scope: !5007)
!5170 = !DILocation(line: 35, column: 7, scope: !5007)
!5171 = !DILocation(line: 35, column: 11, scope: !5007)
!5172 = !DILocation(line: 36, column: 6, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 36, column: 6)
!5174 = !DILocation(line: 36, column: 6, scope: !5007)
!5175 = !DILocation(line: 37, column: 14, scope: !5173)
!5176 = !DILocation(line: 37, column: 3, scope: !5173)
!5177 = !DILocation(line: 37, column: 8, scope: !5173)
!5178 = !DILocation(line: 37, column: 12, scope: !5173)
!5179 = !DILocation(line: 39, column: 3, scope: !5173)
!5180 = !DILocation(line: 39, column: 8, scope: !5173)
!5181 = !DILocation(line: 39, column: 12, scope: !5173)
!5182 = !DILocation(line: 40, column: 2, scope: !5007)
!5183 = !DILocation(line: 40, column: 7, scope: !5007)
!5184 = !DILocation(line: 40, column: 16, scope: !5007)
!5185 = !DILocation(line: 41, column: 18, scope: !5007)
!5186 = !DILocation(line: 41, column: 23, scope: !5007)
!5187 = !DILocation(line: 41, column: 2, scope: !5007)
!5188 = !DILocation(line: 42, column: 18, scope: !5007)
!5189 = !DILocation(line: 42, column: 23, scope: !5007)
!5190 = !DILocation(line: 42, column: 2, scope: !5007)
!5191 = !DILocation(line: 43, column: 2, scope: !5007)
!5192 = !DILocation(line: 43, column: 2, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 43, column: 2)
!5194 = !DILocation(line: 43, column: 2, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5193, file: !3, line: 43, column: 2)
!5196 = !DILocation(line: 44, column: 2, scope: !5007)
!5197 = !DILocation(line: 44, column: 2, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 44, column: 2)
!5199 = !DILocation(line: 45, column: 2, scope: !5007)
!5200 = !DILocation(line: 45, column: 2, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 45, column: 2)
!5202 = !DILocation(line: 46, column: 2, scope: !5007)
!5203 = !DILocation(line: 46, column: 2, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 46, column: 2)
!5205 = !DILocation(line: 47, column: 18, scope: !5007)
!5206 = !DILocation(line: 47, column: 23, scope: !5007)
!5207 = !DILocation(line: 47, column: 2, scope: !5007)
!5208 = !DILocation(line: 48, column: 2, scope: !5007)
!5209 = !DILocation(line: 48, column: 2, scope: !5210)
!5210 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 48, column: 2)
!5211 = !DILocation(line: 49, column: 2, scope: !5007)
!5212 = !DILocation(line: 49, column: 7, scope: !5007)
!5213 = !DILocation(line: 49, column: 11, scope: !5007)
!5214 = !DILocation(line: 60, column: 2, scope: !5007)
!5215 = !DILocation(line: 60, column: 7, scope: !5007)
!5216 = !DILocation(line: 60, column: 17, scope: !5007)
!5217 = !DILocation(line: 62, column: 2, scope: !5007)
!5218 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5219, file: !5219, line: 35, type: !5220, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5222)
!5219 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5220 = !DISubroutineType(types: !5221)
!5221 = !{null, !201}
!5222 = !{!5223}
!5223 = !DILocalVariable(name: "list", arg: 1, scope: !5218, file: !5219, line: 35, type: !201)
!5224 = !DILocation(line: 35, column: 53, scope: !5218)
!5225 = !DILocation(line: 37, column: 2, scope: !5218)
!5226 = !DILocation(line: 37, column: 2, scope: !5227)
!5227 = distinct !DILexicalBlock(scope: !5218, file: !5219, line: 37, column: 2)
!5228 = !DILocation(line: 37, column: 2, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5227, file: !5219, line: 37, column: 2)
!5230 = !DILocation(line: 37, column: 2, scope: !5231)
!5231 = distinct !DILexicalBlock(scope: !5227, file: !5219, line: 37, column: 2)
!5232 = !DILocation(line: 38, column: 2, scope: !5218)
!5233 = !DILocation(line: 38, column: 2, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5218, file: !5219, line: 38, column: 2)
!5235 = !DILocation(line: 38, column: 2, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5234, file: !5219, line: 38, column: 2)
!5237 = !DILocation(line: 38, column: 2, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5234, file: !5219, line: 38, column: 2)
!5239 = !DILocation(line: 39, column: 1, scope: !5218)
!5240 = distinct !DISubprogram(name: "__init_work", scope: !166, file: !166, line: 263, type: !5241, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5243)
!5241 = !DISubroutineType(types: !5242)
!5242 = !{null, !932, !109}
!5243 = !{!5244, !5245}
!5244 = !DILocalVariable(name: "work", arg: 1, scope: !5240, file: !166, line: 263, type: !932)
!5245 = !DILocalVariable(name: "onstack", arg: 2, scope: !5240, file: !166, line: 263, type: !109)
!5246 = !DILocation(line: 263, column: 52, scope: !5240)
!5247 = !DILocation(line: 263, column: 62, scope: !5240)
!5248 = !DILocation(line: 263, column: 73, scope: !5240)
!5249 = distinct !DISubprogram(name: "snd_hdac_bus_process_unsol_events", scope: !3, file: !3, line: 169, type: !930, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5250)
!5250 = !{!5251, !5252, !5253, !5255, !5256, !5257, !5258, !5259, !5260}
!5251 = !DILocalVariable(name: "work", arg: 1, scope: !5249, file: !3, line: 169, type: !932)
!5252 = !DILocalVariable(name: "bus", scope: !5249, file: !3, line: 171, type: !234)
!5253 = !DILocalVariable(name: "__mptr", scope: !5254, file: !3, line: 171, type: !198)
!5254 = distinct !DILexicalBlock(scope: !5249, file: !3, line: 171, column: 25)
!5255 = !DILocalVariable(name: "codec", scope: !5249, file: !3, line: 172, type: !4778)
!5256 = !DILocalVariable(name: "drv", scope: !5249, file: !3, line: 173, type: !4971)
!5257 = !DILocalVariable(name: "rp", scope: !5249, file: !3, line: 174, type: !7)
!5258 = !DILocalVariable(name: "caddr", scope: !5249, file: !3, line: 174, type: !7)
!5259 = !DILocalVariable(name: "res", scope: !5249, file: !3, line: 174, type: !7)
!5260 = !DILocalVariable(name: "__mptr", scope: !5261, file: !3, line: 189, type: !198)
!5261 = distinct !DILexicalBlock(scope: !5262, file: !3, line: 189, column: 9)
!5262 = distinct !DILexicalBlock(scope: !5249, file: !3, line: 177, column: 41)
!5263 = !DILocation(line: 169, column: 67, scope: !5249)
!5264 = !DILocation(line: 171, column: 2, scope: !5249)
!5265 = !DILocation(line: 171, column: 19, scope: !5249)
!5266 = !DILocation(line: 171, column: 25, scope: !5254)
!5267 = !DILocation(line: 171, column: 25, scope: !5249)
!5268 = !DILocation(line: 172, column: 2, scope: !5249)
!5269 = !DILocation(line: 172, column: 22, scope: !5249)
!5270 = !DILocation(line: 173, column: 2, scope: !5249)
!5271 = !DILocation(line: 173, column: 22, scope: !5249)
!5272 = !DILocation(line: 174, column: 2, scope: !5249)
!5273 = !DILocation(line: 174, column: 15, scope: !5249)
!5274 = !DILocation(line: 174, column: 19, scope: !5249)
!5275 = !DILocation(line: 174, column: 26, scope: !5249)
!5276 = !DILocation(line: 176, column: 17, scope: !5249)
!5277 = !DILocation(line: 176, column: 22, scope: !5249)
!5278 = !DILocation(line: 176, column: 2, scope: !5249)
!5279 = !DILocation(line: 177, column: 2, scope: !5249)
!5280 = !DILocation(line: 177, column: 9, scope: !5249)
!5281 = !DILocation(line: 177, column: 14, scope: !5249)
!5282 = !DILocation(line: 177, column: 26, scope: !5249)
!5283 = !DILocation(line: 177, column: 31, scope: !5249)
!5284 = !DILocation(line: 177, column: 23, scope: !5249)
!5285 = !DILocation(line: 178, column: 9, scope: !5262)
!5286 = !DILocation(line: 178, column: 14, scope: !5262)
!5287 = !DILocation(line: 178, column: 23, scope: !5262)
!5288 = !DILocation(line: 178, column: 28, scope: !5262)
!5289 = !DILocation(line: 178, column: 6, scope: !5262)
!5290 = !DILocation(line: 179, column: 19, scope: !5262)
!5291 = !DILocation(line: 179, column: 3, scope: !5262)
!5292 = !DILocation(line: 179, column: 8, scope: !5262)
!5293 = !DILocation(line: 179, column: 17, scope: !5262)
!5294 = !DILocation(line: 180, column: 6, scope: !5262)
!5295 = !DILocation(line: 181, column: 9, scope: !5262)
!5296 = !DILocation(line: 181, column: 14, scope: !5262)
!5297 = !DILocation(line: 181, column: 26, scope: !5262)
!5298 = !DILocation(line: 181, column: 7, scope: !5262)
!5299 = !DILocation(line: 182, column: 11, scope: !5262)
!5300 = !DILocation(line: 182, column: 16, scope: !5262)
!5301 = !DILocation(line: 182, column: 28, scope: !5262)
!5302 = !DILocation(line: 182, column: 31, scope: !5262)
!5303 = !DILocation(line: 182, column: 9, scope: !5262)
!5304 = !DILocation(line: 183, column: 9, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5262, file: !3, line: 183, column: 7)
!5306 = !DILocation(line: 183, column: 15, scope: !5305)
!5307 = !DILocation(line: 183, column: 7, scope: !5262)
!5308 = !DILocation(line: 184, column: 4, scope: !5305)
!5309 = distinct !{!5309, !5279, !5310, !5311, !5312}
!5310 = !DILocation(line: 193, column: 2, scope: !5249)
!5311 = !{!"llvm.loop.mustprogress"}
!5312 = !{!"llvm.loop.unroll.disable"}
!5313 = !DILocation(line: 185, column: 11, scope: !5262)
!5314 = !DILocation(line: 185, column: 16, scope: !5262)
!5315 = !DILocation(line: 185, column: 26, scope: !5262)
!5316 = !DILocation(line: 185, column: 32, scope: !5262)
!5317 = !DILocation(line: 185, column: 9, scope: !5262)
!5318 = !DILocation(line: 186, column: 8, scope: !5319)
!5319 = distinct !DILexicalBlock(scope: !5262, file: !3, line: 186, column: 7)
!5320 = !DILocation(line: 186, column: 14, scope: !5319)
!5321 = !DILocation(line: 186, column: 18, scope: !5319)
!5322 = !DILocation(line: 186, column: 25, scope: !5319)
!5323 = !DILocation(line: 186, column: 7, scope: !5262)
!5324 = !DILocation(line: 187, column: 4, scope: !5319)
!5325 = !DILocation(line: 188, column: 20, scope: !5262)
!5326 = !DILocation(line: 188, column: 25, scope: !5262)
!5327 = !DILocation(line: 188, column: 3, scope: !5262)
!5328 = !DILocation(line: 189, column: 9, scope: !5261)
!5329 = !DILocation(line: 189, column: 9, scope: !5262)
!5330 = !DILocation(line: 189, column: 7, scope: !5262)
!5331 = !DILocation(line: 190, column: 7, scope: !5332)
!5332 = distinct !DILexicalBlock(scope: !5262, file: !3, line: 190, column: 7)
!5333 = !DILocation(line: 190, column: 12, scope: !5332)
!5334 = !DILocation(line: 190, column: 7, scope: !5262)
!5335 = !DILocation(line: 191, column: 4, scope: !5332)
!5336 = !DILocation(line: 191, column: 9, scope: !5332)
!5337 = !DILocation(line: 191, column: 21, scope: !5332)
!5338 = !DILocation(line: 191, column: 28, scope: !5332)
!5339 = !DILocation(line: 192, column: 18, scope: !5262)
!5340 = !DILocation(line: 192, column: 23, scope: !5262)
!5341 = !DILocation(line: 192, column: 3, scope: !5262)
!5342 = !DILocation(line: 194, column: 19, scope: !5249)
!5343 = !DILocation(line: 194, column: 24, scope: !5249)
!5344 = !DILocation(line: 194, column: 2, scope: !5249)
!5345 = !DILocation(line: 195, column: 1, scope: !5249)
!5346 = distinct !DISubprogram(name: "spinlock_check", scope: !5347, file: !5347, line: 324, type: !5348, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5351)
!5347 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5348 = !DISubroutineType(types: !5349)
!5349 = !{!5350, !2408}
!5350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!5351 = !{!5352}
!5352 = !DILocalVariable(name: "lock", arg: 1, scope: !5346, file: !5347, line: 324, type: !2408)
!5353 = !DILocation(line: 324, column: 67, scope: !5346)
!5354 = !DILocation(line: 326, column: 10, scope: !5346)
!5355 = !DILocation(line: 326, column: 16, scope: !5346)
!5356 = !DILocation(line: 326, column: 2, scope: !5346)
!5357 = !DISubprogram(name: "__mutex_init", scope: !666, file: !666, line: 121, type: !5358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5358 = !DISubroutineType(types: !5359)
!5359 = !{null, !5360, !247, !5361}
!5360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!5361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!5362 = !DISubprogram(name: "__init_waitqueue_head", scope: !1422, file: !1422, line: 64, type: !5363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5363 = !DISubroutineType(types: !5364)
!5364 = !{null, !5365, !247, !5361}
!5365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!5366 = distinct !DISubprogram(name: "snd_hdac_bus_exit", scope: !3, file: !3, line: 70, type: !5367, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5369)
!5367 = !DISubroutineType(types: !5368)
!5368 = !{null, !234}
!5369 = !{!5370, !5371, !5373, !5376, !5378}
!5370 = !DILocalVariable(name: "bus", arg: 1, scope: !5366, file: !3, line: 70, type: !234)
!5371 = !DILocalVariable(name: "__ret_warn_on", scope: !5372, file: !3, line: 72, type: !109)
!5372 = distinct !DILexicalBlock(scope: !5366, file: !3, line: 72, column: 2)
!5373 = !DILocalVariable(name: "__flags", scope: !5374, file: !3, line: 72, type: !109)
!5374 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 72, column: 2)
!5375 = distinct !DILexicalBlock(scope: !5372, file: !3, line: 72, column: 2)
!5376 = !DILocalVariable(name: "__ret_warn_on", scope: !5377, file: !3, line: 73, type: !109)
!5377 = distinct !DILexicalBlock(scope: !5366, file: !3, line: 73, column: 2)
!5378 = !DILocalVariable(name: "__flags", scope: !5379, file: !3, line: 73, type: !109)
!5379 = distinct !DILexicalBlock(scope: !5380, file: !3, line: 73, column: 2)
!5380 = distinct !DILexicalBlock(scope: !5377, file: !3, line: 73, column: 2)
!5381 = !DILocation(line: 70, column: 41, scope: !5366)
!5382 = !DILocation(line: 72, column: 2, scope: !5372)
!5383 = !DILocation(line: 72, column: 2, scope: !5375)
!5384 = !DILocation(line: 72, column: 2, scope: !5374)
!5385 = !DILocation(line: 72, column: 2, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5374, file: !3, line: 72, column: 2)
!5387 = !DILocation(line: 72, column: 2, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5374, file: !3, line: 72, column: 2)
!5389 = !{i64 2155657872, i64 2155657901, i64 2155657947, i64 2155658005, i64 2155658059, i64 2155658113, i64 2155658168, i64 2155658199, i64 2155658507, i64 2155658513, i64 2155658560, i64 2155658583, i64 2155658609}
!5390 = !DILocation(line: 72, column: 2, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5374, file: !3, line: 72, column: 2)
!5392 = !DILocation(line: 72, column: 2, scope: !5366)
!5393 = !DILocation(line: 73, column: 2, scope: !5377)
!5394 = !DILocation(line: 73, column: 2, scope: !5380)
!5395 = !DILocation(line: 73, column: 2, scope: !5379)
!5396 = !DILocation(line: 73, column: 2, scope: !5397)
!5397 = distinct !DILexicalBlock(scope: !5379, file: !3, line: 73, column: 2)
!5398 = !DILocation(line: 73, column: 2, scope: !5399)
!5399 = distinct !DILexicalBlock(scope: !5379, file: !3, line: 73, column: 2)
!5400 = !{i64 2155659384, i64 2155659413, i64 2155659459, i64 2155659517, i64 2155659571, i64 2155659625, i64 2155659680, i64 2155659711, i64 2155660019, i64 2155660025, i64 2155660072, i64 2155660095, i64 2155660121}
!5401 = !DILocation(line: 73, column: 2, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5379, file: !3, line: 73, column: 2)
!5403 = !DILocation(line: 73, column: 2, scope: !5366)
!5404 = !DILocation(line: 74, column: 20, scope: !5366)
!5405 = !DILocation(line: 74, column: 25, scope: !5366)
!5406 = !DILocation(line: 74, column: 2, scope: !5366)
!5407 = !DILocation(line: 75, column: 1, scope: !5366)
!5408 = distinct !DISubprogram(name: "list_empty", scope: !5219, file: !5219, line: 371, type: !5409, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5413)
!5409 = !DISubroutineType(types: !5410)
!5410 = !{!109, !5411}
!5411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5412, size: 64)
!5412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!5413 = !{!5414}
!5414 = !DILocalVariable(name: "head", arg: 1, scope: !5408, file: !5219, line: 371, type: !5411)
!5415 = !DILocation(line: 371, column: 54, scope: !5408)
!5416 = !DILocation(line: 373, column: 9, scope: !5417)
!5417 = distinct !DILexicalBlock(scope: !5408, file: !5219, line: 373, column: 9)
!5418 = !DILocation(line: 373, column: 9, scope: !5419)
!5419 = distinct !DILexicalBlock(scope: !5417, file: !5219, line: 373, column: 9)
!5420 = !DILocation(line: 373, column: 34, scope: !5408)
!5421 = !DILocation(line: 373, column: 31, scope: !5408)
!5422 = !DILocation(line: 373, column: 2, scope: !5408)
!5423 = !DISubprogram(name: "cancel_work_sync", scope: !166, file: !166, line: 515, type: !5424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5424 = !DISubroutineType(types: !5425)
!5425 = !{!745, !932}
!5426 = distinct !DISubprogram(name: "snd_hdac_bus_exec_verb", scope: !3, file: !3, line: 87, type: !5427, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5429)
!5427 = !DISubroutineType(types: !5428)
!5428 = !{!109, !234, !7, !7, !737}
!5429 = !{!5430, !5431, !5432, !5433, !5434}
!5430 = !DILocalVariable(name: "bus", arg: 1, scope: !5426, file: !3, line: 87, type: !234)
!5431 = !DILocalVariable(name: "addr", arg: 2, scope: !5426, file: !3, line: 87, type: !7)
!5432 = !DILocalVariable(name: "cmd", arg: 3, scope: !5426, file: !3, line: 88, type: !7)
!5433 = !DILocalVariable(name: "res", arg: 4, scope: !5426, file: !3, line: 88, type: !737)
!5434 = !DILocalVariable(name: "err", scope: !5426, file: !3, line: 90, type: !109)
!5435 = !DILocation(line: 87, column: 45, scope: !5426)
!5436 = !DILocation(line: 87, column: 63, scope: !5426)
!5437 = !DILocation(line: 88, column: 20, scope: !5426)
!5438 = !DILocation(line: 88, column: 39, scope: !5426)
!5439 = !DILocation(line: 90, column: 2, scope: !5426)
!5440 = !DILocation(line: 90, column: 6, scope: !5426)
!5441 = !DILocation(line: 92, column: 14, scope: !5426)
!5442 = !DILocation(line: 92, column: 19, scope: !5426)
!5443 = !DILocation(line: 92, column: 2, scope: !5426)
!5444 = !DILocation(line: 93, column: 40, scope: !5426)
!5445 = !DILocation(line: 93, column: 45, scope: !5426)
!5446 = !DILocation(line: 93, column: 51, scope: !5426)
!5447 = !DILocation(line: 93, column: 56, scope: !5426)
!5448 = !DILocation(line: 93, column: 8, scope: !5426)
!5449 = !DILocation(line: 93, column: 6, scope: !5426)
!5450 = !DILocation(line: 94, column: 16, scope: !5426)
!5451 = !DILocation(line: 94, column: 21, scope: !5426)
!5452 = !DILocation(line: 94, column: 2, scope: !5426)
!5453 = !DILocation(line: 95, column: 9, scope: !5426)
!5454 = !DILocation(line: 96, column: 1, scope: !5426)
!5455 = !DILocation(line: 95, column: 2, scope: !5426)
!5456 = !DISubprogram(name: "mutex_lock", scope: !666, file: !666, line: 227, type: !5457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5457 = !DISubroutineType(types: !5458)
!5458 = !{null, !5360}
!5459 = distinct !DISubprogram(name: "snd_hdac_bus_exec_verb_unlocked", scope: !3, file: !3, line: 107, type: !5427, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5460)
!5460 = !{!5461, !5462, !5463, !5464, !5465, !5466}
!5461 = !DILocalVariable(name: "bus", arg: 1, scope: !5459, file: !3, line: 107, type: !234)
!5462 = !DILocalVariable(name: "addr", arg: 2, scope: !5459, file: !3, line: 107, type: !7)
!5463 = !DILocalVariable(name: "cmd", arg: 3, scope: !5459, file: !3, line: 108, type: !7)
!5464 = !DILocalVariable(name: "res", arg: 4, scope: !5459, file: !3, line: 108, type: !737)
!5465 = !DILocalVariable(name: "tmp", scope: !5459, file: !3, line: 110, type: !7)
!5466 = !DILocalVariable(name: "err", scope: !5459, file: !3, line: 111, type: !109)
!5467 = !DILocation(line: 107, column: 54, scope: !5459)
!5468 = !DILocation(line: 107, column: 72, scope: !5459)
!5469 = !DILocation(line: 108, column: 22, scope: !5459)
!5470 = !DILocation(line: 108, column: 41, scope: !5459)
!5471 = !DILocation(line: 110, column: 2, scope: !5459)
!5472 = !DILocation(line: 110, column: 15, scope: !5459)
!5473 = !DILocation(line: 111, column: 2, scope: !5459)
!5474 = !DILocation(line: 111, column: 6, scope: !5459)
!5475 = !DILocation(line: 113, column: 6, scope: !5476)
!5476 = distinct !DILexicalBlock(scope: !5459, file: !3, line: 113, column: 6)
!5477 = !DILocation(line: 113, column: 10, scope: !5476)
!5478 = !DILocation(line: 113, column: 6, scope: !5459)
!5479 = !DILocation(line: 114, column: 3, scope: !5476)
!5480 = !DILocation(line: 116, column: 6, scope: !5481)
!5481 = distinct !DILexicalBlock(scope: !5459, file: !3, line: 116, column: 6)
!5482 = !DILocation(line: 116, column: 6, scope: !5459)
!5483 = !DILocation(line: 117, column: 4, scope: !5481)
!5484 = !DILocation(line: 117, column: 8, scope: !5481)
!5485 = !DILocation(line: 117, column: 3, scope: !5481)
!5486 = !DILocation(line: 118, column: 11, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5481, file: !3, line: 118, column: 11)
!5488 = !DILocation(line: 118, column: 16, scope: !5487)
!5489 = !DILocation(line: 118, column: 11, scope: !5481)
!5490 = !DILocation(line: 119, column: 7, scope: !5487)
!5491 = !DILocation(line: 119, column: 3, scope: !5487)
!5492 = !DILocation(line: 120, column: 2, scope: !5459)
!5493 = !DILocation(line: 121, column: 22, scope: !5494)
!5494 = distinct !DILexicalBlock(scope: !5495, file: !3, line: 120, column: 11)
!5495 = distinct !DILexicalBlock(scope: !5496, file: !3, line: 120, column: 2)
!5496 = distinct !DILexicalBlock(scope: !5459, file: !3, line: 120, column: 2)
!5497 = !DILocation(line: 121, column: 27, scope: !5494)
!5498 = !DILocation(line: 121, column: 3, scope: !5494)
!5499 = !DILocation(line: 122, column: 9, scope: !5494)
!5500 = !DILocation(line: 122, column: 14, scope: !5494)
!5501 = !DILocation(line: 122, column: 19, scope: !5494)
!5502 = !DILocation(line: 122, column: 27, scope: !5494)
!5503 = !DILocation(line: 122, column: 32, scope: !5494)
!5504 = !DILocation(line: 122, column: 7, scope: !5494)
!5505 = !DILocation(line: 123, column: 7, scope: !5506)
!5506 = distinct !DILexicalBlock(scope: !5494, file: !3, line: 123, column: 7)
!5507 = !DILocation(line: 123, column: 11, scope: !5506)
!5508 = !DILocation(line: 123, column: 7, scope: !5494)
!5509 = !DILocation(line: 124, column: 4, scope: !5506)
!5510 = !DILocation(line: 126, column: 9, scope: !5494)
!5511 = !DILocation(line: 126, column: 14, scope: !5494)
!5512 = !DILocation(line: 126, column: 19, scope: !5494)
!5513 = !DILocation(line: 126, column: 32, scope: !5494)
!5514 = !DILocation(line: 126, column: 37, scope: !5494)
!5515 = !DILocation(line: 126, column: 7, scope: !5494)
!5516 = !DILocation(line: 127, column: 7, scope: !5517)
!5517 = distinct !DILexicalBlock(scope: !5494, file: !3, line: 127, column: 7)
!5518 = !DILocation(line: 127, column: 7, scope: !5494)
!5519 = !DILocation(line: 128, column: 4, scope: !5517)
!5520 = !DILocation(line: 120, column: 2, scope: !5495)
!5521 = distinct !{!5521, !5522, !5523, !5312}
!5522 = !DILocation(line: 120, column: 2, scope: !5496)
!5523 = !DILocation(line: 129, column: 2, scope: !5496)
!5524 = !DILocation(line: 130, column: 7, scope: !5525)
!5525 = distinct !DILexicalBlock(scope: !5459, file: !3, line: 130, column: 6)
!5526 = !DILocation(line: 130, column: 11, scope: !5525)
!5527 = !DILocation(line: 130, column: 14, scope: !5525)
!5528 = !DILocation(line: 130, column: 6, scope: !5459)
!5529 = !DILocation(line: 131, column: 9, scope: !5530)
!5530 = distinct !DILexicalBlock(scope: !5525, file: !3, line: 130, column: 19)
!5531 = !DILocation(line: 131, column: 14, scope: !5530)
!5532 = !DILocation(line: 131, column: 19, scope: !5530)
!5533 = !DILocation(line: 131, column: 32, scope: !5530)
!5534 = !DILocation(line: 131, column: 37, scope: !5530)
!5535 = !DILocation(line: 131, column: 43, scope: !5530)
!5536 = !DILocation(line: 131, column: 7, scope: !5530)
!5537 = !DILocation(line: 132, column: 26, scope: !5530)
!5538 = !DILocation(line: 132, column: 31, scope: !5530)
!5539 = !DILocation(line: 132, column: 38, scope: !5530)
!5540 = !DILocation(line: 132, column: 37, scope: !5530)
!5541 = !DILocation(line: 132, column: 3, scope: !5530)
!5542 = !DILocation(line: 133, column: 2, scope: !5530)
!5543 = !DILocation(line: 134, column: 9, scope: !5459)
!5544 = !DILocation(line: 134, column: 2, scope: !5459)
!5545 = !DILocation(line: 135, column: 1, scope: !5459)
!5546 = !DISubprogram(name: "mutex_unlock", scope: !666, file: !666, line: 246, type: !5457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5547 = !DILocation(line: 19, column: 1, scope: !5060)
!5548 = !DILocation(line: 19, column: 1, scope: !5068)
!5549 = !DILocation(line: 19, column: 1, scope: !5067)
!5550 = !DILocation(line: 19, column: 1, scope: !5070)
!5551 = !DILocation(line: 19, column: 1, scope: !5073)
!5552 = !DILocation(line: 19, column: 1, scope: !5075)
!5553 = !{i64 2155421070}
!5554 = !DILocation(line: 19, column: 1, scope: !5071)
!5555 = !DILocation(line: 19, column: 1, scope: !5077)
!5556 = !DILocation(line: 19, column: 1, scope: !5081)
!5557 = !DILocation(line: 19, column: 1, scope: !5080)
!5558 = !DILocation(line: 19, column: 1, scope: !5559)
!5559 = distinct !DILexicalBlock(scope: !5080, file: !5054, line: 19, column: 1)
!5560 = !DILocation(line: 19, column: 1, scope: !5561)
!5561 = distinct !DILexicalBlock(scope: !5080, file: !5054, line: 19, column: 1)
!5562 = !{i64 2155422262, i64 2155422291, i64 2155422337, i64 2155422395, i64 2155422449, i64 2155422503, i64 2155422558, i64 2155422589, i64 2155422897, i64 2155422903, i64 2155422950, i64 2155422973, i64 2155422999}
!5563 = !DILocation(line: 19, column: 1, scope: !5564)
!5564 = distinct !DILexicalBlock(scope: !5080, file: !5054, line: 19, column: 1)
!5565 = !DILocation(line: 19, column: 1, scope: !5078)
!5566 = !DILocation(line: 19, column: 1, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5067, file: !5054, line: 19, column: 1)
!5568 = !{i64 2155423340}
!5569 = !DILocation(line: 19, column: 1, scope: !5083)
!5570 = !DILocation(line: 19, column: 1, scope: !5086)
!5571 = !DILocation(line: 19, column: 1, scope: !5572)
!5572 = distinct !DILexicalBlock(scope: !5086, file: !5054, line: 19, column: 1)
!5573 = !DILocation(line: 19, column: 1, scope: !5574)
!5574 = distinct !DILexicalBlock(scope: !5572, file: !5054, line: 19, column: 1)
!5575 = !DILocation(line: 19, column: 1, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5083, file: !5054, line: 19, column: 1)
!5577 = !DILocation(line: 19, column: 1, scope: !5578)
!5578 = distinct !DILexicalBlock(scope: !5576, file: !5054, line: 19, column: 1)
!5579 = !DILocation(line: 19, column: 1, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5578, file: !5054, line: 19, column: 1)
!5581 = !DILocation(line: 19, column: 1, scope: !5582)
!5582 = distinct !DILexicalBlock(scope: !5067, file: !5054, line: 19, column: 1)
!5583 = !{i64 2155429575}
!5584 = !DILocation(line: 19, column: 1, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5582, file: !5054, line: 19, column: 1)
!5586 = !DILocation(line: 19, column: 1, scope: !5587)
!5587 = distinct !DILexicalBlock(scope: !5585, file: !5054, line: 19, column: 1)
!5588 = !{i64 2155429734}
!5589 = !DILocation(line: 33, column: 1, scope: !5091)
!5590 = !DILocation(line: 33, column: 1, scope: !5100)
!5591 = !DILocation(line: 33, column: 1, scope: !5099)
!5592 = !DILocation(line: 33, column: 1, scope: !5102)
!5593 = !DILocation(line: 33, column: 1, scope: !5105)
!5594 = !DILocation(line: 33, column: 1, scope: !5107)
!5595 = !{i64 2155466616}
!5596 = !DILocation(line: 33, column: 1, scope: !5103)
!5597 = !DILocation(line: 33, column: 1, scope: !5109)
!5598 = !DILocation(line: 33, column: 1, scope: !5113)
!5599 = !DILocation(line: 33, column: 1, scope: !5112)
!5600 = !DILocation(line: 33, column: 1, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5112, file: !5054, line: 33, column: 1)
!5602 = !DILocation(line: 33, column: 1, scope: !5603)
!5603 = distinct !DILexicalBlock(scope: !5112, file: !5054, line: 33, column: 1)
!5604 = !{i64 2155467824, i64 2155467853, i64 2155467899, i64 2155467957, i64 2155468011, i64 2155468065, i64 2155468120, i64 2155468151, i64 2155468459, i64 2155468465, i64 2155468512, i64 2155468535, i64 2155468561}
!5605 = !DILocation(line: 33, column: 1, scope: !5606)
!5606 = distinct !DILexicalBlock(scope: !5112, file: !5054, line: 33, column: 1)
!5607 = !DILocation(line: 33, column: 1, scope: !5110)
!5608 = !DILocation(line: 33, column: 1, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5099, file: !5054, line: 33, column: 1)
!5610 = !{i64 2155468902}
!5611 = !DILocation(line: 33, column: 1, scope: !5115)
!5612 = !DILocation(line: 33, column: 1, scope: !5118)
!5613 = !DILocation(line: 33, column: 1, scope: !5614)
!5614 = distinct !DILexicalBlock(scope: !5118, file: !5054, line: 33, column: 1)
!5615 = !DILocation(line: 33, column: 1, scope: !5616)
!5616 = distinct !DILexicalBlock(scope: !5614, file: !5054, line: 33, column: 1)
!5617 = !DILocation(line: 33, column: 1, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !5115, file: !5054, line: 33, column: 1)
!5619 = !DILocation(line: 33, column: 1, scope: !5620)
!5620 = distinct !DILexicalBlock(scope: !5618, file: !5054, line: 33, column: 1)
!5621 = !DILocation(line: 33, column: 1, scope: !5622)
!5622 = distinct !DILexicalBlock(scope: !5620, file: !5054, line: 33, column: 1)
!5623 = !DILocation(line: 33, column: 1, scope: !5624)
!5624 = distinct !DILexicalBlock(scope: !5099, file: !5054, line: 33, column: 1)
!5625 = !{i64 2155475393}
!5626 = !DILocation(line: 33, column: 1, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5624, file: !5054, line: 33, column: 1)
!5628 = !DILocation(line: 33, column: 1, scope: !5629)
!5629 = distinct !DILexicalBlock(scope: !5627, file: !5054, line: 33, column: 1)
!5630 = !{i64 2155475552}
!5631 = distinct !DISubprogram(name: "snd_hdac_bus_queue_event", scope: !3, file: !3, line: 148, type: !5124, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5632)
!5632 = !{!5633, !5634, !5635, !5636}
!5633 = !DILocalVariable(name: "bus", arg: 1, scope: !5631, file: !3, line: 148, type: !234)
!5634 = !DILocalVariable(name: "res", arg: 2, scope: !5631, file: !3, line: 148, type: !230)
!5635 = !DILocalVariable(name: "res_ex", arg: 3, scope: !5631, file: !3, line: 148, type: !230)
!5636 = !DILocalVariable(name: "wp", scope: !5631, file: !3, line: 150, type: !7)
!5637 = !DILocation(line: 148, column: 48, scope: !5631)
!5638 = !DILocation(line: 148, column: 57, scope: !5631)
!5639 = !DILocation(line: 148, column: 66, scope: !5631)
!5640 = !DILocation(line: 150, column: 2, scope: !5631)
!5641 = !DILocation(line: 150, column: 15, scope: !5631)
!5642 = !DILocation(line: 152, column: 7, scope: !5643)
!5643 = distinct !DILexicalBlock(scope: !5631, file: !3, line: 152, column: 6)
!5644 = !DILocation(line: 152, column: 6, scope: !5631)
!5645 = !DILocation(line: 153, column: 3, scope: !5643)
!5646 = !DILocation(line: 155, column: 24, scope: !5631)
!5647 = !DILocation(line: 155, column: 29, scope: !5631)
!5648 = !DILocation(line: 155, column: 34, scope: !5631)
!5649 = !DILocation(line: 155, column: 2, scope: !5631)
!5650 = !DILocation(line: 156, column: 8, scope: !5631)
!5651 = !DILocation(line: 156, column: 13, scope: !5631)
!5652 = !DILocation(line: 156, column: 22, scope: !5631)
!5653 = !DILocation(line: 156, column: 27, scope: !5631)
!5654 = !DILocation(line: 156, column: 5, scope: !5631)
!5655 = !DILocation(line: 157, column: 18, scope: !5631)
!5656 = !DILocation(line: 157, column: 2, scope: !5631)
!5657 = !DILocation(line: 157, column: 7, scope: !5631)
!5658 = !DILocation(line: 157, column: 16, scope: !5631)
!5659 = !DILocation(line: 159, column: 5, scope: !5631)
!5660 = !DILocation(line: 160, column: 25, scope: !5631)
!5661 = !DILocation(line: 160, column: 2, scope: !5631)
!5662 = !DILocation(line: 160, column: 7, scope: !5631)
!5663 = !DILocation(line: 160, column: 19, scope: !5631)
!5664 = !DILocation(line: 160, column: 23, scope: !5631)
!5665 = !DILocation(line: 161, column: 29, scope: !5631)
!5666 = !DILocation(line: 161, column: 2, scope: !5631)
!5667 = !DILocation(line: 161, column: 7, scope: !5631)
!5668 = !DILocation(line: 161, column: 19, scope: !5631)
!5669 = !DILocation(line: 161, column: 22, scope: !5631)
!5670 = !DILocation(line: 161, column: 27, scope: !5631)
!5671 = !DILocation(line: 163, column: 17, scope: !5631)
!5672 = !DILocation(line: 163, column: 22, scope: !5631)
!5673 = !DILocation(line: 163, column: 2, scope: !5631)
!5674 = !DILocation(line: 164, column: 1, scope: !5631)
!5675 = !DILocation(line: 49, column: 1, scope: !5123)
!5676 = !DILocation(line: 49, column: 1, scope: !5132)
!5677 = !DILocation(line: 49, column: 1, scope: !5131)
!5678 = !DILocation(line: 49, column: 1, scope: !5134)
!5679 = !DILocation(line: 49, column: 1, scope: !5137)
!5680 = !DILocation(line: 49, column: 1, scope: !5139)
!5681 = !{i64 2155516627}
!5682 = !DILocation(line: 49, column: 1, scope: !5135)
!5683 = !DILocation(line: 49, column: 1, scope: !5141)
!5684 = !DILocation(line: 49, column: 1, scope: !5145)
!5685 = !DILocation(line: 49, column: 1, scope: !5144)
!5686 = !DILocation(line: 49, column: 1, scope: !5687)
!5687 = distinct !DILexicalBlock(scope: !5144, file: !5054, line: 49, column: 1)
!5688 = !DILocation(line: 49, column: 1, scope: !5689)
!5689 = distinct !DILexicalBlock(scope: !5144, file: !5054, line: 49, column: 1)
!5690 = !{i64 2155517838, i64 2155517867, i64 2155517913, i64 2155517971, i64 2155518025, i64 2155518079, i64 2155518134, i64 2155518165, i64 2155518473, i64 2155518479, i64 2155518526, i64 2155518549, i64 2155518575}
!5691 = !DILocation(line: 49, column: 1, scope: !5692)
!5692 = distinct !DILexicalBlock(scope: !5144, file: !5054, line: 49, column: 1)
!5693 = !DILocation(line: 49, column: 1, scope: !5142)
!5694 = !DILocation(line: 49, column: 1, scope: !5695)
!5695 = distinct !DILexicalBlock(scope: !5131, file: !5054, line: 49, column: 1)
!5696 = !{i64 2155518916}
!5697 = !DILocation(line: 49, column: 1, scope: !5147)
!5698 = !DILocation(line: 49, column: 1, scope: !5150)
!5699 = !DILocation(line: 49, column: 1, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !5150, file: !5054, line: 49, column: 1)
!5701 = !DILocation(line: 49, column: 1, scope: !5702)
!5702 = distinct !DILexicalBlock(scope: !5700, file: !5054, line: 49, column: 1)
!5703 = !DILocation(line: 49, column: 1, scope: !5704)
!5704 = distinct !DILexicalBlock(scope: !5147, file: !5054, line: 49, column: 1)
!5705 = !DILocation(line: 49, column: 1, scope: !5706)
!5706 = distinct !DILexicalBlock(scope: !5704, file: !5054, line: 49, column: 1)
!5707 = !DILocation(line: 49, column: 1, scope: !5708)
!5708 = distinct !DILexicalBlock(scope: !5706, file: !5054, line: 49, column: 1)
!5709 = !DILocation(line: 49, column: 1, scope: !5710)
!5710 = distinct !DILexicalBlock(scope: !5131, file: !5054, line: 49, column: 1)
!5711 = !{i64 2155525350}
!5712 = !DILocation(line: 49, column: 1, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !5710, file: !5054, line: 49, column: 1)
!5714 = !DILocation(line: 49, column: 1, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5713, file: !5054, line: 49, column: 1)
!5716 = !{i64 2155525509}
!5717 = distinct !DISubprogram(name: "schedule_work", scope: !166, file: !166, line: 621, type: !5424, scopeLine: 622, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5718)
!5718 = !{!5719}
!5719 = !DILocalVariable(name: "work", arg: 1, scope: !5717, file: !166, line: 621, type: !932)
!5720 = !DILocation(line: 621, column: 54, scope: !5717)
!5721 = !DILocation(line: 623, column: 20, scope: !5717)
!5722 = !DILocation(line: 623, column: 31, scope: !5717)
!5723 = !DILocation(line: 623, column: 9, scope: !5717)
!5724 = !DILocation(line: 623, column: 2, scope: !5717)
!5725 = distinct !DISubprogram(name: "snd_hdac_bus_add_device", scope: !3, file: !3, line: 206, type: !5726, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5728)
!5726 = !DISubroutineType(types: !5727)
!5727 = !{!109, !234, !4778}
!5728 = !{!5729, !5730}
!5729 = !DILocalVariable(name: "bus", arg: 1, scope: !5725, file: !3, line: 206, type: !234)
!5730 = !DILocalVariable(name: "codec", arg: 2, scope: !5725, file: !3, line: 206, type: !4778)
!5731 = !DILocation(line: 206, column: 46, scope: !5725)
!5732 = !DILocation(line: 206, column: 71, scope: !5725)
!5733 = !DILocation(line: 208, column: 6, scope: !5734)
!5734 = distinct !DILexicalBlock(scope: !5725, file: !3, line: 208, column: 6)
!5735 = !DILocation(line: 208, column: 11, scope: !5734)
!5736 = !DILocation(line: 208, column: 21, scope: !5734)
!5737 = !DILocation(line: 208, column: 28, scope: !5734)
!5738 = !DILocation(line: 208, column: 6, scope: !5725)
!5739 = !DILocation(line: 209, column: 3, scope: !5740)
!5740 = distinct !DILexicalBlock(scope: !5741, file: !3, line: 209, column: 3)
!5741 = distinct !DILexicalBlock(scope: !5734, file: !3, line: 208, column: 35)
!5742 = !DILocation(line: 209, column: 3, scope: !5743)
!5743 = distinct !DILexicalBlock(scope: !5740, file: !3, line: 209, column: 3)
!5744 = !DILocation(line: 211, column: 3, scope: !5741)
!5745 = !DILocation(line: 214, column: 17, scope: !5725)
!5746 = !DILocation(line: 214, column: 24, scope: !5725)
!5747 = !DILocation(line: 214, column: 31, scope: !5725)
!5748 = !DILocation(line: 214, column: 36, scope: !5725)
!5749 = !DILocation(line: 214, column: 2, scope: !5725)
!5750 = !DILocation(line: 215, column: 32, scope: !5725)
!5751 = !DILocation(line: 215, column: 2, scope: !5725)
!5752 = !DILocation(line: 215, column: 7, scope: !5725)
!5753 = !DILocation(line: 215, column: 17, scope: !5725)
!5754 = !DILocation(line: 215, column: 24, scope: !5725)
!5755 = !DILocation(line: 215, column: 30, scope: !5725)
!5756 = !DILocation(line: 216, column: 10, scope: !5725)
!5757 = !DILocation(line: 216, column: 17, scope: !5725)
!5758 = !DILocation(line: 216, column: 24, scope: !5725)
!5759 = !DILocation(line: 216, column: 29, scope: !5725)
!5760 = !DILocation(line: 216, column: 2, scope: !5725)
!5761 = !DILocation(line: 217, column: 2, scope: !5725)
!5762 = !DILocation(line: 217, column: 7, scope: !5725)
!5763 = !DILocation(line: 217, column: 17, scope: !5725)
!5764 = !DILocation(line: 218, column: 2, scope: !5725)
!5765 = !DILocation(line: 219, column: 1, scope: !5725)
!5766 = !DISubprogram(name: "_dev_err", scope: !5767, file: !5767, line: 50, type: !5768, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5767 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5768 = !DISubroutineType(types: !5769)
!5769 = !{null, !4250, !247, null}
!5770 = distinct !DISubprogram(name: "list_add_tail", scope: !5219, file: !5219, line: 181, type: !5771, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5773)
!5771 = !DISubroutineType(types: !5772)
!5772 = !{null, !201, !201}
!5773 = !{!5774, !5775}
!5774 = !DILocalVariable(name: "new", arg: 1, scope: !5770, file: !5219, line: 181, type: !201)
!5775 = !DILocalVariable(name: "head", arg: 2, scope: !5770, file: !5219, line: 181, type: !201)
!5776 = !DILocation(line: 181, column: 52, scope: !5770)
!5777 = !DILocation(line: 181, column: 75, scope: !5770)
!5778 = !DILocation(line: 183, column: 13, scope: !5770)
!5779 = !DILocation(line: 183, column: 18, scope: !5770)
!5780 = !DILocation(line: 183, column: 24, scope: !5770)
!5781 = !DILocation(line: 183, column: 30, scope: !5770)
!5782 = !DILocation(line: 183, column: 2, scope: !5770)
!5783 = !DILocation(line: 184, column: 1, scope: !5770)
!5784 = distinct !DISubprogram(name: "set_bit", scope: !5785, file: !5785, line: 26, type: !5786, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5790)
!5785 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!5786 = !DISubroutineType(types: !5787)
!5787 = !{null, !363, !5788}
!5788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5789, size: 64)
!5789 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !197)
!5790 = !{!5791, !5792}
!5791 = !DILocalVariable(name: "nr", arg: 1, scope: !5784, file: !5785, line: 26, type: !363)
!5792 = !DILocalVariable(name: "addr", arg: 2, scope: !5784, file: !5785, line: 26, type: !5788)
!5793 = !DILocation(line: 26, column: 42, scope: !5784)
!5794 = !DILocation(line: 26, column: 70, scope: !5784)
!5795 = !DILocation(line: 28, column: 26, scope: !5784)
!5796 = !DILocation(line: 28, column: 33, scope: !5784)
!5797 = !DILocation(line: 28, column: 31, scope: !5784)
!5798 = !DILocation(line: 28, column: 2, scope: !5784)
!5799 = !DILocation(line: 29, column: 15, scope: !5784)
!5800 = !DILocation(line: 29, column: 19, scope: !5784)
!5801 = !DILocation(line: 29, column: 2, scope: !5784)
!5802 = !DILocation(line: 30, column: 1, scope: !5784)
!5803 = distinct !DISubprogram(name: "snd_hdac_bus_remove_device", scope: !3, file: !3, line: 226, type: !5804, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5806)
!5804 = !DISubroutineType(types: !5805)
!5805 = !{null, !234, !4778}
!5806 = !{!5807, !5808, !5809, !5811}
!5807 = !DILocalVariable(name: "bus", arg: 1, scope: !5803, file: !3, line: 226, type: !234)
!5808 = !DILocalVariable(name: "codec", arg: 2, scope: !5803, file: !3, line: 227, type: !4778)
!5809 = !DILocalVariable(name: "__ret_warn_on", scope: !5810, file: !3, line: 229, type: !109)
!5810 = distinct !DILexicalBlock(scope: !5803, file: !3, line: 229, column: 2)
!5811 = !DILocalVariable(name: "__flags", scope: !5812, file: !3, line: 229, type: !109)
!5812 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 229, column: 2)
!5813 = distinct !DILexicalBlock(scope: !5810, file: !3, line: 229, column: 2)
!5814 = !DILocation(line: 226, column: 50, scope: !5803)
!5815 = !DILocation(line: 227, column: 25, scope: !5803)
!5816 = !DILocation(line: 229, column: 2, scope: !5810)
!5817 = !DILocation(line: 229, column: 2, scope: !5813)
!5818 = !DILocation(line: 229, column: 2, scope: !5812)
!5819 = !DILocation(line: 229, column: 2, scope: !5820)
!5820 = distinct !DILexicalBlock(scope: !5812, file: !3, line: 229, column: 2)
!5821 = !DILocation(line: 229, column: 2, scope: !5822)
!5822 = distinct !DILexicalBlock(scope: !5812, file: !3, line: 229, column: 2)
!5823 = !{i64 2155667965, i64 2155667994, i64 2155668040, i64 2155668098, i64 2155668152, i64 2155668206, i64 2155668261, i64 2155668292, i64 2155668600, i64 2155668606, i64 2155668653, i64 2155668676, i64 2155668702}
!5824 = !DILocation(line: 229, column: 2, scope: !5825)
!5825 = distinct !DILexicalBlock(scope: !5812, file: !3, line: 229, column: 2)
!5826 = !DILocation(line: 229, column: 2, scope: !5803)
!5827 = !DILocation(line: 230, column: 18, scope: !5828)
!5828 = distinct !DILexicalBlock(scope: !5803, file: !3, line: 230, column: 6)
!5829 = !DILocation(line: 230, column: 25, scope: !5828)
!5830 = !DILocation(line: 230, column: 6, scope: !5828)
!5831 = !DILocation(line: 230, column: 6, scope: !5803)
!5832 = !DILocation(line: 231, column: 3, scope: !5828)
!5833 = !DILocation(line: 232, column: 17, scope: !5803)
!5834 = !DILocation(line: 232, column: 24, scope: !5803)
!5835 = !DILocation(line: 232, column: 2, scope: !5803)
!5836 = !DILocation(line: 233, column: 2, scope: !5803)
!5837 = !DILocation(line: 233, column: 7, scope: !5803)
!5838 = !DILocation(line: 233, column: 17, scope: !5803)
!5839 = !DILocation(line: 233, column: 24, scope: !5803)
!5840 = !DILocation(line: 233, column: 30, scope: !5803)
!5841 = !DILocation(line: 234, column: 12, scope: !5803)
!5842 = !DILocation(line: 234, column: 19, scope: !5803)
!5843 = !DILocation(line: 234, column: 26, scope: !5803)
!5844 = !DILocation(line: 234, column: 31, scope: !5803)
!5845 = !DILocation(line: 234, column: 2, scope: !5803)
!5846 = !DILocation(line: 235, column: 2, scope: !5803)
!5847 = !DILocation(line: 235, column: 7, scope: !5803)
!5848 = !DILocation(line: 235, column: 17, scope: !5803)
!5849 = !DILocation(line: 236, column: 14, scope: !5803)
!5850 = !DILocation(line: 236, column: 19, scope: !5803)
!5851 = !DILocation(line: 236, column: 2, scope: !5803)
!5852 = !DILocation(line: 237, column: 1, scope: !5803)
!5853 = distinct !DISubprogram(name: "list_del_init", scope: !5219, file: !5219, line: 285, type: !5220, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5854)
!5854 = !{!5855}
!5855 = !DILocalVariable(name: "entry", arg: 1, scope: !5853, file: !5219, line: 285, type: !201)
!5856 = !DILocation(line: 285, column: 52, scope: !5853)
!5857 = !DILocation(line: 287, column: 19, scope: !5853)
!5858 = !DILocation(line: 287, column: 2, scope: !5853)
!5859 = !DILocation(line: 288, column: 17, scope: !5853)
!5860 = !DILocation(line: 288, column: 2, scope: !5853)
!5861 = !DILocation(line: 289, column: 1, scope: !5853)
!5862 = distinct !DISubprogram(name: "clear_bit", scope: !5785, file: !5785, line: 39, type: !5786, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5863)
!5863 = !{!5864, !5865}
!5864 = !DILocalVariable(name: "nr", arg: 1, scope: !5862, file: !5785, line: 39, type: !363)
!5865 = !DILocalVariable(name: "addr", arg: 2, scope: !5862, file: !5785, line: 39, type: !5788)
!5866 = !DILocation(line: 39, column: 44, scope: !5862)
!5867 = !DILocation(line: 39, column: 72, scope: !5862)
!5868 = !DILocation(line: 41, column: 26, scope: !5862)
!5869 = !DILocation(line: 41, column: 33, scope: !5862)
!5870 = !DILocation(line: 41, column: 31, scope: !5862)
!5871 = !DILocation(line: 41, column: 2, scope: !5862)
!5872 = !DILocation(line: 42, column: 17, scope: !5862)
!5873 = !DILocation(line: 42, column: 21, scope: !5862)
!5874 = !DILocation(line: 42, column: 2, scope: !5862)
!5875 = !DILocation(line: 43, column: 1, scope: !5862)
!5876 = !DISubprogram(name: "flush_work", scope: !166, file: !166, line: 513, type: !5424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5877 = distinct !DISubprogram(name: "snd_hdac_codec_link_up", scope: !3, file: !3, line: 269, type: !4998, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5878)
!5878 = !{!5879, !5880}
!5879 = !DILocalVariable(name: "codec", arg: 1, scope: !5877, file: !3, line: 269, type: !4778)
!5880 = !DILocalVariable(name: "bus", scope: !5877, file: !3, line: 271, type: !234)
!5881 = !DILocation(line: 269, column: 49, scope: !5877)
!5882 = !DILocation(line: 271, column: 2, scope: !5877)
!5883 = !DILocation(line: 271, column: 19, scope: !5877)
!5884 = !DILocation(line: 271, column: 25, scope: !5877)
!5885 = !DILocation(line: 271, column: 32, scope: !5877)
!5886 = !DILocation(line: 273, column: 6, scope: !5887)
!5887 = distinct !DILexicalBlock(scope: !5877, file: !3, line: 273, column: 6)
!5888 = !DILocation(line: 273, column: 11, scope: !5887)
!5889 = !DILocation(line: 273, column: 16, scope: !5887)
!5890 = !DILocation(line: 273, column: 6, scope: !5877)
!5891 = !DILocation(line: 274, column: 3, scope: !5887)
!5892 = !DILocation(line: 274, column: 8, scope: !5887)
!5893 = !DILocation(line: 274, column: 13, scope: !5887)
!5894 = !DILocation(line: 274, column: 24, scope: !5887)
!5895 = !DILocation(line: 276, column: 27, scope: !5887)
!5896 = !DILocation(line: 276, column: 3, scope: !5887)
!5897 = !DILocation(line: 277, column: 1, scope: !5877)
!5898 = !DISubprogram(name: "snd_hdac_bus_link_power", scope: !236, file: !236, line: 404, type: !4776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5899 = distinct !DISubprogram(name: "snd_hdac_codec_link_down", scope: !3, file: !3, line: 280, type: !4998, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5900)
!5900 = !{!5901, !5902}
!5901 = !DILocalVariable(name: "codec", arg: 1, scope: !5899, file: !3, line: 280, type: !4778)
!5902 = !DILocalVariable(name: "bus", scope: !5899, file: !3, line: 282, type: !234)
!5903 = !DILocation(line: 280, column: 51, scope: !5899)
!5904 = !DILocation(line: 282, column: 2, scope: !5899)
!5905 = !DILocation(line: 282, column: 19, scope: !5899)
!5906 = !DILocation(line: 282, column: 25, scope: !5899)
!5907 = !DILocation(line: 282, column: 32, scope: !5899)
!5908 = !DILocation(line: 284, column: 6, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !5899, file: !3, line: 284, column: 6)
!5910 = !DILocation(line: 284, column: 11, scope: !5909)
!5911 = !DILocation(line: 284, column: 16, scope: !5909)
!5912 = !DILocation(line: 284, column: 6, scope: !5899)
!5913 = !DILocation(line: 285, column: 3, scope: !5909)
!5914 = !DILocation(line: 285, column: 8, scope: !5909)
!5915 = !DILocation(line: 285, column: 13, scope: !5909)
!5916 = !DILocation(line: 285, column: 24, scope: !5909)
!5917 = !DILocation(line: 287, column: 27, scope: !5909)
!5918 = !DILocation(line: 287, column: 3, scope: !5909)
!5919 = !DILocation(line: 288, column: 1, scope: !5899)
!5920 = distinct !DISubprogram(name: "static_key_false", scope: !991, file: !991, line: 205, type: !5921, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5935)
!5921 = !DISubroutineType(types: !5922)
!5922 = !{!745, !5923}
!5923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5924, size: 64)
!5924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !991, line: 85, size: 128, elements: !5925)
!5925 = !{!5926, !5927}
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5924, file: !991, line: 86, baseType: !279, size: 32)
!5927 = !DIDerivedType(tag: DW_TAG_member, scope: !5924, file: !991, line: 101, baseType: !5928, size: 64, offset: 64)
!5928 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5924, file: !991, line: 101, size: 64, elements: !5929)
!5929 = !{!5930, !5931, !5932}
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5928, file: !991, line: 102, baseType: !197, size: 64)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5928, file: !991, line: 103, baseType: !989, size: 64)
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5928, file: !991, line: 104, baseType: !5933, size: 64)
!5933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5934, size: 64)
!5934 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !991, line: 104, flags: DIFlagFwdDecl)
!5935 = !{!5936}
!5936 = !DILocalVariable(name: "key", arg: 1, scope: !5920, file: !991, line: 205, type: !5923)
!5937 = !DILocation(line: 205, column: 65, scope: !5920)
!5938 = !DILocation(line: 207, column: 28, scope: !5920)
!5939 = !DILocation(line: 207, column: 9, scope: !5920)
!5940 = !DILocation(line: 207, column: 2, scope: !5920)
!5941 = distinct !DISubprogram(name: "cpu_online", scope: !223, file: !223, line: 1080, type: !5942, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5944)
!5942 = !DISubroutineType(types: !5943)
!5943 = !{!745, !7}
!5944 = !{!5945}
!5945 = !DILocalVariable(name: "cpu", arg: 1, scope: !5941, file: !223, line: 1080, type: !7)
!5946 = !DILocation(line: 1080, column: 44, scope: !5941)
!5947 = !DILocation(line: 1082, column: 26, scope: !5941)
!5948 = !DILocation(line: 1082, column: 9, scope: !5941)
!5949 = !DILocation(line: 1082, column: 2, scope: !5941)
!5950 = distinct !DISubprogram(name: "__preempt_count_add", scope: !5951, file: !5951, line: 78, type: !2997, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5952)
!5951 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!5952 = !{!5953, !5954, !5956}
!5953 = !DILocalVariable(name: "val", arg: 1, scope: !5950, file: !5951, line: 78, type: !109)
!5954 = !DILocalVariable(name: "pao_ID__", scope: !5955, file: !5951, line: 80, type: !859)
!5955 = distinct !DILexicalBlock(scope: !5950, file: !5951, line: 80, column: 2)
!5956 = !DILocalVariable(name: "pto_val__", scope: !5957, file: !5951, line: 80, type: !230)
!5957 = distinct !DILexicalBlock(scope: !5958, file: !5951, line: 80, column: 2)
!5958 = distinct !DILexicalBlock(scope: !5959, file: !5951, line: 80, column: 2)
!5959 = distinct !DILexicalBlock(scope: !5955, file: !5951, line: 80, column: 2)
!5960 = !DILocation(line: 78, column: 53, scope: !5950)
!5961 = !DILocation(line: 80, column: 2, scope: !5950)
!5962 = !DILocation(line: 80, column: 2, scope: !5955)
!5963 = !DILocation(line: 80, column: 2, scope: !5959)
!5964 = !DILocation(line: 80, column: 2, scope: !5965)
!5965 = distinct !DILexicalBlock(scope: !5959, file: !5951, line: 80, column: 2)
!5966 = !{i64 2149597935}
!5967 = !DILocation(line: 80, column: 2, scope: !5958)
!5968 = !DILocation(line: 80, column: 2, scope: !5969)
!5969 = distinct !DILexicalBlock(scope: !5958, file: !5951, line: 80, column: 2)
!5970 = !{i64 2149598230}
!5971 = !DILocation(line: 80, column: 2, scope: !5957)
!5972 = !{i64 2149598935}
!5973 = !DILocation(line: 81, column: 1, scope: !5950)
!5974 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !5951, file: !5951, line: 93, type: !4094, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5975)
!5975 = !{!5976}
!5976 = !DILocalVariable(name: "c", scope: !5977, file: !5951, line: 95, type: !745)
!5977 = distinct !DILexicalBlock(scope: !5974, file: !5951, line: 95, column: 9)
!5978 = !DILocation(line: 95, column: 9, scope: !5977)
!5979 = !{i64 2149602291, i64 2149602384}
!5980 = !{i8 0, i8 2}
!5981 = !DILocation(line: 95, column: 9, scope: !5974)
!5982 = !DILocation(line: 95, column: 2, scope: !5974)
!5983 = distinct !DISubprogram(name: "arch_static_branch", scope: !5984, file: !5984, line: 25, type: !5985, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5987)
!5984 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!5985 = !DISubroutineType(types: !5986)
!5986 = !{!745, !5923, !745}
!5987 = !{!5988, !5989, !5990}
!5988 = !DILocalVariable(name: "key", arg: 1, scope: !5983, file: !5984, line: 25, type: !5923)
!5989 = !DILocalVariable(name: "branch", arg: 2, scope: !5983, file: !5984, line: 25, type: !745)
!5990 = !DILabel(scope: !5983, name: "l_yes", file: !5984, line: 33)
!5991 = !DILocation(line: 25, column: 67, scope: !5983)
!5992 = !DILocation(line: 25, column: 77, scope: !5983)
!5993 = !DILocation(line: 30, column: 13, scope: !5983)
!5994 = !DILocation(line: 30, column: 28, scope: !5983)
!5995 = !DILocation(line: 30, column: 26, scope: !5983)
!5996 = !DILocation(line: 27, column: 2, scope: !5983)
!5997 = !{i64 408335, i64 408379, i64 2147895354, i64 2147895375, i64 2147895401, i64 2147895434, i64 2147895468, i64 2147895492}
!5998 = !DILocation(line: 32, column: 2, scope: !5983)
!5999 = !DILocation(line: 33, column: 1, scope: !5983)
!6000 = !DILocation(line: 34, column: 2, scope: !5983)
!6001 = !DILocation(line: 35, column: 1, scope: !5983)
!6002 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !223, file: !223, line: 502, type: !6003, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6005)
!6003 = !DISubroutineType(types: !6004)
!6004 = !{!745, !109, !220}
!6005 = !{!6006, !6007}
!6006 = !DILocalVariable(name: "cpu", arg: 1, scope: !6002, file: !223, line: 502, type: !109)
!6007 = !DILocalVariable(name: "cpumask", arg: 2, scope: !6002, file: !223, line: 502, type: !220)
!6008 = !DILocation(line: 502, column: 50, scope: !6002)
!6009 = !DILocation(line: 502, column: 77, scope: !6002)
!6010 = !DILocation(line: 504, column: 9, scope: !6002)
!6011 = !DILocation(line: 504, column: 2, scope: !6002)
!6012 = distinct !DISubprogram(name: "_test_bit", scope: !6013, file: !6013, line: 139, type: !6014, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6018)
!6013 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6014 = !DISubroutineType(types: !6015)
!6015 = !{!745, !197, !6016}
!6016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6017, size: 64)
!6017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5789)
!6018 = !{!6019, !6020}
!6019 = !DILocalVariable(name: "nr", arg: 1, scope: !6012, file: !6013, line: 139, type: !197)
!6020 = !DILocalVariable(name: "addr", arg: 2, scope: !6012, file: !6013, line: 139, type: !6016)
!6021 = !DILocation(line: 139, column: 25, scope: !6012)
!6022 = !DILocation(line: 139, column: 59, scope: !6012)
!6023 = !DILocation(line: 141, column: 25, scope: !6012)
!6024 = !DILocation(line: 141, column: 32, scope: !6012)
!6025 = !DILocation(line: 141, column: 30, scope: !6012)
!6026 = !DILocation(line: 141, column: 2, scope: !6012)
!6027 = !DILocation(line: 142, column: 23, scope: !6012)
!6028 = !DILocation(line: 142, column: 27, scope: !6012)
!6029 = !DILocation(line: 142, column: 9, scope: !6012)
!6030 = !DILocation(line: 142, column: 2, scope: !6012)
!6031 = distinct !DISubprogram(name: "cpumask_check", scope: !223, file: !223, line: 148, type: !6032, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6034)
!6032 = !DISubroutineType(types: !6033)
!6033 = !{!7, !7}
!6034 = !{!6035}
!6035 = !DILocalVariable(name: "cpu", arg: 1, scope: !6031, file: !223, line: 148, type: !7)
!6036 = !DILocation(line: 148, column: 64, scope: !6031)
!6037 = !DILocation(line: 150, column: 20, scope: !6031)
!6038 = !DILocation(line: 150, column: 2, scope: !6031)
!6039 = !DILocation(line: 151, column: 9, scope: !6031)
!6040 = !DILocation(line: 151, column: 2, scope: !6031)
!6041 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6042, file: !6042, line: 66, type: !6043, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6048)
!6042 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6043 = !DISubroutineType(types: !6044)
!6044 = !{null, !6045, !374}
!6045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6046, size: 64)
!6046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6047)
!6047 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6048 = !{!6049, !6050}
!6049 = !DILocalVariable(name: "v", arg: 1, scope: !6041, file: !6042, line: 66, type: !6045)
!6050 = !DILocalVariable(name: "size", arg: 2, scope: !6041, file: !6042, line: 66, type: !374)
!6051 = !DILocation(line: 66, column: 73, scope: !6041)
!6052 = !DILocation(line: 66, column: 83, scope: !6041)
!6053 = !DILocation(line: 68, column: 19, scope: !6041)
!6054 = !DILocation(line: 68, column: 22, scope: !6041)
!6055 = !DILocation(line: 68, column: 2, scope: !6041)
!6056 = !DILocation(line: 69, column: 2, scope: !6041)
!6057 = !DILocation(line: 70, column: 1, scope: !6041)
!6058 = distinct !DISubprogram(name: "arch_test_bit", scope: !6059, file: !6059, line: 237, type: !6014, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6060)
!6059 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6060 = !{!6061, !6062}
!6061 = !DILocalVariable(name: "nr", arg: 1, scope: !6058, file: !6059, line: 237, type: !197)
!6062 = !DILocalVariable(name: "addr", arg: 2, scope: !6058, file: !6059, line: 237, type: !6016)
!6063 = !DILocation(line: 237, column: 29, scope: !6058)
!6064 = !DILocation(line: 237, column: 63, scope: !6058)
!6065 = !DILocation(line: 239, column: 30, scope: !6058)
!6066 = !DILocation(line: 239, column: 9, scope: !6058)
!6067 = !DILocation(line: 239, column: 54, scope: !6058)
!6068 = !DILocation(line: 239, column: 58, scope: !6058)
!6069 = !DILocation(line: 239, column: 36, scope: !6058)
!6070 = !DILocation(line: 240, column: 26, scope: !6058)
!6071 = !DILocation(line: 240, column: 30, scope: !6058)
!6072 = !DILocation(line: 240, column: 8, scope: !6058)
!6073 = !DILocation(line: 239, column: 2, scope: !6058)
!6074 = distinct !DISubprogram(name: "kasan_check_read", scope: !6075, file: !6075, line: 40, type: !6076, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6078)
!6075 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6076 = !DISubroutineType(types: !6077)
!6077 = !{!745, !6045, !7}
!6078 = !{!6079, !6080}
!6079 = !DILocalVariable(name: "p", arg: 1, scope: !6074, file: !6075, line: 40, type: !6045)
!6080 = !DILocalVariable(name: "size", arg: 2, scope: !6074, file: !6075, line: 40, type: !7)
!6081 = !DILocation(line: 40, column: 58, scope: !6074)
!6082 = !DILocation(line: 40, column: 74, scope: !6074)
!6083 = !DILocation(line: 42, column: 2, scope: !6074)
!6084 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6085, file: !6085, line: 229, type: !6086, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6088)
!6085 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6086 = !DISubroutineType(types: !6087)
!6087 = !{null, !6045, !374, !109}
!6088 = !{!6089, !6090, !6091}
!6089 = !DILocalVariable(name: "ptr", arg: 1, scope: !6084, file: !6085, line: 229, type: !6045)
!6090 = !DILocalVariable(name: "size", arg: 2, scope: !6084, file: !6085, line: 229, type: !374)
!6091 = !DILocalVariable(name: "type", arg: 3, scope: !6084, file: !6085, line: 230, type: !109)
!6092 = !DILocation(line: 229, column: 60, scope: !6084)
!6093 = !DILocation(line: 229, column: 72, scope: !6084)
!6094 = !DILocation(line: 230, column: 15, scope: !6084)
!6095 = !DILocation(line: 230, column: 23, scope: !6084)
!6096 = distinct !DISubprogram(name: "constant_test_bit", scope: !6059, file: !6059, line: 204, type: !6097, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6099)
!6097 = !DISubroutineType(types: !6098)
!6098 = !{!745, !363, !6016}
!6099 = !{!6100, !6101}
!6100 = !DILocalVariable(name: "nr", arg: 1, scope: !6096, file: !6059, line: 204, type: !363)
!6101 = !DILocalVariable(name: "addr", arg: 2, scope: !6096, file: !6059, line: 204, type: !6016)
!6102 = !DILocation(line: 204, column: 52, scope: !6096)
!6103 = !DILocation(line: 204, column: 86, scope: !6096)
!6104 = !DILocation(line: 206, column: 19, scope: !6096)
!6105 = !DILocation(line: 206, column: 22, scope: !6096)
!6106 = !DILocation(line: 206, column: 15, scope: !6096)
!6107 = !DILocation(line: 207, column: 4, scope: !6096)
!6108 = !DILocation(line: 207, column: 9, scope: !6096)
!6109 = !DILocation(line: 207, column: 12, scope: !6096)
!6110 = !DILocation(line: 206, column: 44, scope: !6096)
!6111 = !DILocation(line: 207, column: 37, scope: !6096)
!6112 = !DILocation(line: 206, column: 2, scope: !6096)
!6113 = distinct !DISubprogram(name: "variable_test_bit", scope: !6059, file: !6059, line: 224, type: !6097, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6114)
!6114 = !{!6115, !6116, !6117}
!6115 = !DILocalVariable(name: "nr", arg: 1, scope: !6113, file: !6059, line: 224, type: !363)
!6116 = !DILocalVariable(name: "addr", arg: 2, scope: !6113, file: !6059, line: 224, type: !6016)
!6117 = !DILocalVariable(name: "oldbit", scope: !6113, file: !6059, line: 226, type: !745)
!6118 = !DILocation(line: 224, column: 52, scope: !6113)
!6119 = !DILocation(line: 224, column: 86, scope: !6113)
!6120 = !DILocation(line: 226, column: 2, scope: !6113)
!6121 = !DILocation(line: 226, column: 7, scope: !6113)
!6122 = !DILocation(line: 231, column: 33, scope: !6113)
!6123 = !DILocation(line: 231, column: 46, scope: !6113)
!6124 = !DILocation(line: 228, column: 2, scope: !6113)
!6125 = !{i64 2148062576, i64 2148062650}
!6126 = !DILocation(line: 233, column: 9, scope: !6113)
!6127 = !DILocation(line: 234, column: 1, scope: !6113)
!6128 = !DILocation(line: 233, column: 2, scope: !6113)
!6129 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !223, file: !223, line: 140, type: !6130, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6132)
!6130 = !DISubroutineType(types: !6131)
!6131 = !{null, !7, !7}
!6132 = !{!6133, !6134}
!6133 = !DILocalVariable(name: "cpu", arg: 1, scope: !6129, file: !223, line: 140, type: !7)
!6134 = !DILocalVariable(name: "bits", arg: 2, scope: !6129, file: !223, line: 140, type: !7)
!6135 = !DILocation(line: 140, column: 60, scope: !6129)
!6136 = !DILocation(line: 140, column: 78, scope: !6129)
!6137 = !DILocation(line: 145, column: 1, scope: !6129)
!6138 = distinct !DISubprogram(name: "queue_work", scope: !166, file: !166, line: 559, type: !6139, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6141)
!6139 = !DISubroutineType(types: !6140)
!6140 = !{!745, !984, !932}
!6141 = !{!6142, !6143}
!6142 = !DILocalVariable(name: "wq", arg: 1, scope: !6138, file: !166, line: 559, type: !984)
!6143 = !DILocalVariable(name: "work", arg: 2, scope: !6138, file: !166, line: 560, type: !932)
!6144 = !DILocation(line: 559, column: 56, scope: !6138)
!6145 = !DILocation(line: 560, column: 30, scope: !6138)
!6146 = !DILocation(line: 562, column: 41, scope: !6138)
!6147 = !DILocation(line: 562, column: 45, scope: !6138)
!6148 = !DILocation(line: 562, column: 9, scope: !6138)
!6149 = !DILocation(line: 562, column: 2, scope: !6138)
!6150 = !DISubprogram(name: "queue_work_on", scope: !166, file: !166, line: 496, type: !6151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6151 = !DISubroutineType(types: !6152)
!6152 = !{!745, !109, !984, !932}
!6153 = distinct !DISubprogram(name: "spin_lock_irq", scope: !5347, file: !5347, line: 374, type: !6154, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6156)
!6154 = !DISubroutineType(types: !6155)
!6155 = !{null, !2408}
!6156 = !{!6157}
!6157 = !DILocalVariable(name: "lock", arg: 1, scope: !6153, file: !5347, line: 374, type: !2408)
!6158 = !DILocation(line: 374, column: 55, scope: !6153)
!6159 = !DILocation(line: 376, column: 2, scope: !6153)
!6160 = !DILocation(line: 377, column: 1, scope: !6153)
!6161 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !5347, file: !5347, line: 399, type: !6154, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6162)
!6162 = !{!6163}
!6163 = !DILocalVariable(name: "lock", arg: 1, scope: !6161, file: !5347, line: 399, type: !2408)
!6164 = !DILocation(line: 399, column: 57, scope: !6161)
!6165 = !DILocation(line: 401, column: 2, scope: !6161)
!6166 = !DILocation(line: 402, column: 1, scope: !6161)
!6167 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !6168, file: !6168, line: 29, type: !6169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6168 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6169 = !DISubroutineType(types: !6170)
!6170 = !{null, !5350}
!6171 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !6168, file: !6168, line: 41, type: !6169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6172 = distinct !DISubprogram(name: "__list_add", scope: !5219, file: !5219, line: 146, type: !6173, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6175)
!6173 = !DISubroutineType(types: !6174)
!6174 = !{null, !201, !201, !201}
!6175 = !{!6176, !6177, !6178}
!6176 = !DILocalVariable(name: "new", arg: 1, scope: !6172, file: !5219, line: 146, type: !201)
!6177 = !DILocalVariable(name: "prev", arg: 2, scope: !6172, file: !5219, line: 147, type: !201)
!6178 = !DILocalVariable(name: "next", arg: 3, scope: !6172, file: !5219, line: 148, type: !201)
!6179 = !DILocation(line: 146, column: 49, scope: !6172)
!6180 = !DILocation(line: 147, column: 28, scope: !6172)
!6181 = !DILocation(line: 148, column: 28, scope: !6172)
!6182 = !DILocation(line: 150, column: 24, scope: !6183)
!6183 = distinct !DILexicalBlock(scope: !6172, file: !5219, line: 150, column: 6)
!6184 = !DILocation(line: 150, column: 29, scope: !6183)
!6185 = !DILocation(line: 150, column: 35, scope: !6183)
!6186 = !DILocation(line: 150, column: 7, scope: !6183)
!6187 = !DILocation(line: 150, column: 6, scope: !6172)
!6188 = !DILocation(line: 151, column: 3, scope: !6183)
!6189 = !DILocation(line: 153, column: 15, scope: !6172)
!6190 = !DILocation(line: 153, column: 2, scope: !6172)
!6191 = !DILocation(line: 153, column: 8, scope: !6172)
!6192 = !DILocation(line: 153, column: 13, scope: !6172)
!6193 = !DILocation(line: 154, column: 14, scope: !6172)
!6194 = !DILocation(line: 154, column: 2, scope: !6172)
!6195 = !DILocation(line: 154, column: 7, scope: !6172)
!6196 = !DILocation(line: 154, column: 12, scope: !6172)
!6197 = !DILocation(line: 155, column: 14, scope: !6172)
!6198 = !DILocation(line: 155, column: 2, scope: !6172)
!6199 = !DILocation(line: 155, column: 7, scope: !6172)
!6200 = !DILocation(line: 155, column: 12, scope: !6172)
!6201 = !DILocation(line: 156, column: 2, scope: !6172)
!6202 = !DILocation(line: 156, column: 2, scope: !6203)
!6203 = distinct !DILexicalBlock(scope: !6172, file: !5219, line: 156, column: 2)
!6204 = !DILocation(line: 156, column: 2, scope: !6205)
!6205 = distinct !DILexicalBlock(scope: !6203, file: !5219, line: 156, column: 2)
!6206 = !DILocation(line: 156, column: 2, scope: !6207)
!6207 = distinct !DILexicalBlock(scope: !6203, file: !5219, line: 156, column: 2)
!6208 = !DILocation(line: 157, column: 1, scope: !6172)
!6209 = distinct !DISubprogram(name: "__list_add_valid", scope: !5219, file: !5219, line: 128, type: !6210, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6212)
!6210 = !DISubroutineType(types: !6211)
!6211 = !{!745, !201, !201, !201}
!6212 = !{!6213, !6214, !6215}
!6213 = !DILocalVariable(name: "new", arg: 1, scope: !6209, file: !5219, line: 128, type: !201)
!6214 = !DILocalVariable(name: "prev", arg: 2, scope: !6209, file: !5219, line: 129, type: !201)
!6215 = !DILocalVariable(name: "next", arg: 3, scope: !6209, file: !5219, line: 130, type: !201)
!6216 = !DILocation(line: 128, column: 55, scope: !6209)
!6217 = !DILocation(line: 129, column: 23, scope: !6209)
!6218 = !DILocation(line: 130, column: 23, scope: !6209)
!6219 = !DILocation(line: 132, column: 2, scope: !6209)
!6220 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6042, file: !6042, line: 80, type: !6043, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6221)
!6221 = !{!6222, !6223}
!6222 = !DILocalVariable(name: "v", arg: 1, scope: !6220, file: !6042, line: 80, type: !6045)
!6223 = !DILocalVariable(name: "size", arg: 2, scope: !6220, file: !6042, line: 80, type: !374)
!6224 = !DILocation(line: 80, column: 74, scope: !6220)
!6225 = !DILocation(line: 80, column: 84, scope: !6220)
!6226 = !DILocation(line: 82, column: 20, scope: !6220)
!6227 = !DILocation(line: 82, column: 23, scope: !6220)
!6228 = !DILocation(line: 82, column: 2, scope: !6220)
!6229 = !DILocation(line: 83, column: 2, scope: !6220)
!6230 = !DILocation(line: 84, column: 1, scope: !6220)
!6231 = distinct !DISubprogram(name: "arch_set_bit", scope: !6059, file: !6059, line: 52, type: !5786, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6232)
!6232 = !{!6233, !6234}
!6233 = !DILocalVariable(name: "nr", arg: 1, scope: !6231, file: !6059, line: 52, type: !363)
!6234 = !DILocalVariable(name: "addr", arg: 2, scope: !6231, file: !6059, line: 52, type: !5788)
!6235 = !DILocation(line: 52, column: 19, scope: !6231)
!6236 = !DILocation(line: 52, column: 47, scope: !6231)
!6237 = !DILocation(line: 54, column: 27, scope: !6238)
!6238 = distinct !DILexicalBlock(scope: !6231, file: !6059, line: 54, column: 6)
!6239 = !DILocation(line: 54, column: 6, scope: !6238)
!6240 = !DILocation(line: 54, column: 6, scope: !6231)
!6241 = !DILocation(line: 56, column: 6, scope: !6242)
!6242 = distinct !DILexicalBlock(scope: !6238, file: !6059, line: 54, column: 32)
!6243 = !DILocation(line: 57, column: 12, scope: !6242)
!6244 = !DILocation(line: 55, column: 3, scope: !6242)
!6245 = !{i64 2148048964, i64 2148049003, i64 2148049024, i64 2148049061, i64 2148049084, i64 2148048954}
!6246 = !DILocation(line: 59, column: 2, scope: !6242)
!6247 = !DILocation(line: 61, column: 8, scope: !6248)
!6248 = distinct !DILexicalBlock(scope: !6238, file: !6059, line: 59, column: 9)
!6249 = !DILocation(line: 61, column: 32, scope: !6248)
!6250 = !DILocation(line: 60, column: 3, scope: !6248)
!6251 = !{i64 2148049249, i64 2148049288, i64 2148049309, i64 2148049346, i64 2148049369, i64 2148049239}
!6252 = !DILocation(line: 63, column: 1, scope: !6231)
!6253 = distinct !DISubprogram(name: "kasan_check_write", scope: !6075, file: !6075, line: 44, type: !6076, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6254)
!6254 = !{!6255, !6256}
!6255 = !DILocalVariable(name: "p", arg: 1, scope: !6253, file: !6075, line: 44, type: !6045)
!6256 = !DILocalVariable(name: "size", arg: 2, scope: !6253, file: !6075, line: 44, type: !7)
!6257 = !DILocation(line: 44, column: 59, scope: !6253)
!6258 = !DILocation(line: 44, column: 75, scope: !6253)
!6259 = !DILocation(line: 46, column: 2, scope: !6253)
!6260 = distinct !DISubprogram(name: "__list_del_entry", scope: !5219, file: !5219, line: 213, type: !5220, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6261)
!6261 = !{!6262}
!6262 = !DILocalVariable(name: "entry", arg: 1, scope: !6260, file: !5219, line: 213, type: !201)
!6263 = !DILocation(line: 213, column: 55, scope: !6260)
!6264 = !DILocation(line: 215, column: 30, scope: !6265)
!6265 = distinct !DILexicalBlock(scope: !6260, file: !5219, line: 215, column: 6)
!6266 = !DILocation(line: 215, column: 7, scope: !6265)
!6267 = !DILocation(line: 215, column: 6, scope: !6260)
!6268 = !DILocation(line: 216, column: 3, scope: !6265)
!6269 = !DILocation(line: 218, column: 13, scope: !6260)
!6270 = !DILocation(line: 218, column: 20, scope: !6260)
!6271 = !DILocation(line: 218, column: 26, scope: !6260)
!6272 = !DILocation(line: 218, column: 33, scope: !6260)
!6273 = !DILocation(line: 218, column: 2, scope: !6260)
!6274 = !DILocation(line: 219, column: 1, scope: !6260)
!6275 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5219, file: !5219, line: 134, type: !6276, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6278)
!6276 = !DISubroutineType(types: !6277)
!6277 = !{!745, !201}
!6278 = !{!6279}
!6279 = !DILocalVariable(name: "entry", arg: 1, scope: !6275, file: !5219, line: 134, type: !201)
!6280 = !DILocation(line: 134, column: 61, scope: !6275)
!6281 = !DILocation(line: 136, column: 2, scope: !6275)
!6282 = distinct !DISubprogram(name: "__list_del", scope: !5219, file: !5219, line: 193, type: !5771, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6283)
!6283 = !{!6284, !6285}
!6284 = !DILocalVariable(name: "prev", arg: 1, scope: !6282, file: !5219, line: 193, type: !201)
!6285 = !DILocalVariable(name: "next", arg: 2, scope: !6282, file: !5219, line: 193, type: !201)
!6286 = !DILocation(line: 193, column: 50, scope: !6282)
!6287 = !DILocation(line: 193, column: 75, scope: !6282)
!6288 = !DILocation(line: 195, column: 15, scope: !6282)
!6289 = !DILocation(line: 195, column: 2, scope: !6282)
!6290 = !DILocation(line: 195, column: 8, scope: !6282)
!6291 = !DILocation(line: 195, column: 13, scope: !6282)
!6292 = !DILocation(line: 196, column: 2, scope: !6282)
!6293 = !DILocation(line: 196, column: 2, scope: !6294)
!6294 = distinct !DILexicalBlock(scope: !6282, file: !5219, line: 196, column: 2)
!6295 = !DILocation(line: 196, column: 2, scope: !6296)
!6296 = distinct !DILexicalBlock(scope: !6294, file: !5219, line: 196, column: 2)
!6297 = !DILocation(line: 196, column: 2, scope: !6298)
!6298 = distinct !DILexicalBlock(scope: !6294, file: !5219, line: 196, column: 2)
!6299 = !DILocation(line: 197, column: 1, scope: !6282)
!6300 = distinct !DISubprogram(name: "arch_clear_bit", scope: !6059, file: !6059, line: 72, type: !5786, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6301)
!6301 = !{!6302, !6303}
!6302 = !DILocalVariable(name: "nr", arg: 1, scope: !6300, file: !6059, line: 72, type: !363)
!6303 = !DILocalVariable(name: "addr", arg: 2, scope: !6300, file: !6059, line: 72, type: !5788)
!6304 = !DILocation(line: 72, column: 21, scope: !6300)
!6305 = !DILocation(line: 72, column: 49, scope: !6300)
!6306 = !DILocation(line: 74, column: 27, scope: !6307)
!6307 = distinct !DILexicalBlock(scope: !6300, file: !6059, line: 74, column: 6)
!6308 = !DILocation(line: 74, column: 6, scope: !6307)
!6309 = !DILocation(line: 74, column: 6, scope: !6300)
!6310 = !DILocation(line: 76, column: 6, scope: !6311)
!6311 = distinct !DILexicalBlock(scope: !6307, file: !6059, line: 74, column: 32)
!6312 = !DILocation(line: 77, column: 13, scope: !6311)
!6313 = !DILocation(line: 77, column: 12, scope: !6311)
!6314 = !DILocation(line: 75, column: 3, scope: !6311)
!6315 = !{i64 2148050252, i64 2148050291, i64 2148050312, i64 2148050349, i64 2148050372, i64 2148050242}
!6316 = !DILocation(line: 78, column: 2, scope: !6311)
!6317 = !DILocation(line: 80, column: 8, scope: !6318)
!6318 = distinct !DILexicalBlock(scope: !6307, file: !6059, line: 78, column: 9)
!6319 = !DILocation(line: 80, column: 32, scope: !6318)
!6320 = !DILocation(line: 79, column: 3, scope: !6318)
!6321 = !{i64 2148050537, i64 2148050576, i64 2148050597, i64 2148050634, i64 2148050657, i64 2148050527}
!6322 = !DILocation(line: 82, column: 1, scope: !6300)
