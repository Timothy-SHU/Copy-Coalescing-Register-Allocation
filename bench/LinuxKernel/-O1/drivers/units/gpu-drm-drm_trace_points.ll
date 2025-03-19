; ModuleID = 'drivers/gpu/drm/drm_trace_points.c'
source_filename = "drivers/gpu/drm/drm_trace_points.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "\09.section \22__tracepoints_ptrs\22, \22a\22\09\09"
module asm "\09.balign 4\09\09\09\09\09"
module asm "\09.long \09__tracepoint_drm_vblank_event - .\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm ".pushsection .static_call.text, \22ax\22\09\09"
module asm ".align 4\09\09\09\09\09\09"
module asm ".globl __SCT__tp_func_drm_vblank_event\09\09"
module asm "__SCT__tp_func_drm_vblank_event:\09\09\09"
module asm "986: "
module asm "\09.pushsection .discard.noendbr"
module asm "\09.long 986b"
module asm "\09.popsection"
module asm "\09.byte 0xe9; .long __traceiter_drm_vblank_event - (. + 4)\09\09\09\09\09\09"
module asm ".byte 0x0f, 0xb9, 0xcc\09\09\09\09"
module asm ".type __SCT__tp_func_drm_vblank_event, @function\09"
module asm ".size __SCT__tp_func_drm_vblank_event, . - __SCT__tp_func_drm_vblank_event "
module asm ".popsection\09\09\09\09\09"
module asm "\09.section \22__tracepoints_ptrs\22, \22a\22\09\09"
module asm "\09.balign 4\09\09\09\09\09"
module asm "\09.long \09__tracepoint_drm_vblank_event_queued - .\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm ".pushsection .static_call.text, \22ax\22\09\09"
module asm ".align 4\09\09\09\09\09\09"
module asm ".globl __SCT__tp_func_drm_vblank_event_queued\09\09"
module asm "__SCT__tp_func_drm_vblank_event_queued:\09\09\09"
module asm "986: "
module asm "\09.pushsection .discard.noendbr"
module asm "\09.long 986b"
module asm "\09.popsection"
module asm "\09.byte 0xe9; .long __traceiter_drm_vblank_event_queued - (. + 4)\09\09\09\09\09\09"
module asm ".byte 0x0f, 0xb9, 0xcc\09\09\09\09"
module asm ".type __SCT__tp_func_drm_vblank_event_queued, @function\09"
module asm ".size __SCT__tp_func_drm_vblank_event_queued, . - __SCT__tp_func_drm_vblank_event_queued "
module asm ".popsection\09\09\09\09\09"
module asm "\09.section \22__tracepoints_ptrs\22, \22a\22\09\09"
module asm "\09.balign 4\09\09\09\09\09"
module asm "\09.long \09__tracepoint_drm_vblank_event_delivered - .\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm ".pushsection .static_call.text, \22ax\22\09\09"
module asm ".align 4\09\09\09\09\09\09"
module asm ".globl __SCT__tp_func_drm_vblank_event_delivered\09\09"
module asm "__SCT__tp_func_drm_vblank_event_delivered:\09\09\09"
module asm "986: "
module asm "\09.pushsection .discard.noendbr"
module asm "\09.long 986b"
module asm "\09.popsection"
module asm "\09.byte 0xe9; .long __traceiter_drm_vblank_event_delivered - (. + 4)\09\09\09\09\09\09"
module asm ".byte 0x0f, 0xb9, 0xcc\09\09\09\09"
module asm ".type __SCT__tp_func_drm_vblank_event_delivered, @function\09"
module asm ".size __SCT__tp_func_drm_vblank_event_delivered, . - __SCT__tp_func_drm_vblank_event_delivered "
module asm ".popsection\09\09\09\09\09"

%struct.static_call_key = type { ptr, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%struct.atomic_t = type { i32 }
%union.anon = type { i64 }
%struct.trace_event_fields = type { ptr, %union.anon.21 }
%union.anon.21 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i8, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.22, %struct.trace_event, ptr, ptr, %union.anon.23, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.22 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.23 = type { ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_data_offsets_drm_vblank_event = type {}
%struct.trace_event_raw_drm_vblank_event = type { %struct.trace_entry, i32, i32, i64, i8, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_data_offsets_drm_vblank_event_queued = type {}
%struct.trace_event_raw_drm_vblank_event_queued = type { %struct.trace_entry, ptr, i32, i32, [0 x i8] }
%struct.trace_event_data_offsets_drm_vblank_event_delivered = type {}
%struct.trace_event_raw_drm_vblank_event_delivered = type { %struct.trace_entry, ptr, i32, i32, [0 x i8] }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i64, ptr, i32, ptr, i32, i64, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i64, i32, i32, i32, i64, i64, i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i64] }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i64, i32 }
%struct.seq_buf = type { ptr, i64, i64 }
%struct.hlist_head = type { ptr }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.24, i64, i64, %union.anon.25 }
%union.anon.24 = type { i64 }
%union.anon.25 = type { i64 }

@__tpstrtab_drm_vblank_event = internal constant [17 x i8] c"drm_vblank_event\00", section "__tracepoints_strings", align 16, !dbg !0
@__SCK__tp_func_drm_vblank_event = hidden global %struct.static_call_key { ptr @__traceiter_drm_vblank_event, %union.anon.0 { i64 1 } }, align 8, !dbg !6014
@__tracepoint_drm_vblank_event = hidden global %struct.tracepoint { ptr @__tpstrtab_drm_vblank_event, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_drm_vblank_event, ptr @__SCT__tp_func_drm_vblank_event, ptr @__traceiter_drm_vblank_event, ptr @__probestub_drm_vblank_event, ptr null, ptr null, ptr null }, section "__tracepoints", align 8, !dbg !6012
@__tpstrtab_drm_vblank_event_queued = internal constant [24 x i8] c"drm_vblank_event_queued\00", section "__tracepoints_strings", align 16, !dbg !6042
@__SCK__tp_func_drm_vblank_event_queued = hidden global %struct.static_call_key { ptr @__traceiter_drm_vblank_event_queued, %union.anon.0 { i64 1 } }, align 8, !dbg !6018
@__tracepoint_drm_vblank_event_queued = hidden global %struct.tracepoint { ptr @__tpstrtab_drm_vblank_event_queued, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_drm_vblank_event_queued, ptr @__SCT__tp_func_drm_vblank_event_queued, ptr @__traceiter_drm_vblank_event_queued, ptr @__probestub_drm_vblank_event_queued, ptr null, ptr null, ptr null }, section "__tracepoints", align 8, !dbg !6016
@__tpstrtab_drm_vblank_event_delivered = internal constant [27 x i8] c"drm_vblank_event_delivered\00", section "__tracepoints_strings", align 16, !dbg !6047
@__SCK__tp_func_drm_vblank_event_delivered = hidden global %struct.static_call_key { ptr @__traceiter_drm_vblank_event_delivered, %union.anon.0 { i64 1 } }, align 8, !dbg !6022
@__tracepoint_drm_vblank_event_delivered = hidden global %struct.tracepoint { ptr @__tpstrtab_drm_vblank_event_delivered, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_drm_vblank_event_delivered, ptr @__SCT__tp_func_drm_vblank_event_delivered, ptr @__traceiter_drm_vblank_event_delivered, ptr @__probestub_drm_vblank_event_delivered, ptr null, ptr null, ptr null }, section "__tracepoints", align 8, !dbg !6020
@str__drm__trace_system_name = internal constant [4 x i8] c"drm\00", align 1, !dbg !6052
@trace_event_fields_drm_vblank_event = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.21 { %struct.anon.20 { ptr @.str.1, i32 4, i32 4, i8 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.21 { %struct.anon.20 { ptr @.str.3, i32 4, i32 4, i8 0, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.21 { %struct.anon.20 { ptr @.str.5, i32 8, i32 8, i8 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.21 { %struct.anon.20 { ptr @.str.7, i32 1, i32 1, i8 0, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 16, !dbg !6078
@event_class_drm_vblank_event = internal global %struct.trace_event_class { ptr @str__drm__trace_system_name, ptr @trace_event_raw_event_drm_vblank_event, ptr @perf_trace_drm_vblank_event, ptr @trace_event_reg, ptr @trace_event_fields_drm_vblank_event, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_drm_vblank_event, i64 48), ptr getelementptr (i8, ptr @event_class_drm_vblank_event, i64 48) }, ptr @trace_event_raw_init }, section ".ref.data", align 8, !dbg !6024
@trace_event_type_funcs_drm_vblank_event = internal global %struct.trace_event_functions { ptr @trace_raw_output_drm_vblank_event, ptr null, ptr null, ptr null }, align 8, !dbg !6081
@print_fmt_drm_vblank_event = internal global [110 x i8] c"\22crtc=%d, seq=%u, time=%lld, high-prec=%s\22, REC->crtc, REC->seq, REC->time, REC->high_prec ? \22true\22 : \22false\22\00", align 16, !dbg !6092
@event_drm_vblank_event = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_drm_vblank_event, %union.anon.22 { ptr @__tracepoint_drm_vblank_event }, %struct.trace_event { %struct.hlist_node zeroinitializer, i32 0, ptr @trace_event_type_funcs_drm_vblank_event }, ptr @print_fmt_drm_vblank_event, ptr null, %union.anon.23 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4, !dbg !6026
@__event_drm_vblank_event = internal global ptr @event_drm_vblank_event, section "_ftrace_events", align 8, !dbg !6028
@trace_event_fields_drm_vblank_event_queued = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.11, %union.anon.21 { %struct.anon.20 { ptr @.str.12, i32 8, i32 8, i8 0, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.21 { %struct.anon.20 { ptr @.str.1, i32 4, i32 4, i8 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.21 { %struct.anon.20 { ptr @.str.3, i32 4, i32 4, i8 0, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 16, !dbg !6104
@event_class_drm_vblank_event_queued = internal global %struct.trace_event_class { ptr @str__drm__trace_system_name, ptr @trace_event_raw_event_drm_vblank_event_queued, ptr @perf_trace_drm_vblank_event_queued, ptr @trace_event_reg, ptr @trace_event_fields_drm_vblank_event_queued, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_drm_vblank_event_queued, i64 48), ptr getelementptr (i8, ptr @event_class_drm_vblank_event_queued, i64 48) }, ptr @trace_event_raw_init }, section ".ref.data", align 8, !dbg !6030
@trace_event_type_funcs_drm_vblank_event_queued = internal global %struct.trace_event_functions { ptr @trace_raw_output_drm_vblank_event_queued, ptr null, ptr null, ptr null }, align 8, !dbg !6107
@print_fmt_drm_vblank_event_queued = internal global [59 x i8] c"\22file=%p, crtc=%d, seq=%u\22, REC->file, REC->crtc, REC->seq\00", align 16, !dbg !6114
@event_drm_vblank_event_queued = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_drm_vblank_event_queued, %union.anon.22 { ptr @__tracepoint_drm_vblank_event_queued }, %struct.trace_event { %struct.hlist_node zeroinitializer, i32 0, ptr @trace_event_type_funcs_drm_vblank_event_queued }, ptr @print_fmt_drm_vblank_event_queued, ptr null, %union.anon.23 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4, !dbg !6032
@__event_drm_vblank_event_queued = internal global ptr @event_drm_vblank_event_queued, section "_ftrace_events", align 8, !dbg !6034
@trace_event_fields_drm_vblank_event_delivered = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.11, %union.anon.21 { %struct.anon.20 { ptr @.str.12, i32 8, i32 8, i8 0, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.21 { %struct.anon.20 { ptr @.str.1, i32 4, i32 4, i8 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.21 { %struct.anon.20 { ptr @.str.3, i32 4, i32 4, i8 0, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 16, !dbg !6119
@event_class_drm_vblank_event_delivered = internal global %struct.trace_event_class { ptr @str__drm__trace_system_name, ptr @trace_event_raw_event_drm_vblank_event_delivered, ptr @perf_trace_drm_vblank_event_delivered, ptr @trace_event_reg, ptr @trace_event_fields_drm_vblank_event_delivered, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_drm_vblank_event_delivered, i64 48), ptr getelementptr (i8, ptr @event_class_drm_vblank_event_delivered, i64 48) }, ptr @trace_event_raw_init }, section ".ref.data", align 8, !dbg !6036
@trace_event_type_funcs_drm_vblank_event_delivered = internal global %struct.trace_event_functions { ptr @trace_raw_output_drm_vblank_event_delivered, ptr null, ptr null, ptr null }, align 8, !dbg !6121
@print_fmt_drm_vblank_event_delivered = internal global [59 x i8] c"\22file=%p, crtc=%d, seq=%u\22, REC->file, REC->crtc, REC->seq\00", align 16, !dbg !6123
@event_drm_vblank_event_delivered = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_drm_vblank_event_delivered, %union.anon.22 { ptr @__tracepoint_drm_vblank_event_delivered }, %struct.trace_event { %struct.hlist_node zeroinitializer, i32 0, ptr @trace_event_type_funcs_drm_vblank_event_delivered }, ptr @print_fmt_drm_vblank_event_delivered, ptr null, %union.anon.23 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4, !dbg !6038
@__event_drm_vblank_event_delivered = internal global ptr @event_drm_vblank_event_delivered, section "_ftrace_events", align 8, !dbg !6040
@.str = private unnamed_addr constant [4 x i8] c"int\00", align 1, !dbg !6056
@.str.1 = private unnamed_addr constant [5 x i8] c"crtc\00", align 1, !dbg !6059
@.str.2 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1, !dbg !6062
@.str.3 = private unnamed_addr constant [4 x i8] c"seq\00", align 1, !dbg !6067
@.str.4 = private unnamed_addr constant [8 x i8] c"ktime_t\00", align 1, !dbg !6069
@.str.5 = private unnamed_addr constant [5 x i8] c"time\00", align 1, !dbg !6071
@.str.6 = private unnamed_addr constant [5 x i8] c"bool\00", align 1, !dbg !6073
@.str.7 = private unnamed_addr constant [10 x i8] c"high_prec\00", align 1, !dbg !6075
@.str.8 = private unnamed_addr constant [42 x i8] c"crtc=%d, seq=%u, time=%lld, high-prec=%s\0A\00", align 1, !dbg !6083
@.str.9 = private unnamed_addr constant [5 x i8] c"true\00", align 1, !dbg !6088
@.str.10 = private unnamed_addr constant [6 x i8] c"false\00", align 1, !dbg !6090
@.str.11 = private unnamed_addr constant [18 x i8] c"struct drm_file *\00", align 1, !dbg !6097
@.str.12 = private unnamed_addr constant [5 x i8] c"file\00", align 1, !dbg !6102
@.str.13 = private unnamed_addr constant [26 x i8] c"file=%p, crtc=%d, seq=%u\0A\00", align 1, !dbg !6109
@this_cpu_off = external dso_local global i64, section ".data..percpu..read_mostly", align 8
@llvm.compiler.used = appending global [12 x ptr] [ptr @__tracepoint_drm_vblank_event, ptr @__tracepoint_drm_vblank_event_queued, ptr @__tracepoint_drm_vblank_event_delivered, ptr @event_class_drm_vblank_event, ptr @event_drm_vblank_event, ptr @__event_drm_vblank_event, ptr @event_class_drm_vblank_event_queued, ptr @event_drm_vblank_event_queued, ptr @__event_drm_vblank_event_queued, ptr @event_class_drm_vblank_event_delivered, ptr @event_drm_vblank_event_delivered, ptr @__event_drm_vblank_event_delivered], section "llvm.metadata"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_drm_vblank_event(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i1 noundef zeroext) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__traceiter_drm_vblank_event(ptr noundef %__data, i32 noundef %crtc, i32 noundef %seq, i64 noundef %time, i1 noundef zeroext %high_prec) #1 align 16 !dbg !6137 {
entry:
  %__data.addr = alloca ptr, align 8
  %crtc.addr = alloca i32, align 4
  %seq.addr = alloca i32, align 4
  %time.addr = alloca i64, align 8
  %high_prec.addr = alloca i8, align 1
  %it_func_ptr = alloca ptr, align 8
  %it_func = alloca ptr, align 8
  %__UNIQUE_ID_rcu311 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6141, metadata !DIExpression()), !dbg !6150
  store i32 %crtc, ptr %crtc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %crtc.addr, metadata !6142, metadata !DIExpression()), !dbg !6150
  store i32 %seq, ptr %seq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !6143, metadata !DIExpression()), !dbg !6150
  store i64 %time, ptr %time.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %time.addr, metadata !6144, metadata !DIExpression()), !dbg !6150
  %frombool = zext i1 %high_prec to i8
  store i8 %frombool, ptr %high_prec.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %high_prec.addr, metadata !6145, metadata !DIExpression()), !dbg !6150
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #8, !dbg !6150
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !6146, metadata !DIExpression()), !dbg !6150
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func) #8, !dbg !6150
  call void @llvm.dbg.declare(metadata ptr %it_func, metadata !6147, metadata !DIExpression()), !dbg !6150
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu311) #8, !dbg !6151
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu311, metadata !6148, metadata !DIExpression()), !dbg !6151
  br label %do.body, !dbg !6152

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6154

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6154

do.end:                                           ; preds = %do.cond
  %0 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drm_vblank_event, i32 0, i32 8), align 8, !dbg !6152
  store ptr %0, ptr %tmp, align 8, !dbg !6154
  %1 = load ptr, ptr %tmp, align 8, !dbg !6152
  store ptr %1, ptr %__UNIQUE_ID_rcu311, align 8, !dbg !6151
  %2 = load ptr, ptr %__UNIQUE_ID_rcu311, align 8, !dbg !6151
  store ptr %2, ptr %tmp1, align 8, !dbg !6151
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu311) #8, !dbg !6150
  %3 = load ptr, ptr %tmp1, align 8, !dbg !6151
  store ptr %3, ptr %it_func_ptr, align 8, !dbg !6150
  %4 = load ptr, ptr %it_func_ptr, align 8, !dbg !6156
  %tobool = icmp ne ptr %4, null, !dbg !6156
  br i1 %tobool, label %if.then, label %if.end, !dbg !6150

if.then:                                          ; preds = %do.end
  br label %do.body2, !dbg !6158

do.body2:                                         ; preds = %do.cond8, %if.then
  br label %do.body3, !dbg !6160

do.body3:                                         ; preds = %do.body2
  br label %do.cond4, !dbg !6163

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !6163

do.end5:                                          ; preds = %do.cond4
  %5 = load ptr, ptr %it_func_ptr, align 8, !dbg !6160
  %func = getelementptr inbounds %struct.tracepoint_func, ptr %5, i32 0, i32 0, !dbg !6160
  %6 = load volatile ptr, ptr %func, align 8, !dbg !6160
  store ptr %6, ptr %tmp6, align 8, !dbg !6163
  %7 = load ptr, ptr %tmp6, align 8, !dbg !6160
  store ptr %7, ptr %it_func, align 8, !dbg !6165
  %8 = load ptr, ptr %it_func_ptr, align 8, !dbg !6165
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1, !dbg !6165
  %9 = load ptr, ptr %data, align 8, !dbg !6165
  store ptr %9, ptr %__data.addr, align 8, !dbg !6165
  %10 = load ptr, ptr %it_func, align 8, !dbg !6165
  %11 = load ptr, ptr %__data.addr, align 8, !dbg !6165
  %12 = load i32, ptr %crtc.addr, align 4, !dbg !6165
  %13 = load i32, ptr %seq.addr, align 4, !dbg !6165
  %14 = load i64, ptr %time.addr, align 8, !dbg !6165
  %15 = load i8, ptr %high_prec.addr, align 1, !dbg !6165, !range !6166, !noundef !717
  %tobool7 = trunc i8 %15 to i1, !dbg !6165
  call void %10(ptr noundef %11, i32 noundef %12, i32 noundef %13, i64 noundef %14, i1 noundef zeroext %tobool7) #9, !dbg !6165
  br label %do.cond8, !dbg !6165

do.cond8:                                         ; preds = %do.end5
  %16 = load ptr, ptr %it_func_ptr, align 8, !dbg !6158
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %16, i32 1, !dbg !6158
  store ptr %incdec.ptr, ptr %it_func_ptr, align 8, !dbg !6158
  %func9 = getelementptr inbounds %struct.tracepoint_func, ptr %incdec.ptr, i32 0, i32 0, !dbg !6158
  %17 = load ptr, ptr %func9, align 8, !dbg !6158
  %tobool10 = icmp ne ptr %17, null, !dbg !6165
  br i1 %tobool10, label %do.body2, label %do.end11, !dbg !6165, !llvm.loop !6167

do.end11:                                         ; preds = %do.cond8
  br label %if.end, !dbg !6158

if.end:                                           ; preds = %do.end11, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func) #8, !dbg !6150
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #8, !dbg !6150
  ret i32 0, !dbg !6150
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__probestub_drm_vblank_event(ptr noundef %__data, i32 noundef %crtc, i32 noundef %seq, i64 noundef %time, i1 noundef zeroext %high_prec) #1 align 16 !dbg !6170 {
entry:
  %__data.addr = alloca ptr, align 8
  %crtc.addr = alloca i32, align 4
  %seq.addr = alloca i32, align 4
  %time.addr = alloca i64, align 8
  %high_prec.addr = alloca i8, align 1
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6172, metadata !DIExpression()), !dbg !6177
  store i32 %crtc, ptr %crtc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %crtc.addr, metadata !6173, metadata !DIExpression()), !dbg !6177
  store i32 %seq, ptr %seq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !6174, metadata !DIExpression()), !dbg !6177
  store i64 %time, ptr %time.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %time.addr, metadata !6175, metadata !DIExpression()), !dbg !6177
  %frombool = zext i1 %high_prec to i8
  store i8 %frombool, ptr %high_prec.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %high_prec.addr, metadata !6176, metadata !DIExpression()), !dbg !6177
  ret void, !dbg !6177
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_drm_vblank_event_queued(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__traceiter_drm_vblank_event_queued(ptr noundef %__data, ptr noundef %file, i32 noundef %crtc, i32 noundef %seq) #1 align 16 !dbg !6178 {
entry:
  %__data.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %crtc.addr = alloca i32, align 4
  %seq.addr = alloca i32, align 4
  %it_func_ptr = alloca ptr, align 8
  %it_func = alloca ptr, align 8
  %__UNIQUE_ID_rcu314 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6182, metadata !DIExpression()), !dbg !6190
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6183, metadata !DIExpression()), !dbg !6190
  store i32 %crtc, ptr %crtc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %crtc.addr, metadata !6184, metadata !DIExpression()), !dbg !6190
  store i32 %seq, ptr %seq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !6185, metadata !DIExpression()), !dbg !6190
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #8, !dbg !6190
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !6186, metadata !DIExpression()), !dbg !6190
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func) #8, !dbg !6190
  call void @llvm.dbg.declare(metadata ptr %it_func, metadata !6187, metadata !DIExpression()), !dbg !6190
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu314) #8, !dbg !6191
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu314, metadata !6188, metadata !DIExpression()), !dbg !6191
  br label %do.body, !dbg !6192

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6194

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6194

do.end:                                           ; preds = %do.cond
  %0 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drm_vblank_event_queued, i32 0, i32 8), align 8, !dbg !6192
  store ptr %0, ptr %tmp, align 8, !dbg !6194
  %1 = load ptr, ptr %tmp, align 8, !dbg !6192
  store ptr %1, ptr %__UNIQUE_ID_rcu314, align 8, !dbg !6191
  %2 = load ptr, ptr %__UNIQUE_ID_rcu314, align 8, !dbg !6191
  store ptr %2, ptr %tmp1, align 8, !dbg !6191
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu314) #8, !dbg !6190
  %3 = load ptr, ptr %tmp1, align 8, !dbg !6191
  store ptr %3, ptr %it_func_ptr, align 8, !dbg !6190
  %4 = load ptr, ptr %it_func_ptr, align 8, !dbg !6196
  %tobool = icmp ne ptr %4, null, !dbg !6196
  br i1 %tobool, label %if.then, label %if.end, !dbg !6190

if.then:                                          ; preds = %do.end
  br label %do.body2, !dbg !6198

do.body2:                                         ; preds = %do.cond7, %if.then
  br label %do.body3, !dbg !6200

do.body3:                                         ; preds = %do.body2
  br label %do.cond4, !dbg !6203

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !6203

do.end5:                                          ; preds = %do.cond4
  %5 = load ptr, ptr %it_func_ptr, align 8, !dbg !6200
  %func = getelementptr inbounds %struct.tracepoint_func, ptr %5, i32 0, i32 0, !dbg !6200
  %6 = load volatile ptr, ptr %func, align 8, !dbg !6200
  store ptr %6, ptr %tmp6, align 8, !dbg !6203
  %7 = load ptr, ptr %tmp6, align 8, !dbg !6200
  store ptr %7, ptr %it_func, align 8, !dbg !6205
  %8 = load ptr, ptr %it_func_ptr, align 8, !dbg !6205
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1, !dbg !6205
  %9 = load ptr, ptr %data, align 8, !dbg !6205
  store ptr %9, ptr %__data.addr, align 8, !dbg !6205
  %10 = load ptr, ptr %it_func, align 8, !dbg !6205
  %11 = load ptr, ptr %__data.addr, align 8, !dbg !6205
  %12 = load ptr, ptr %file.addr, align 8, !dbg !6205
  %13 = load i32, ptr %crtc.addr, align 4, !dbg !6205
  %14 = load i32, ptr %seq.addr, align 4, !dbg !6205
  call void %10(ptr noundef %11, ptr noundef %12, i32 noundef %13, i32 noundef %14) #9, !dbg !6205
  br label %do.cond7, !dbg !6205

do.cond7:                                         ; preds = %do.end5
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !6198
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %15, i32 1, !dbg !6198
  store ptr %incdec.ptr, ptr %it_func_ptr, align 8, !dbg !6198
  %func8 = getelementptr inbounds %struct.tracepoint_func, ptr %incdec.ptr, i32 0, i32 0, !dbg !6198
  %16 = load ptr, ptr %func8, align 8, !dbg !6198
  %tobool9 = icmp ne ptr %16, null, !dbg !6205
  br i1 %tobool9, label %do.body2, label %do.end10, !dbg !6205, !llvm.loop !6206

do.end10:                                         ; preds = %do.cond7
  br label %if.end, !dbg !6198

if.end:                                           ; preds = %do.end10, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func) #8, !dbg !6190
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #8, !dbg !6190
  ret i32 0, !dbg !6190
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__probestub_drm_vblank_event_queued(ptr noundef %__data, ptr noundef %file, i32 noundef %crtc, i32 noundef %seq) #1 align 16 !dbg !6207 {
entry:
  %__data.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %crtc.addr = alloca i32, align 4
  %seq.addr = alloca i32, align 4
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6209, metadata !DIExpression()), !dbg !6213
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6210, metadata !DIExpression()), !dbg !6213
  store i32 %crtc, ptr %crtc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %crtc.addr, metadata !6211, metadata !DIExpression()), !dbg !6213
  store i32 %seq, ptr %seq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !6212, metadata !DIExpression()), !dbg !6213
  ret void, !dbg !6213
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_drm_vblank_event_delivered(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__traceiter_drm_vblank_event_delivered(ptr noundef %__data, ptr noundef %file, i32 noundef %crtc, i32 noundef %seq) #1 align 16 !dbg !6214 {
entry:
  %__data.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %crtc.addr = alloca i32, align 4
  %seq.addr = alloca i32, align 4
  %it_func_ptr = alloca ptr, align 8
  %it_func = alloca ptr, align 8
  %__UNIQUE_ID_rcu317 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6216, metadata !DIExpression()), !dbg !6224
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6217, metadata !DIExpression()), !dbg !6224
  store i32 %crtc, ptr %crtc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %crtc.addr, metadata !6218, metadata !DIExpression()), !dbg !6224
  store i32 %seq, ptr %seq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !6219, metadata !DIExpression()), !dbg !6224
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #8, !dbg !6224
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !6220, metadata !DIExpression()), !dbg !6224
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func) #8, !dbg !6224
  call void @llvm.dbg.declare(metadata ptr %it_func, metadata !6221, metadata !DIExpression()), !dbg !6224
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu317) #8, !dbg !6225
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu317, metadata !6222, metadata !DIExpression()), !dbg !6225
  br label %do.body, !dbg !6226

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6228

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6228

do.end:                                           ; preds = %do.cond
  %0 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drm_vblank_event_delivered, i32 0, i32 8), align 8, !dbg !6226
  store ptr %0, ptr %tmp, align 8, !dbg !6228
  %1 = load ptr, ptr %tmp, align 8, !dbg !6226
  store ptr %1, ptr %__UNIQUE_ID_rcu317, align 8, !dbg !6225
  %2 = load ptr, ptr %__UNIQUE_ID_rcu317, align 8, !dbg !6225
  store ptr %2, ptr %tmp1, align 8, !dbg !6225
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu317) #8, !dbg !6224
  %3 = load ptr, ptr %tmp1, align 8, !dbg !6225
  store ptr %3, ptr %it_func_ptr, align 8, !dbg !6224
  %4 = load ptr, ptr %it_func_ptr, align 8, !dbg !6230
  %tobool = icmp ne ptr %4, null, !dbg !6230
  br i1 %tobool, label %if.then, label %if.end, !dbg !6224

if.then:                                          ; preds = %do.end
  br label %do.body2, !dbg !6232

do.body2:                                         ; preds = %do.cond7, %if.then
  br label %do.body3, !dbg !6234

do.body3:                                         ; preds = %do.body2
  br label %do.cond4, !dbg !6237

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !6237

do.end5:                                          ; preds = %do.cond4
  %5 = load ptr, ptr %it_func_ptr, align 8, !dbg !6234
  %func = getelementptr inbounds %struct.tracepoint_func, ptr %5, i32 0, i32 0, !dbg !6234
  %6 = load volatile ptr, ptr %func, align 8, !dbg !6234
  store ptr %6, ptr %tmp6, align 8, !dbg !6237
  %7 = load ptr, ptr %tmp6, align 8, !dbg !6234
  store ptr %7, ptr %it_func, align 8, !dbg !6239
  %8 = load ptr, ptr %it_func_ptr, align 8, !dbg !6239
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1, !dbg !6239
  %9 = load ptr, ptr %data, align 8, !dbg !6239
  store ptr %9, ptr %__data.addr, align 8, !dbg !6239
  %10 = load ptr, ptr %it_func, align 8, !dbg !6239
  %11 = load ptr, ptr %__data.addr, align 8, !dbg !6239
  %12 = load ptr, ptr %file.addr, align 8, !dbg !6239
  %13 = load i32, ptr %crtc.addr, align 4, !dbg !6239
  %14 = load i32, ptr %seq.addr, align 4, !dbg !6239
  call void %10(ptr noundef %11, ptr noundef %12, i32 noundef %13, i32 noundef %14) #9, !dbg !6239
  br label %do.cond7, !dbg !6239

do.cond7:                                         ; preds = %do.end5
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !6232
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %15, i32 1, !dbg !6232
  store ptr %incdec.ptr, ptr %it_func_ptr, align 8, !dbg !6232
  %func8 = getelementptr inbounds %struct.tracepoint_func, ptr %incdec.ptr, i32 0, i32 0, !dbg !6232
  %16 = load ptr, ptr %func8, align 8, !dbg !6232
  %tobool9 = icmp ne ptr %16, null, !dbg !6239
  br i1 %tobool9, label %do.body2, label %do.end10, !dbg !6239, !llvm.loop !6240

do.end10:                                         ; preds = %do.cond7
  br label %if.end, !dbg !6232

if.end:                                           ; preds = %do.end10, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func) #8, !dbg !6224
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #8, !dbg !6224
  ret i32 0, !dbg !6224
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__probestub_drm_vblank_event_delivered(ptr noundef %__data, ptr noundef %file, i32 noundef %crtc, i32 noundef %seq) #1 align 16 !dbg !6241 {
entry:
  %__data.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %crtc.addr = alloca i32, align 4
  %seq.addr = alloca i32, align 4
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6243, metadata !DIExpression()), !dbg !6247
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6244, metadata !DIExpression()), !dbg !6247
  store i32 %crtc, ptr %crtc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %crtc.addr, metadata !6245, metadata !DIExpression()), !dbg !6247
  store i32 %seq, ptr %seq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !6246, metadata !DIExpression()), !dbg !6247
  ret void, !dbg !6247
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_event_raw_event_drm_vblank_event(ptr noundef %__data, i32 noundef %crtc, i32 noundef %seq, i64 noundef %time, i1 noundef zeroext %high_prec) #1 align 16 !dbg !6248 {
entry:
  %__data.addr = alloca ptr, align 8
  %crtc.addr = alloca i32, align 4
  %seq.addr = alloca i32, align 4
  %time.addr = alloca i64, align 8
  %high_prec.addr = alloca i8, align 1
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6250, metadata !DIExpression()), !dbg !6255
  store i32 %crtc, ptr %crtc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %crtc.addr, metadata !6251, metadata !DIExpression()), !dbg !6255
  store i32 %seq, ptr %seq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !6252, metadata !DIExpression()), !dbg !6255
  store i64 %time, ptr %time.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %time.addr, metadata !6253, metadata !DIExpression()), !dbg !6255
  %frombool = zext i1 %high_prec to i8
  store i8 %frombool, ptr %high_prec.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %high_prec.addr, metadata !6254, metadata !DIExpression()), !dbg !6255
  %0 = load ptr, ptr %__data.addr, align 8, !dbg !6255
  %1 = load i32, ptr %crtc.addr, align 4, !dbg !6255
  %2 = load i32, ptr %seq.addr, align 4, !dbg !6255
  %3 = load i64, ptr %time.addr, align 8, !dbg !6255
  %4 = load i8, ptr %high_prec.addr, align 1, !dbg !6255, !range !6166, !noundef !717
  %tobool = trunc i8 %4 to i1, !dbg !6255
  call void @do_trace_event_raw_event_drm_vblank_event(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i1 noundef zeroext %tobool) #9, !dbg !6255
  ret void, !dbg !6255
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @perf_trace_drm_vblank_event(ptr noundef %__data, i32 noundef %crtc, i32 noundef %seq, i64 noundef %time, i1 noundef zeroext %high_prec) #1 align 16 !dbg !6256 {
entry:
  %__data.addr = alloca ptr, align 8
  %crtc.addr = alloca i32, align 4
  %seq.addr = alloca i32, align 4
  %time.addr = alloca i64, align 8
  %high_prec.addr = alloca i8, align 1
  %event_call = alloca ptr, align 8
  %__data_offsets = alloca %struct.trace_event_data_offsets_drm_vblank_event, align 1
  %entry1 = alloca ptr, align 8
  %__regs = alloca ptr, align 8
  %__count = alloca i64, align 8
  %__task = alloca ptr, align 8
  %head = alloca ptr, align 8
  %__entry_size = alloca i32, align 4
  %__data_size = alloca i32, align 4
  %rctx = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6258, metadata !DIExpression()), !dbg !6279
  store i32 %crtc, ptr %crtc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %crtc.addr, metadata !6259, metadata !DIExpression()), !dbg !6279
  store i32 %seq, ptr %seq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !6260, metadata !DIExpression()), !dbg !6279
  store i64 %time, ptr %time.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %time.addr, metadata !6261, metadata !DIExpression()), !dbg !6279
  %frombool = zext i1 %high_prec to i8
  store i8 %frombool, ptr %high_prec.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %high_prec.addr, metadata !6262, metadata !DIExpression()), !dbg !6279
  call void @llvm.lifetime.start.p0(i64 8, ptr %event_call) #8, !dbg !6279
  call void @llvm.dbg.declare(metadata ptr %event_call, metadata !6263, metadata !DIExpression()), !dbg !6279
  %0 = load ptr, ptr %__data.addr, align 8, !dbg !6279
  store ptr %0, ptr %event_call, align 8, !dbg !6279
  call void @llvm.lifetime.start.p0(i64 0, ptr %__data_offsets) #8, !dbg !6279
  call void @llvm.dbg.declare(metadata ptr %__data_offsets, metadata !6264, metadata !DIExpression()), !dbg !6279
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #8, !dbg !6279
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !6266, metadata !DIExpression()), !dbg !6279
  call void @llvm.lifetime.start.p0(i64 8, ptr %__regs) #8, !dbg !6279
  call void @llvm.dbg.declare(metadata ptr %__regs, metadata !6267, metadata !DIExpression()), !dbg !6279
  call void @llvm.lifetime.start.p0(i64 8, ptr %__count) #8, !dbg !6279
  call void @llvm.dbg.declare(metadata ptr %__count, metadata !6268, metadata !DIExpression()), !dbg !6279
  store i64 1, ptr %__count, align 8, !dbg !6279
  call void @llvm.lifetime.start.p0(i64 8, ptr %__task) #8, !dbg !6279
  call void @llvm.dbg.declare(metadata ptr %__task, metadata !6269, metadata !DIExpression()), !dbg !6279
  store ptr null, ptr %__task, align 8, !dbg !6279
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #8, !dbg !6279
  call void @llvm.dbg.declare(metadata ptr %head, metadata !6270, metadata !DIExpression()), !dbg !6279
  call void @llvm.lifetime.start.p0(i64 4, ptr %__entry_size) #8, !dbg !6279
  call void @llvm.dbg.declare(metadata ptr %__entry_size, metadata !6271, metadata !DIExpression()), !dbg !6279
  call void @llvm.lifetime.start.p0(i64 4, ptr %__data_size) #8, !dbg !6279
  call void @llvm.dbg.declare(metadata ptr %__data_size, metadata !6272, metadata !DIExpression()), !dbg !6279
  call void @llvm.lifetime.start.p0(i64 4, ptr %rctx) #8, !dbg !6279
  call void @llvm.dbg.declare(metadata ptr %rctx, metadata !6273, metadata !DIExpression()), !dbg !6279
  %1 = load i32, ptr %crtc.addr, align 4, !dbg !6279
  %2 = load i32, ptr %seq.addr, align 4, !dbg !6279
  %3 = load i64, ptr %time.addr, align 8, !dbg !6279
  %4 = load i8, ptr %high_prec.addr, align 1, !dbg !6279, !range !6166, !noundef !717
  %tobool = trunc i8 %4 to i1, !dbg !6279
  %call = call i32 @trace_event_get_offsets_drm_vblank_event(ptr noundef %__data_offsets, i32 noundef %1, i32 noundef %2, i64 noundef %3, i1 noundef zeroext %tobool) #9, !dbg !6279
  store i32 %call, ptr %__data_size, align 4, !dbg !6279
  br label %do.body, !dbg !6280

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #8, !dbg !6281
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6274, metadata !DIExpression()), !dbg !6281
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6281
  %5 = load ptr, ptr %__vpp_verify, align 8, !dbg !6281
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #8, !dbg !6280
  br label %do.cond, !dbg !6281

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6281

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #8, !dbg !6282
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !6277, metadata !DIExpression()), !dbg !6282
  %6 = load ptr, ptr %event_call, align 8, !dbg !6282
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %6, i32 0, i32 10, !dbg !6282
  %7 = load ptr, ptr %perf_events, align 8, !dbg !6282
  %8 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr %7) #10, !dbg !6282, !srcloc !6283
  store i64 %8, ptr %tcp_ptr__, align 8, !dbg !6282
  %9 = load i64, ptr %tcp_ptr__, align 8, !dbg !6282
  %10 = inttoptr i64 %9 to ptr, !dbg !6282
  store ptr %10, ptr %tmp2, align 8, !dbg !6282
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #8, !dbg !6280
  %11 = load ptr, ptr %tmp2, align 8, !dbg !6282
  store ptr %11, ptr %tmp, align 8, !dbg !6281
  %12 = load ptr, ptr %tmp, align 8, !dbg !6280
  store ptr %12, ptr %head, align 8, !dbg !6279
  %13 = load ptr, ptr %event_call, align 8, !dbg !6284
  %call3 = call zeroext i1 @bpf_prog_array_valid(ptr noundef %13) #9, !dbg !6284
  br i1 %call3, label %if.end, label %land.lhs.true, !dbg !6284

land.lhs.true:                                    ; preds = %do.end
  %14 = load ptr, ptr %__task, align 8, !dbg !6284
  %tobool4 = icmp ne ptr %14, null, !dbg !6284
  %lnot = xor i1 %tobool4, true, !dbg !6284
  %lnot.ext = zext i1 %lnot to i32, !dbg !6284
  %15 = call i1 @llvm.is.constant.i32(i32 %lnot.ext), !dbg !6284
  br i1 %15, label %land.lhs.true5, label %if.end, !dbg !6284

land.lhs.true5:                                   ; preds = %land.lhs.true
  %16 = load ptr, ptr %__task, align 8, !dbg !6284
  %tobool6 = icmp ne ptr %16, null, !dbg !6284
  br i1 %tobool6, label %if.end, label %land.lhs.true7, !dbg !6284

land.lhs.true7:                                   ; preds = %land.lhs.true5
  %17 = load ptr, ptr %head, align 8, !dbg !6284
  %call8 = call i32 @hlist_empty(ptr noundef %17) #9, !dbg !6284
  %tobool9 = icmp ne i32 %call8, 0, !dbg !6284
  br i1 %tobool9, label %if.then, label %if.end, !dbg !6279

if.then:                                          ; preds = %land.lhs.true7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6284

if.end:                                           ; preds = %land.lhs.true7, %land.lhs.true5, %land.lhs.true, %do.end
  %18 = load i32, ptr %__data_size, align 4, !dbg !6279
  %conv = sext i32 %18 to i64, !dbg !6279
  %add = add i64 %conv, 32, !dbg !6279
  %add10 = add i64 %add, 4, !dbg !6279
  %add11 = add i64 %add10, 7, !dbg !6279
  %and = and i64 %add11, -8, !dbg !6279
  %conv12 = trunc i64 %and to i32, !dbg !6279
  store i32 %conv12, ptr %__entry_size, align 4, !dbg !6279
  %19 = load i32, ptr %__entry_size, align 4, !dbg !6279
  %conv13 = sext i32 %19 to i64, !dbg !6279
  %sub = sub i64 %conv13, 4, !dbg !6279
  %conv14 = trunc i64 %sub to i32, !dbg !6279
  store i32 %conv14, ptr %__entry_size, align 4, !dbg !6279
  %20 = load i32, ptr %__entry_size, align 4, !dbg !6279
  %call15 = call ptr @perf_trace_buf_alloc(i32 noundef %20, ptr noundef %__regs, ptr noundef %rctx) #9, !dbg !6279
  store ptr %call15, ptr %entry1, align 8, !dbg !6279
  %21 = load ptr, ptr %entry1, align 8, !dbg !6286
  %tobool16 = icmp ne ptr %21, null, !dbg !6286
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !6279

if.then17:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6286

if.end18:                                         ; preds = %if.end
  %22 = load ptr, ptr %__regs, align 8, !dbg !6279
  call void @perf_fetch_caller_regs(ptr noundef %22) #9, !dbg !6279
  %23 = load i32, ptr %crtc.addr, align 4, !dbg !6288
  %24 = load ptr, ptr %entry1, align 8, !dbg !6288
  %crtc19 = getelementptr inbounds %struct.trace_event_raw_drm_vblank_event, ptr %24, i32 0, i32 1, !dbg !6288
  store i32 %23, ptr %crtc19, align 8, !dbg !6288
  %25 = load i32, ptr %seq.addr, align 4, !dbg !6288
  %26 = load ptr, ptr %entry1, align 8, !dbg !6288
  %seq20 = getelementptr inbounds %struct.trace_event_raw_drm_vblank_event, ptr %26, i32 0, i32 2, !dbg !6288
  store i32 %25, ptr %seq20, align 4, !dbg !6288
  %27 = load i64, ptr %time.addr, align 8, !dbg !6288
  %28 = load ptr, ptr %entry1, align 8, !dbg !6288
  %time21 = getelementptr inbounds %struct.trace_event_raw_drm_vblank_event, ptr %28, i32 0, i32 3, !dbg !6288
  store i64 %27, ptr %time21, align 8, !dbg !6288
  %29 = load i8, ptr %high_prec.addr, align 1, !dbg !6288, !range !6166, !noundef !717
  %tobool22 = trunc i8 %29 to i1, !dbg !6288
  %30 = load ptr, ptr %entry1, align 8, !dbg !6288
  %high_prec23 = getelementptr inbounds %struct.trace_event_raw_drm_vblank_event, ptr %30, i32 0, i32 4, !dbg !6288
  %frombool24 = zext i1 %tobool22 to i8, !dbg !6288
  store i8 %frombool24, ptr %high_prec23, align 8, !dbg !6288
  %31 = load ptr, ptr %entry1, align 8, !dbg !6279
  %32 = load i32, ptr %__entry_size, align 4, !dbg !6279
  %33 = load i32, ptr %rctx, align 4, !dbg !6279
  %34 = load ptr, ptr %event_call, align 8, !dbg !6279
  %35 = load i64, ptr %__count, align 8, !dbg !6279
  %36 = load ptr, ptr %__regs, align 8, !dbg !6279
  %37 = load ptr, ptr %head, align 8, !dbg !6279
  %38 = load ptr, ptr %__task, align 8, !dbg !6279
  call void @perf_trace_run_bpf_submit(ptr noundef %31, i32 noundef %32, i32 noundef %33, ptr noundef %34, i64 noundef %35, ptr noundef %36, ptr noundef %37, ptr noundef %38) #9, !dbg !6279
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6279
  br label %cleanup, !dbg !6279

cleanup:                                          ; preds = %if.end18, %if.then17, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rctx) #8, !dbg !6279
  call void @llvm.lifetime.end.p0(i64 4, ptr %__data_size) #8, !dbg !6279
  call void @llvm.lifetime.end.p0(i64 4, ptr %__entry_size) #8, !dbg !6279
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #8, !dbg !6279
  call void @llvm.lifetime.end.p0(i64 8, ptr %__task) #8, !dbg !6279
  call void @llvm.lifetime.end.p0(i64 8, ptr %__count) #8, !dbg !6279
  call void @llvm.lifetime.end.p0(i64 8, ptr %__regs) #8, !dbg !6279
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #8, !dbg !6279
  call void @llvm.lifetime.end.p0(i64 0, ptr %__data_offsets) #8, !dbg !6279
  call void @llvm.lifetime.end.p0(i64 8, ptr %event_call) #8, !dbg !6279
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6279

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_event_raw_event_drm_vblank_event_queued(ptr noundef %__data, ptr noundef %file, i32 noundef %crtc, i32 noundef %seq) #1 align 16 !dbg !6290 {
entry:
  %__data.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %crtc.addr = alloca i32, align 4
  %seq.addr = alloca i32, align 4
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6292, metadata !DIExpression()), !dbg !6296
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6293, metadata !DIExpression()), !dbg !6296
  store i32 %crtc, ptr %crtc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %crtc.addr, metadata !6294, metadata !DIExpression()), !dbg !6296
  store i32 %seq, ptr %seq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !6295, metadata !DIExpression()), !dbg !6296
  %0 = load ptr, ptr %__data.addr, align 8, !dbg !6296
  %1 = load ptr, ptr %file.addr, align 8, !dbg !6296
  %2 = load i32, ptr %crtc.addr, align 4, !dbg !6296
  %3 = load i32, ptr %seq.addr, align 4, !dbg !6296
  call void @do_trace_event_raw_event_drm_vblank_event_queued(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #9, !dbg !6296
  ret void, !dbg !6296
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @perf_trace_drm_vblank_event_queued(ptr noundef %__data, ptr noundef %file, i32 noundef %crtc, i32 noundef %seq) #1 align 16 !dbg !6297 {
entry:
  %__data.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %crtc.addr = alloca i32, align 4
  %seq.addr = alloca i32, align 4
  %event_call = alloca ptr, align 8
  %__data_offsets = alloca %struct.trace_event_data_offsets_drm_vblank_event_queued, align 1
  %entry1 = alloca ptr, align 8
  %__regs = alloca ptr, align 8
  %__count = alloca i64, align 8
  %__task = alloca ptr, align 8
  %head = alloca ptr, align 8
  %__entry_size = alloca i32, align 4
  %__data_size = alloca i32, align 4
  %rctx = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6299, metadata !DIExpression()), !dbg !6319
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6300, metadata !DIExpression()), !dbg !6319
  store i32 %crtc, ptr %crtc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %crtc.addr, metadata !6301, metadata !DIExpression()), !dbg !6319
  store i32 %seq, ptr %seq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !6302, metadata !DIExpression()), !dbg !6319
  call void @llvm.lifetime.start.p0(i64 8, ptr %event_call) #8, !dbg !6319
  call void @llvm.dbg.declare(metadata ptr %event_call, metadata !6303, metadata !DIExpression()), !dbg !6319
  %0 = load ptr, ptr %__data.addr, align 8, !dbg !6319
  store ptr %0, ptr %event_call, align 8, !dbg !6319
  call void @llvm.lifetime.start.p0(i64 0, ptr %__data_offsets) #8, !dbg !6319
  call void @llvm.dbg.declare(metadata ptr %__data_offsets, metadata !6304, metadata !DIExpression()), !dbg !6319
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #8, !dbg !6319
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !6306, metadata !DIExpression()), !dbg !6319
  call void @llvm.lifetime.start.p0(i64 8, ptr %__regs) #8, !dbg !6319
  call void @llvm.dbg.declare(metadata ptr %__regs, metadata !6307, metadata !DIExpression()), !dbg !6319
  call void @llvm.lifetime.start.p0(i64 8, ptr %__count) #8, !dbg !6319
  call void @llvm.dbg.declare(metadata ptr %__count, metadata !6308, metadata !DIExpression()), !dbg !6319
  store i64 1, ptr %__count, align 8, !dbg !6319
  call void @llvm.lifetime.start.p0(i64 8, ptr %__task) #8, !dbg !6319
  call void @llvm.dbg.declare(metadata ptr %__task, metadata !6309, metadata !DIExpression()), !dbg !6319
  store ptr null, ptr %__task, align 8, !dbg !6319
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #8, !dbg !6319
  call void @llvm.dbg.declare(metadata ptr %head, metadata !6310, metadata !DIExpression()), !dbg !6319
  call void @llvm.lifetime.start.p0(i64 4, ptr %__entry_size) #8, !dbg !6319
  call void @llvm.dbg.declare(metadata ptr %__entry_size, metadata !6311, metadata !DIExpression()), !dbg !6319
  call void @llvm.lifetime.start.p0(i64 4, ptr %__data_size) #8, !dbg !6319
  call void @llvm.dbg.declare(metadata ptr %__data_size, metadata !6312, metadata !DIExpression()), !dbg !6319
  call void @llvm.lifetime.start.p0(i64 4, ptr %rctx) #8, !dbg !6319
  call void @llvm.dbg.declare(metadata ptr %rctx, metadata !6313, metadata !DIExpression()), !dbg !6319
  %1 = load ptr, ptr %file.addr, align 8, !dbg !6319
  %2 = load i32, ptr %crtc.addr, align 4, !dbg !6319
  %3 = load i32, ptr %seq.addr, align 4, !dbg !6319
  %call = call i32 @trace_event_get_offsets_drm_vblank_event_queued(ptr noundef %__data_offsets, ptr noundef %1, i32 noundef %2, i32 noundef %3) #9, !dbg !6319
  store i32 %call, ptr %__data_size, align 4, !dbg !6319
  br label %do.body, !dbg !6320

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #8, !dbg !6321
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6314, metadata !DIExpression()), !dbg !6321
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6321
  %4 = load ptr, ptr %__vpp_verify, align 8, !dbg !6321
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #8, !dbg !6320
  br label %do.cond, !dbg !6321

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6321

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #8, !dbg !6322
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !6317, metadata !DIExpression()), !dbg !6322
  %5 = load ptr, ptr %event_call, align 8, !dbg !6322
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %5, i32 0, i32 10, !dbg !6322
  %6 = load ptr, ptr %perf_events, align 8, !dbg !6322
  %7 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr %6) #10, !dbg !6322, !srcloc !6323
  store i64 %7, ptr %tcp_ptr__, align 8, !dbg !6322
  %8 = load i64, ptr %tcp_ptr__, align 8, !dbg !6322
  %9 = inttoptr i64 %8 to ptr, !dbg !6322
  store ptr %9, ptr %tmp2, align 8, !dbg !6322
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #8, !dbg !6320
  %10 = load ptr, ptr %tmp2, align 8, !dbg !6322
  store ptr %10, ptr %tmp, align 8, !dbg !6321
  %11 = load ptr, ptr %tmp, align 8, !dbg !6320
  store ptr %11, ptr %head, align 8, !dbg !6319
  %12 = load ptr, ptr %event_call, align 8, !dbg !6324
  %call3 = call zeroext i1 @bpf_prog_array_valid(ptr noundef %12) #9, !dbg !6324
  br i1 %call3, label %if.end, label %land.lhs.true, !dbg !6324

land.lhs.true:                                    ; preds = %do.end
  %13 = load ptr, ptr %__task, align 8, !dbg !6324
  %tobool = icmp ne ptr %13, null, !dbg !6324
  %lnot = xor i1 %tobool, true, !dbg !6324
  %lnot.ext = zext i1 %lnot to i32, !dbg !6324
  %14 = call i1 @llvm.is.constant.i32(i32 %lnot.ext), !dbg !6324
  br i1 %14, label %land.lhs.true4, label %if.end, !dbg !6324

land.lhs.true4:                                   ; preds = %land.lhs.true
  %15 = load ptr, ptr %__task, align 8, !dbg !6324
  %tobool5 = icmp ne ptr %15, null, !dbg !6324
  br i1 %tobool5, label %if.end, label %land.lhs.true6, !dbg !6324

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %16 = load ptr, ptr %head, align 8, !dbg !6324
  %call7 = call i32 @hlist_empty(ptr noundef %16) #9, !dbg !6324
  %tobool8 = icmp ne i32 %call7, 0, !dbg !6324
  br i1 %tobool8, label %if.then, label %if.end, !dbg !6319

if.then:                                          ; preds = %land.lhs.true6
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6324

if.end:                                           ; preds = %land.lhs.true6, %land.lhs.true4, %land.lhs.true, %do.end
  %17 = load i32, ptr %__data_size, align 4, !dbg !6319
  %conv = sext i32 %17 to i64, !dbg !6319
  %add = add i64 %conv, 24, !dbg !6319
  %add9 = add i64 %add, 4, !dbg !6319
  %add10 = add i64 %add9, 7, !dbg !6319
  %and = and i64 %add10, -8, !dbg !6319
  %conv11 = trunc i64 %and to i32, !dbg !6319
  store i32 %conv11, ptr %__entry_size, align 4, !dbg !6319
  %18 = load i32, ptr %__entry_size, align 4, !dbg !6319
  %conv12 = sext i32 %18 to i64, !dbg !6319
  %sub = sub i64 %conv12, 4, !dbg !6319
  %conv13 = trunc i64 %sub to i32, !dbg !6319
  store i32 %conv13, ptr %__entry_size, align 4, !dbg !6319
  %19 = load i32, ptr %__entry_size, align 4, !dbg !6319
  %call14 = call ptr @perf_trace_buf_alloc(i32 noundef %19, ptr noundef %__regs, ptr noundef %rctx) #9, !dbg !6319
  store ptr %call14, ptr %entry1, align 8, !dbg !6319
  %20 = load ptr, ptr %entry1, align 8, !dbg !6326
  %tobool15 = icmp ne ptr %20, null, !dbg !6326
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !6319

if.then16:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6326

if.end17:                                         ; preds = %if.end
  %21 = load ptr, ptr %__regs, align 8, !dbg !6319
  call void @perf_fetch_caller_regs(ptr noundef %21) #9, !dbg !6319
  %22 = load ptr, ptr %file.addr, align 8, !dbg !6328
  %23 = load ptr, ptr %entry1, align 8, !dbg !6328
  %file18 = getelementptr inbounds %struct.trace_event_raw_drm_vblank_event_queued, ptr %23, i32 0, i32 1, !dbg !6328
  store ptr %22, ptr %file18, align 8, !dbg !6328
  %24 = load i32, ptr %crtc.addr, align 4, !dbg !6328
  %25 = load ptr, ptr %entry1, align 8, !dbg !6328
  %crtc19 = getelementptr inbounds %struct.trace_event_raw_drm_vblank_event_queued, ptr %25, i32 0, i32 2, !dbg !6328
  store i32 %24, ptr %crtc19, align 8, !dbg !6328
  %26 = load i32, ptr %seq.addr, align 4, !dbg !6328
  %27 = load ptr, ptr %entry1, align 8, !dbg !6328
  %seq20 = getelementptr inbounds %struct.trace_event_raw_drm_vblank_event_queued, ptr %27, i32 0, i32 3, !dbg !6328
  store i32 %26, ptr %seq20, align 4, !dbg !6328
  %28 = load ptr, ptr %entry1, align 8, !dbg !6319
  %29 = load i32, ptr %__entry_size, align 4, !dbg !6319
  %30 = load i32, ptr %rctx, align 4, !dbg !6319
  %31 = load ptr, ptr %event_call, align 8, !dbg !6319
  %32 = load i64, ptr %__count, align 8, !dbg !6319
  %33 = load ptr, ptr %__regs, align 8, !dbg !6319
  %34 = load ptr, ptr %head, align 8, !dbg !6319
  %35 = load ptr, ptr %__task, align 8, !dbg !6319
  call void @perf_trace_run_bpf_submit(ptr noundef %28, i32 noundef %29, i32 noundef %30, ptr noundef %31, i64 noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef %35) #9, !dbg !6319
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6319
  br label %cleanup, !dbg !6319

cleanup:                                          ; preds = %if.end17, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rctx) #8, !dbg !6319
  call void @llvm.lifetime.end.p0(i64 4, ptr %__data_size) #8, !dbg !6319
  call void @llvm.lifetime.end.p0(i64 4, ptr %__entry_size) #8, !dbg !6319
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #8, !dbg !6319
  call void @llvm.lifetime.end.p0(i64 8, ptr %__task) #8, !dbg !6319
  call void @llvm.lifetime.end.p0(i64 8, ptr %__count) #8, !dbg !6319
  call void @llvm.lifetime.end.p0(i64 8, ptr %__regs) #8, !dbg !6319
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #8, !dbg !6319
  call void @llvm.lifetime.end.p0(i64 0, ptr %__data_offsets) #8, !dbg !6319
  call void @llvm.lifetime.end.p0(i64 8, ptr %event_call) #8, !dbg !6319
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6319

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_event_raw_event_drm_vblank_event_delivered(ptr noundef %__data, ptr noundef %file, i32 noundef %crtc, i32 noundef %seq) #1 align 16 !dbg !6330 {
entry:
  %__data.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %crtc.addr = alloca i32, align 4
  %seq.addr = alloca i32, align 4
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6332, metadata !DIExpression()), !dbg !6336
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6333, metadata !DIExpression()), !dbg !6336
  store i32 %crtc, ptr %crtc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %crtc.addr, metadata !6334, metadata !DIExpression()), !dbg !6336
  store i32 %seq, ptr %seq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !6335, metadata !DIExpression()), !dbg !6336
  %0 = load ptr, ptr %__data.addr, align 8, !dbg !6336
  %1 = load ptr, ptr %file.addr, align 8, !dbg !6336
  %2 = load i32, ptr %crtc.addr, align 4, !dbg !6336
  %3 = load i32, ptr %seq.addr, align 4, !dbg !6336
  call void @do_trace_event_raw_event_drm_vblank_event_delivered(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #9, !dbg !6336
  ret void, !dbg !6336
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @perf_trace_drm_vblank_event_delivered(ptr noundef %__data, ptr noundef %file, i32 noundef %crtc, i32 noundef %seq) #1 align 16 !dbg !6337 {
entry:
  %__data.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %crtc.addr = alloca i32, align 4
  %seq.addr = alloca i32, align 4
  %event_call = alloca ptr, align 8
  %__data_offsets = alloca %struct.trace_event_data_offsets_drm_vblank_event_delivered, align 1
  %entry1 = alloca ptr, align 8
  %__regs = alloca ptr, align 8
  %__count = alloca i64, align 8
  %__task = alloca ptr, align 8
  %head = alloca ptr, align 8
  %__entry_size = alloca i32, align 4
  %__data_size = alloca i32, align 4
  %rctx = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6339, metadata !DIExpression()), !dbg !6359
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6340, metadata !DIExpression()), !dbg !6359
  store i32 %crtc, ptr %crtc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %crtc.addr, metadata !6341, metadata !DIExpression()), !dbg !6359
  store i32 %seq, ptr %seq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !6342, metadata !DIExpression()), !dbg !6359
  call void @llvm.lifetime.start.p0(i64 8, ptr %event_call) #8, !dbg !6359
  call void @llvm.dbg.declare(metadata ptr %event_call, metadata !6343, metadata !DIExpression()), !dbg !6359
  %0 = load ptr, ptr %__data.addr, align 8, !dbg !6359
  store ptr %0, ptr %event_call, align 8, !dbg !6359
  call void @llvm.lifetime.start.p0(i64 0, ptr %__data_offsets) #8, !dbg !6359
  call void @llvm.dbg.declare(metadata ptr %__data_offsets, metadata !6344, metadata !DIExpression()), !dbg !6359
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #8, !dbg !6359
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !6346, metadata !DIExpression()), !dbg !6359
  call void @llvm.lifetime.start.p0(i64 8, ptr %__regs) #8, !dbg !6359
  call void @llvm.dbg.declare(metadata ptr %__regs, metadata !6347, metadata !DIExpression()), !dbg !6359
  call void @llvm.lifetime.start.p0(i64 8, ptr %__count) #8, !dbg !6359
  call void @llvm.dbg.declare(metadata ptr %__count, metadata !6348, metadata !DIExpression()), !dbg !6359
  store i64 1, ptr %__count, align 8, !dbg !6359
  call void @llvm.lifetime.start.p0(i64 8, ptr %__task) #8, !dbg !6359
  call void @llvm.dbg.declare(metadata ptr %__task, metadata !6349, metadata !DIExpression()), !dbg !6359
  store ptr null, ptr %__task, align 8, !dbg !6359
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #8, !dbg !6359
  call void @llvm.dbg.declare(metadata ptr %head, metadata !6350, metadata !DIExpression()), !dbg !6359
  call void @llvm.lifetime.start.p0(i64 4, ptr %__entry_size) #8, !dbg !6359
  call void @llvm.dbg.declare(metadata ptr %__entry_size, metadata !6351, metadata !DIExpression()), !dbg !6359
  call void @llvm.lifetime.start.p0(i64 4, ptr %__data_size) #8, !dbg !6359
  call void @llvm.dbg.declare(metadata ptr %__data_size, metadata !6352, metadata !DIExpression()), !dbg !6359
  call void @llvm.lifetime.start.p0(i64 4, ptr %rctx) #8, !dbg !6359
  call void @llvm.dbg.declare(metadata ptr %rctx, metadata !6353, metadata !DIExpression()), !dbg !6359
  %1 = load ptr, ptr %file.addr, align 8, !dbg !6359
  %2 = load i32, ptr %crtc.addr, align 4, !dbg !6359
  %3 = load i32, ptr %seq.addr, align 4, !dbg !6359
  %call = call i32 @trace_event_get_offsets_drm_vblank_event_delivered(ptr noundef %__data_offsets, ptr noundef %1, i32 noundef %2, i32 noundef %3) #9, !dbg !6359
  store i32 %call, ptr %__data_size, align 4, !dbg !6359
  br label %do.body, !dbg !6360

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #8, !dbg !6361
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6354, metadata !DIExpression()), !dbg !6361
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6361
  %4 = load ptr, ptr %__vpp_verify, align 8, !dbg !6361
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #8, !dbg !6360
  br label %do.cond, !dbg !6361

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6361

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #8, !dbg !6362
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !6357, metadata !DIExpression()), !dbg !6362
  %5 = load ptr, ptr %event_call, align 8, !dbg !6362
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %5, i32 0, i32 10, !dbg !6362
  %6 = load ptr, ptr %perf_events, align 8, !dbg !6362
  %7 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr %6) #10, !dbg !6362, !srcloc !6363
  store i64 %7, ptr %tcp_ptr__, align 8, !dbg !6362
  %8 = load i64, ptr %tcp_ptr__, align 8, !dbg !6362
  %9 = inttoptr i64 %8 to ptr, !dbg !6362
  store ptr %9, ptr %tmp2, align 8, !dbg !6362
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #8, !dbg !6360
  %10 = load ptr, ptr %tmp2, align 8, !dbg !6362
  store ptr %10, ptr %tmp, align 8, !dbg !6361
  %11 = load ptr, ptr %tmp, align 8, !dbg !6360
  store ptr %11, ptr %head, align 8, !dbg !6359
  %12 = load ptr, ptr %event_call, align 8, !dbg !6364
  %call3 = call zeroext i1 @bpf_prog_array_valid(ptr noundef %12) #9, !dbg !6364
  br i1 %call3, label %if.end, label %land.lhs.true, !dbg !6364

land.lhs.true:                                    ; preds = %do.end
  %13 = load ptr, ptr %__task, align 8, !dbg !6364
  %tobool = icmp ne ptr %13, null, !dbg !6364
  %lnot = xor i1 %tobool, true, !dbg !6364
  %lnot.ext = zext i1 %lnot to i32, !dbg !6364
  %14 = call i1 @llvm.is.constant.i32(i32 %lnot.ext), !dbg !6364
  br i1 %14, label %land.lhs.true4, label %if.end, !dbg !6364

land.lhs.true4:                                   ; preds = %land.lhs.true
  %15 = load ptr, ptr %__task, align 8, !dbg !6364
  %tobool5 = icmp ne ptr %15, null, !dbg !6364
  br i1 %tobool5, label %if.end, label %land.lhs.true6, !dbg !6364

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %16 = load ptr, ptr %head, align 8, !dbg !6364
  %call7 = call i32 @hlist_empty(ptr noundef %16) #9, !dbg !6364
  %tobool8 = icmp ne i32 %call7, 0, !dbg !6364
  br i1 %tobool8, label %if.then, label %if.end, !dbg !6359

if.then:                                          ; preds = %land.lhs.true6
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6364

if.end:                                           ; preds = %land.lhs.true6, %land.lhs.true4, %land.lhs.true, %do.end
  %17 = load i32, ptr %__data_size, align 4, !dbg !6359
  %conv = sext i32 %17 to i64, !dbg !6359
  %add = add i64 %conv, 24, !dbg !6359
  %add9 = add i64 %add, 4, !dbg !6359
  %add10 = add i64 %add9, 7, !dbg !6359
  %and = and i64 %add10, -8, !dbg !6359
  %conv11 = trunc i64 %and to i32, !dbg !6359
  store i32 %conv11, ptr %__entry_size, align 4, !dbg !6359
  %18 = load i32, ptr %__entry_size, align 4, !dbg !6359
  %conv12 = sext i32 %18 to i64, !dbg !6359
  %sub = sub i64 %conv12, 4, !dbg !6359
  %conv13 = trunc i64 %sub to i32, !dbg !6359
  store i32 %conv13, ptr %__entry_size, align 4, !dbg !6359
  %19 = load i32, ptr %__entry_size, align 4, !dbg !6359
  %call14 = call ptr @perf_trace_buf_alloc(i32 noundef %19, ptr noundef %__regs, ptr noundef %rctx) #9, !dbg !6359
  store ptr %call14, ptr %entry1, align 8, !dbg !6359
  %20 = load ptr, ptr %entry1, align 8, !dbg !6366
  %tobool15 = icmp ne ptr %20, null, !dbg !6366
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !6359

if.then16:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6366

if.end17:                                         ; preds = %if.end
  %21 = load ptr, ptr %__regs, align 8, !dbg !6359
  call void @perf_fetch_caller_regs(ptr noundef %21) #9, !dbg !6359
  %22 = load ptr, ptr %file.addr, align 8, !dbg !6368
  %23 = load ptr, ptr %entry1, align 8, !dbg !6368
  %file18 = getelementptr inbounds %struct.trace_event_raw_drm_vblank_event_delivered, ptr %23, i32 0, i32 1, !dbg !6368
  store ptr %22, ptr %file18, align 8, !dbg !6368
  %24 = load i32, ptr %crtc.addr, align 4, !dbg !6368
  %25 = load ptr, ptr %entry1, align 8, !dbg !6368
  %crtc19 = getelementptr inbounds %struct.trace_event_raw_drm_vblank_event_delivered, ptr %25, i32 0, i32 2, !dbg !6368
  store i32 %24, ptr %crtc19, align 8, !dbg !6368
  %26 = load i32, ptr %seq.addr, align 4, !dbg !6368
  %27 = load ptr, ptr %entry1, align 8, !dbg !6368
  %seq20 = getelementptr inbounds %struct.trace_event_raw_drm_vblank_event_delivered, ptr %27, i32 0, i32 3, !dbg !6368
  store i32 %26, ptr %seq20, align 4, !dbg !6368
  %28 = load ptr, ptr %entry1, align 8, !dbg !6359
  %29 = load i32, ptr %__entry_size, align 4, !dbg !6359
  %30 = load i32, ptr %rctx, align 4, !dbg !6359
  %31 = load ptr, ptr %event_call, align 8, !dbg !6359
  %32 = load i64, ptr %__count, align 8, !dbg !6359
  %33 = load ptr, ptr %__regs, align 8, !dbg !6359
  %34 = load ptr, ptr %head, align 8, !dbg !6359
  %35 = load ptr, ptr %__task, align 8, !dbg !6359
  call void @perf_trace_run_bpf_submit(ptr noundef %28, i32 noundef %29, i32 noundef %30, ptr noundef %31, i64 noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef %35) #9, !dbg !6359
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6359
  br label %cleanup, !dbg !6359

cleanup:                                          ; preds = %if.end17, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rctx) #8, !dbg !6359
  call void @llvm.lifetime.end.p0(i64 4, ptr %__data_size) #8, !dbg !6359
  call void @llvm.lifetime.end.p0(i64 4, ptr %__entry_size) #8, !dbg !6359
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #8, !dbg !6359
  call void @llvm.lifetime.end.p0(i64 8, ptr %__task) #8, !dbg !6359
  call void @llvm.lifetime.end.p0(i64 8, ptr %__count) #8, !dbg !6359
  call void @llvm.lifetime.end.p0(i64 8, ptr %__regs) #8, !dbg !6359
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #8, !dbg !6359
  call void @llvm.lifetime.end.p0(i64 0, ptr %__data_offsets) #8, !dbg !6359
  call void @llvm.lifetime.end.p0(i64 8, ptr %event_call) #8, !dbg !6359
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6359

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_trace_event_raw_event_drm_vblank_event(ptr noundef %__data, i32 noundef %crtc, i32 noundef %seq, i64 noundef %time, i1 noundef zeroext %high_prec) #1 align 16 !dbg !6370 {
entry:
  %__data.addr = alloca ptr, align 8
  %crtc.addr = alloca i32, align 4
  %seq.addr = alloca i32, align 4
  %time.addr = alloca i64, align 8
  %high_prec.addr = alloca i8, align 1
  %trace_file = alloca ptr, align 8
  %__data_offsets = alloca %struct.trace_event_data_offsets_drm_vblank_event, align 1
  %fbuffer = alloca %struct.trace_event_buffer, align 8
  %entry1 = alloca ptr, align 8
  %__data_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6372, metadata !DIExpression()), !dbg !6417
  store i32 %crtc, ptr %crtc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %crtc.addr, metadata !6373, metadata !DIExpression()), !dbg !6417
  store i32 %seq, ptr %seq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !6374, metadata !DIExpression()), !dbg !6417
  store i64 %time, ptr %time.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %time.addr, metadata !6375, metadata !DIExpression()), !dbg !6417
  %frombool = zext i1 %high_prec to i8
  store i8 %frombool, ptr %high_prec.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %high_prec.addr, metadata !6376, metadata !DIExpression()), !dbg !6417
  call void @llvm.lifetime.start.p0(i64 8, ptr %trace_file) #8, !dbg !6417
  call void @llvm.dbg.declare(metadata ptr %trace_file, metadata !6377, metadata !DIExpression()), !dbg !6417
  %0 = load ptr, ptr %__data.addr, align 8, !dbg !6417
  store ptr %0, ptr %trace_file, align 8, !dbg !6417
  call void @llvm.lifetime.start.p0(i64 0, ptr %__data_offsets) #8, !dbg !6417
  call void @llvm.dbg.declare(metadata ptr %__data_offsets, metadata !6396, metadata !DIExpression()), !dbg !6417
  call void @llvm.lifetime.start.p0(i64 48, ptr %fbuffer) #8, !dbg !6417
  call void @llvm.dbg.declare(metadata ptr %fbuffer, metadata !6397, metadata !DIExpression()), !dbg !6417
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #8, !dbg !6417
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !6415, metadata !DIExpression()), !dbg !6417
  call void @llvm.lifetime.start.p0(i64 4, ptr %__data_size) #8, !dbg !6417
  call void @llvm.dbg.declare(metadata ptr %__data_size, metadata !6416, metadata !DIExpression()), !dbg !6417
  %1 = load ptr, ptr %trace_file, align 8, !dbg !6418
  %call = call zeroext i1 @trace_trigger_soft_disabled(ptr noundef %1) #9, !dbg !6418
  br i1 %call, label %if.then, label %if.end, !dbg !6417

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6418

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %crtc.addr, align 4, !dbg !6417
  %3 = load i32, ptr %seq.addr, align 4, !dbg !6417
  %4 = load i64, ptr %time.addr, align 8, !dbg !6417
  %5 = load i8, ptr %high_prec.addr, align 1, !dbg !6417, !range !6166, !noundef !717
  %tobool = trunc i8 %5 to i1, !dbg !6417
  %call2 = call i32 @trace_event_get_offsets_drm_vblank_event(ptr noundef %__data_offsets, i32 noundef %2, i32 noundef %3, i64 noundef %4, i1 noundef zeroext %tobool) #9, !dbg !6417
  store i32 %call2, ptr %__data_size, align 4, !dbg !6417
  %6 = load ptr, ptr %trace_file, align 8, !dbg !6417
  %7 = load i32, ptr %__data_size, align 4, !dbg !6417
  %conv = sext i32 %7 to i64, !dbg !6417
  %add = add i64 32, %conv, !dbg !6417
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef %fbuffer, ptr noundef %6, i64 noundef %add) #9, !dbg !6417
  store ptr %call3, ptr %entry1, align 8, !dbg !6417
  %8 = load ptr, ptr %entry1, align 8, !dbg !6420
  %tobool4 = icmp ne ptr %8, null, !dbg !6420
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !6417

if.then5:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6420

if.end6:                                          ; preds = %if.end
  %9 = load i32, ptr %crtc.addr, align 4, !dbg !6422
  %10 = load ptr, ptr %entry1, align 8, !dbg !6422
  %crtc7 = getelementptr inbounds %struct.trace_event_raw_drm_vblank_event, ptr %10, i32 0, i32 1, !dbg !6422
  store i32 %9, ptr %crtc7, align 8, !dbg !6422
  %11 = load i32, ptr %seq.addr, align 4, !dbg !6422
  %12 = load ptr, ptr %entry1, align 8, !dbg !6422
  %seq8 = getelementptr inbounds %struct.trace_event_raw_drm_vblank_event, ptr %12, i32 0, i32 2, !dbg !6422
  store i32 %11, ptr %seq8, align 4, !dbg !6422
  %13 = load i64, ptr %time.addr, align 8, !dbg !6422
  %14 = load ptr, ptr %entry1, align 8, !dbg !6422
  %time9 = getelementptr inbounds %struct.trace_event_raw_drm_vblank_event, ptr %14, i32 0, i32 3, !dbg !6422
  store i64 %13, ptr %time9, align 8, !dbg !6422
  %15 = load i8, ptr %high_prec.addr, align 1, !dbg !6422, !range !6166, !noundef !717
  %tobool10 = trunc i8 %15 to i1, !dbg !6422
  %16 = load ptr, ptr %entry1, align 8, !dbg !6422
  %high_prec11 = getelementptr inbounds %struct.trace_event_raw_drm_vblank_event, ptr %16, i32 0, i32 4, !dbg !6422
  %frombool12 = zext i1 %tobool10 to i8, !dbg !6422
  store i8 %frombool12, ptr %high_prec11, align 8, !dbg !6422
  call void @trace_event_buffer_commit(ptr noundef %fbuffer) #9, !dbg !6417
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6417
  br label %cleanup, !dbg !6417

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %__data_size) #8, !dbg !6417
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #8, !dbg !6417
  call void @llvm.lifetime.end.p0(i64 48, ptr %fbuffer) #8, !dbg !6417
  call void @llvm.lifetime.end.p0(i64 0, ptr %__data_offsets) #8, !dbg !6417
  call void @llvm.lifetime.end.p0(i64 8, ptr %trace_file) #8, !dbg !6417
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6417

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @trace_trigger_soft_disabled(ptr noundef %file) #4 align 16 !dbg !6424 {
entry:
  %retval = alloca i1, align 1
  %file.addr = alloca ptr, align 8
  %eflags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6428, metadata !DIExpression()), !dbg !6430
  call void @llvm.lifetime.start.p0(i64 8, ptr %eflags) #8, !dbg !6431
  call void @llvm.dbg.declare(metadata ptr %eflags, metadata !6429, metadata !DIExpression()), !dbg !6432
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6433
  %flags = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7, !dbg !6434
  %1 = load i64, ptr %flags, align 8, !dbg !6434
  store i64 %1, ptr %eflags, align 8, !dbg !6432
  %2 = load i64, ptr %eflags, align 8, !dbg !6435
  %and = and i64 %2, 704, !dbg !6435
  %tobool = icmp ne i64 %and, 0, !dbg !6435
  %lnot = xor i1 %tobool, true, !dbg !6435
  %lnot1 = xor i1 %lnot, true, !dbg !6435
  %lnot2 = xor i1 %lnot1, true, !dbg !6435
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6435
  %conv = sext i32 %lnot.ext to i64, !dbg !6435
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6435
  %tobool3 = icmp ne i64 %expval, 0, !dbg !6435
  br i1 %tobool3, label %if.then, label %if.end, !dbg !6437

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6438
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6438

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %eflags, align 8, !dbg !6439
  %and4 = and i64 %3, 256, !dbg !6439
  %tobool5 = icmp ne i64 %and4, 0, !dbg !6439
  %lnot6 = xor i1 %tobool5, true, !dbg !6439
  %lnot8 = xor i1 %lnot6, true, !dbg !6439
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !6439
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !6439
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !6439
  %tobool12 = icmp ne i64 %expval11, 0, !dbg !6439
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !6441

if.then13:                                        ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !6442
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6442

if.end14:                                         ; preds = %if.end
  %4 = load ptr, ptr %file.addr, align 8, !dbg !6443
  %call = call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %4) #9, !dbg !6444
  store i1 %call, ptr %retval, align 1, !dbg !6445
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6445

cleanup:                                          ; preds = %if.end14, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %eflags) #8, !dbg !6446
  %5 = load i1, ptr %retval, align 1, !dbg !6446
  ret i1 %5, !dbg !6446
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trace_event_get_offsets_drm_vblank_event(ptr noundef %__data_offsets, i32 noundef %crtc, i32 noundef %seq, i64 noundef %time, i1 noundef zeroext %high_prec) #5 align 16 !dbg !6447 {
entry:
  %__data_offsets.addr = alloca ptr, align 8
  %crtc.addr = alloca i32, align 4
  %seq.addr = alloca i32, align 4
  %time.addr = alloca i64, align 8
  %high_prec.addr = alloca i8, align 1
  %__data_size = alloca i32, align 4
  %__item_length = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  store ptr %__data_offsets, ptr %__data_offsets.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data_offsets.addr, metadata !6452, metadata !DIExpression()), !dbg !6460
  store i32 %crtc, ptr %crtc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %crtc.addr, metadata !6453, metadata !DIExpression()), !dbg !6460
  store i32 %seq, ptr %seq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !6454, metadata !DIExpression()), !dbg !6460
  store i64 %time, ptr %time.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %time.addr, metadata !6455, metadata !DIExpression()), !dbg !6460
  %frombool = zext i1 %high_prec to i8
  store i8 %frombool, ptr %high_prec.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %high_prec.addr, metadata !6456, metadata !DIExpression()), !dbg !6460
  call void @llvm.lifetime.start.p0(i64 4, ptr %__data_size) #8, !dbg !6460
  call void @llvm.dbg.declare(metadata ptr %__data_size, metadata !6457, metadata !DIExpression()), !dbg !6460
  store i32 0, ptr %__data_size, align 4, !dbg !6460
  call void @llvm.lifetime.start.p0(i64 4, ptr %__item_length) #8, !dbg !6460
  call void @llvm.dbg.declare(metadata ptr %__item_length, metadata !6458, metadata !DIExpression()), !dbg !6460
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #8, !dbg !6460
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !6459, metadata !DIExpression()), !dbg !6460
  %0 = load i32, ptr %__data_size, align 4, !dbg !6460
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #8, !dbg !6460
  call void @llvm.lifetime.end.p0(i64 4, ptr %__item_length) #8, !dbg !6460
  call void @llvm.lifetime.end.p0(i64 4, ptr %__data_size) #8, !dbg !6460
  ret i32 %0, !dbg !6460
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6461 dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6465 dso_local void @trace_event_buffer_commit(ptr noundef) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6468 dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trace_raw_output_drm_vblank_event(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #1 align 16 !dbg !6469 {
entry:
  %retval = alloca i32, align 4
  %iter.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %trace_event.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %p = alloca ptr, align 8
  %field = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !6471, metadata !DIExpression()), !dbg !6479
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6472, metadata !DIExpression()), !dbg !6479
  store ptr %trace_event, ptr %trace_event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trace_event.addr, metadata !6473, metadata !DIExpression()), !dbg !6479
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #8, !dbg !6479
  call void @llvm.dbg.declare(metadata ptr %s, metadata !6474, metadata !DIExpression()), !dbg !6479
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !6479
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16, !dbg !6479
  store ptr %seq, ptr %s, align 8, !dbg !6479
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !6479
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6476, metadata !DIExpression()), !dbg !6479
  %1 = load ptr, ptr %iter.addr, align 8, !dbg !6479
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %1, i32 0, i32 13, !dbg !6479
  store ptr %tmp_seq, ptr %p, align 8, !dbg !6479
  call void @llvm.lifetime.start.p0(i64 8, ptr %field) #8, !dbg !6479
  call void @llvm.dbg.declare(metadata ptr %field, metadata !6477, metadata !DIExpression()), !dbg !6479
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8, !dbg !6479
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6478, metadata !DIExpression()), !dbg !6479
  %2 = load ptr, ptr %iter.addr, align 8, !dbg !6479
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %2, i32 0, i32 17, !dbg !6479
  %3 = load ptr, ptr %ent, align 8, !dbg !6479
  store ptr %3, ptr %field, align 8, !dbg !6479
  %4 = load ptr, ptr %iter.addr, align 8, !dbg !6479
  %5 = load ptr, ptr %trace_event.addr, align 8, !dbg !6479
  %call = call i32 @trace_raw_output_prep(ptr noundef %4, ptr noundef %5) #9, !dbg !6479
  store i32 %call, ptr %ret, align 4, !dbg !6479
  %6 = load i32, ptr %ret, align 4, !dbg !6480
  %cmp = icmp ne i32 %6, 1, !dbg !6480
  br i1 %cmp, label %if.then, label %if.end, !dbg !6479

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %ret, align 4, !dbg !6480
  store i32 %7, ptr %retval, align 4, !dbg !6480
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6480

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %iter.addr, align 8, !dbg !6479
  %9 = load ptr, ptr %field, align 8, !dbg !6479
  %crtc = getelementptr inbounds %struct.trace_event_raw_drm_vblank_event, ptr %9, i32 0, i32 1, !dbg !6479
  %10 = load i32, ptr %crtc, align 8, !dbg !6479
  %11 = load ptr, ptr %field, align 8, !dbg !6479
  %seq1 = getelementptr inbounds %struct.trace_event_raw_drm_vblank_event, ptr %11, i32 0, i32 2, !dbg !6479
  %12 = load i32, ptr %seq1, align 4, !dbg !6479
  %13 = load ptr, ptr %field, align 8, !dbg !6479
  %time = getelementptr inbounds %struct.trace_event_raw_drm_vblank_event, ptr %13, i32 0, i32 3, !dbg !6479
  %14 = load i64, ptr %time, align 8, !dbg !6479
  %15 = load ptr, ptr %field, align 8, !dbg !6479
  %high_prec = getelementptr inbounds %struct.trace_event_raw_drm_vblank_event, ptr %15, i32 0, i32 4, !dbg !6479
  %16 = load i8, ptr %high_prec, align 8, !dbg !6479, !range !6166, !noundef !717
  %tobool = trunc i8 %16 to i1, !dbg !6479
  %17 = zext i1 %tobool to i64, !dbg !6479
  %cond = select i1 %tobool, ptr @.str.9, ptr @.str.10, !dbg !6479
  call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %8, ptr noundef @.str.8, i32 noundef %10, i32 noundef %12, i64 noundef %14, ptr noundef %cond) #9, !dbg !6479
  %18 = load ptr, ptr %s, align 8, !dbg !6479
  %call2 = call i32 @trace_handle_return(ptr noundef %18) #9, !dbg !6479
  store i32 %call2, ptr %retval, align 4, !dbg !6479
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6479

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8, !dbg !6479
  call void @llvm.lifetime.end.p0(i64 8, ptr %field) #8, !dbg !6479
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !6479
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #8, !dbg !6479
  %19 = load i32, ptr %retval, align 4, !dbg !6479
  ret i32 %19, !dbg !6479
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6482 dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6485 dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6488 dso_local i32 @trace_handle_return(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_trace_event_raw_event_drm_vblank_event_queued(ptr noundef %__data, ptr noundef %file, i32 noundef %crtc, i32 noundef %seq) #1 align 16 !dbg !6491 {
entry:
  %__data.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %crtc.addr = alloca i32, align 4
  %seq.addr = alloca i32, align 4
  %trace_file = alloca ptr, align 8
  %__data_offsets = alloca %struct.trace_event_data_offsets_drm_vblank_event_queued, align 1
  %fbuffer = alloca %struct.trace_event_buffer, align 8
  %entry1 = alloca ptr, align 8
  %__data_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6493, metadata !DIExpression()), !dbg !6502
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6494, metadata !DIExpression()), !dbg !6502
  store i32 %crtc, ptr %crtc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %crtc.addr, metadata !6495, metadata !DIExpression()), !dbg !6502
  store i32 %seq, ptr %seq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !6496, metadata !DIExpression()), !dbg !6502
  call void @llvm.lifetime.start.p0(i64 8, ptr %trace_file) #8, !dbg !6502
  call void @llvm.dbg.declare(metadata ptr %trace_file, metadata !6497, metadata !DIExpression()), !dbg !6502
  %0 = load ptr, ptr %__data.addr, align 8, !dbg !6502
  store ptr %0, ptr %trace_file, align 8, !dbg !6502
  call void @llvm.lifetime.start.p0(i64 0, ptr %__data_offsets) #8, !dbg !6502
  call void @llvm.dbg.declare(metadata ptr %__data_offsets, metadata !6498, metadata !DIExpression()), !dbg !6502
  call void @llvm.lifetime.start.p0(i64 48, ptr %fbuffer) #8, !dbg !6502
  call void @llvm.dbg.declare(metadata ptr %fbuffer, metadata !6499, metadata !DIExpression()), !dbg !6502
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #8, !dbg !6502
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !6500, metadata !DIExpression()), !dbg !6502
  call void @llvm.lifetime.start.p0(i64 4, ptr %__data_size) #8, !dbg !6502
  call void @llvm.dbg.declare(metadata ptr %__data_size, metadata !6501, metadata !DIExpression()), !dbg !6502
  %1 = load ptr, ptr %trace_file, align 8, !dbg !6503
  %call = call zeroext i1 @trace_trigger_soft_disabled(ptr noundef %1) #9, !dbg !6503
  br i1 %call, label %if.then, label %if.end, !dbg !6502

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6503

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %file.addr, align 8, !dbg !6502
  %3 = load i32, ptr %crtc.addr, align 4, !dbg !6502
  %4 = load i32, ptr %seq.addr, align 4, !dbg !6502
  %call2 = call i32 @trace_event_get_offsets_drm_vblank_event_queued(ptr noundef %__data_offsets, ptr noundef %2, i32 noundef %3, i32 noundef %4) #9, !dbg !6502
  store i32 %call2, ptr %__data_size, align 4, !dbg !6502
  %5 = load ptr, ptr %trace_file, align 8, !dbg !6502
  %6 = load i32, ptr %__data_size, align 4, !dbg !6502
  %conv = sext i32 %6 to i64, !dbg !6502
  %add = add i64 24, %conv, !dbg !6502
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef %fbuffer, ptr noundef %5, i64 noundef %add) #9, !dbg !6502
  store ptr %call3, ptr %entry1, align 8, !dbg !6502
  %7 = load ptr, ptr %entry1, align 8, !dbg !6505
  %tobool = icmp ne ptr %7, null, !dbg !6505
  br i1 %tobool, label %if.end5, label %if.then4, !dbg !6502

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6505

if.end5:                                          ; preds = %if.end
  %8 = load ptr, ptr %file.addr, align 8, !dbg !6507
  %9 = load ptr, ptr %entry1, align 8, !dbg !6507
  %file6 = getelementptr inbounds %struct.trace_event_raw_drm_vblank_event_queued, ptr %9, i32 0, i32 1, !dbg !6507
  store ptr %8, ptr %file6, align 8, !dbg !6507
  %10 = load i32, ptr %crtc.addr, align 4, !dbg !6507
  %11 = load ptr, ptr %entry1, align 8, !dbg !6507
  %crtc7 = getelementptr inbounds %struct.trace_event_raw_drm_vblank_event_queued, ptr %11, i32 0, i32 2, !dbg !6507
  store i32 %10, ptr %crtc7, align 8, !dbg !6507
  %12 = load i32, ptr %seq.addr, align 4, !dbg !6507
  %13 = load ptr, ptr %entry1, align 8, !dbg !6507
  %seq8 = getelementptr inbounds %struct.trace_event_raw_drm_vblank_event_queued, ptr %13, i32 0, i32 3, !dbg !6507
  store i32 %12, ptr %seq8, align 4, !dbg !6507
  call void @trace_event_buffer_commit(ptr noundef %fbuffer) #9, !dbg !6502
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6502
  br label %cleanup, !dbg !6502

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %__data_size) #8, !dbg !6502
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #8, !dbg !6502
  call void @llvm.lifetime.end.p0(i64 48, ptr %fbuffer) #8, !dbg !6502
  call void @llvm.lifetime.end.p0(i64 0, ptr %__data_offsets) #8, !dbg !6502
  call void @llvm.lifetime.end.p0(i64 8, ptr %trace_file) #8, !dbg !6502
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6502

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trace_event_get_offsets_drm_vblank_event_queued(ptr noundef %__data_offsets, ptr noundef %file, i32 noundef %crtc, i32 noundef %seq) #5 align 16 !dbg !6509 {
entry:
  %__data_offsets.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %crtc.addr = alloca i32, align 4
  %seq.addr = alloca i32, align 4
  %__data_size = alloca i32, align 4
  %__item_length = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  store ptr %__data_offsets, ptr %__data_offsets.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data_offsets.addr, metadata !6514, metadata !DIExpression()), !dbg !6521
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6515, metadata !DIExpression()), !dbg !6521
  store i32 %crtc, ptr %crtc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %crtc.addr, metadata !6516, metadata !DIExpression()), !dbg !6521
  store i32 %seq, ptr %seq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !6517, metadata !DIExpression()), !dbg !6521
  call void @llvm.lifetime.start.p0(i64 4, ptr %__data_size) #8, !dbg !6521
  call void @llvm.dbg.declare(metadata ptr %__data_size, metadata !6518, metadata !DIExpression()), !dbg !6521
  store i32 0, ptr %__data_size, align 4, !dbg !6521
  call void @llvm.lifetime.start.p0(i64 4, ptr %__item_length) #8, !dbg !6521
  call void @llvm.dbg.declare(metadata ptr %__item_length, metadata !6519, metadata !DIExpression()), !dbg !6521
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #8, !dbg !6521
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !6520, metadata !DIExpression()), !dbg !6521
  %0 = load i32, ptr %__data_size, align 4, !dbg !6521
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #8, !dbg !6521
  call void @llvm.lifetime.end.p0(i64 4, ptr %__item_length) #8, !dbg !6521
  call void @llvm.lifetime.end.p0(i64 4, ptr %__data_size) #8, !dbg !6521
  ret i32 %0, !dbg !6521
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trace_raw_output_drm_vblank_event_queued(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #1 align 16 !dbg !6522 {
entry:
  %retval = alloca i32, align 4
  %iter.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %trace_event.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %p = alloca ptr, align 8
  %field = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !6524, metadata !DIExpression()), !dbg !6531
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6525, metadata !DIExpression()), !dbg !6531
  store ptr %trace_event, ptr %trace_event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trace_event.addr, metadata !6526, metadata !DIExpression()), !dbg !6531
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #8, !dbg !6531
  call void @llvm.dbg.declare(metadata ptr %s, metadata !6527, metadata !DIExpression()), !dbg !6531
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !6531
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16, !dbg !6531
  store ptr %seq, ptr %s, align 8, !dbg !6531
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !6531
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6528, metadata !DIExpression()), !dbg !6531
  %1 = load ptr, ptr %iter.addr, align 8, !dbg !6531
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %1, i32 0, i32 13, !dbg !6531
  store ptr %tmp_seq, ptr %p, align 8, !dbg !6531
  call void @llvm.lifetime.start.p0(i64 8, ptr %field) #8, !dbg !6531
  call void @llvm.dbg.declare(metadata ptr %field, metadata !6529, metadata !DIExpression()), !dbg !6531
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8, !dbg !6531
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6530, metadata !DIExpression()), !dbg !6531
  %2 = load ptr, ptr %iter.addr, align 8, !dbg !6531
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %2, i32 0, i32 17, !dbg !6531
  %3 = load ptr, ptr %ent, align 8, !dbg !6531
  store ptr %3, ptr %field, align 8, !dbg !6531
  %4 = load ptr, ptr %iter.addr, align 8, !dbg !6531
  %5 = load ptr, ptr %trace_event.addr, align 8, !dbg !6531
  %call = call i32 @trace_raw_output_prep(ptr noundef %4, ptr noundef %5) #9, !dbg !6531
  store i32 %call, ptr %ret, align 4, !dbg !6531
  %6 = load i32, ptr %ret, align 4, !dbg !6532
  %cmp = icmp ne i32 %6, 1, !dbg !6532
  br i1 %cmp, label %if.then, label %if.end, !dbg !6531

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %ret, align 4, !dbg !6532
  store i32 %7, ptr %retval, align 4, !dbg !6532
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6532

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %iter.addr, align 8, !dbg !6531
  %9 = load ptr, ptr %field, align 8, !dbg !6531
  %file = getelementptr inbounds %struct.trace_event_raw_drm_vblank_event_queued, ptr %9, i32 0, i32 1, !dbg !6531
  %10 = load ptr, ptr %file, align 8, !dbg !6531
  %11 = load ptr, ptr %field, align 8, !dbg !6531
  %crtc = getelementptr inbounds %struct.trace_event_raw_drm_vblank_event_queued, ptr %11, i32 0, i32 2, !dbg !6531
  %12 = load i32, ptr %crtc, align 8, !dbg !6531
  %13 = load ptr, ptr %field, align 8, !dbg !6531
  %seq1 = getelementptr inbounds %struct.trace_event_raw_drm_vblank_event_queued, ptr %13, i32 0, i32 3, !dbg !6531
  %14 = load i32, ptr %seq1, align 4, !dbg !6531
  call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %8, ptr noundef @.str.13, ptr noundef %10, i32 noundef %12, i32 noundef %14) #9, !dbg !6531
  %15 = load ptr, ptr %s, align 8, !dbg !6531
  %call2 = call i32 @trace_handle_return(ptr noundef %15) #9, !dbg !6531
  store i32 %call2, ptr %retval, align 4, !dbg !6531
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6531

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8, !dbg !6531
  call void @llvm.lifetime.end.p0(i64 8, ptr %field) #8, !dbg !6531
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !6531
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #8, !dbg !6531
  %16 = load i32, ptr %retval, align 4, !dbg !6531
  ret i32 %16, !dbg !6531
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_trace_event_raw_event_drm_vblank_event_delivered(ptr noundef %__data, ptr noundef %file, i32 noundef %crtc, i32 noundef %seq) #1 align 16 !dbg !6534 {
entry:
  %__data.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %crtc.addr = alloca i32, align 4
  %seq.addr = alloca i32, align 4
  %trace_file = alloca ptr, align 8
  %__data_offsets = alloca %struct.trace_event_data_offsets_drm_vblank_event_delivered, align 1
  %fbuffer = alloca %struct.trace_event_buffer, align 8
  %entry1 = alloca ptr, align 8
  %__data_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6536, metadata !DIExpression()), !dbg !6545
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6537, metadata !DIExpression()), !dbg !6545
  store i32 %crtc, ptr %crtc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %crtc.addr, metadata !6538, metadata !DIExpression()), !dbg !6545
  store i32 %seq, ptr %seq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !6539, metadata !DIExpression()), !dbg !6545
  call void @llvm.lifetime.start.p0(i64 8, ptr %trace_file) #8, !dbg !6545
  call void @llvm.dbg.declare(metadata ptr %trace_file, metadata !6540, metadata !DIExpression()), !dbg !6545
  %0 = load ptr, ptr %__data.addr, align 8, !dbg !6545
  store ptr %0, ptr %trace_file, align 8, !dbg !6545
  call void @llvm.lifetime.start.p0(i64 0, ptr %__data_offsets) #8, !dbg !6545
  call void @llvm.dbg.declare(metadata ptr %__data_offsets, metadata !6541, metadata !DIExpression()), !dbg !6545
  call void @llvm.lifetime.start.p0(i64 48, ptr %fbuffer) #8, !dbg !6545
  call void @llvm.dbg.declare(metadata ptr %fbuffer, metadata !6542, metadata !DIExpression()), !dbg !6545
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #8, !dbg !6545
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !6543, metadata !DIExpression()), !dbg !6545
  call void @llvm.lifetime.start.p0(i64 4, ptr %__data_size) #8, !dbg !6545
  call void @llvm.dbg.declare(metadata ptr %__data_size, metadata !6544, metadata !DIExpression()), !dbg !6545
  %1 = load ptr, ptr %trace_file, align 8, !dbg !6546
  %call = call zeroext i1 @trace_trigger_soft_disabled(ptr noundef %1) #9, !dbg !6546
  br i1 %call, label %if.then, label %if.end, !dbg !6545

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6546

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %file.addr, align 8, !dbg !6545
  %3 = load i32, ptr %crtc.addr, align 4, !dbg !6545
  %4 = load i32, ptr %seq.addr, align 4, !dbg !6545
  %call2 = call i32 @trace_event_get_offsets_drm_vblank_event_delivered(ptr noundef %__data_offsets, ptr noundef %2, i32 noundef %3, i32 noundef %4) #9, !dbg !6545
  store i32 %call2, ptr %__data_size, align 4, !dbg !6545
  %5 = load ptr, ptr %trace_file, align 8, !dbg !6545
  %6 = load i32, ptr %__data_size, align 4, !dbg !6545
  %conv = sext i32 %6 to i64, !dbg !6545
  %add = add i64 24, %conv, !dbg !6545
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef %fbuffer, ptr noundef %5, i64 noundef %add) #9, !dbg !6545
  store ptr %call3, ptr %entry1, align 8, !dbg !6545
  %7 = load ptr, ptr %entry1, align 8, !dbg !6548
  %tobool = icmp ne ptr %7, null, !dbg !6548
  br i1 %tobool, label %if.end5, label %if.then4, !dbg !6545

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6548

if.end5:                                          ; preds = %if.end
  %8 = load ptr, ptr %file.addr, align 8, !dbg !6550
  %9 = load ptr, ptr %entry1, align 8, !dbg !6550
  %file6 = getelementptr inbounds %struct.trace_event_raw_drm_vblank_event_delivered, ptr %9, i32 0, i32 1, !dbg !6550
  store ptr %8, ptr %file6, align 8, !dbg !6550
  %10 = load i32, ptr %crtc.addr, align 4, !dbg !6550
  %11 = load ptr, ptr %entry1, align 8, !dbg !6550
  %crtc7 = getelementptr inbounds %struct.trace_event_raw_drm_vblank_event_delivered, ptr %11, i32 0, i32 2, !dbg !6550
  store i32 %10, ptr %crtc7, align 8, !dbg !6550
  %12 = load i32, ptr %seq.addr, align 4, !dbg !6550
  %13 = load ptr, ptr %entry1, align 8, !dbg !6550
  %seq8 = getelementptr inbounds %struct.trace_event_raw_drm_vblank_event_delivered, ptr %13, i32 0, i32 3, !dbg !6550
  store i32 %12, ptr %seq8, align 4, !dbg !6550
  call void @trace_event_buffer_commit(ptr noundef %fbuffer) #9, !dbg !6545
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6545
  br label %cleanup, !dbg !6545

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %__data_size) #8, !dbg !6545
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #8, !dbg !6545
  call void @llvm.lifetime.end.p0(i64 48, ptr %fbuffer) #8, !dbg !6545
  call void @llvm.lifetime.end.p0(i64 0, ptr %__data_offsets) #8, !dbg !6545
  call void @llvm.lifetime.end.p0(i64 8, ptr %trace_file) #8, !dbg !6545
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6545

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trace_event_get_offsets_drm_vblank_event_delivered(ptr noundef %__data_offsets, ptr noundef %file, i32 noundef %crtc, i32 noundef %seq) #5 align 16 !dbg !6552 {
entry:
  %__data_offsets.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %crtc.addr = alloca i32, align 4
  %seq.addr = alloca i32, align 4
  %__data_size = alloca i32, align 4
  %__item_length = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  store ptr %__data_offsets, ptr %__data_offsets.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data_offsets.addr, metadata !6557, metadata !DIExpression()), !dbg !6564
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6558, metadata !DIExpression()), !dbg !6564
  store i32 %crtc, ptr %crtc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %crtc.addr, metadata !6559, metadata !DIExpression()), !dbg !6564
  store i32 %seq, ptr %seq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !6560, metadata !DIExpression()), !dbg !6564
  call void @llvm.lifetime.start.p0(i64 4, ptr %__data_size) #8, !dbg !6564
  call void @llvm.dbg.declare(metadata ptr %__data_size, metadata !6561, metadata !DIExpression()), !dbg !6564
  store i32 0, ptr %__data_size, align 4, !dbg !6564
  call void @llvm.lifetime.start.p0(i64 4, ptr %__item_length) #8, !dbg !6564
  call void @llvm.dbg.declare(metadata ptr %__item_length, metadata !6562, metadata !DIExpression()), !dbg !6564
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #8, !dbg !6564
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !6563, metadata !DIExpression()), !dbg !6564
  %0 = load i32, ptr %__data_size, align 4, !dbg !6564
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #8, !dbg !6564
  call void @llvm.lifetime.end.p0(i64 4, ptr %__item_length) #8, !dbg !6564
  call void @llvm.lifetime.end.p0(i64 4, ptr %__data_size) #8, !dbg !6564
  ret i32 %0, !dbg !6564
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trace_raw_output_drm_vblank_event_delivered(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #1 align 16 !dbg !6565 {
entry:
  %retval = alloca i32, align 4
  %iter.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %trace_event.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %p = alloca ptr, align 8
  %field = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !6567, metadata !DIExpression()), !dbg !6574
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6568, metadata !DIExpression()), !dbg !6574
  store ptr %trace_event, ptr %trace_event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trace_event.addr, metadata !6569, metadata !DIExpression()), !dbg !6574
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #8, !dbg !6574
  call void @llvm.dbg.declare(metadata ptr %s, metadata !6570, metadata !DIExpression()), !dbg !6574
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !6574
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16, !dbg !6574
  store ptr %seq, ptr %s, align 8, !dbg !6574
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !6574
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6571, metadata !DIExpression()), !dbg !6574
  %1 = load ptr, ptr %iter.addr, align 8, !dbg !6574
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %1, i32 0, i32 13, !dbg !6574
  store ptr %tmp_seq, ptr %p, align 8, !dbg !6574
  call void @llvm.lifetime.start.p0(i64 8, ptr %field) #8, !dbg !6574
  call void @llvm.dbg.declare(metadata ptr %field, metadata !6572, metadata !DIExpression()), !dbg !6574
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8, !dbg !6574
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6573, metadata !DIExpression()), !dbg !6574
  %2 = load ptr, ptr %iter.addr, align 8, !dbg !6574
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %2, i32 0, i32 17, !dbg !6574
  %3 = load ptr, ptr %ent, align 8, !dbg !6574
  store ptr %3, ptr %field, align 8, !dbg !6574
  %4 = load ptr, ptr %iter.addr, align 8, !dbg !6574
  %5 = load ptr, ptr %trace_event.addr, align 8, !dbg !6574
  %call = call i32 @trace_raw_output_prep(ptr noundef %4, ptr noundef %5) #9, !dbg !6574
  store i32 %call, ptr %ret, align 4, !dbg !6574
  %6 = load i32, ptr %ret, align 4, !dbg !6575
  %cmp = icmp ne i32 %6, 1, !dbg !6575
  br i1 %cmp, label %if.then, label %if.end, !dbg !6574

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %ret, align 4, !dbg !6575
  store i32 %7, ptr %retval, align 4, !dbg !6575
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6575

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %iter.addr, align 8, !dbg !6574
  %9 = load ptr, ptr %field, align 8, !dbg !6574
  %file = getelementptr inbounds %struct.trace_event_raw_drm_vblank_event_delivered, ptr %9, i32 0, i32 1, !dbg !6574
  %10 = load ptr, ptr %file, align 8, !dbg !6574
  %11 = load ptr, ptr %field, align 8, !dbg !6574
  %crtc = getelementptr inbounds %struct.trace_event_raw_drm_vblank_event_delivered, ptr %11, i32 0, i32 2, !dbg !6574
  %12 = load i32, ptr %crtc, align 8, !dbg !6574
  %13 = load ptr, ptr %field, align 8, !dbg !6574
  %seq1 = getelementptr inbounds %struct.trace_event_raw_drm_vblank_event_delivered, ptr %13, i32 0, i32 3, !dbg !6574
  %14 = load i32, ptr %seq1, align 4, !dbg !6574
  call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %8, ptr noundef @.str.13, ptr noundef %10, i32 noundef %12, i32 noundef %14) #9, !dbg !6574
  %15 = load ptr, ptr %s, align 8, !dbg !6574
  %call2 = call i32 @trace_handle_return(ptr noundef %15) #9, !dbg !6574
  store i32 %call2, ptr %retval, align 4, !dbg !6574
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6574

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8, !dbg !6574
  call void @llvm.lifetime.end.p0(i64 8, ptr %field) #8, !dbg !6574
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !6574
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #8, !dbg !6574
  %16 = load i32, ptr %retval, align 4, !dbg !6574
  ret i32 %16, !dbg !6574
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bpf_prog_array_valid(ptr noundef %call) #5 align 16 !dbg !6577 {
entry:
  %call.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %call, ptr %call.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %call.addr, metadata !6581, metadata !DIExpression()), !dbg !6582
  br label %do.body, !dbg !6583

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6585

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %call.addr, align 8, !dbg !6583
  %prog_array = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11, !dbg !6583
  %1 = load volatile ptr, ptr %prog_array, align 8, !dbg !6583
  store ptr %1, ptr %tmp, align 8, !dbg !6585
  %2 = load ptr, ptr %tmp, align 8, !dbg !6583
  %tobool = icmp ne ptr %2, null, !dbg !6587
  %lnot = xor i1 %tobool, true, !dbg !6587
  %lnot1 = xor i1 %lnot, true, !dbg !6588
  ret i1 %lnot1, !dbg !6589
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hlist_empty(ptr noundef %h) #5 align 16 !dbg !6590 {
entry:
  %h.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !6597, metadata !DIExpression()), !dbg !6598
  br label %do.body, !dbg !6599

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6601

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %h.addr, align 8, !dbg !6599
  %first = getelementptr inbounds %struct.hlist_head, ptr %0, i32 0, i32 0, !dbg !6599
  %1 = load volatile ptr, ptr %first, align 8, !dbg !6599
  store ptr %1, ptr %tmp, align 8, !dbg !6601
  %2 = load ptr, ptr %tmp, align 8, !dbg !6599
  %tobool = icmp ne ptr %2, null, !dbg !6603
  %lnot = xor i1 %tobool, true, !dbg !6603
  %lnot.ext = zext i1 %lnot to i32, !dbg !6603
  ret i32 %lnot.ext, !dbg !6604
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6605 dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @perf_fetch_caller_regs(ptr noundef %regs) #5 align 16 !dbg !6609 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6613, metadata !DIExpression()), !dbg !6614
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !6615
  %1 = ptrtoint ptr %0 to i64, !dbg !6615
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6615
  %ip = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 16, !dbg !6615
  store i64 %1, ptr %ip, align 8, !dbg !6615
  %3 = call ptr @llvm.frameaddress.p0(i32 0), !dbg !6615
  %4 = ptrtoint ptr %3 to i64, !dbg !6615
  %5 = load ptr, ptr %regs.addr, align 8, !dbg !6615
  %sp = getelementptr inbounds %struct.pt_regs, ptr %5, i32 0, i32 19, !dbg !6615
  store i64 %4, ptr %sp, align 8, !dbg !6615
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !6615
  %7 = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 17, !dbg !6615
  store i16 16, ptr %7, align 8, !dbg !6615
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !6615
  %flags = getelementptr inbounds %struct.pt_regs, ptr %8, i32 0, i32 18, !dbg !6615
  store i64 0, ptr %flags, align 8, !dbg !6615
  ret void, !dbg !6617
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6618 dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #6

attributes #0 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!6128, !6129, !6130, !6131, !6132, !6133, !6134, !6135}
!llvm.ident = !{!6136}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__tpstrtab_drm_vblank_event", scope: !2, file: !5981, line: 15, type: !6125, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/.drm_trace_points.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/drm\22 -D KBUILD_BASENAME=\22drm_trace_points\22 -D KBUILD_MODNAME=\22drm\22 -D __KBUILD_MODNAME=kmod_drm -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/drm_trace_points.ll drivers/gpu/drm/drm_trace_points.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !281, globals: !6011, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/drm_trace_points.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d720a02b5f887e596591d4ef30e7f75")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141, !236, !245, !256, !262, !276}
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
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !143, file: !142, line: 147, baseType: !7, size: 32, elements: !233)
!142 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !142, line: 135, size: 512, elements: !144)
!144 = !{!145, !149, !151, !152, !156, !157, !173, !231, !232}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !143, file: !142, line: 136, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!148 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !143, file: !142, line: 137, baseType: !150, size: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !143, file: !142, line: 138, baseType: !109, size: 32, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !143, file: !142, line: 139, baseType: !153, size: 16, offset: 160)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !154, line: 24, baseType: !155)
!154 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!155 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !143, file: !142, line: 150, baseType: !141, size: 32, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !143, file: !142, line: 151, baseType: !158, size: 64, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !142, line: 64, baseType: !160)
!160 = !DISubroutineType(types: !161)
!161 = !{!109, !162, !109, !150, !163, !169}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !154, line: 61, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !166, line: 72, baseType: !167)
!166 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !166, line: 16, baseType: !168)
!168 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !154, line: 52, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !166, line: 88, baseType: !172)
!172 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !143, file: !142, line: 152, baseType: !174, size: 64, offset: 320)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !142, line: 117, size: 256, elements: !176)
!176 = !{!177, !182}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !175, file: !142, line: 118, baseType: !178, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !154, line: 174, baseType: !179)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !154, line: 172, size: 32, elements: !180)
!180 = !{!181}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !179, file: !154, line: 173, baseType: !109, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !175, file: !142, line: 119, baseType: !183, size: 192, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !184, line: 41, baseType: !185)
!184 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !184, line: 37, size: 192, elements: !186)
!186 = !{!187, !225}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !185, file: !184, line: 38, baseType: !188, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !189, line: 29, baseType: !190)
!189 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !189, line: 17, size: 32, elements: !191)
!191 = !{!192}
!192 = !DIDerivedType(tag: DW_TAG_member, scope: !190, file: !189, line: 18, baseType: !193, size: 32)
!193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !190, file: !189, line: 18, size: 32, elements: !194)
!194 = !{!195}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !193, file: !189, line: 19, baseType: !196, size: 32)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !197, line: 14, size: 32, elements: !198)
!197 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!198 = !{!199}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !196, file: !197, line: 15, baseType: !200, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !201, line: 44, baseType: !202)
!201 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !201, line: 14, size: 32, elements: !203)
!203 = !{!204}
!204 = !DIDerivedType(tag: DW_TAG_member, scope: !202, file: !201, line: 15, baseType: !205, size: 32)
!205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !202, file: !201, line: 15, size: 32, elements: !206)
!206 = !{!207, !208, !218}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !205, file: !201, line: 16, baseType: !178, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, scope: !205, file: !201, line: 24, baseType: !209, size: 16)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !205, file: !201, line: 24, size: 16, elements: !210)
!210 = !{!211, !217}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !209, file: !201, line: 25, baseType: !212, size: 8)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !213, line: 17, baseType: !214)
!213 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !215, line: 21, baseType: !216)
!215 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!216 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !209, file: !201, line: 26, baseType: !212, size: 8, offset: 8)
!218 = !DIDerivedType(tag: DW_TAG_member, scope: !205, file: !201, line: 28, baseType: !219, size: 32)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !205, file: !201, line: 28, size: 32, elements: !220)
!220 = !{!221, !224}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !219, file: !201, line: 29, baseType: !222, size: 16)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !213, line: 19, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !215, line: 24, baseType: !155)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !219, file: !201, line: 30, baseType: !222, size: 16, offset: 16)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !185, file: !184, line: 39, baseType: !226, size: 128, offset: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !154, line: 190, size: 128, elements: !227)
!227 = !{!228, !230}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !226, file: !154, line: 191, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !226, file: !154, line: 191, baseType: !229, size: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !143, file: !142, line: 153, baseType: !150, size: 64, offset: 384)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !143, file: !142, line: 154, baseType: !150, size: 64, offset: 448)
!233 = !{!234, !235}
!234 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!235 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!236 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !237, line: 593, baseType: !109, size: 32, elements: !238)
!237 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!238 = !{!239, !240, !241, !242, !243, !244}
!239 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!240 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!241 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!242 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!243 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!244 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!245 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !246, line: 253, baseType: !7, size: 32, elements: !247)
!246 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!247 = !{!248, !249, !250, !251, !252, !253, !254, !255}
!248 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!249 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!250 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!251 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!252 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!253 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!254 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!255 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!256 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !246, line: 158, baseType: !7, size: 32, elements: !257)
!257 = !{!258, !259, !260, !261}
!258 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!259 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!260 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!261 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!262 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !246, line: 640, baseType: !7, size: 32, elements: !263)
!263 = !{!264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275}
!264 = !DIEnumerator(name: "EVENT_FILE_FL_ENABLED", value: 1)
!265 = !DIEnumerator(name: "EVENT_FILE_FL_RECORDED_CMD", value: 2)
!266 = !DIEnumerator(name: "EVENT_FILE_FL_RECORDED_TGID", value: 4)
!267 = !DIEnumerator(name: "EVENT_FILE_FL_FILTERED", value: 8)
!268 = !DIEnumerator(name: "EVENT_FILE_FL_NO_SET_FILTER", value: 16)
!269 = !DIEnumerator(name: "EVENT_FILE_FL_SOFT_MODE", value: 32)
!270 = !DIEnumerator(name: "EVENT_FILE_FL_SOFT_DISABLED", value: 64)
!271 = !DIEnumerator(name: "EVENT_FILE_FL_TRIGGER_MODE", value: 128)
!272 = !DIEnumerator(name: "EVENT_FILE_FL_TRIGGER_COND", value: 256)
!273 = !DIEnumerator(name: "EVENT_FILE_FL_PID_FILTER", value: 512)
!274 = !DIEnumerator(name: "EVENT_FILE_FL_WAS_ENABLED", value: 1024)
!275 = !DIEnumerator(name: "EVENT_FILE_FL_FREED", value: 2048)
!276 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !277, line: 10, baseType: !7, size: 32, elements: !278)
!277 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!278 = !{!279, !280}
!279 = !DIEnumerator(name: "false", value: 0)
!280 = !DIEnumerator(name: "true", value: 1)
!281 = !{!150, !282, !285, !292, !295, !304, !109, !5979, !5989, !5997, !2767, !168, !6005, !6008}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !287, line: 26, size: 192, elements: !288)
!287 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!288 = !{!289, !290, !291}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !286, file: !287, line: 27, baseType: !150, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !286, file: !287, line: 28, baseType: !150, size: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !286, file: !287, line: 29, baseType: !109, size: 32, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !150)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !150, !109, !7, !298, !302}
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !299, line: 29, baseType: !300)
!299 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !213, line: 22, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !215, line: 30, baseType: !172)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !154, line: 35, baseType: !303)
!303 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !150, !307, !109, !7}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !309, line: 166, size: 2944, elements: !310)
!309 = !DIFile(filename: "./include/drm/drm_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f20734895d003ad7da48316ffd72e54c")
!310 = !{!311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !323, !324, !5940, !5941, !5944, !5945, !5959, !5960, !5961, !5962, !5963, !5964, !5965, !5966, !5967, !5968, !5969, !5970, !5971, !5972, !5973}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !308, file: !309, line: 176, baseType: !302, size: 8)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "stereo_allowed", scope: !308, file: !309, line: 183, baseType: !302, size: 8, offset: 8)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "universal_planes", scope: !308, file: !309, line: 191, baseType: !302, size: 8, offset: 16)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "atomic", scope: !308, file: !309, line: 194, baseType: !302, size: 8, offset: 24)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_allowed", scope: !308, file: !309, line: 202, baseType: !302, size: 8, offset: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_connectors", scope: !308, file: !309, line: 209, baseType: !302, size: 8, offset: 40)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "was_master", scope: !308, file: !309, line: 220, baseType: !302, size: 8, offset: 48)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "is_master", scope: !308, file: !309, line: 231, baseType: !302, size: 8, offset: 56)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "supports_virtualized_cursor_plane", scope: !308, file: !309, line: 243, baseType: !302, size: 8, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !308, file: !309, line: 268, baseType: !321, size: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_master", file: !309, line: 268, flags: DIFlagFwdDecl)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "master_lookup_lock", scope: !308, file: !309, line: 271, baseType: !188, size: 32, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !308, file: !309, line: 281, baseType: !325, size: 64, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !327)
!327 = !{!328, !334, !335, !336, !349, !350, !351, !360}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !326, file: !30, line: 61, baseType: !329, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !330, line: 113, baseType: !331)
!330 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !330, line: 111, size: 32, elements: !332)
!332 = !{!333}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !331, file: !330, line: 112, baseType: !178, size: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !326, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !326, file: !30, line: 63, baseType: !188, size: 32, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !326, file: !30, line: 65, baseType: !337, size: 256, offset: 128)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 256, elements: !347)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !154, line: 194, size: 64, elements: !339)
!339 = !{!340}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !338, file: !154, line: 195, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !154, line: 198, size: 128, elements: !343)
!343 = !{!344, !345}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !342, file: !154, line: 199, baseType: !341, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !342, file: !154, line: 199, baseType: !346, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!347 = !{!348}
!348 = !DISubrange(count: 4)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !326, file: !30, line: 66, baseType: !338, size: 64, offset: 384)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !326, file: !30, line: 68, baseType: !183, size: 192, offset: 448)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !326, file: !30, line: 69, baseType: !352, size: 128, align: 64, offset: 640)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !154, line: 232, size: 128, align: 64, elements: !353)
!353 = !{!354, !356}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !352, file: !154, line: 233, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !352, file: !154, line: 234, baseType: !357, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !355}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !326, file: !30, line: 70, baseType: !361, offset: 768)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, elements: !1145)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !363)
!363 = !{!364, !365}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !362, file: !30, line: 55, baseType: !109, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !362, file: !30, line: 56, baseType: !366, size: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !368, line: 26, size: 1152, elements: !369)
!368 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!369 = !{!370, !384, !385, !386, !5929, !5930, !5931, !5932, !5935, !5936, !5937, !5938, !5939}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !367, file: !368, line: 27, baseType: !371, size: 192)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !372, line: 19, size: 192, elements: !373)
!372 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!373 = !{!374, !382, !383}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !371, file: !372, line: 20, baseType: !375, size: 128)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !376, line: 296, size: 128, elements: !377)
!376 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!377 = !{!378, !379, !381}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !375, file: !376, line: 297, baseType: !188, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !375, file: !376, line: 299, baseType: !380, size: 32, offset: 32)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !154, line: 154, baseType: !7)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !375, file: !376, line: 300, baseType: !150, size: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !371, file: !372, line: 21, baseType: !7, size: 32, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !371, file: !372, line: 22, baseType: !7, size: 32, offset: 160)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !367, file: !368, line: 28, baseType: !352, size: 128, align: 64, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !367, file: !368, line: 29, baseType: !7, size: 32, offset: 320)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !367, file: !368, line: 30, baseType: !387, size: 64, offset: 384)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !389, line: 746, size: 58368, elements: !390)
!389 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!390 = !{!391, !401, !402, !403, !404, !405, !406, !407, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !488, !499, !598, !602, !605, !636, !637, !638, !639, !650, !652, !653, !654, !655, !656, !657, !668, !669, !672, !673, !674, !675, !676, !677, !678, !679, !686, !687, !694, !695, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5082, !5085, !5086, !5087, !5088, !5089, !5090, !5091, !5092, !5093, !5094, !5095, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5105, !5106, !5107, !5108, !5109, !5110, !5111, !5112, !5113, !5125, !5131, !5132, !5133, !5134, !5135, !5137, !5140, !5147, !5152, !5155, !5158, !5161, !5193, !5391, !5418, !5419, !5420, !5421, !5422, !5423, !5424, !5425, !5426, !5429, !5430, !5431, !5440, !5448, !5449, !5450, !5451, !5452, !5457, !5458, !5459, !5462, !5463, !5466, !5469, !5472, !5480, !5483, !5484, !5570, !5571, !5572, !5573, !5574, !5580, !5581, !5582, !5583, !5584, !5585, !5588, !5591, !5592, !5595, !5596, !5597, !5598, !5599, !5600, !5601, !5602, !5603, !5616, !5617, !5618, !5619, !5620, !5621, !5622, !5623, !5624, !5635, !5636, !5642, !5645, !5646, !5647, !5648, !5649, !5650, !5651, !5654, !5726, !5728, !5729, !5730, !5731, !5732, !5733, !5748, !5749, !5750, !5751, !5752, !5753, !5754, !5755, !5756, !5757, !5758, !5762, !5763, !5764}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !388, file: !389, line: 752, baseType: !392, size: 192)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !393, line: 56, size: 192, elements: !394)
!393 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!394 = !{!395, !396, !397, !400}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !392, file: !393, line: 57, baseType: !168, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !392, file: !393, line: 58, baseType: !168, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !392, file: !393, line: 59, baseType: !398, size: 32, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !213, line: 21, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !215, line: 27, baseType: !7)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !392, file: !393, line: 61, baseType: !398, size: 32, offset: 160)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !388, file: !389, line: 754, baseType: !7, size: 32, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !388, file: !389, line: 767, baseType: !150, size: 64, offset: 256)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !388, file: !389, line: 768, baseType: !329, size: 32, offset: 320)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !388, file: !389, line: 770, baseType: !7, size: 32, offset: 352)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !388, file: !389, line: 771, baseType: !7, size: 32, offset: 384)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !388, file: !389, line: 774, baseType: !109, size: 32, offset: 416)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !388, file: !389, line: 775, baseType: !408, size: 128, offset: 448)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !409, line: 58, size: 128, elements: !410)
!409 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!410 = !{!411, !417, !422, !423}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !408, file: !409, line: 59, baseType: !412, size: 64)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !413, line: 60, size: 64, elements: !414)
!413 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !412, file: !413, line: 61, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !409, line: 60, baseType: !418, size: 32, offset: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !408, file: !409, line: 60, size: 32, elements: !419)
!419 = !{!420, !421}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !418, file: !409, line: 61, baseType: !7, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !418, file: !409, line: 62, baseType: !178, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !408, file: !409, line: 65, baseType: !222, size: 16, offset: 96)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !408, file: !409, line: 65, baseType: !222, size: 16, offset: 112)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !388, file: !389, line: 776, baseType: !7, size: 32, offset: 576)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !388, file: !389, line: 777, baseType: !168, size: 64, offset: 640)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !388, file: !389, line: 778, baseType: !387, size: 64, offset: 704)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !388, file: !389, line: 787, baseType: !109, size: 32, offset: 768)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !388, file: !389, line: 788, baseType: !109, size: 32, offset: 800)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !388, file: !389, line: 790, baseType: !109, size: 32, offset: 832)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !388, file: !389, line: 792, baseType: !109, size: 32, offset: 864)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !388, file: !389, line: 793, baseType: !109, size: 32, offset: 896)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !388, file: !389, line: 794, baseType: !109, size: 32, offset: 928)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !388, file: !389, line: 795, baseType: !7, size: 32, offset: 960)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !388, file: !389, line: 797, baseType: !435, size: 2048, offset: 1024)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !389, line: 551, size: 2048, elements: !436)
!436 = !{!437, !442, !450, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !467, !470, !471, !472}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !435, file: !389, line: 553, baseType: !438, size: 128)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !389, line: 411, size: 128, elements: !439)
!439 = !{!440, !441}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !438, file: !389, line: 412, baseType: !168, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !438, file: !389, line: 413, baseType: !398, size: 32, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !435, file: !389, line: 554, baseType: !443, size: 192, align: 64, offset: 128)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !444, line: 5, size: 192, align: 64, elements: !445)
!444 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!445 = !{!446, !447, !449}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !443, file: !444, line: 6, baseType: !168, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !443, file: !444, line: 7, baseType: !448, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !443, file: !444, line: 8, baseType: !448, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !435, file: !389, line: 555, baseType: !451, size: 64, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !213, line: 23, baseType: !452)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !215, line: 31, baseType: !453)
!453 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !435, file: !389, line: 556, baseType: !451, size: 64, offset: 384)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !435, file: !389, line: 558, baseType: !226, size: 128, offset: 448)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !435, file: !389, line: 559, baseType: !7, size: 32, offset: 576)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !435, file: !389, line: 561, baseType: !451, size: 64, offset: 640)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !435, file: !389, line: 562, baseType: !451, size: 64, offset: 704)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !435, file: !389, line: 563, baseType: !451, size: 64, offset: 768)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !435, file: !389, line: 564, baseType: !451, size: 64, offset: 832)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !435, file: !389, line: 565, baseType: !300, size: 64, offset: 896)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !435, file: !389, line: 566, baseType: !451, size: 64, offset: 960)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !435, file: !389, line: 568, baseType: !451, size: 64, offset: 1024)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !435, file: !389, line: 571, baseType: !109, size: 32, offset: 1088)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !435, file: !389, line: 572, baseType: !466, size: 64, offset: 1152)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !435, file: !389, line: 574, baseType: !468, size: 64, offset: 1216)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !389, line: 49, flags: DIFlagFwdDecl)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !435, file: !389, line: 576, baseType: !468, size: 64, offset: 1280)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !435, file: !389, line: 578, baseType: !168, size: 64, offset: 1344)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !435, file: !389, line: 588, baseType: !473, size: 512, align: 512, offset: 1536)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !389, line: 497, size: 512, align: 512, elements: !474)
!474 = !{!475, !476, !477, !478, !479, !480, !481, !482, !483}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !473, file: !389, line: 498, baseType: !451, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !473, file: !389, line: 499, baseType: !451, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !473, file: !389, line: 500, baseType: !451, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !473, file: !389, line: 501, baseType: !398, size: 32, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !473, file: !389, line: 502, baseType: !398, size: 32, offset: 224)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !473, file: !389, line: 503, baseType: !168, size: 64, offset: 256)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !473, file: !389, line: 504, baseType: !168, size: 64, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !473, file: !389, line: 505, baseType: !168, size: 64, offset: 384)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !473, file: !389, line: 506, baseType: !484, size: 64, align: 64, offset: 448)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !389, line: 445, size: 64, align: 64, elements: !485)
!485 = !{!486, !487}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !484, file: !389, line: 446, baseType: !7, size: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !484, file: !389, line: 447, baseType: !7, size: 32, offset: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !388, file: !389, line: 798, baseType: !489, size: 384, offset: 3072)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !389, line: 592, size: 384, elements: !490)
!490 = !{!491, !492, !493, !494, !495, !496, !497}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !489, file: !389, line: 593, baseType: !226, size: 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !489, file: !389, line: 594, baseType: !168, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !489, file: !389, line: 595, baseType: !168, size: 64, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !489, file: !389, line: 596, baseType: !7, size: 32, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !489, file: !389, line: 597, baseType: !155, size: 16, offset: 288)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !489, file: !389, line: 598, baseType: !155, size: 16, offset: 304)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !489, file: !389, line: 600, baseType: !498, size: 64, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !388, file: !389, line: 799, baseType: !500, size: 1792, offset: 3456)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !389, line: 610, size: 1792, elements: !501)
!501 = !{!502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !595, !596}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !500, file: !389, line: 611, baseType: !443, size: 192, align: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !500, file: !389, line: 618, baseType: !451, size: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !500, file: !389, line: 619, baseType: !451, size: 64, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !500, file: !389, line: 620, baseType: !451, size: 64, offset: 320)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !500, file: !389, line: 621, baseType: !451, size: 64, offset: 384)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !500, file: !389, line: 622, baseType: !451, size: 64, offset: 448)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !500, file: !389, line: 629, baseType: !300, size: 64, offset: 512)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !500, file: !389, line: 630, baseType: !451, size: 64, offset: 576)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !500, file: !389, line: 631, baseType: !7, size: 32, offset: 640)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !500, file: !389, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !500, file: !389, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !500, file: !389, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !500, file: !389, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !500, file: !389, line: 662, baseType: !516, size: 512, offset: 704)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !517)
!517 = !{!518, !524, !525, !530, !591, !592, !593, !594}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !516, file: !25, line: 119, baseType: !519, size: 256)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !520, line: 9, size: 256, elements: !521)
!520 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!521 = !{!522, !523}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !519, file: !520, line: 10, baseType: !443, size: 192, align: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !519, file: !520, line: 11, baseType: !298, size: 64, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !516, file: !25, line: 120, baseType: !298, size: 64, offset: 256)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !516, file: !25, line: 121, baseType: !526, size: 64, offset: 320)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{!24, !529}
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !516, file: !25, line: 122, baseType: !531, size: 64, offset: 384)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !533)
!533 = !{!534, !560, !561, !564, !574, !575, !586, !590}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !532, file: !25, line: 160, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !537)
!537 = !{!538, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !536, file: !25, line: 216, baseType: !539, size: 32)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !197, line: 23, baseType: !196)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !536, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !536, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !536, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !536, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !536, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !536, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !536, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !536, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !536, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !536, file: !25, line: 227, baseType: !155, size: 16, offset: 192)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !536, file: !25, line: 228, baseType: !155, size: 16, offset: 208)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !536, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !536, file: !25, line: 235, baseType: !298, size: 64, offset: 256)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !536, file: !25, line: 236, baseType: !529, size: 64, offset: 320)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !536, file: !25, line: 237, baseType: !298, size: 64, offset: 384)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !536, file: !25, line: 238, baseType: !529, size: 64, offset: 448)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !536, file: !25, line: 239, baseType: !557, size: 4096, align: 512, offset: 512)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, size: 4096, align: 512, elements: !558)
!558 = !{!559}
!559 = !DISubrange(count: 8)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !532, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !532, file: !25, line: 162, baseType: !562, size: 32, offset: 96)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !154, line: 32, baseType: !563)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !166, line: 96, baseType: !109)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !532, file: !25, line: 163, baseType: !565, size: 32, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !566, line: 274, baseType: !567)
!566 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !566, line: 274, size: 32, elements: !568)
!568 = !{!569}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !567, file: !566, line: 274, baseType: !570, size: 32)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !566, line: 69, baseType: !571)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !566, line: 64, size: 32, elements: !572)
!572 = !{!573}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !571, file: !566, line: 65, baseType: !7, size: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !532, file: !25, line: 164, baseType: !529, size: 64, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !532, file: !25, line: 165, baseType: !576, size: 128, offset: 256)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !520, line: 14, size: 128, elements: !577)
!577 = !{!578}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !576, file: !520, line: 15, baseType: !579, size: 128)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !444, line: 26, size: 128, elements: !580)
!580 = !{!581, !585}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !579, file: !444, line: 27, baseType: !582, size: 64)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !444, line: 12, size: 64, elements: !583)
!583 = !{!584}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !582, file: !444, line: 13, baseType: !448, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !579, file: !444, line: 28, baseType: !448, size: 64, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !532, file: !25, line: 166, baseType: !587, size: 64, offset: 384)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!298}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !532, file: !25, line: 167, baseType: !298, size: 64, offset: 448)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !516, file: !25, line: 123, baseType: !212, size: 8, offset: 448)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !516, file: !25, line: 124, baseType: !212, size: 8, offset: 456)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !516, file: !25, line: 125, baseType: !212, size: 8, offset: 464)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !516, file: !25, line: 126, baseType: !212, size: 8, offset: 472)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !500, file: !389, line: 671, baseType: !516, size: 512, offset: 1216)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !500, file: !389, line: 679, baseType: !597, size: 64, offset: 1728)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !388, file: !389, line: 800, baseType: !599, size: 64, offset: 5248)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !601)
!601 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !389, line: 800, flags: DIFlagFwdDecl)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !388, file: !389, line: 809, baseType: !603, size: 64, offset: 5312)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !389, line: 70, flags: DIFlagFwdDecl)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !388, file: !389, line: 825, baseType: !606, size: 2048, align: 512, offset: 5632)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !389, line: 509, size: 2048, align: 512, elements: !607)
!607 = !{!608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !606, file: !389, line: 511, baseType: !451, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !606, file: !389, line: 512, baseType: !451, size: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !606, file: !389, line: 513, baseType: !451, size: 64, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !606, file: !389, line: 514, baseType: !451, size: 64, offset: 192)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !606, file: !389, line: 515, baseType: !451, size: 64, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !606, file: !389, line: 516, baseType: !451, size: 64, offset: 320)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !606, file: !389, line: 518, baseType: !451, size: 64, offset: 384)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !606, file: !389, line: 519, baseType: !451, size: 64, offset: 448)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !606, file: !389, line: 520, baseType: !300, size: 64, offset: 512)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !606, file: !389, line: 522, baseType: !451, size: 64, offset: 576)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !606, file: !389, line: 523, baseType: !451, size: 64, offset: 640)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !606, file: !389, line: 524, baseType: !300, size: 64, offset: 704)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !606, file: !389, line: 526, baseType: !300, size: 64, offset: 768)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !606, file: !389, line: 527, baseType: !451, size: 64, offset: 832)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !606, file: !389, line: 529, baseType: !451, size: 64, offset: 896)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !606, file: !389, line: 530, baseType: !451, size: 64, offset: 960)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !606, file: !389, line: 531, baseType: !451, size: 64, offset: 1024)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !606, file: !389, line: 532, baseType: !451, size: 64, offset: 1088)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !606, file: !389, line: 533, baseType: !451, size: 64, offset: 1152)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !606, file: !389, line: 535, baseType: !451, size: 64, offset: 1216)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !606, file: !389, line: 536, baseType: !451, size: 64, offset: 1280)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !606, file: !389, line: 537, baseType: !451, size: 64, offset: 1344)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !606, file: !389, line: 538, baseType: !451, size: 64, offset: 1408)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !606, file: !389, line: 539, baseType: !451, size: 64, offset: 1472)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !606, file: !389, line: 540, baseType: !451, size: 64, offset: 1536)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !606, file: !389, line: 541, baseType: !451, size: 64, offset: 1600)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !606, file: !389, line: 542, baseType: !451, size: 64, offset: 1664)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !606, file: !389, line: 543, baseType: !451, size: 64, offset: 1728)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !388, file: !389, line: 833, baseType: !7, size: 32, offset: 7680)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !388, file: !389, line: 836, baseType: !7, size: 32, offset: 7712)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !388, file: !389, line: 837, baseType: !109, size: 32, offset: 7744)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !388, file: !389, line: 838, baseType: !640, size: 64, offset: 7808)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !642)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !643, line: 19, baseType: !644)
!643 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !643, line: 19, size: 64, elements: !645)
!645 = !{!646}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !644, file: !643, line: 19, baseType: !647, size: 64)
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 64, elements: !648)
!648 = !{!649}
!649 = !DISubrange(count: 1)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !388, file: !389, line: 839, baseType: !651, size: 64, offset: 7872)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !388, file: !389, line: 840, baseType: !642, size: 64, offset: 7936)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !388, file: !389, line: 841, baseType: !150, size: 64, offset: 8000)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !388, file: !389, line: 843, baseType: !155, size: 16, offset: 8064)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !388, file: !389, line: 845, baseType: !155, size: 16, offset: 8080)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !388, file: !389, line: 848, baseType: !109, size: 32, offset: 8096)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !388, file: !389, line: 849, baseType: !658, size: 32, offset: 8128)
!658 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !389, line: 718, size: 32, elements: !659)
!659 = !{!660, !667}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !658, file: !389, line: 724, baseType: !661, size: 32)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !658, file: !389, line: 719, size: 32, elements: !662)
!662 = !{!663, !664, !665, !666}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !661, file: !389, line: 720, baseType: !212, size: 8)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !661, file: !389, line: 721, baseType: !212, size: 8, offset: 8)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !661, file: !389, line: 722, baseType: !212, size: 8, offset: 16)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !661, file: !389, line: 723, baseType: !212, size: 8, offset: 24)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !658, file: !389, line: 725, baseType: !398, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !388, file: !389, line: 850, baseType: !226, size: 128, offset: 8192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !388, file: !389, line: 851, baseType: !670, size: 64, offset: 8320)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !389, line: 60, flags: DIFlagFwdDecl)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !388, file: !389, line: 855, baseType: !168, size: 64, offset: 8384)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !388, file: !389, line: 856, baseType: !212, size: 8, offset: 8448)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !388, file: !389, line: 857, baseType: !212, size: 8, offset: 8456)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !388, file: !389, line: 858, baseType: !109, size: 32, offset: 8480)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !388, file: !389, line: 859, baseType: !226, size: 128, offset: 8512)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !388, file: !389, line: 860, baseType: !109, size: 32, offset: 8640)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !388, file: !389, line: 861, baseType: !226, size: 128, offset: 8704)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !388, file: !389, line: 873, baseType: !680, size: 256, offset: 8832)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !389, line: 376, size: 256, elements: !681)
!681 = !{!682, !683, !684, !685}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !680, file: !389, line: 381, baseType: !168, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !680, file: !389, line: 384, baseType: !453, size: 64, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !680, file: !389, line: 389, baseType: !453, size: 64, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !680, file: !389, line: 392, baseType: !453, size: 64, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !388, file: !389, line: 875, baseType: !226, size: 128, offset: 9088)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !388, file: !389, line: 877, baseType: !688, size: 320, offset: 9216)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !689, line: 86, size: 320, elements: !690)
!689 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!690 = !{!691, !692, !693}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !688, file: !689, line: 87, baseType: !109, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !688, file: !689, line: 88, baseType: !226, size: 128, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !688, file: !689, line: 89, baseType: !226, size: 128, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !388, file: !389, line: 878, baseType: !443, size: 192, align: 64, offset: 9536)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !388, file: !389, line: 881, baseType: !696, size: 64, offset: 9728)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !698)
!698 = !{!699, !4996}
!699 = !DIDerivedType(tag: DW_TAG_member, scope: !697, file: !38, line: 734, baseType: !700, size: 10240)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !697, file: !38, line: 734, size: 10240, elements: !701)
!701 = !{!702, !706, !720, !4875, !4876, !4877, !4878, !4879, !4880, !4887, !4888, !4889, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4928, !4930, !4933, !4976, !4977, !4978, !4981, !4982, !4983, !4986, !4987, !4988, !4994, !4995}
!702 = !DIDerivedType(tag: DW_TAG_member, scope: !700, file: !38, line: 739, baseType: !703, size: 512, align: 512)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !700, file: !38, line: 739, size: 512, align: 512, elements: !704)
!704 = !{!705}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !703, file: !38, line: 747, baseType: !178, size: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !700, file: !38, line: 750, baseType: !707, size: 128, offset: 512)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !708, line: 218, size: 128, elements: !709)
!708 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!709 = !{!710, !718, !719}
!710 = !DIDerivedType(tag: DW_TAG_member, scope: !707, file: !708, line: 219, baseType: !711, size: 32)
!711 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !707, file: !708, line: 219, size: 32, elements: !712)
!712 = !{!713, !714}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !711, file: !708, line: 220, baseType: !188, size: 32)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !711, file: !708, line: 221, baseType: !715)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !708, line: 197, baseType: !716)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !708, line: 197, elements: !717)
!717 = !{}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !707, file: !708, line: 223, baseType: !7, size: 32, offset: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !707, file: !708, line: 224, baseType: !150, size: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !700, file: !38, line: 752, baseType: !721, size: 64, offset: 640)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!168, !724, !168, !168, !168, !168}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !726)
!726 = !{!727, !733, !734, !736, !743, !755, !756, !757, !795, !1152, !1161, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874}
!727 = !DIDerivedType(tag: DW_TAG_member, scope: !725, file: !14, line: 995, baseType: !728, size: 128)
!728 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !725, file: !14, line: 995, size: 128, elements: !729)
!729 = !{!730, !731, !732}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !728, file: !14, line: 996, baseType: !412, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !728, file: !14, line: 997, baseType: !352, size: 128, align: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !728, file: !14, line: 998, baseType: !7, size: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !725, file: !14, line: 1005, baseType: !188, size: 32, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !725, file: !14, line: 1006, baseType: !735, size: 32, offset: 160)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !154, line: 156, baseType: !7)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !725, file: !14, line: 1007, baseType: !737, size: 64, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !738, line: 13, baseType: !739)
!738 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !154, line: 181, baseType: !740)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !154, line: 179, size: 64, elements: !741)
!741 = !{!742}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !740, file: !154, line: 180, baseType: !300, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !725, file: !14, line: 1008, baseType: !744, size: 256, offset: 256)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !745, line: 66, size: 256, elements: !746)
!745 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!746 = !{!747, !748, !749, !754}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !744, file: !745, line: 67, baseType: !737, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !744, file: !745, line: 68, baseType: !539, size: 32, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !744, file: !745, line: 70, baseType: !750, size: 32, offset: 96)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !751, line: 15, size: 32, elements: !752)
!751 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!752 = !{!753}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !750, file: !751, line: 20, baseType: !178, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !744, file: !745, line: 72, baseType: !226, size: 128, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !725, file: !14, line: 1009, baseType: !170, size: 64, offset: 512)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !725, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !725, file: !14, line: 1011, baseType: !758, size: 256, offset: 640)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !759)
!759 = !{!760, !783, !784, !785, !793, !794}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !758, file: !14, line: 949, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !762, line: 34, baseType: !763)
!762 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !762, line: 25, size: 64, elements: !764)
!764 = !{!765}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !763, file: !762, line: 26, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !767, line: 27, baseType: !768)
!767 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !767, line: 13, size: 64, elements: !769)
!769 = !{!770, !782}
!770 = !DIDerivedType(tag: DW_TAG_member, scope: !768, file: !767, line: 14, baseType: !771, size: 32)
!771 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !768, file: !767, line: 14, size: 32, elements: !772)
!772 = !{!773, !774}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !771, file: !767, line: 15, baseType: !178, size: 32)
!774 = !DIDerivedType(tag: DW_TAG_member, scope: !771, file: !767, line: 16, baseType: !775, size: 32)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !771, file: !767, line: 16, size: 32, elements: !776)
!776 = !{!777, !778}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !775, file: !767, line: 18, baseType: !212, size: 8)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !775, file: !767, line: 19, baseType: !779, size: 24, offset: 8)
!779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 24, elements: !780)
!780 = !{!781}
!781 = !DISubrange(count: 3)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !768, file: !767, line: 26, baseType: !200, size: 32, offset: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !758, file: !14, line: 950, baseType: !325, size: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !758, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !758, file: !14, line: 952, baseType: !786, size: 32, offset: 160)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !787, line: 23, baseType: !788)
!787 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !787, line: 21, size: 32, elements: !789)
!789 = !{!790}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !788, file: !787, line: 22, baseType: !791, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !154, line: 37, baseType: !792)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !166, line: 49, baseType: !7)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !758, file: !14, line: 952, baseType: !786, size: 32, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !758, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !725, file: !14, line: 1012, baseType: !796, size: 64, offset: 896)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !798)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !799, line: 110, size: 1472, elements: !800)
!799 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!800 = !{!801, !802, !803, !810, !811, !812, !813, !814, !815, !816, !817, !823, !824, !825, !826, !827, !828, !950, !951, !952, !953, !954, !985, !1136, !1137, !1147}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !798, file: !799, line: 111, baseType: !737, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !798, file: !799, line: 112, baseType: !786, size: 32, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !798, file: !799, line: 113, baseType: !804, size: 32, offset: 96)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !787, line: 28, baseType: !805)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !787, line: 26, size: 32, elements: !806)
!806 = !{!807}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !805, file: !787, line: 27, baseType: !808, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !154, line: 38, baseType: !809)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !166, line: 50, baseType: !7)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !798, file: !799, line: 114, baseType: !786, size: 32, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !798, file: !799, line: 115, baseType: !804, size: 32, offset: 160)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !798, file: !799, line: 116, baseType: !786, size: 32, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !798, file: !799, line: 117, baseType: !804, size: 32, offset: 224)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !798, file: !799, line: 118, baseType: !786, size: 32, offset: 256)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !798, file: !799, line: 119, baseType: !804, size: 32, offset: 288)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !798, file: !799, line: 120, baseType: !7, size: 32, offset: 320)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !798, file: !799, line: 121, baseType: !818, size: 64, offset: 384)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !819, line: 24, baseType: !820)
!819 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !819, line: 24, size: 64, elements: !821)
!821 = !{!822}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !820, file: !819, line: 24, baseType: !451, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !798, file: !799, line: 122, baseType: !818, size: 64, offset: 448)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !798, file: !799, line: 123, baseType: !818, size: 64, offset: 512)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !798, file: !799, line: 124, baseType: !818, size: 64, offset: 576)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !798, file: !799, line: 125, baseType: !818, size: 64, offset: 640)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !798, file: !799, line: 127, baseType: !216, size: 8, offset: 704)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !798, file: !799, line: 129, baseType: !829, size: 64, offset: 768)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !831, line: 195, size: 1728, elements: !832)
!831 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!832 = !{!833, !834, !839, !844, !853, !856, !857, !864, !865, !866, !867, !870, !871, !872, !874, !875, !914, !935}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !830, file: !831, line: 196, baseType: !329, size: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !830, file: !831, line: 197, baseType: !835, size: 32, offset: 32)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !831, line: 28, baseType: !836)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !154, line: 104, baseType: !837)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !213, line: 20, baseType: !838)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !215, line: 26, baseType: !109)
!839 = !DIDerivedType(tag: DW_TAG_member, scope: !830, file: !831, line: 198, baseType: !840, size: 192, offset: 64)
!840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !830, file: !831, line: 198, size: 192, elements: !841)
!841 = !{!842, !843}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !840, file: !831, line: 199, baseType: !226, size: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !840, file: !831, line: 200, baseType: !443, size: 192, align: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !830, file: !831, line: 205, baseType: !845, size: 320, offset: 256)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !846, line: 48, size: 320, elements: !847)
!846 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!847 = !{!848, !849, !850, !851, !852}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !845, file: !846, line: 49, baseType: !737, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !845, file: !846, line: 55, baseType: !737, size: 64, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !845, file: !846, line: 57, baseType: !750, size: 32, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !845, file: !846, line: 59, baseType: !539, size: 32, offset: 160)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !845, file: !846, line: 60, baseType: !226, size: 128, offset: 192)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !830, file: !831, line: 206, baseType: !854, size: 64, offset: 576)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !831, line: 206, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !830, file: !831, line: 207, baseType: !150, size: 64, offset: 640)
!857 = !DIDerivedType(tag: DW_TAG_member, scope: !830, file: !831, line: 208, baseType: !858, size: 64, offset: 704)
!858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !830, file: !831, line: 208, size: 64, elements: !859)
!859 = !{!860, !863}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !858, file: !831, line: 209, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !862, line: 8, baseType: !301)
!862 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!863 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !858, file: !831, line: 210, baseType: !861, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !830, file: !831, line: 212, baseType: !861, size: 64, offset: 768)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !830, file: !831, line: 213, baseType: !786, size: 32, offset: 832)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !830, file: !831, line: 214, baseType: !804, size: 32, offset: 864)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !830, file: !831, line: 215, baseType: !868, size: 32, offset: 896)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !831, line: 31, baseType: !869)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !154, line: 110, baseType: !398)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !830, file: !831, line: 216, baseType: !155, size: 16, offset: 928)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !830, file: !831, line: 217, baseType: !155, size: 16, offset: 944)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !830, file: !831, line: 221, baseType: !873, size: 16, offset: 960)
!873 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !830, file: !831, line: 228, baseType: !168, size: 64, offset: 1024)
!875 = !DIDerivedType(tag: DW_TAG_member, scope: !830, file: !831, line: 245, baseType: !876, size: 320, offset: 1088)
!876 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !830, file: !831, line: 245, size: 320, elements: !877)
!877 = !{!878, !905}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !876, file: !831, line: 246, baseType: !879, size: 320)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !831, line: 114, size: 320, elements: !880)
!880 = !{!881, !882, !894, !897, !904}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !879, file: !831, line: 116, baseType: !168, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, scope: !879, file: !831, line: 117, baseType: !883, size: 64, offset: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !879, file: !831, line: 117, size: 64, elements: !884)
!884 = !{!885, !893}
!885 = !DIDerivedType(tag: DW_TAG_member, scope: !883, file: !831, line: 118, baseType: !886, size: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !831, line: 118, size: 64, elements: !887)
!887 = !{!888, !889}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !886, file: !831, line: 120, baseType: !222, size: 16)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !886, file: !831, line: 121, baseType: !890, size: 48, offset: 16)
!890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 48, elements: !891)
!891 = !{!892}
!892 = !DISubrange(count: 6)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !883, file: !831, line: 127, baseType: !168, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !879, file: !831, line: 129, baseType: !895, size: 64, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !831, line: 102, flags: DIFlagFwdDecl)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !879, file: !831, line: 130, baseType: !898, size: 64, offset: 192)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !831, line: 108, size: 192, elements: !900)
!900 = !{!901, !902, !903}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !899, file: !831, line: 109, baseType: !352, size: 128, align: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !899, file: !831, line: 110, baseType: !329, size: 32, offset: 128)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !899, file: !831, line: 111, baseType: !302, size: 8, offset: 160)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !879, file: !831, line: 131, baseType: !146, size: 64, offset: 256)
!905 = !DIDerivedType(tag: DW_TAG_member, scope: !876, file: !831, line: 247, baseType: !906, size: 320)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !876, file: !831, line: 247, size: 320, elements: !907)
!907 = !{!908, !909, !910, !911, !912}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !906, file: !831, line: 248, baseType: !168, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !906, file: !831, line: 249, baseType: !168, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !906, file: !831, line: 250, baseType: !895, size: 64, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !906, file: !831, line: 251, baseType: !898, size: 64, offset: 192)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !906, file: !831, line: 252, baseType: !913, size: 64, offset: 256)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, scope: !830, file: !831, line: 260, baseType: !915, size: 256, offset: 1408)
!915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !830, file: !831, line: 260, size: 256, elements: !916)
!916 = !{!917, !923}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !915, file: !831, line: 261, baseType: !918, size: 256)
!918 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !831, line: 134, size: 256, elements: !919)
!919 = !{!920, !921}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !918, file: !831, line: 135, baseType: !150, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !918, file: !831, line: 136, baseType: !922, size: 256)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 256, elements: !347)
!923 = !DIDerivedType(tag: DW_TAG_member, scope: !915, file: !831, line: 262, baseType: !924, size: 256)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !915, file: !831, line: 262, size: 256, elements: !925)
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !924, file: !831, line: 264, baseType: !226, size: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !924, file: !831, line: 265, baseType: !928, size: 128, offset: 128)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !929, line: 22, size: 128, elements: !930)
!929 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!930 = !{!931, !934}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !928, file: !929, line: 23, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !929, line: 23, flags: DIFlagFwdDecl)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !928, file: !929, line: 24, baseType: !168, size: 64, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !830, file: !831, line: 280, baseType: !936, size: 64, offset: 1664)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !831, line: 176, size: 192, elements: !938)
!938 = !{!939, !948, !949}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !937, file: !831, line: 177, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !831, line: 171, baseType: !941)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!109, !829, !944, !946, !829}
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !896)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !918)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !937, file: !831, line: 178, baseType: !829, size: 64, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !937, file: !831, line: 179, baseType: !895, size: 64, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !798, file: !799, line: 130, baseType: !829, size: 64, offset: 832)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !798, file: !799, line: 131, baseType: !829, size: 64, offset: 896)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !798, file: !799, line: 132, baseType: !829, size: 64, offset: 960)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !798, file: !799, line: 135, baseType: !150, size: 64, offset: 1024)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !798, file: !799, line: 137, baseType: !955, size: 64, offset: 1088)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !957, line: 14, size: 1088, elements: !958)
!957 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!958 = !{!959, !960, !969, !970, !971, !972, !973, !974}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !956, file: !957, line: 15, baseType: !329, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !956, file: !957, line: 17, baseType: !961, size: 320, offset: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !962, line: 22, size: 320, elements: !963)
!962 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!963 = !{!964, !965, !966, !967}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !961, file: !962, line: 23, baseType: !539, size: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !961, file: !962, line: 24, baseType: !300, size: 64, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !961, file: !962, line: 26, baseType: !226, size: 128, offset: 128)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !961, file: !962, line: 28, baseType: !968, size: 64, offset: 256)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !956, file: !957, line: 19, baseType: !168, size: 64, offset: 384)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !956, file: !957, line: 20, baseType: !737, size: 64, offset: 448)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !956, file: !957, line: 23, baseType: !342, size: 128, offset: 512)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !956, file: !957, line: 24, baseType: !786, size: 32, offset: 640)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !956, file: !957, line: 29, baseType: !737, size: 64, offset: 704)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !956, file: !957, line: 36, baseType: !975, size: 320, offset: 768)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !976, line: 15, size: 320, elements: !977)
!976 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!977 = !{!978, !979, !980, !981, !982, !983, !984}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !975, file: !976, line: 16, baseType: !539, size: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !975, file: !976, line: 18, baseType: !109, size: 32, offset: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !975, file: !976, line: 19, baseType: !109, size: 32, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !975, file: !976, line: 20, baseType: !109, size: 32, offset: 96)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !975, file: !976, line: 21, baseType: !109, size: 32, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !975, file: !976, line: 22, baseType: !168, size: 64, offset: 192)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !975, file: !976, line: 23, baseType: !168, size: 64, offset: 256)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !798, file: !799, line: 138, baseType: !986, size: 64, offset: 1152)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !988, line: 68, size: 4800, elements: !989)
!988 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!989 = !{!990, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1029, !1030, !1031, !1032, !1033, !1034, !1046, !1116, !1117, !1131, !1134}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !987, file: !988, line: 69, baseType: !991, size: 576)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !988, line: 23, size: 576, elements: !992)
!992 = !{!993, !994}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !991, file: !988, line: 24, baseType: !398, size: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, scope: !991, file: !988, line: 25, baseType: !995, size: 512, offset: 64)
!995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !991, file: !988, line: 25, size: 512, elements: !996)
!996 = !{!997, !1006}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !995, file: !988, line: 26, baseType: !998, size: 480)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !999, size: 480, elements: !1004)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !988, line: 17, size: 96, elements: !1000)
!1000 = !{!1001, !1002, !1003}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !999, file: !988, line: 18, baseType: !398, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !999, file: !988, line: 19, baseType: !398, size: 32, offset: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !999, file: !988, line: 20, baseType: !398, size: 32, offset: 64)
!1004 = !{!1005}
!1005 = !DISubrange(count: 5)
!1006 = !DIDerivedType(tag: DW_TAG_member, scope: !995, file: !988, line: 27, baseType: !1007, size: 128)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !995, file: !988, line: 27, size: 128, elements: !1008)
!1008 = !{!1009, !1011}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1007, file: !988, line: 28, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1007, file: !988, line: 29, baseType: !1010, size: 64, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !987, file: !988, line: 70, baseType: !991, size: 576, offset: 576)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !987, file: !988, line: 71, baseType: !991, size: 576, offset: 1152)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !987, file: !988, line: 72, baseType: !986, size: 64, offset: 1728)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !987, file: !988, line: 73, baseType: !109, size: 32, offset: 1792)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !987, file: !988, line: 74, baseType: !786, size: 32, offset: 1824)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !987, file: !988, line: 75, baseType: !804, size: 32, offset: 1856)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !987, file: !988, line: 76, baseType: !1019, size: 192, offset: 1920)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1020, line: 9, size: 192, elements: !1021)
!1020 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1021 = !{!1022, !1023, !1027, !1028}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1019, file: !1020, line: 10, baseType: !737, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1019, file: !1020, line: 11, baseType: !1024, size: 64, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1026)
!1026 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1020, line: 7, flags: DIFlagFwdDecl)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1019, file: !1020, line: 12, baseType: !7, size: 32, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1019, file: !1020, line: 13, baseType: !329, size: 32, offset: 160)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !987, file: !988, line: 77, baseType: !168, size: 64, offset: 2112)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !987, file: !988, line: 80, baseType: !302, size: 8, offset: 2176)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !987, file: !988, line: 88, baseType: !226, size: 128, offset: 2240)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !987, file: !988, line: 89, baseType: !829, size: 64, offset: 2368)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !987, file: !988, line: 90, baseType: !845, size: 320, offset: 2432)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !987, file: !988, line: 97, baseType: !1035, size: 256, offset: 2752)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1036, line: 98, size: 256, elements: !1037)
!1036 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1037 = !{!1038, !1039, !1040}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1035, file: !1036, line: 99, baseType: !737, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1035, file: !1036, line: 100, baseType: !226, size: 128, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1035, file: !1036, line: 101, baseType: !1041, size: 64, offset: 192)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1036, line: 21, baseType: !1042)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{null, !1045}
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !987, file: !988, line: 99, baseType: !1047, size: 768, offset: 3008)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !142, line: 199, size: 768, elements: !1048)
!1048 = !{!1049, !1054}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1047, file: !142, line: 200, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!109, !1053}
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1047, file: !142, line: 201, baseType: !1055, size: 704, offset: 64)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !142, line: 193, size: 704, elements: !1056)
!1056 = !{!1057, !1115}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1055, file: !142, line: 195, baseType: !1058, size: 640)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !142, line: 173, size: 640, elements: !1059)
!1059 = !{!1060, !1072, !1084, !1085, !1105, !1106, !1108, !1114}
!1060 = !DIDerivedType(tag: DW_TAG_member, scope: !1058, file: !142, line: 174, baseType: !1061, size: 192)
!1061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1058, file: !142, line: 174, size: 192, elements: !1062)
!1062 = !{!1063, !1071}
!1063 = !DIDerivedType(tag: DW_TAG_member, scope: !1061, file: !142, line: 175, baseType: !1064, size: 192)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1061, file: !142, line: 175, size: 192, elements: !1065)
!1065 = !{!1066, !1067, !1068, !1069, !1070}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1064, file: !142, line: 176, baseType: !162, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1064, file: !142, line: 177, baseType: !109, size: 32, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1064, file: !142, line: 178, baseType: !109, size: 32, offset: 96)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1064, file: !142, line: 179, baseType: !109, size: 32, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1064, file: !142, line: 180, baseType: !109, size: 32, offset: 160)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1061, file: !142, line: 182, baseType: !352, size: 128, align: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1058, file: !142, line: 184, baseType: !1073, size: 64, offset: 192)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1075, line: 26, size: 256, elements: !1076)
!1075 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1076 = !{!1077, !1078}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1074, file: !1075, line: 27, baseType: !7, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1074, file: !1075, line: 28, baseType: !1079, size: 192, offset: 64)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1080, line: 43, size: 192, elements: !1081)
!1080 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1081 = !{!1082, !1083}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1079, file: !1080, line: 44, baseType: !539, size: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1079, file: !1080, line: 45, baseType: !226, size: 128, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1058, file: !142, line: 185, baseType: !162, size: 64, offset: 256)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1058, file: !142, line: 186, baseType: !1086, size: 64, offset: 320)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !142, line: 204, size: 960, elements: !1088)
!1088 = !{!1089, !1090, !1094, !1101}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1087, file: !142, line: 205, baseType: !1047, size: 768)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1087, file: !142, line: 206, baseType: !1091, size: 64, offset: 768)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!1053, !1086}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1087, file: !142, line: 207, baseType: !1095, size: 64, offset: 832)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{null, !1098, !1099, !1100}
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1087, file: !142, line: 209, baseType: !1102, size: 64, offset: 896)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!109, !1098, !162}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1058, file: !142, line: 187, baseType: !1053, size: 64, offset: 384)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1058, file: !142, line: 188, baseType: !1107, size: 64, offset: 448)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1058, file: !142, line: 189, baseType: !1109, size: 64, offset: 512)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !142, line: 157, size: 256, elements: !1111)
!1111 = !{!1112, !1113}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1110, file: !142, line: 158, baseType: !443, size: 192, align: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1110, file: !142, line: 159, baseType: !1098, size: 64, offset: 192)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1058, file: !142, line: 190, baseType: !338, size: 64, offset: 576)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1055, file: !142, line: 196, baseType: !582, size: 64, offset: 640)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !987, file: !988, line: 100, baseType: !1098, size: 64, offset: 3776)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !987, file: !988, line: 102, baseType: !1118, size: 64, offset: 3840)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !988, line: 107, size: 1152, elements: !1120)
!1120 = !{!1121, !1122, !1123, !1124, !1125, !1129}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1119, file: !988, line: 108, baseType: !342, size: 128)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1119, file: !988, line: 109, baseType: !986, size: 64, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1119, file: !988, line: 110, baseType: !786, size: 32, offset: 192)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1119, file: !988, line: 111, baseType: !178, size: 32, offset: 224)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1119, file: !988, line: 112, baseType: !1126, size: 640, offset: 256)
!1126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !737, size: 640, elements: !1127)
!1127 = !{!1128}
!1128 = !DISubrange(count: 10)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1119, file: !988, line: 113, baseType: !1130, size: 256, offset: 896)
!1130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !737, size: 256, elements: !347)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !987, file: !988, line: 103, baseType: !1132, size: 640, offset: 3904)
!1132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1133, size: 640, elements: !1127)
!1133 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !987, file: !988, line: 104, baseType: !1135, size: 256, offset: 4544)
!1135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1133, size: 256, elements: !347)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !798, file: !799, line: 139, baseType: !1118, size: 64, offset: 1216)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !798, file: !799, line: 140, baseType: !1138, size: 64, offset: 1280)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !799, line: 25, size: 64, elements: !1140)
!1140 = !{!1141, !1142, !1143}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1139, file: !799, line: 26, baseType: !178, size: 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1139, file: !799, line: 27, baseType: !109, size: 32, offset: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1139, file: !799, line: 28, baseType: !1144, offset: 64)
!1144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !804, elements: !1145)
!1145 = !{!1146}
!1146 = !DISubrange(count: -1)
!1147 = !DIDerivedType(tag: DW_TAG_member, scope: !798, file: !799, line: 142, baseType: !1148, size: 128, offset: 1344)
!1148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !798, file: !799, line: 142, size: 128, elements: !1149)
!1149 = !{!1150, !1151}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1148, file: !799, line: 143, baseType: !109, size: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1148, file: !799, line: 144, baseType: !352, size: 128, align: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !725, file: !14, line: 1013, baseType: !1153, size: 256, offset: 960)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1154)
!1154 = !{!1155, !1156, !1157, !1158, !1159, !1160}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1153, file: !14, line: 971, baseType: !168, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1153, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1153, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1153, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1153, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1153, file: !14, line: 976, baseType: !170, size: 64, offset: 192)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !725, file: !14, line: 1014, baseType: !1162, size: 128, offset: 1216)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1163, line: 8, size: 128, elements: !1164)
!1163 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1164 = !{!1165, !4865}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1162, file: !1163, line: 9, baseType: !1166, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1168, line: 70, size: 256, elements: !1169)
!1168 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1169 = !{!1170, !4862, !4863, !4864}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1167, file: !1168, line: 71, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1173, line: 82, size: 1536, elements: !1174)
!1173 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1174 = !{!1175, !1176, !1181, !1189, !1190, !1205, !4830, !4832, !4845, !4846, !4847, !4848, !4849, !4854, !4855, !4856}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1172, file: !1173, line: 84, baseType: !7, size: 32)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1172, file: !1173, line: 85, baseType: !1177, size: 32, offset: 32)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !566, line: 275, baseType: !1178)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !566, line: 275, size: 32, elements: !1179)
!1179 = !{!1180}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1178, file: !566, line: 275, baseType: !570, size: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1172, file: !1173, line: 86, baseType: !1182, size: 128, offset: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1183, line: 38, size: 128, elements: !1184)
!1183 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1184 = !{!1185, !1187}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1182, file: !1183, line: 39, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1182, file: !1183, line: 39, baseType: !1188, size: 64, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1172, file: !1173, line: 87, baseType: !1171, size: 64, offset: 192)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1172, file: !1173, line: 88, baseType: !1191, size: 128, offset: 256)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1173, line: 49, size: 128, elements: !1192)
!1192 = !{!1193, !1202}
!1193 = !DIDerivedType(tag: DW_TAG_member, scope: !1191, file: !1173, line: 50, baseType: !1194, size: 64)
!1194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1191, file: !1173, line: 50, size: 64, elements: !1195)
!1195 = !{!1196, !1201}
!1196 = !DIDerivedType(tag: DW_TAG_member, scope: !1194, file: !1173, line: 51, baseType: !1197, size: 64)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1194, file: !1173, line: 51, size: 64, elements: !1198)
!1198 = !{!1199, !1200}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1197, file: !1173, line: 52, baseType: !398, size: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1197, file: !1173, line: 52, baseType: !398, size: 32, offset: 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1194, file: !1173, line: 54, baseType: !451, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1191, file: !1173, line: 56, baseType: !1203, size: 64, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1172, file: !1173, line: 89, baseType: !1206, size: 64, offset: 384)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !1208)
!1208 = !{!1209, !1210, !1211, !1212, !1213, !1214, !1215, !1218, !1219, !1406, !4645, !4646, !4647, !4648, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4812, !4815, !4816, !4817, !4826, !4827, !4828, !4829}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1207, file: !14, line: 642, baseType: !153, size: 16)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1207, file: !14, line: 643, baseType: !155, size: 16, offset: 16)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1207, file: !14, line: 644, baseType: !786, size: 32, offset: 32)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1207, file: !14, line: 645, baseType: !226, size: 128, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1207, file: !14, line: 646, baseType: !804, size: 32, offset: 192)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1207, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1207, file: !14, line: 650, baseType: !1216, size: 64, offset: 256)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1207, file: !14, line: 651, baseType: !1216, size: 64, offset: 320)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1207, file: !14, line: 654, baseType: !1220, size: 64, offset: 384)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1222)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !1223)
!1223 = !{!1224, !1228, !1241, !1247, !1251, !1255, !1259, !1263, !1267, !1271, !1275, !1276, !1282, !1286, !1323, !1354, !1361, !1367, !1371, !1375, !1379, !1383, !1387, !1393, !1397}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1222, file: !14, line: 1967, baseType: !1225, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!1171, !1206, !1171, !7}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1222, file: !14, line: 1968, baseType: !1229, size: 64, offset: 64)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!146, !1171, !1206, !1232}
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1234, line: 10, size: 128, elements: !1235)
!1234 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1235 = !{!1236, !1240}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1233, file: !1234, line: 11, baseType: !1237, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{null, !150}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1233, file: !1234, line: 12, baseType: !150, size: 64, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1222, file: !14, line: 1969, baseType: !1242, size: 64, offset: 128)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!109, !1245, !1206, !109}
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !819, line: 42, flags: DIFlagFwdDecl)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1222, file: !14, line: 1970, baseType: !1248, size: 64, offset: 192)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!1216, !1206, !109, !302}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1222, file: !14, line: 1972, baseType: !1252, size: 64, offset: 256)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!109, !1171, !913, !109}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1222, file: !14, line: 1974, baseType: !1256, size: 64, offset: 320)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!109, !1245, !1206, !1171, !153, !302}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1222, file: !14, line: 1976, baseType: !1260, size: 64, offset: 384)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!109, !1171, !1206, !1171}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1222, file: !14, line: 1977, baseType: !1264, size: 64, offset: 448)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!109, !1206, !1171}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1222, file: !14, line: 1978, baseType: !1268, size: 64, offset: 512)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!109, !1245, !1206, !1171, !146}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1222, file: !14, line: 1980, baseType: !1272, size: 64, offset: 576)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!109, !1245, !1206, !1171, !153}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1222, file: !14, line: 1982, baseType: !1264, size: 64, offset: 640)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1222, file: !14, line: 1983, baseType: !1277, size: 64, offset: 704)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!109, !1245, !1206, !1171, !153, !1280}
!1280 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !154, line: 21, baseType: !1281)
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !154, line: 18, baseType: !398)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1222, file: !14, line: 1985, baseType: !1283, size: 64, offset: 768)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!109, !1245, !1206, !1171, !1206, !1171, !7}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1222, file: !14, line: 1987, baseType: !1287, size: 64, offset: 832)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!109, !1245, !1171, !1290}
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !1292)
!1292 = !{!1293, !1294, !1295, !1305, !1314, !1315, !1320, !1321, !1322}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1291, file: !14, line: 227, baseType: !7, size: 32)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1291, file: !14, line: 228, baseType: !153, size: 16, offset: 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, scope: !1291, file: !14, line: 241, baseType: !1296, size: 32, offset: 64)
!1296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1291, file: !14, line: 241, size: 32, elements: !1297)
!1297 = !{!1298, !1299}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1296, file: !14, line: 242, baseType: !786, size: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1296, file: !14, line: 243, baseType: !1300, size: 32)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1301, line: 16, baseType: !1302)
!1301 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1301, line: 14, size: 32, elements: !1303)
!1303 = !{!1304}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1302, file: !1301, line: 15, baseType: !791, size: 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, scope: !1291, file: !14, line: 245, baseType: !1306, size: 32, offset: 96)
!1306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1291, file: !14, line: 245, size: 32, elements: !1307)
!1307 = !{!1308, !1309}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1306, file: !14, line: 246, baseType: !804, size: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1306, file: !14, line: 247, baseType: !1310, size: 32)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1301, line: 20, baseType: !1311)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1301, line: 18, size: 32, elements: !1312)
!1312 = !{!1313}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1311, file: !1301, line: 19, baseType: !808, size: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1291, file: !14, line: 249, baseType: !170, size: 64, offset: 128)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1291, file: !14, line: 250, baseType: !1316, size: 128, offset: 192)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !862, line: 13, size: 128, elements: !1317)
!1317 = !{!1318, !1319}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1316, file: !862, line: 14, baseType: !861, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1316, file: !862, line: 15, baseType: !1133, size: 64, offset: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1291, file: !14, line: 251, baseType: !1316, size: 128, offset: 320)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1291, file: !14, line: 252, baseType: !1316, size: 128, offset: 448)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1291, file: !14, line: 259, baseType: !724, size: 64, offset: 576)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1222, file: !14, line: 1988, baseType: !1324, size: 64, offset: 896)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!109, !1245, !1327, !1329, !398, !7}
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1162)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1331, line: 22, size: 1280, elements: !1332)
!1331 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1332 = !{!1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1330, file: !1331, line: 23, baseType: !398, size: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1330, file: !1331, line: 24, baseType: !153, size: 16, offset: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1330, file: !1331, line: 25, baseType: !7, size: 32, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1330, file: !1331, line: 26, baseType: !869, size: 32, offset: 96)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1330, file: !1331, line: 27, baseType: !451, size: 64, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1330, file: !1331, line: 28, baseType: !451, size: 64, offset: 192)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1330, file: !1331, line: 41, baseType: !451, size: 64, offset: 256)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1330, file: !1331, line: 42, baseType: !1280, size: 32, offset: 320)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1330, file: !1331, line: 43, baseType: !1280, size: 32, offset: 352)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1330, file: !1331, line: 44, baseType: !786, size: 32, offset: 384)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1330, file: !1331, line: 45, baseType: !804, size: 32, offset: 416)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1330, file: !1331, line: 46, baseType: !170, size: 64, offset: 448)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1330, file: !1331, line: 47, baseType: !1316, size: 128, offset: 512)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1330, file: !1331, line: 48, baseType: !1316, size: 128, offset: 640)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1330, file: !1331, line: 49, baseType: !1316, size: 128, offset: 768)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1330, file: !1331, line: 50, baseType: !1316, size: 128, offset: 896)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1330, file: !1331, line: 51, baseType: !451, size: 64, offset: 1024)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1330, file: !1331, line: 52, baseType: !451, size: 64, offset: 1088)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1330, file: !1331, line: 53, baseType: !398, size: 32, offset: 1152)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1330, file: !1331, line: 54, baseType: !398, size: 32, offset: 1184)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1330, file: !1331, line: 55, baseType: !451, size: 64, offset: 1216)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1222, file: !14, line: 1990, baseType: !1355, size: 64, offset: 960)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!1358, !1171, !913, !164}
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !154, line: 66, baseType: !1359)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !166, line: 73, baseType: !1360)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !166, line: 15, baseType: !1133)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1222, file: !14, line: 1991, baseType: !1362, size: 64, offset: 1024)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!109, !1206, !1365, !451, !451}
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1222, file: !14, line: 1993, baseType: !1368, size: 64, offset: 1088)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!109, !1206, !109}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1222, file: !14, line: 1994, baseType: !1372, size: 64, offset: 1152)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!109, !1206, !1171, !724, !7, !153}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1222, file: !14, line: 1997, baseType: !1376, size: 64, offset: 1216)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!109, !1245, !1206, !724, !153}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1222, file: !14, line: 1999, baseType: !1380, size: 64, offset: 1280)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!1216, !1245, !1171, !109}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1222, file: !14, line: 2001, baseType: !1384, size: 64, offset: 1344)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!109, !1245, !1171, !1216, !109}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1222, file: !14, line: 2003, baseType: !1388, size: 64, offset: 1408)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!109, !1245, !1171, !1391}
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1222, file: !14, line: 2005, baseType: !1394, size: 64, offset: 1472)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!109, !1171, !1391}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1222, file: !14, line: 2006, baseType: !1398, size: 64, offset: 1536)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!1401, !1206}
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !1403)
!1403 = !{!1404, !1405}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1402, file: !14, line: 3193, baseType: !375, size: 128)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1402, file: !14, line: 3194, baseType: !398, size: 32, offset: 128)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1207, file: !14, line: 655, baseType: !1407, size: 64, offset: 448)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !1409)
!1409 = !{!1410, !1411, !1412, !1413, !1414, !1415, !4162, !4294, !4334, !4417, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4434, !4438, !4439, !4442, !4445, !4448, !4451, !4452, !4453, !4494, !4516, !4517, !4518, !4519, !4520, !4521, !4524, !4528, !4537, !4538, !4539, !4540, !4599, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1408, file: !14, line: 1191, baseType: !226, size: 128)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1408, file: !14, line: 1192, baseType: !1280, size: 32, offset: 128)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1408, file: !14, line: 1193, baseType: !216, size: 8, offset: 160)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1408, file: !14, line: 1194, baseType: !168, size: 64, offset: 192)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1408, file: !14, line: 1195, baseType: !170, size: 64, offset: 256)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1408, file: !14, line: 1196, baseType: !1416, size: 64, offset: 320)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !1418)
!1418 = !{!1419, !1420, !1421, !1427, !1431, !1435, !1439, !4150, !4151, !4152, !4154, !4155, !4156, !4158, !4159, !4160, !4161}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1417, file: !14, line: 2367, baseType: !146, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1417, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1417, file: !14, line: 2376, baseType: !1422, size: 64, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!109, !1425}
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1168, line: 21, flags: DIFlagFwdDecl)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1417, file: !14, line: 2377, baseType: !1428, size: 64, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1430)
!1430 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1417, file: !14, line: 2378, baseType: !1432, size: 64, offset: 256)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!1171, !1416, !109, !146, !150}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1417, file: !14, line: 2380, baseType: !1436, size: 64, offset: 320)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{null, !1407}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1417, file: !14, line: 2381, baseType: !1440, size: 64, offset: 384)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !1442)
!1442 = !{!1443, !1444, !1445, !1449, !2259, !2285, !2286, !2287, !2288, !2292, !2295, !2296, !2297, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2365, !2369, !2389, !2409, !2410, !2411, !2412, !2421, !2444, !2445, !2448, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2461, !2462, !2561, !2569, !2570, !2571, !2573, !4128, !4129, !4138, !4139, !4140, !4141, !4143, !4144, !4145, !4146, !4147, !4148, !4149}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1441, file: !6, line: 403, baseType: !5, size: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1441, file: !6, line: 406, baseType: !226, size: 128, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1441, file: !6, line: 409, baseType: !1446, size: 448, offset: 192)
!1446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 448, elements: !1447)
!1447 = !{!1448}
!1448 = !DISubrange(count: 56)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1441, file: !6, line: 417, baseType: !1450, size: 768, offset: 640)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !1451)
!1451 = !{!1452, !2253, !2254, !2255, !2258}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1450, file: !6, line: 46, baseType: !1453, size: 512)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1454, line: 64, size: 512, elements: !1455)
!1454 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1455 = !{!1456, !1457, !1458, !1460, !1504, !2100, !2243, !2248, !2249, !2250, !2251, !2252}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1453, file: !1454, line: 65, baseType: !146, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1453, file: !1454, line: 66, baseType: !226, size: 128, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1453, file: !1454, line: 67, baseType: !1459, size: 64, offset: 192)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1453, file: !1454, line: 68, baseType: !1461, size: 64, offset: 256)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1454, line: 168, size: 768, elements: !1463)
!1463 = !{!1464, !1465, !1466, !1467}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1462, file: !1454, line: 169, baseType: !226, size: 128)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1462, file: !1454, line: 170, baseType: !188, size: 32, offset: 128)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1462, file: !1454, line: 171, baseType: !1453, size: 512, offset: 192)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1462, file: !1454, line: 172, baseType: !1468, size: 64, offset: 704)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1470)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1454, line: 133, size: 192, elements: !1471)
!1471 = !{!1472, !1479, !1484}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1470, file: !1454, line: 134, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1474)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!109, !1477}
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1453)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1470, file: !1454, line: 135, baseType: !1480, size: 64, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1481)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!146, !1477}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1470, file: !1454, line: 136, baseType: !1485, size: 64, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1486)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!109, !1477, !1489}
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1454, line: 125, size: 20736, elements: !1491)
!1491 = !{!1492, !1494, !1498, !1499, !1503}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1490, file: !1454, line: 126, baseType: !1493, size: 192)
!1493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !913, size: 192, elements: !780)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1490, file: !1454, line: 127, baseType: !1495, size: 4096, offset: 192)
!1495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !913, size: 4096, elements: !1496)
!1496 = !{!1497}
!1497 = !DISubrange(count: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1490, file: !1454, line: 128, baseType: !109, size: 32, offset: 4288)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1490, file: !1454, line: 129, baseType: !1500, size: 16384, offset: 4320)
!1500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 16384, elements: !1501)
!1501 = !{!1502}
!1502 = !DISubrange(count: 2048)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1490, file: !1454, line: 130, baseType: !109, size: 32, offset: 20704)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1453, file: !1454, line: 69, baseType: !1505, size: 64, offset: 320)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1507)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1454, line: 116, size: 384, elements: !1508)
!1508 = !{!1509, !1513, !1532, !2062, !2092, !2096}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1507, file: !1454, line: 117, baseType: !1510, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{null, !1459}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1507, file: !1454, line: 118, baseType: !1514, size: 64, offset: 64)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1516)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1517, line: 254, size: 128, elements: !1518)
!1517 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1518 = !{!1519, !1528}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1516, file: !1517, line: 255, baseType: !1520, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!1358, !1459, !1523, !913}
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1517, line: 30, size: 128, elements: !1525)
!1525 = !{!1526, !1527}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1524, file: !1517, line: 31, baseType: !146, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1524, file: !1517, line: 32, baseType: !153, size: 16, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1516, file: !1517, line: 256, baseType: !1529, size: 64, offset: 64)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!1358, !1459, !1523, !146, !164}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1507, file: !1454, line: 119, baseType: !1533, size: 64, offset: 128)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1536)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1517, line: 84, size: 320, elements: !1537)
!1537 = !{!1538, !1539, !1543, !2058, !2060}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1536, file: !1517, line: 85, baseType: !146, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1536, file: !1517, line: 86, baseType: !1540, size: 64, offset: 64)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!153, !1459, !1523, !109}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1536, file: !1517, line: 88, baseType: !1544, size: 64, offset: 128)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!153, !1459, !1547, !109}
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1517, line: 175, size: 512, elements: !1549)
!1549 = !{!1550, !1551, !1552, !1553, !2049, !2053, !2054}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1548, file: !1517, line: 176, baseType: !1524, size: 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1548, file: !1517, line: 177, baseType: !164, size: 64, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1548, file: !1517, line: 178, baseType: !150, size: 64, offset: 192)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1548, file: !1517, line: 179, baseType: !1554, size: 64, offset: 256)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!1557}
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !1559)
!1559 = !{!1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !2041, !2042, !2043, !2046, !2047, !2048}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1558, file: !14, line: 473, baseType: !1206, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1558, file: !14, line: 474, baseType: !375, size: 128, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1558, file: !14, line: 475, baseType: !845, size: 320, offset: 192)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1558, file: !14, line: 476, baseType: !380, size: 32, offset: 512)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1558, file: !14, line: 477, baseType: !178, size: 32, offset: 544)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1558, file: !14, line: 482, baseType: !579, size: 128, offset: 576)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1558, file: !14, line: 483, baseType: !168, size: 64, offset: 704)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1558, file: !14, line: 484, baseType: !168, size: 64, offset: 768)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1558, file: !14, line: 485, baseType: !1569, size: 64, offset: 832)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1571)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !1572)
!1572 = !{!1573, !1866, !1936, !1940, !1944, !1950, !1956, !1960, !1965, !1969, !1973, !1977, !2005, !2009, !2013, !2017, !2022, !2026, !2033, !2037}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1571, file: !14, line: 405, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!109, !1577, !1864}
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !1579)
!1579 = !{!1580, !1581, !1858, !1863}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1578, file: !38, line: 75, baseType: !168, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, scope: !1578, file: !38, line: 83, baseType: !1582, size: 320, offset: 64)
!1582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1578, file: !38, line: 83, size: 320, elements: !1583)
!1583 = !{!1584, !1605, !1619, !1623, !1857}
!1584 = !DIDerivedType(tag: DW_TAG_member, scope: !1582, file: !38, line: 84, baseType: !1585, size: 320)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1582, file: !38, line: 84, size: 320, elements: !1586)
!1586 = !{!1587, !1598, !1599, !1604}
!1587 = !DIDerivedType(tag: DW_TAG_member, scope: !1585, file: !38, line: 90, baseType: !1588, size: 128)
!1588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1585, file: !38, line: 90, size: 128, elements: !1589)
!1589 = !{!1590, !1591, !1596, !1597}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1588, file: !38, line: 91, baseType: !226, size: 128)
!1591 = !DIDerivedType(tag: DW_TAG_member, scope: !1588, file: !38, line: 94, baseType: !1592, size: 128)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1588, file: !38, line: 94, size: 128, elements: !1593)
!1593 = !{!1594, !1595}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1592, file: !38, line: 96, baseType: !150, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1592, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1588, file: !38, line: 102, baseType: !226, size: 128)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1588, file: !38, line: 103, baseType: !226, size: 128)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1585, file: !38, line: 106, baseType: !1557, size: 64, offset: 128)
!1599 = !DIDerivedType(tag: DW_TAG_member, scope: !1585, file: !38, line: 107, baseType: !1600, size: 64, offset: 192)
!1600 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1585, file: !38, line: 107, size: 64, elements: !1601)
!1601 = !{!1602, !1603}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1600, file: !38, line: 108, baseType: !168, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1600, file: !38, line: 109, baseType: !168, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1585, file: !38, line: 117, baseType: !168, size: 64, offset: 256)
!1605 = !DIDerivedType(tag: DW_TAG_member, scope: !1582, file: !38, line: 119, baseType: !1606, size: 320)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1582, file: !38, line: 119, size: 320, elements: !1607)
!1607 = !{!1608, !1609, !1612, !1613, !1614}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1606, file: !38, line: 124, baseType: !168, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1606, file: !38, line: 125, baseType: !1610, size: 64, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1606, file: !38, line: 126, baseType: !168, size: 64, offset: 128)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1606, file: !38, line: 127, baseType: !168, size: 64, offset: 192)
!1614 = !DIDerivedType(tag: DW_TAG_member, scope: !1606, file: !38, line: 128, baseType: !1615, size: 64, offset: 256)
!1615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1606, file: !38, line: 128, size: 64, elements: !1616)
!1616 = !{!1617, !1618}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1615, file: !38, line: 133, baseType: !168, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1615, file: !38, line: 138, baseType: !737, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, scope: !1582, file: !38, line: 141, baseType: !1620, size: 64)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1582, file: !38, line: 141, size: 64, elements: !1621)
!1621 = !{!1622}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1620, file: !38, line: 142, baseType: !168, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, scope: !1582, file: !38, line: 144, baseType: !1624, size: 128)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1582, file: !38, line: 144, size: 128, elements: !1625)
!1625 = !{!1626, !1856}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1624, file: !38, line: 146, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !1629)
!1629 = !{!1630, !1640, !1661, !1662, !1663, !1664, !1665, !1838, !1839, !1840}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1628, file: !54, line: 127, baseType: !1631, size: 384)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !1632)
!1632 = !{!1633, !1634, !1636, !1637, !1638, !1639}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1631, file: !54, line: 22, baseType: !168, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1631, file: !54, line: 23, baseType: !1635, size: 64, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1631, file: !54, line: 24, baseType: !1635, size: 64, offset: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1631, file: !54, line: 25, baseType: !168, size: 64, offset: 192)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1631, file: !54, line: 26, baseType: !168, size: 64, offset: 256)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1631, file: !54, line: 27, baseType: !168, size: 64, offset: 320)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1628, file: !54, line: 128, baseType: !1641, size: 128, offset: 384)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1642, line: 105, size: 128, elements: !1643)
!1642 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1643 = !{!1644, !1645}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1641, file: !1642, line: 110, baseType: !168, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1641, file: !1642, line: 118, baseType: !1646, size: 64, offset: 64)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1642, line: 95, size: 448, elements: !1648)
!1648 = !{!1649, !1650, !1656, !1657, !1658, !1659, !1660}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1647, file: !1642, line: 96, baseType: !737, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1647, file: !1642, line: 97, baseType: !1651, size: 64, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1642, line: 60, baseType: !1653)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{null, !1655}
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1647, file: !1642, line: 98, baseType: !1651, size: 64, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1647, file: !1642, line: 99, baseType: !302, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1647, file: !1642, line: 100, baseType: !302, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1647, file: !1642, line: 101, baseType: !352, size: 128, align: 64, offset: 256)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1647, file: !1642, line: 102, baseType: !1655, size: 64, offset: 384)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1628, file: !54, line: 129, baseType: !1074, size: 256, offset: 512)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1628, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1628, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1628, file: !54, line: 132, baseType: !168, size: 64, offset: 832)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1628, file: !54, line: 133, baseType: !1666, size: 64, offset: 896)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1668)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !1669)
!1669 = !{!1670, !1674, !1834}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1668, file: !54, line: 83, baseType: !1671, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{null, !1577}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1668, file: !54, line: 89, baseType: !1675, size: 64, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!1678, !1679}
!1678 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1681, line: 512, size: 896, elements: !1682)
!1681 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1682 = !{!1683, !1801, !1802, !1809, !1816, !1826, !1827, !1828, !1830, !1832}
!1683 = !DIDerivedType(tag: DW_TAG_member, scope: !1680, file: !1681, line: 513, baseType: !1684, size: 320)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1680, file: !1681, line: 513, size: 320, elements: !1685)
!1685 = !{!1686, !1797, !1798, !1799, !1800}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1684, file: !1681, line: 514, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !1689)
!1689 = !{!1690, !1699, !1700, !1708, !1715, !1716, !1721, !1722, !1727, !1728, !1731, !1790, !1791, !1792, !1793, !1794, !1795}
!1690 = !DIDerivedType(tag: DW_TAG_member, scope: !1688, file: !38, line: 628, baseType: !1691, size: 128)
!1691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1688, file: !38, line: 628, size: 128, elements: !1692)
!1692 = !{!1693, !1698}
!1693 = !DIDerivedType(tag: DW_TAG_member, scope: !1691, file: !38, line: 629, baseType: !1694, size: 128)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1691, file: !38, line: 629, size: 128, elements: !1695)
!1695 = !{!1696, !1697}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1694, file: !38, line: 631, baseType: !168, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1694, file: !38, line: 632, baseType: !168, size: 64, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1691, file: !38, line: 635, baseType: !352, size: 128, align: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1688, file: !38, line: 639, baseType: !696, size: 64, offset: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1688, file: !38, line: 640, baseType: !1701, size: 64, offset: 192)
!1701 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1702, line: 297, baseType: !1703)
!1702 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1702, line: 297, size: 64, elements: !1704)
!1704 = !{!1705}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1703, file: !1702, line: 297, baseType: !1706, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1707, line: 19, baseType: !168)
!1707 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1708 = !DIDerivedType(tag: DW_TAG_member, scope: !1688, file: !38, line: 646, baseType: !1709, size: 64, offset: 256)
!1709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1688, file: !38, line: 646, size: 64, elements: !1710)
!1710 = !{!1711, !1714}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1709, file: !38, line: 647, baseType: !1712, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1713)
!1713 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !168)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1709, file: !38, line: 648, baseType: !1713, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1688, file: !38, line: 666, baseType: !109, size: 32, offset: 320)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1688, file: !38, line: 667, baseType: !1717, size: 64, offset: 384)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !1719)
!1719 = !{!1720}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1718, file: !38, line: 580, baseType: !845, size: 320)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1688, file: !38, line: 670, baseType: !302, size: 8, offset: 448)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1688, file: !38, line: 681, baseType: !1723, size: 256, offset: 512)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1688, file: !38, line: 678, size: 256, elements: !1724)
!1724 = !{!1725, !1726}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1723, file: !38, line: 679, baseType: !443, size: 192, align: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1723, file: !38, line: 680, baseType: !168, size: 64, offset: 192)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1688, file: !38, line: 689, baseType: !226, size: 128, offset: 768)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1688, file: !38, line: 691, baseType: !1729, size: 64, offset: 896)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1688, file: !38, line: 694, baseType: !1732, size: 64, offset: 960)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1734)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1681, line: 563, size: 1024, elements: !1735)
!1735 = !{!1736, !1740, !1741, !1745, !1749, !1753, !1754, !1758, !1762, !1766, !1767, !1768, !1772, !1776, !1782, !1786}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1734, file: !1681, line: 564, baseType: !1737, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{null, !1687}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1734, file: !1681, line: 569, baseType: !1737, size: 64, offset: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1734, file: !1681, line: 571, baseType: !1742, size: 64, offset: 128)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!109, !1687, !168}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1734, file: !1681, line: 572, baseType: !1746, size: 64, offset: 192)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!109, !1687}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1734, file: !1681, line: 578, baseType: !1750, size: 64, offset: 256)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!109, !1687, !168, !168, !168}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1734, file: !1681, line: 580, baseType: !1675, size: 64, offset: 320)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1734, file: !1681, line: 581, baseType: !1755, size: 64, offset: 384)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!1678, !1679, !7}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1734, file: !1681, line: 582, baseType: !1759, size: 64, offset: 448)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!1678, !1679, !168, !168}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1734, file: !1681, line: 584, baseType: !1763, size: 64, offset: 512)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!168, !1687}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1734, file: !1681, line: 588, baseType: !1675, size: 64, offset: 576)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1734, file: !1681, line: 591, baseType: !1675, size: 64, offset: 640)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1734, file: !1681, line: 597, baseType: !1769, size: 64, offset: 704)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!109, !1687, !168, !150, !109, !109}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1734, file: !1681, line: 603, baseType: !1773, size: 64, offset: 768)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!146, !1687}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1734, file: !1681, line: 613, baseType: !1777, size: 64, offset: 832)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!109, !1687, !1780}
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !38, line: 717, flags: DIFlagFwdDecl)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1734, file: !1681, line: 625, baseType: !1783, size: 64, offset: 896)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!1780, !1687, !168}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1734, file: !1681, line: 633, baseType: !1787, size: 64, offset: 960)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!1577, !1687, !168}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1688, file: !38, line: 697, baseType: !168, size: 64, offset: 1024)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1688, file: !38, line: 699, baseType: !724, size: 64, offset: 1088)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1688, file: !38, line: 700, baseType: !150, size: 64, offset: 1152)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1688, file: !38, line: 711, baseType: !737, size: 64, offset: 1216)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1688, file: !38, line: 717, baseType: !1780, size: 64, offset: 1280)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1688, file: !38, line: 722, baseType: !1796, offset: 1344)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !717)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1684, file: !1681, line: 515, baseType: !380, size: 32, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1684, file: !1681, line: 516, baseType: !168, size: 64, offset: 128)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1684, file: !1681, line: 517, baseType: !168, size: 64, offset: 192)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1684, file: !1681, line: 518, baseType: !168, size: 64, offset: 256)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1680, file: !1681, line: 520, baseType: !37, size: 32, offset: 320)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1680, file: !1681, line: 522, baseType: !1803, size: 64, offset: 384)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1707, line: 22, baseType: !1805)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1707, line: 22, size: 64, elements: !1806)
!1806 = !{!1807}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1805, file: !1707, line: 22, baseType: !1808, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1707, line: 15, baseType: !168)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1680, file: !1681, line: 524, baseType: !1810, size: 64, offset: 448)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1702, line: 372, baseType: !1812)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1702, line: 372, size: 64, elements: !1813)
!1813 = !{!1814}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1812, file: !1702, line: 372, baseType: !1815, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1707, line: 16, baseType: !168)
!1816 = !DIDerivedType(tag: DW_TAG_member, scope: !1680, file: !1681, line: 527, baseType: !1817, size: 64, offset: 512)
!1817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1680, file: !1681, line: 527, size: 64, elements: !1818)
!1818 = !{!1819, !1825}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1817, file: !1681, line: 528, baseType: !1820, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1707, line: 21, baseType: !1821)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1707, line: 21, size: 64, elements: !1822)
!1822 = !{!1823}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1821, file: !1707, line: 21, baseType: !1824, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1707, line: 14, baseType: !168)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1817, file: !1681, line: 529, baseType: !1804, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1680, file: !1681, line: 534, baseType: !1577, size: 64, offset: 576)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1680, file: !1681, line: 535, baseType: !1577, size: 64, offset: 640)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1680, file: !1681, line: 541, baseType: !1829, size: 64, offset: 704)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1680, file: !1681, line: 545, baseType: !1831, size: 64, offset: 768)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1680, file: !1681, line: 549, baseType: !1833, size: 64, offset: 832)
!1833 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1702, line: 520, baseType: !1577)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1668, file: !54, line: 100, baseType: !1835, size: 64, offset: 128)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!109, !1627, !168, !168, !109}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1628, file: !54, line: 134, baseType: !150, size: 64, offset: 960)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1628, file: !54, line: 135, baseType: !109, size: 32, offset: 1024)
!1840 = !DIDerivedType(tag: DW_TAG_member, scope: !1628, file: !54, line: 136, baseType: !1841, size: 128, offset: 1088)
!1841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1628, file: !54, line: 136, size: 128, elements: !1842)
!1842 = !{!1843, !1849}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1841, file: !54, line: 137, baseType: !1844, size: 128)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1845, line: 6, size: 128, elements: !1846)
!1845 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1846 = !{!1847, !1848}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1844, file: !1845, line: 7, baseType: !451, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1844, file: !1845, line: 8, baseType: !451, size: 64, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, scope: !1841, file: !54, line: 138, baseType: !1850)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1841, file: !54, line: 138, elements: !1851)
!1851 = !{!1852, !1854}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1850, file: !54, line: 138, baseType: !1853)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1850, file: !54, line: 138, elements: !717)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1850, file: !54, line: 138, baseType: !1855)
!1855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1844, elements: !1145)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1624, file: !38, line: 147, baseType: !150, size: 64, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1582, file: !38, line: 161, baseType: !352, size: 128, align: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, scope: !1578, file: !38, line: 164, baseType: !1859, size: 32, offset: 384)
!1859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1578, file: !38, line: 164, size: 32, elements: !1860)
!1860 = !{!1861, !1862}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1859, file: !38, line: 169, baseType: !178, size: 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1859, file: !38, line: 177, baseType: !7, size: 32)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1578, file: !38, line: 181, baseType: !178, size: 32, offset: 416)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1571, file: !14, line: 406, baseType: !1867, size: 64, offset: 64)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!109, !724, !1870}
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !1872)
!1872 = !{!1873, !1903, !1917}
!1873 = !DIDerivedType(tag: DW_TAG_member, scope: !1871, file: !38, line: 295, baseType: !1874, size: 512)
!1874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1871, file: !38, line: 295, size: 512, elements: !1875)
!1875 = !{!1876, !1902}
!1876 = !DIDerivedType(tag: DW_TAG_member, scope: !1874, file: !38, line: 296, baseType: !1877, size: 448)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1874, file: !38, line: 296, size: 448, elements: !1878)
!1878 = !{!1879, !1880, !1889, !1890, !1891, !1900, !1901}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1877, file: !38, line: 298, baseType: !168, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, scope: !1877, file: !38, line: 299, baseType: !1881, size: 128, offset: 64)
!1881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1877, file: !38, line: 299, size: 128, elements: !1882)
!1882 = !{!1883, !1884}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1881, file: !38, line: 300, baseType: !226, size: 128)
!1884 = !DIDerivedType(tag: DW_TAG_member, scope: !1881, file: !38, line: 302, baseType: !1885, size: 128)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1881, file: !38, line: 302, size: 128, elements: !1886)
!1886 = !{!1887, !1888}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1885, file: !38, line: 303, baseType: !150, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1885, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1877, file: !38, line: 310, baseType: !1557, size: 64, offset: 192)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1877, file: !38, line: 311, baseType: !168, size: 64, offset: 256)
!1891 = !DIDerivedType(tag: DW_TAG_member, scope: !1877, file: !38, line: 312, baseType: !1892, size: 64, offset: 320)
!1892 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1877, file: !38, line: 312, size: 64, elements: !1893)
!1893 = !{!1894, !1895}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1892, file: !38, line: 313, baseType: !150, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1892, file: !38, line: 314, baseType: !1896, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !1897)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !1898)
!1898 = !{!1899}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1897, file: !38, line: 256, baseType: !168, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1877, file: !38, line: 316, baseType: !178, size: 32, offset: 384)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1877, file: !38, line: 317, baseType: !178, size: 32, offset: 416)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1874, file: !38, line: 323, baseType: !1578, size: 512, align: 128)
!1903 = !DIDerivedType(tag: DW_TAG_member, scope: !1871, file: !38, line: 325, baseType: !1904, size: 512, offset: 512)
!1904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1871, file: !38, line: 325, size: 512, elements: !1905)
!1905 = !{!1906, !1916}
!1906 = !DIDerivedType(tag: DW_TAG_member, scope: !1904, file: !38, line: 326, baseType: !1907, size: 320)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1904, file: !38, line: 326, size: 320, elements: !1908)
!1908 = !{!1909, !1910, !1911, !1912, !1913, !1914, !1915}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1907, file: !38, line: 327, baseType: !168, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1907, file: !38, line: 328, baseType: !168, size: 64, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1907, file: !38, line: 329, baseType: !168, size: 64, offset: 128)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1907, file: !38, line: 331, baseType: !178, size: 32, offset: 192)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1907, file: !38, line: 332, baseType: !178, size: 32, offset: 224)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1907, file: !38, line: 333, baseType: !178, size: 32, offset: 256)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1907, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1904, file: !38, line: 339, baseType: !1578, size: 512, align: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, scope: !1871, file: !38, line: 341, baseType: !1918, size: 512, offset: 1024)
!1918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1871, file: !38, line: 341, size: 512, elements: !1919)
!1919 = !{!1920, !1929, !1935}
!1920 = !DIDerivedType(tag: DW_TAG_member, scope: !1918, file: !38, line: 342, baseType: !1921, size: 384)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1918, file: !38, line: 342, size: 384, elements: !1922)
!1922 = !{!1923, !1924, !1925, !1926, !1927, !1928}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1921, file: !38, line: 343, baseType: !168, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1921, file: !38, line: 344, baseType: !168, size: 64, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1921, file: !38, line: 346, baseType: !150, size: 64, offset: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1921, file: !38, line: 347, baseType: !150, size: 64, offset: 192)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1921, file: !38, line: 348, baseType: !150, size: 64, offset: 256)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1921, file: !38, line: 349, baseType: !150, size: 64, offset: 320)
!1929 = !DIDerivedType(tag: DW_TAG_member, scope: !1918, file: !38, line: 352, baseType: !1930, size: 256)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1918, file: !38, line: 352, size: 256, elements: !1931)
!1931 = !{!1932, !1933, !1934}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1930, file: !38, line: 353, baseType: !168, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1930, file: !38, line: 354, baseType: !168, size: 64, offset: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1930, file: !38, line: 356, baseType: !226, size: 128, offset: 128)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1918, file: !38, line: 359, baseType: !1578, size: 512, align: 128)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1571, file: !14, line: 409, baseType: !1937, size: 64, offset: 128)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!109, !1557, !1864}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1571, file: !14, line: 412, baseType: !1941, size: 64, offset: 192)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!302, !1557, !1870}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1571, file: !14, line: 414, baseType: !1945, size: 64, offset: 256)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{null, !1948}
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1571, file: !14, line: 416, baseType: !1951, size: 64, offset: 320)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!109, !724, !1557, !170, !7, !1954, !1955}
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1571, file: !14, line: 419, baseType: !1957, size: 64, offset: 384)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!109, !724, !1557, !170, !7, !7, !1577, !150}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1571, file: !14, line: 424, baseType: !1961, size: 64, offset: 448)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!1964, !1557, !1964}
!1964 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !154, line: 131, baseType: !451)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1571, file: !14, line: 425, baseType: !1966, size: 64, offset: 512)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{null, !1870, !164, !164}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1571, file: !14, line: 426, baseType: !1970, size: 64, offset: 576)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!302, !1870, !380}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1571, file: !14, line: 427, baseType: !1974, size: 64, offset: 640)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{null, !1870}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1571, file: !14, line: 428, baseType: !1978, size: 64, offset: 704)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!1358, !1981, !2003}
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1983)
!1983 = !{!1984, !1985, !1986, !1990, !1991, !1992, !1993}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1982, file: !14, line: 374, baseType: !724, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1982, file: !14, line: 375, baseType: !170, size: 64, offset: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1982, file: !14, line: 376, baseType: !1987, size: 64, offset: 128)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{null, !1981, !1133}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1982, file: !14, line: 377, baseType: !150, size: 64, offset: 192)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1982, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1982, file: !14, line: 379, baseType: !222, size: 16, offset: 288)
!1993 = !DIDerivedType(tag: DW_TAG_member, scope: !1982, file: !14, line: 380, baseType: !1994, size: 64, offset: 320)
!1994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1982, file: !14, line: 380, size: 64, elements: !1995)
!1995 = !{!1996, !1999}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1994, file: !14, line: 386, baseType: !1997, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1994, file: !14, line: 395, baseType: !2000, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!1358, !150}
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1571, file: !14, line: 433, baseType: !2006, size: 64, offset: 768)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!109, !1557, !1870, !1870, !74}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1571, file: !14, line: 435, baseType: !2010, size: 64, offset: 832)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!109, !1870}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1571, file: !14, line: 436, baseType: !2014, size: 64, offset: 896)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!302, !1870, !164, !164}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1571, file: !14, line: 438, baseType: !2018, size: 64, offset: 960)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{null, !1870, !2021, !2021}
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1571, file: !14, line: 439, baseType: !2023, size: 64, offset: 1024)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!109, !1557, !1577}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1571, file: !14, line: 442, baseType: !2027, size: 64, offset: 1088)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!109, !2030, !724, !2032}
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1571, file: !14, line: 444, baseType: !2034, size: 64, offset: 1152)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{null, !724}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1571, file: !14, line: 445, baseType: !2038, size: 64, offset: 1216)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!109, !1981, !2003}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1558, file: !14, line: 486, baseType: !168, size: 64, offset: 896)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1558, file: !14, line: 487, baseType: !845, size: 320, offset: 960)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1558, file: !14, line: 488, baseType: !2044, size: 32, offset: 1280)
!2044 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2045, line: 8, baseType: !398)
!2045 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1558, file: !14, line: 489, baseType: !188, size: 32, offset: 1312)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1558, file: !14, line: 490, baseType: !226, size: 128, offset: 1344)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1558, file: !14, line: 491, baseType: !150, size: 64, offset: 1472)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1548, file: !1517, line: 180, baseType: !2050, size: 64, offset: 320)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!1358, !724, !1459, !1547, !913, !170, !164}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1548, file: !1517, line: 182, baseType: !2050, size: 64, offset: 384)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1548, file: !1517, line: 184, baseType: !2055, size: 64, offset: 448)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!109, !724, !1459, !1547, !1687}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1536, file: !1517, line: 90, baseType: !2059, size: 64, offset: 192)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1536, file: !1517, line: 91, baseType: !2061, size: 64, offset: 256)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1507, file: !1454, line: 120, baseType: !2063, size: 64, offset: 192)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!2066, !1477}
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2068)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !2069)
!2069 = !{!2070, !2071, !2075, !2079, !2087, !2091}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2068, file: !82, line: 40, baseType: !81, size: 32)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2068, file: !82, line: 41, baseType: !2072, size: 64, offset: 64)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!302}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2068, file: !82, line: 42, baseType: !2076, size: 64, offset: 128)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{!150}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2068, file: !82, line: 43, baseType: !2080, size: 64, offset: 192)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!2083, !2085}
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2068, file: !82, line: 44, baseType: !2088, size: 64, offset: 256)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!2083}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2068, file: !82, line: 45, baseType: !1237, size: 64, offset: 320)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1507, file: !1454, line: 121, baseType: !2093, size: 64, offset: 256)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!2083, !1477}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1507, file: !1454, line: 122, baseType: !2097, size: 64, offset: 320)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{null, !1477, !1099, !1100}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1453, file: !1454, line: 70, baseType: !2101, size: 64, offset: 384)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2103, line: 190, size: 1152, elements: !2104)
!2103 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2104 = !{!2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2235, !2236, !2237, !2238, !2239, !2242}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2102, file: !2103, line: 191, baseType: !178, size: 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2102, file: !2103, line: 192, baseType: !178, size: 32, offset: 32)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2102, file: !2103, line: 202, baseType: !2101, size: 64, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2102, file: !2103, line: 203, baseType: !146, size: 64, offset: 128)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2102, file: !2103, line: 205, baseType: !443, size: 192, align: 64, offset: 192)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2102, file: !2103, line: 207, baseType: !2083, size: 64, offset: 384)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2102, file: !2103, line: 208, baseType: !7, size: 32, offset: 448)
!2112 = !DIDerivedType(tag: DW_TAG_member, scope: !2102, file: !2103, line: 209, baseType: !2113, size: 256, offset: 512)
!2113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2102, file: !2103, line: 209, size: 256, elements: !2114)
!2114 = !{!2115, !2124, !2128}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2113, file: !2103, line: 210, baseType: !2116, size: 256)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2103, line: 153, size: 256, elements: !2117)
!2117 = !{!2118, !2119, !2120, !2123}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2116, file: !2103, line: 154, baseType: !168, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2116, file: !2103, line: 156, baseType: !582, size: 64, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2116, file: !2103, line: 162, baseType: !2121, size: 64, offset: 128)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2103, line: 162, flags: DIFlagFwdDecl)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2116, file: !2103, line: 167, baseType: !168, size: 64, offset: 192)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2113, file: !2103, line: 211, baseType: !2125, size: 64)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2103, line: 170, size: 64, elements: !2126)
!2126 = !{!2127}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2125, file: !2103, line: 171, baseType: !2101, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2113, file: !2103, line: 212, baseType: !2129, size: 256)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2103, line: 174, size: 256, elements: !2130)
!2130 = !{!2131, !2230, !2233, !2234}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2129, file: !2103, line: 175, baseType: !2132, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2134)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2103, line: 271, size: 768, elements: !2135)
!2135 = !{!2136, !2194, !2198, !2199, !2200, !2201, !2202, !2206, !2207, !2208, !2209, !2226}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2134, file: !2103, line: 276, baseType: !2137, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!109, !2140}
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2103, line: 251, size: 1216, elements: !2142)
!2142 = !{!2143, !2144, !2145, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2141, file: !2103, line: 253, baseType: !2101, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2141, file: !2103, line: 254, baseType: !724, size: 64, offset: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2141, file: !2103, line: 255, baseType: !2146, size: 64, offset: 128)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2148, line: 17, size: 960, elements: !2149)
!2148 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2149 = !{!2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2179, !2180, !2183}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2147, file: !2148, line: 18, baseType: !913, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2147, file: !2148, line: 19, baseType: !164, size: 64, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2147, file: !2148, line: 20, baseType: !164, size: 64, offset: 128)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2147, file: !2148, line: 21, baseType: !164, size: 64, offset: 192)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2147, file: !2148, line: 22, baseType: !164, size: 64, offset: 256)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2147, file: !2148, line: 23, baseType: !170, size: 64, offset: 320)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2147, file: !2148, line: 24, baseType: !170, size: 64, offset: 384)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2147, file: !2148, line: 25, baseType: !744, size: 256, offset: 448)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2147, file: !2148, line: 26, baseType: !2159, size: 64, offset: 704)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2161)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2148, line: 32, size: 256, elements: !2162)
!2162 = !{!2163, !2167, !2171, !2175}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2161, file: !2148, line: 33, baseType: !2164, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!150, !2146, !169}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2161, file: !2148, line: 34, baseType: !2168, size: 64, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{null, !2146, !150}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2161, file: !2148, line: 35, baseType: !2172, size: 64, offset: 128)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!150, !2146, !150, !169}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2161, file: !2148, line: 36, baseType: !2176, size: 64, offset: 192)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!109, !2146, !150}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2147, file: !2148, line: 27, baseType: !109, size: 32, offset: 768)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2147, file: !2148, line: 28, baseType: !2181, size: 64, offset: 832)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !725)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2147, file: !2148, line: 29, baseType: !150, size: 64, offset: 896)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2141, file: !2103, line: 256, baseType: !150, size: 64, offset: 192)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2141, file: !2103, line: 259, baseType: !744, size: 256, offset: 256)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2141, file: !2103, line: 260, baseType: !744, size: 256, offset: 512)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2141, file: !2103, line: 261, baseType: !109, size: 32, offset: 768)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2141, file: !2103, line: 262, baseType: !226, size: 128, offset: 832)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2141, file: !2103, line: 263, baseType: !913, size: 64, offset: 960)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2141, file: !2103, line: 265, baseType: !164, size: 64, offset: 1024)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2141, file: !2103, line: 266, baseType: !302, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2141, file: !2103, line: 267, baseType: !302, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2141, file: !2103, line: 268, baseType: !1732, size: 64, offset: 1152)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2134, file: !2103, line: 277, baseType: !2195, size: 64, offset: 64)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{null, !2140}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2134, file: !2103, line: 290, baseType: !2176, size: 64, offset: 128)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2134, file: !2103, line: 292, baseType: !2164, size: 64, offset: 192)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2134, file: !2103, line: 293, baseType: !2172, size: 64, offset: 256)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2134, file: !2103, line: 294, baseType: !2168, size: 64, offset: 320)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2134, file: !2103, line: 296, baseType: !2203, size: 64, offset: 384)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!1358, !2140, !913, !164, !170}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2134, file: !2103, line: 306, baseType: !164, size: 64, offset: 448)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2134, file: !2103, line: 313, baseType: !302, size: 8, offset: 512)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2134, file: !2103, line: 314, baseType: !2203, size: 64, offset: 576)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2134, file: !2103, line: 317, baseType: !2210, size: 64, offset: 640)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!2213, !2140, !2215}
!2213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2214, line: 59, baseType: !7)
!2214 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2217, line: 37, size: 128, elements: !2218)
!2217 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2218 = !{!2219, !2225}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2216, file: !2217, line: 38, baseType: !2220, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2217, line: 31, baseType: !2221)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{null, !724, !2224, !2215}
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2216, file: !2217, line: 39, baseType: !2213, size: 32, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2134, file: !2103, line: 320, baseType: !2227, size: 64, offset: 704)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!109, !2140, !1687}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2129, file: !2103, line: 176, baseType: !2231, size: 64, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2103, line: 35, flags: DIFlagFwdDecl)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2129, file: !2103, line: 177, baseType: !170, size: 64, offset: 128)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2129, file: !2103, line: 178, baseType: !2101, size: 64, offset: 192)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2102, file: !2103, line: 215, baseType: !150, size: 64, offset: 768)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2102, file: !2103, line: 221, baseType: !451, size: 64, offset: 832)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2102, file: !2103, line: 223, baseType: !155, size: 16, offset: 896)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2102, file: !2103, line: 224, baseType: !153, size: 16, offset: 912)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2102, file: !2103, line: 225, baseType: !2240, size: 64, offset: 960)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2103, line: 36, flags: DIFlagFwdDecl)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2102, file: !2103, line: 227, baseType: !352, size: 128, align: 64, offset: 1024)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1453, file: !1454, line: 71, baseType: !2244, size: 32, offset: 448)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2245, line: 19, size: 32, elements: !2246)
!2245 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2246 = !{!2247}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2244, file: !2245, line: 20, baseType: !329, size: 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1453, file: !1454, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1453, file: !1454, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1453, file: !1454, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1453, file: !1454, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1453, file: !1454, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1450, file: !6, line: 47, baseType: !1440, size: 64, offset: 512)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1450, file: !6, line: 48, baseType: !1459, size: 64, offset: 576)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1450, file: !6, line: 49, baseType: !2256, size: 64, offset: 640)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1450, file: !6, line: 50, baseType: !1073, size: 64, offset: 704)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1441, file: !6, line: 418, baseType: !2260, size: 64, offset: 1408)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !2262)
!2262 = !{!2263, !2264, !2269, !2273, !2277, !2281}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2261, file: !6, line: 54, baseType: !1524, size: 128)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2261, file: !6, line: 55, baseType: !2265, size: 64, offset: 128)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!1358, !2260, !2268, !913}
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2261, file: !6, line: 57, baseType: !2270, size: 64, offset: 192)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!1358, !2260, !2268, !146, !164}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2261, file: !6, line: 59, baseType: !2274, size: 64, offset: 256)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{null, !1440, !146}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2261, file: !6, line: 60, baseType: !2278, size: 64, offset: 320)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!109, !1440}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2261, file: !6, line: 61, baseType: !2282, size: 64, offset: 384)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{null, !1440}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1441, file: !6, line: 419, baseType: !146, size: 64, offset: 1472)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1441, file: !6, line: 420, baseType: !146, size: 64, offset: 1536)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1441, file: !6, line: 421, baseType: !1459, size: 64, offset: 1600)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1441, file: !6, line: 424, baseType: !2289, size: 64, offset: 1664)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2291)
!2291 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1441, file: !6, line: 425, baseType: !2293, size: 64, offset: 1728)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !837)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1441, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1441, file: !6, line: 435, baseType: !744, size: 256, offset: 1856)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1441, file: !6, line: 437, baseType: !2298, size: 64, offset: 2112)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2300, line: 69, size: 320, elements: !2301)
!2300 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2301 = !{!2302, !2303, !2304, !2321, !2323, !2327, !2328}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2299, file: !2300, line: 70, baseType: !146, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2299, file: !2300, line: 71, baseType: !1440, size: 64, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2299, file: !2300, line: 72, baseType: !2305, size: 64, offset: 128)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2307)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2300, line: 47, size: 256, elements: !2308)
!2308 = !{!2309, !2310, !2316, !2320}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2307, file: !2300, line: 49, baseType: !7, size: 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2307, file: !2300, line: 51, baseType: !2311, size: 64, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!109, !146, !2314}
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2299)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2307, file: !2300, line: 53, baseType: !2317, size: 64, offset: 128)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!109, !913, !2314}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2307, file: !2300, line: 55, baseType: !1237, size: 64, offset: 192)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2299, file: !2300, line: 73, baseType: !2322, size: 16, offset: 192)
!2322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2299, file: !2300, line: 74, baseType: !2324, size: 8, offset: 208)
!2324 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !213, line: 16, baseType: !2325)
!2325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !215, line: 20, baseType: !2326)
!2326 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2299, file: !2300, line: 75, baseType: !212, size: 8, offset: 216)
!2328 = !DIDerivedType(tag: DW_TAG_member, scope: !2299, file: !2300, line: 76, baseType: !2329, size: 64, offset: 256)
!2329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2299, file: !2300, line: 76, size: 64, elements: !2330)
!2330 = !{!2331, !2332, !2339}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2329, file: !2300, line: 77, baseType: !150, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2329, file: !2300, line: 78, baseType: !2333, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2335)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2300, line: 86, size: 128, elements: !2336)
!2336 = !{!2337, !2338}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2335, file: !2300, line: 87, baseType: !7, size: 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2335, file: !2300, line: 88, baseType: !913, size: 64, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2329, file: !2300, line: 79, baseType: !2340, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2342)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2300, line: 92, size: 256, elements: !2343)
!2343 = !{!2344, !2345, !2346, !2348, !2349}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2342, file: !2300, line: 94, baseType: !7, size: 32)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2342, file: !2300, line: 95, baseType: !7, size: 32, offset: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2342, file: !2300, line: 96, baseType: !2347, size: 64, offset: 64)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2342, file: !2300, line: 97, baseType: !2305, size: 64, offset: 128)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2342, file: !2300, line: 98, baseType: !150, size: 64, offset: 192)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1441, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1441, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1441, file: !6, line: 442, baseType: !2289, size: 64, offset: 2240)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1441, file: !6, line: 443, baseType: !2293, size: 64, offset: 2304)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1441, file: !6, line: 444, baseType: !302, size: 8, offset: 2368)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1441, file: !6, line: 451, baseType: !302, size: 8, offset: 2376)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1441, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1441, file: !6, line: 455, baseType: !2358, size: 64, offset: 2432)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2360, line: 23, size: 96, elements: !2361)
!2360 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2361 = !{!2362, !2363, !2364}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2359, file: !2360, line: 24, baseType: !109, size: 32)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2359, file: !2360, line: 24, baseType: !109, size: 32, offset: 32)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2359, file: !2360, line: 24, baseType: !109, size: 32, offset: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1441, file: !6, line: 458, baseType: !2366, size: 64, offset: 2496)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!109}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1441, file: !6, line: 460, baseType: !2370, size: 4032, align: 512, offset: 2560)
!2370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2371, size: 4032, elements: !2387)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !2372)
!2372 = !{!2373, !2374, !2375}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2371, file: !6, line: 363, baseType: !150, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2371, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2371, file: !6, line: 367, baseType: !2376, size: 448, offset: 128)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !2377)
!2377 = !{!2378, !2379}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2376, file: !6, line: 320, baseType: !1440, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2376, file: !6, line: 321, baseType: !2380, size: 384, offset: 64)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2381, line: 40, size: 384, elements: !2382)
!2381 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2382 = !{!2383}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2380, file: !2381, line: 41, baseType: !2384, size: 384, align: 64)
!2384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 384, align: 64, elements: !2385)
!2385 = !{!2386}
!2386 = !DISubrange(count: 2)
!2387 = !{!2388}
!2388 = !DISubrange(count: 7)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1441, file: !6, line: 463, baseType: !2390, size: 192, offset: 6592)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2391, line: 8, size: 192, elements: !2392)
!2391 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2392 = !{!2393, !2394, !2396}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2390, file: !2391, line: 10, baseType: !7, size: 32)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2390, file: !2391, line: 11, baseType: !2395, size: 64, offset: 64)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2390, file: !2391, line: 12, baseType: !2397, size: 64, offset: 128)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2399, line: 59, size: 48, elements: !2400)
!2399 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2400 = !{!2401, !2404, !2405, !2406, !2407, !2408}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2398, file: !2399, line: 60, baseType: !2402, size: 16)
!2402 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !213, line: 18, baseType: !2403)
!2403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !215, line: 23, baseType: !873)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2398, file: !2399, line: 61, baseType: !2402, size: 16, offset: 16)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2398, file: !2399, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2398, file: !2399, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2398, file: !2399, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2398, file: !2399, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1441, file: !6, line: 465, baseType: !168, size: 64, offset: 6784)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1441, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1441, file: !6, line: 470, baseType: !226, size: 128, offset: 6912)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1441, file: !6, line: 471, baseType: !2413, size: 64, offset: 7040)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2415, line: 33, size: 96, elements: !2416)
!2415 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2416 = !{!2417, !2418, !2419, !2420}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2414, file: !2415, line: 37, baseType: !109, size: 32)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2414, file: !2415, line: 43, baseType: !109, size: 32, offset: 32)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2414, file: !2415, line: 45, baseType: !155, size: 16, offset: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2414, file: !2415, line: 47, baseType: !155, size: 16, offset: 80)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1441, file: !6, line: 476, baseType: !2422, size: 64, offset: 7104)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !2424)
!2424 = !{!2425, !2441, !2442, !2443}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2423, file: !6, line: 379, baseType: !2426, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2428, line: 204, baseType: !2429)
!2428 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2428, line: 197, size: 192, elements: !2430)
!2430 = !{!2431, !2433, !2434, !2435, !2437, !2439}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2429, file: !2428, line: 198, baseType: !2432, size: 32)
!2432 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2428, line: 21, baseType: !399)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2429, file: !2428, line: 199, baseType: !216, size: 8, offset: 32)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2429, file: !2428, line: 200, baseType: !216, size: 8, offset: 40)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2429, file: !2428, line: 201, baseType: !2436, size: 16, offset: 48)
!2436 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2428, line: 17, baseType: !223)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2429, file: !2428, line: 202, baseType: !2438, size: 64, offset: 64)
!2438 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2428, line: 16, baseType: !452)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2429, file: !2428, line: 203, baseType: !2440, size: 64, offset: 128)
!2440 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2428, line: 22, baseType: !452)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2423, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2423, file: !6, line: 381, baseType: !913, size: 64, offset: 128)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2423, file: !6, line: 382, baseType: !913, size: 64, offset: 192)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1441, file: !6, line: 477, baseType: !2423, size: 256, offset: 7168)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1441, file: !6, line: 480, baseType: !2446, size: 64, offset: 7424)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1441, file: !6, line: 483, baseType: !2449, size: 64, offset: 7488)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1441, file: !6, line: 488, baseType: !913, size: 64, offset: 7552)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1441, file: !6, line: 492, baseType: !150, size: 64, offset: 7616)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1441, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1441, file: !6, line: 495, baseType: !150, size: 64, offset: 7744)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1441, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1441, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1441, file: !6, line: 500, baseType: !2458, size: 64, offset: 7872)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !287, line: 45, baseType: !2460)
!2460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1441, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1441, file: !6, line: 504, baseType: !2463, size: 64, offset: 8000)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2466, line: 96, size: 192, elements: !2467)
!2466 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2467 = !{!2468, !2469, !2522, !2525}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2465, file: !2466, line: 97, baseType: !7, size: 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2465, file: !2466, line: 98, baseType: !2470, size: 64, offset: 64)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2466, line: 24, size: 3072, elements: !2472)
!2472 = !{!2473, !2475, !2476, !2477, !2478, !2491, !2492, !2493, !2494, !2506, !2507, !2508, !2519, !2520, !2521}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2471, file: !2466, line: 26, baseType: !2474, size: 128)
!2474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !737, size: 128, elements: !2385)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2471, file: !2466, line: 27, baseType: !2474, size: 128, offset: 128)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2471, file: !2466, line: 28, baseType: !109, size: 32, offset: 256)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2471, file: !2466, line: 31, baseType: !188, size: 32, align: 512, offset: 512)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2471, file: !2466, line: 32, baseType: !2479, size: 960, offset: 576)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2480, line: 206, size: 960, elements: !2481)
!2480 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2481 = !{!2482, !2483, !2486, !2488, !2489, !2490}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2479, file: !2480, line: 207, baseType: !355, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2479, file: !2480, line: 208, baseType: !2484, size: 256, offset: 64)
!2484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2485, size: 256, elements: !347)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2479, file: !2480, line: 209, baseType: !2487, size: 256, offset: 320)
!2487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 256, elements: !347)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2479, file: !2480, line: 213, baseType: !1133, size: 64, offset: 576)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2479, file: !2480, line: 215, baseType: !1135, size: 256, offset: 640)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2479, file: !2480, line: 216, baseType: !212, size: 8, offset: 896)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2471, file: !2466, line: 33, baseType: !168, size: 64, offset: 1536)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2471, file: !2466, line: 34, baseType: !168, size: 64, offset: 1600)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2471, file: !2466, line: 35, baseType: !302, size: 8, offset: 1664)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2471, file: !2466, line: 36, baseType: !2495, size: 320, offset: 1728)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2496, line: 11, size: 320, elements: !2497)
!2496 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2497 = !{!2498, !2499, !2500, !2505}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2495, file: !2496, line: 16, baseType: !342, size: 128)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2495, file: !2496, line: 17, baseType: !168, size: 64, offset: 128)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2495, file: !2496, line: 18, baseType: !2501, size: 64, offset: 192)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{null, !2504}
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2495, file: !2496, line: 19, baseType: !398, size: 32, offset: 256)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2471, file: !2466, line: 37, baseType: !1035, size: 256, offset: 2048)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2471, file: !2466, line: 38, baseType: !352, size: 128, align: 64, offset: 2304)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2471, file: !2466, line: 39, baseType: !2509, size: 64, offset: 2432)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2466, line: 49, size: 768, elements: !2511)
!2511 = !{!2512, !2513, !2514, !2515, !2516, !2517, !2518}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2510, file: !2466, line: 50, baseType: !188, size: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2510, file: !2466, line: 51, baseType: !2487, size: 256, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2510, file: !2466, line: 53, baseType: !2487, size: 256, offset: 320)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2510, file: !2466, line: 54, baseType: !168, size: 64, offset: 576)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2510, file: !2466, line: 55, baseType: !2509, size: 64, offset: 640)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2510, file: !2466, line: 56, baseType: !109, size: 32, offset: 704)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2510, file: !2466, line: 57, baseType: !109, size: 32, offset: 736)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2471, file: !2466, line: 40, baseType: !168, size: 64, offset: 2496)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2471, file: !2466, line: 42, baseType: !109, size: 32, offset: 2560)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2471, file: !2466, line: 43, baseType: !2464, size: 64, offset: 2624)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2465, file: !2466, line: 99, baseType: !2523, offset: 128)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2524, line: 211, elements: !717)
!2524 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2465, file: !2466, line: 100, baseType: !2526, size: 64, offset: 128)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2466, line: 63, size: 3008, elements: !2528)
!2528 = !{!2529, !2530, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2560}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2527, file: !2466, line: 64, baseType: !2509, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2527, file: !2466, line: 65, baseType: !2531, size: 192, offset: 64)
!2531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2509, size: 192, elements: !780)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2527, file: !2466, line: 67, baseType: !109, size: 32, offset: 256)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2527, file: !2466, line: 68, baseType: !744, size: 256, offset: 320)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2527, file: !2466, line: 69, baseType: !188, size: 32, offset: 576)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2527, file: !2466, line: 70, baseType: !744, size: 256, offset: 640)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2527, file: !2466, line: 71, baseType: !168, size: 64, offset: 896)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2527, file: !2466, line: 72, baseType: !168, size: 64, offset: 960)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2527, file: !2466, line: 73, baseType: !168, size: 64, offset: 1024)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2527, file: !2466, line: 74, baseType: !168, size: 64, offset: 1088)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2527, file: !2466, line: 75, baseType: !168, size: 64, offset: 1152)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2527, file: !2466, line: 76, baseType: !168, size: 64, offset: 1216)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2527, file: !2466, line: 77, baseType: !168, size: 64, offset: 1280)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2527, file: !2466, line: 78, baseType: !168, size: 64, offset: 1344)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2527, file: !2466, line: 79, baseType: !302, size: 8, offset: 1408)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2527, file: !2466, line: 80, baseType: !168, size: 64, offset: 1472)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2527, file: !2466, line: 81, baseType: !744, size: 256, offset: 1536)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2527, file: !2466, line: 82, baseType: !1074, size: 256, offset: 1792)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2527, file: !2466, line: 84, baseType: !178, size: 32, offset: 2048)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2527, file: !2466, line: 87, baseType: !168, size: 64, offset: 2112)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2527, file: !2466, line: 88, baseType: !168, size: 64, offset: 2176)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2527, file: !2466, line: 89, baseType: !2552, size: 704, offset: 2240)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1036, line: 111, size: 704, elements: !2553)
!2553 = !{!2554, !2555, !2556, !2559}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2552, file: !1036, line: 112, baseType: !1035, size: 256)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2552, file: !1036, line: 113, baseType: !2495, size: 320, offset: 256)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2552, file: !1036, line: 116, baseType: !2557, size: 64, offset: 576)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1036, line: 18, flags: DIFlagFwdDecl)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2552, file: !1036, line: 117, baseType: !109, size: 32, offset: 640)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2527, file: !2466, line: 90, baseType: !2464, size: 64, offset: 2944)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1441, file: !6, line: 515, baseType: !2562, size: 64, offset: 8064)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2564, line: 117, size: 128, elements: !2565)
!2564 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2565 = !{!2566, !2567, !2568}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2563, file: !2564, line: 118, baseType: !837, size: 32)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2563, file: !2564, line: 119, baseType: !837, size: 32, offset: 32)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2563, file: !2564, line: 120, baseType: !1133, size: 64, offset: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1441, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1441, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1441, file: !6, line: 520, baseType: !2572, size: 64, offset: 8192)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1441, file: !6, line: 523, baseType: !2574, size: 64, offset: 8256)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !246, line: 372, size: 1024, elements: !2577)
!2577 = !{!2578, !2579, !2619, !2673, !2754, !2755, !2758, !2763, !2764, !2765, !2766, !2768, !2771}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2576, file: !246, line: 373, baseType: !226, size: 128)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2576, file: !246, line: 374, baseType: !2580, size: 64, offset: 128)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !246, line: 291, size: 576, elements: !2582)
!2582 = !{!2583, !2584, !2585, !2586, !2590, !2613, !2617, !2618}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2581, file: !246, line: 292, baseType: !146, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2581, file: !246, line: 293, baseType: !150, size: 64, offset: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !2581, file: !246, line: 295, baseType: !150, size: 64, offset: 128)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2581, file: !246, line: 297, baseType: !2587, size: 64, offset: 192)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!109, !2575, !245, !150}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !2581, file: !246, line: 299, baseType: !2591, size: 64, offset: 256)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !246, line: 275, size: 320, elements: !2593)
!2593 = !{!2594, !2595}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2592, file: !246, line: 276, baseType: !146, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, scope: !2592, file: !246, line: 277, baseType: !2596, size: 256, offset: 64)
!2596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2592, file: !246, line: 277, size: 256, elements: !2597)
!2597 = !{!2598, !2609}
!2598 = !DIDerivedType(tag: DW_TAG_member, scope: !2596, file: !246, line: 278, baseType: !2599, size: 256)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2596, file: !246, line: 278, size: 256, elements: !2600)
!2600 = !{!2601, !2602, !2603, !2604, !2606, !2607, !2608}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2599, file: !246, line: 279, baseType: !146, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2599, file: !246, line: 280, baseType: !2460, size: 32, offset: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2599, file: !246, line: 281, baseType: !2460, size: 32, offset: 96)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !2599, file: !246, line: 282, baseType: !2605, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !2599, file: !246, line: 283, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !2599, file: !246, line: 284, baseType: !2460, size: 32, offset: 160)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2599, file: !246, line: 285, baseType: !2460, size: 32, offset: 192)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !2596, file: !246, line: 287, baseType: !2610, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!109, !2575}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !2581, file: !246, line: 300, baseType: !2614, size: 64, offset: 320)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!229, !2575}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !2581, file: !246, line: 301, baseType: !226, size: 128, offset: 384)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !2581, file: !246, line: 302, baseType: !2610, size: 64, offset: 512)
!2619 = !DIDerivedType(tag: DW_TAG_member, scope: !2576, file: !246, line: 375, baseType: !2620, size: 64, offset: 192)
!2620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2576, file: !246, line: 375, size: 64, elements: !2621)
!2621 = !{!2622, !2623}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2620, file: !246, line: 376, baseType: !146, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !2620, file: !246, line: 378, baseType: !2624, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !287, line: 32, size: 640, elements: !2626)
!2626 = !{!2627, !2628, !2640, !2664, !2665, !2666, !2667, !2668, !2672}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2625, file: !287, line: 33, baseType: !146, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2625, file: !287, line: 34, baseType: !2629, size: 128, offset: 64)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2564, line: 85, size: 128, elements: !2630)
!2630 = !{!2631, !2632}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2629, file: !2564, line: 86, baseType: !178, size: 32)
!2632 = !DIDerivedType(tag: DW_TAG_member, scope: !2629, file: !2564, line: 101, baseType: !2633, size: 64, offset: 64)
!2633 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2629, file: !2564, line: 101, size: 64, elements: !2634)
!2634 = !{!2635, !2636, !2637}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2633, file: !2564, line: 102, baseType: !168, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2633, file: !2564, line: 103, baseType: !2562, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2633, file: !2564, line: 104, baseType: !2638, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2564, line: 104, flags: DIFlagFwdDecl)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !2625, file: !287, line: 35, baseType: !2641, size: 64, offset: 192)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !2643, line: 61, size: 128, elements: !2644)
!2643 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2644 = !{!2645, !2646}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2642, file: !2643, line: 62, baseType: !150, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, scope: !2642, file: !2643, line: 63, baseType: !2647, size: 64, offset: 64)
!2647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2642, file: !2643, line: 63, size: 64, elements: !2648)
!2648 = !{!2649, !2650, !2663}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2647, file: !2643, line: 65, baseType: !168, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !2647, file: !2643, line: 66, baseType: !2651, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !2653, line: 169, size: 192, elements: !2654)
!2653 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!2654 = !{!2655, !2656, !2657}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2652, file: !2653, line: 170, baseType: !2651, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2652, file: !2653, line: 171, baseType: !1440, size: 64, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2652, file: !2653, line: 172, baseType: !2658, size: 64, offset: 128)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2643, line: 32, size: 64, elements: !2660)
!2660 = !{!2661, !2662}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2659, file: !2643, line: 33, baseType: !837, size: 32)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2659, file: !2643, line: 34, baseType: !837, size: 32, offset: 32)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2647, file: !2643, line: 67, baseType: !2658, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !2625, file: !287, line: 36, baseType: !150, size: 64, offset: 256)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !2625, file: !287, line: 37, baseType: !150, size: 64, offset: 320)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !2625, file: !287, line: 38, baseType: !150, size: 64, offset: 384)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !2625, file: !287, line: 39, baseType: !2366, size: 64, offset: 448)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !2625, file: !287, line: 40, baseType: !2669, size: 64, offset: 512)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{null}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2625, file: !287, line: 41, baseType: !285, size: 64, offset: 576)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2576, file: !246, line: 380, baseType: !2674, size: 256, offset: 256)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !246, line: 148, size: 256, elements: !2675)
!2675 = !{!2676, !2677, !2678}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2674, file: !246, line: 149, baseType: !342, size: 128)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2674, file: !246, line: 150, baseType: !109, size: 32, offset: 128)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2674, file: !246, line: 151, baseType: !2679, size: 64, offset: 192)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !246, line: 141, size: 256, elements: !2681)
!2681 = !{!2682, !2751, !2752, !2753}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2680, file: !246, line: 142, baseType: !2683, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !246, line: 138, baseType: !2684)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!256, !2687, !109, !2750}
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !246, line: 93, size: 67776, elements: !2689)
!2689 = !{!2690, !2693, !2696, !2699, !2700, !2701, !2702, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2730, !2733, !2734, !2735, !2743, !2744, !2745, !2746, !2747, !2748, !2749}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !2688, file: !246, line: 94, baseType: !2691, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !246, line: 13, flags: DIFlagFwdDecl)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2688, file: !246, line: 95, baseType: !2694, size: 64, offset: 64)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !246, line: 15, flags: DIFlagFwdDecl)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !2688, file: !246, line: 96, baseType: !2697, size: 64, offset: 128)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !246, line: 14, flags: DIFlagFwdDecl)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2688, file: !246, line: 97, baseType: !150, size: 64, offset: 192)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !2688, file: !246, line: 98, baseType: !109, size: 32, offset: 256)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2688, file: !246, line: 99, baseType: !744, size: 256, offset: 320)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !2688, file: !246, line: 100, baseType: !2703, size: 64, offset: 576)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !2706, line: 10, flags: DIFlagFwdDecl)
!2706 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !2688, file: !246, line: 101, baseType: !168, size: 64, offset: 640)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2688, file: !246, line: 102, baseType: !150, size: 64, offset: 704)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !2688, file: !246, line: 103, baseType: !7, size: 32, offset: 768)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !2688, file: !246, line: 104, baseType: !913, size: 64, offset: 832)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !2688, file: !246, line: 105, baseType: !7, size: 32, offset: 896)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !2688, file: !246, line: 106, baseType: !1133, size: 64, offset: 960)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !2688, file: !246, line: 109, baseType: !2714, size: 33088, offset: 1024)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !2715, line: 14, size: 33088, elements: !2716)
!2715 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!2716 = !{!2717, !2721, !2728, !2729}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2714, file: !2715, line: 15, baseType: !2718, size: 32768)
!2718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 32768, elements: !2719)
!2719 = !{!2720}
!2720 = !DISubrange(count: 4096)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2714, file: !2715, line: 16, baseType: !2722, size: 192, offset: 32768)
!2722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !2723, line: 18, size: 192, elements: !2724)
!2723 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!2724 = !{!2725, !2726, !2727}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2722, file: !2723, line: 19, baseType: !913, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2722, file: !2723, line: 20, baseType: !164, size: 64, offset: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2722, file: !2723, line: 21, baseType: !164, size: 64, offset: 128)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !2714, file: !2715, line: 17, baseType: !164, size: 64, offset: 32960)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !2714, file: !2715, line: 18, baseType: !109, size: 32, offset: 33024)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !2688, file: !246, line: 111, baseType: !2731, size: 64, offset: 34112)
!2731 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !643, line: 913, baseType: !2732)
!2732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 64, elements: !648)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !2688, file: !246, line: 114, baseType: !302, size: 8, offset: 34176)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2688, file: !246, line: 117, baseType: !2714, size: 33088, offset: 34240)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !2688, file: !246, line: 118, baseType: !2736, size: 64, offset: 67328)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !246, line: 79, size: 64, elements: !2738)
!2738 = !{!2739, !2740, !2741, !2742}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2737, file: !246, line: 80, baseType: !155, size: 16)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2737, file: !246, line: 81, baseType: !216, size: 8, offset: 16)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !2737, file: !246, line: 82, baseType: !216, size: 8, offset: 24)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2737, file: !246, line: 83, baseType: !109, size: 32, offset: 32)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !2688, file: !246, line: 119, baseType: !168, size: 64, offset: 67392)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !2688, file: !246, line: 120, baseType: !109, size: 32, offset: 67456)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !2688, file: !246, line: 121, baseType: !109, size: 32, offset: 67488)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2688, file: !246, line: 122, baseType: !109, size: 32, offset: 67520)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !2688, file: !246, line: 123, baseType: !451, size: 64, offset: 67584)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2688, file: !246, line: 125, baseType: !170, size: 64, offset: 67648)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2688, file: !246, line: 126, baseType: !1133, size: 64, offset: 67712)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2680, file: !246, line: 143, baseType: !2683, size: 64, offset: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !2680, file: !246, line: 144, baseType: !2683, size: 64, offset: 128)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !2680, file: !246, line: 145, baseType: !2683, size: 64, offset: 192)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !2576, file: !246, line: 381, baseType: !913, size: 64, offset: 512)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2576, file: !246, line: 382, baseType: !2756, size: 64, offset: 576)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !237, line: 821, flags: DIFlagFwdDecl)
!2758 = !DIDerivedType(tag: DW_TAG_member, scope: !2576, file: !246, line: 387, baseType: !2759, size: 64, offset: 640)
!2759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2576, file: !246, line: 387, size: 64, elements: !2760)
!2760 = !{!2761, !2762}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2759, file: !246, line: 388, baseType: !150, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2759, file: !246, line: 389, baseType: !178, size: 32)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2576, file: !246, line: 391, baseType: !150, size: 64, offset: 704)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2576, file: !246, line: 394, baseType: !109, size: 32, offset: 768)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !2576, file: !246, line: 397, baseType: !109, size: 32, offset: 800)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !2576, file: !246, line: 398, baseType: !2767, size: 64, offset: 832)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !2576, file: !246, line: 399, baseType: !2769, size: 64, offset: 896)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !246, line: 399, flags: DIFlagFwdDecl)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !2576, file: !246, line: 401, baseType: !2772, size: 64, offset: 960)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!109, !2575, !2775}
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !237, line: 671, size: 8512, elements: !2777)
!2777 = !{!2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !3414, !3415, !3416, !3417, !3423, !3424, !3425, !3426, !3427, !3511, !3512, !3513, !3514, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3634, !3635, !3636, !3637, !3638, !3639, !3654, !3655, !3656, !3657, !3658, !3664, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3681, !3852, !3853, !3854, !3855, !4125, !4126, !4127}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !2776, file: !237, line: 678, baseType: !226, size: 128)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !2776, file: !237, line: 684, baseType: !226, size: 128, offset: 128)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !2776, file: !237, line: 685, baseType: !226, size: 128, offset: 256)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2776, file: !237, line: 689, baseType: !443, size: 192, align: 64, offset: 384)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !2776, file: !237, line: 690, baseType: !451, size: 64, offset: 576)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !2776, file: !237, line: 696, baseType: !226, size: 128, offset: 640)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !2776, file: !237, line: 698, baseType: !342, size: 128, offset: 768)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !2776, file: !237, line: 699, baseType: !226, size: 128, offset: 896)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !2776, file: !237, line: 700, baseType: !109, size: 32, offset: 1024)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !2776, file: !237, line: 703, baseType: !109, size: 32, offset: 1056)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !2776, file: !237, line: 705, baseType: !109, size: 32, offset: 1088)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !2776, file: !237, line: 707, baseType: !7, size: 32, offset: 1120)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2776, file: !237, line: 708, baseType: !2775, size: 64, offset: 1152)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !2776, file: !237, line: 714, baseType: !2792, size: 64, offset: 1216)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !237, line: 302, size: 2432, elements: !2794)
!2794 = !{!2795, !2796, !2797, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3321, !3322, !3323, !3324, !3325, !3329, !3330, !3334, !3338, !3339, !3343, !3347, !3348, !3349, !3353, !3357, !3361, !3362, !3363, !3367, !3371, !3375, !3379, !3380, !3400, !3404, !3405, !3406, !3410}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2793, file: !237, line: 303, baseType: !226, size: 128)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2793, file: !237, line: 305, baseType: !1440, size: 64, offset: 128)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2793, file: !237, line: 306, baseType: !2798, size: 64, offset: 192)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !2800)
!2800 = !{!2801, !2802, !2803, !2806, !2807, !2860, !2930, !2931, !2932, !2933, !2934, !2941, !3033, !3046, !3056, !3060, !3062, !3063, !3064, !3068, !3075, !3076, !3079, !3082, !3086, !3190, !3191, !3192, !3193, !3194, !3195, !3225, !3226, !3227, !3230, !3233, !3242, !3243, !3244, !3245, !3246, !3247}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2799, file: !94, line: 706, baseType: !1453, size: 512)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2799, file: !94, line: 707, baseType: !2798, size: 64, offset: 512)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2799, file: !94, line: 709, baseType: !2804, size: 64, offset: 576)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2799, file: !94, line: 711, baseType: !146, size: 64, offset: 640)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2799, file: !94, line: 712, baseType: !2808, size: 64, offset: 704)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2810)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !2811)
!2811 = !{!2812, !2813, !2814, !2820, !2825, !2829}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2810, file: !94, line: 90, baseType: !146, size: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2810, file: !94, line: 91, baseType: !1533, size: 64, offset: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2810, file: !94, line: 92, baseType: !2815, size: 64, offset: 128)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!109, !2818, !1489}
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2799)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2810, file: !94, line: 93, baseType: !2821, size: 64, offset: 192)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!913, !2818, !2824, !1099, !1100}
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2810, file: !94, line: 95, baseType: !2826, size: 64, offset: 256)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{null, !2798}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2810, file: !94, line: 97, baseType: !2830, size: 64, offset: 320)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2832)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !2833)
!2833 = !{!2834, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2832, file: !101, line: 287, baseType: !2835, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!109, !2798}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2832, file: !101, line: 288, baseType: !2826, size: 64, offset: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2832, file: !101, line: 289, baseType: !2835, size: 64, offset: 128)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2832, file: !101, line: 290, baseType: !2835, size: 64, offset: 192)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2832, file: !101, line: 291, baseType: !2835, size: 64, offset: 256)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2832, file: !101, line: 292, baseType: !2835, size: 64, offset: 320)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2832, file: !101, line: 293, baseType: !2835, size: 64, offset: 384)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2832, file: !101, line: 294, baseType: !2835, size: 64, offset: 448)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2832, file: !101, line: 295, baseType: !2835, size: 64, offset: 512)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2832, file: !101, line: 296, baseType: !2835, size: 64, offset: 576)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2832, file: !101, line: 297, baseType: !2835, size: 64, offset: 640)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2832, file: !101, line: 298, baseType: !2835, size: 64, offset: 704)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2832, file: !101, line: 299, baseType: !2835, size: 64, offset: 768)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2832, file: !101, line: 300, baseType: !2835, size: 64, offset: 832)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2832, file: !101, line: 301, baseType: !2835, size: 64, offset: 896)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2832, file: !101, line: 302, baseType: !2835, size: 64, offset: 960)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2832, file: !101, line: 303, baseType: !2835, size: 64, offset: 1024)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2832, file: !101, line: 304, baseType: !2835, size: 64, offset: 1088)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2832, file: !101, line: 305, baseType: !2835, size: 64, offset: 1152)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2832, file: !101, line: 306, baseType: !2835, size: 64, offset: 1216)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2832, file: !101, line: 307, baseType: !2835, size: 64, offset: 1280)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2832, file: !101, line: 308, baseType: !2835, size: 64, offset: 1344)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2832, file: !101, line: 309, baseType: !2835, size: 64, offset: 1408)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2799, file: !94, line: 714, baseType: !2861, size: 64, offset: 768)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2863)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2864, line: 80, size: 1344, elements: !2865)
!2864 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2865 = !{!2866, !2867, !2868, !2869, !2870, !2871, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2929}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2863, file: !2864, line: 81, baseType: !146, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2863, file: !2864, line: 82, baseType: !146, size: 64, offset: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2863, file: !2864, line: 83, baseType: !1533, size: 64, offset: 128)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2863, file: !2864, line: 84, baseType: !1533, size: 64, offset: 192)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2863, file: !2864, line: 85, baseType: !1533, size: 64, offset: 256)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2863, file: !2864, line: 87, baseType: !2872, size: 64, offset: 320)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!109, !2798, !2875}
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !2877)
!2877 = !{!2878, !2879, !2880, !2881, !2882, !2883, !2884, !2888, !2892, !2893, !2894, !2895, !2896, !2904, !2905, !2906, !2907, !2908, !2909}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2876, file: !88, line: 97, baseType: !146, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2876, file: !88, line: 98, baseType: !2861, size: 64, offset: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2876, file: !88, line: 100, baseType: !1440, size: 64, offset: 128)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2876, file: !88, line: 101, baseType: !146, size: 64, offset: 192)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2876, file: !88, line: 103, baseType: !302, size: 8, offset: 256)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2876, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2876, file: !88, line: 106, baseType: !2885, size: 64, offset: 320)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2887)
!2887 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !88, line: 106, flags: DIFlagFwdDecl)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2876, file: !88, line: 107, baseType: !2889, size: 64, offset: 384)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2891)
!2891 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !88, line: 107, flags: DIFlagFwdDecl)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2876, file: !88, line: 109, baseType: !2835, size: 64, offset: 448)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2876, file: !88, line: 110, baseType: !2826, size: 64, offset: 512)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2876, file: !88, line: 111, baseType: !2835, size: 64, offset: 576)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2876, file: !88, line: 112, baseType: !2826, size: 64, offset: 640)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2876, file: !88, line: 113, baseType: !2897, size: 64, offset: 704)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!109, !2798, !2900}
!2900 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !2901)
!2901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !2902)
!2902 = !{!2903}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2901, file: !101, line: 59, baseType: !109, size: 32)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2876, file: !88, line: 114, baseType: !2835, size: 64, offset: 768)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2876, file: !88, line: 115, baseType: !1533, size: 64, offset: 832)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2876, file: !88, line: 116, baseType: !1533, size: 64, offset: 896)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2876, file: !88, line: 118, baseType: !2830, size: 64, offset: 960)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2876, file: !88, line: 119, baseType: !2826, size: 64, offset: 1024)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2876, file: !88, line: 121, baseType: !2910, size: 64, offset: 1088)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2863, file: !2864, line: 88, baseType: !2815, size: 64, offset: 384)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2863, file: !2864, line: 89, baseType: !2835, size: 64, offset: 448)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2863, file: !2864, line: 90, baseType: !2826, size: 64, offset: 512)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2863, file: !2864, line: 91, baseType: !2826, size: 64, offset: 576)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2863, file: !2864, line: 92, baseType: !2826, size: 64, offset: 640)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2863, file: !2864, line: 94, baseType: !2835, size: 64, offset: 704)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2863, file: !2864, line: 95, baseType: !2835, size: 64, offset: 768)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2863, file: !2864, line: 97, baseType: !2897, size: 64, offset: 832)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2863, file: !2864, line: 98, baseType: !2835, size: 64, offset: 896)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2863, file: !2864, line: 100, baseType: !2835, size: 64, offset: 960)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2863, file: !2864, line: 102, baseType: !2835, size: 64, offset: 1024)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2863, file: !2864, line: 103, baseType: !2826, size: 64, offset: 1088)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2863, file: !2864, line: 105, baseType: !2830, size: 64, offset: 1152)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2863, file: !2864, line: 107, baseType: !2926, size: 64, offset: 1216)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2928)
!2928 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2864, line: 107, flags: DIFlagFwdDecl)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2863, file: !2864, line: 109, baseType: !302, size: 8, offset: 1280)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2799, file: !94, line: 715, baseType: !2875, size: 64, offset: 832)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2799, file: !94, line: 717, baseType: !150, size: 64, offset: 896)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2799, file: !94, line: 719, baseType: !150, size: 64, offset: 960)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2799, file: !94, line: 721, baseType: !744, size: 256, offset: 1024)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2799, file: !94, line: 725, baseType: !2935, size: 448, offset: 1280)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !2936)
!2936 = !{!2937, !2938, !2939, !2940}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2935, file: !94, line: 518, baseType: !226, size: 128)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2935, file: !94, line: 519, baseType: !226, size: 128, offset: 128)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2935, file: !94, line: 520, baseType: !226, size: 128, offset: 256)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2935, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2799, file: !94, line: 726, baseType: !2942, size: 2496, offset: 1728)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !2943)
!2943 = !{!2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3026, !3030}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2942, file: !101, line: 664, baseType: !2900, size: 32)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2942, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2942, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2942, file: !101, line: 667, baseType: !302, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2942, file: !101, line: 668, baseType: !302, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2942, file: !101, line: 669, baseType: !302, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2942, file: !101, line: 670, baseType: !302, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2942, file: !101, line: 671, baseType: !302, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2942, file: !101, line: 672, baseType: !302, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2942, file: !101, line: 673, baseType: !302, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2942, file: !101, line: 674, baseType: !302, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2942, file: !101, line: 675, baseType: !398, size: 32, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2942, file: !101, line: 676, baseType: !188, size: 32, offset: 96)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2942, file: !101, line: 678, baseType: !226, size: 128, offset: 128)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2942, file: !101, line: 679, baseType: !1074, size: 256, offset: 256)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2942, file: !101, line: 680, baseType: !2960, size: 64, offset: 512)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2962, line: 43, size: 1536, elements: !2963)
!2962 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2963 = !{!2964, !2965, !2966, !2967, !2968, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2961, file: !2962, line: 44, baseType: !146, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2961, file: !2962, line: 45, baseType: !109, size: 32, offset: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2961, file: !2962, line: 46, baseType: !226, size: 128, offset: 128)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2961, file: !2962, line: 47, baseType: !188, size: 32, offset: 256)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2961, file: !2962, line: 48, baseType: !2969, size: 64, offset: 320)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2961, file: !2962, line: 49, baseType: !2495, size: 320, offset: 384)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2961, file: !2962, line: 50, baseType: !168, size: 64, offset: 704)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2961, file: !2962, line: 51, baseType: !298, size: 64, offset: 768)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2961, file: !2962, line: 52, baseType: !298, size: 64, offset: 832)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2961, file: !2962, line: 53, baseType: !298, size: 64, offset: 896)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2961, file: !2962, line: 54, baseType: !298, size: 64, offset: 960)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2961, file: !2962, line: 55, baseType: !298, size: 64, offset: 1024)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2961, file: !2962, line: 56, baseType: !168, size: 64, offset: 1088)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2961, file: !2962, line: 57, baseType: !168, size: 64, offset: 1152)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2961, file: !2962, line: 58, baseType: !168, size: 64, offset: 1216)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2961, file: !2962, line: 59, baseType: !168, size: 64, offset: 1280)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2961, file: !2962, line: 60, baseType: !168, size: 64, offset: 1344)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2961, file: !2962, line: 61, baseType: !2798, size: 64, offset: 1408)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2961, file: !2962, line: 62, baseType: !302, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2961, file: !2962, line: 63, baseType: !302, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2942, file: !101, line: 681, baseType: !302, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2942, file: !101, line: 682, baseType: !302, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2942, file: !101, line: 683, baseType: !302, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2942, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2942, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2942, file: !101, line: 690, baseType: !516, size: 512, offset: 640)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2942, file: !101, line: 691, baseType: !451, size: 64, offset: 1152)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2942, file: !101, line: 692, baseType: !1035, size: 256, offset: 1216)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2942, file: !101, line: 693, baseType: !183, size: 192, offset: 1472)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2942, file: !101, line: 694, baseType: !2969, size: 64, offset: 1664)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2942, file: !101, line: 695, baseType: !178, size: 32, offset: 1728)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2942, file: !101, line: 696, baseType: !178, size: 32, offset: 1760)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2942, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2942, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2942, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2942, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2942, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2942, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2942, file: !101, line: 703, baseType: !302, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2942, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2942, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2942, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2942, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2942, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2942, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2942, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2942, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2942, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2942, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2942, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2942, file: !101, line: 715, baseType: !451, size: 64, offset: 2048)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2942, file: !101, line: 716, baseType: !451, size: 64, offset: 2112)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2942, file: !101, line: 717, baseType: !451, size: 64, offset: 2176)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2942, file: !101, line: 718, baseType: !451, size: 64, offset: 2240)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2942, file: !101, line: 720, baseType: !3021, size: 64, offset: 2304)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !3023)
!3023 = !{!3024, !3025}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3022, file: !101, line: 633, baseType: !188, size: 32)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3022, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2942, file: !101, line: 721, baseType: !3027, size: 64, offset: 2368)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{null, !2798, !837}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2942, file: !101, line: 722, baseType: !3031, size: 64, offset: 2432)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2799, file: !94, line: 727, baseType: !3034, size: 64, offset: 4224)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !3036)
!3036 = !{!3037, !3038, !3039, !3043, !3044, !3045}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3035, file: !101, line: 743, baseType: !2832, size: 1472)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3035, file: !101, line: 744, baseType: !2835, size: 64, offset: 1472)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3035, file: !101, line: 745, baseType: !3040, size: 64, offset: 1536)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{null, !2798, !302}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3035, file: !101, line: 746, baseType: !2835, size: 64, offset: 1600)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3035, file: !101, line: 747, baseType: !2826, size: 64, offset: 1664)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3035, file: !101, line: 748, baseType: !2826, size: 64, offset: 1728)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2799, file: !94, line: 736, baseType: !3047, size: 128, offset: 4288)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !3048)
!3048 = !{!3049, !3053}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3047, file: !94, line: 531, baseType: !3050, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3052, line: 13, flags: DIFlagFwdDecl)
!3052 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3047, file: !94, line: 532, baseType: !3054, size: 64, offset: 64)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2799, file: !94, line: 738, baseType: !3057, size: 64, offset: 4416)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3059)
!3059 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2799, file: !94, line: 740, baseType: !3061, size: 64, offset: 4480)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2799, file: !94, line: 741, baseType: !451, size: 64, offset: 4544)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2799, file: !94, line: 746, baseType: !451, size: 64, offset: 4608)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2799, file: !94, line: 747, baseType: !3065, size: 64, offset: 4672)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3067)
!3067 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2799, file: !94, line: 749, baseType: !3069, size: 64, offset: 4736)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !3071)
!3071 = !{!3072, !3073, !3074}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3070, file: !94, line: 433, baseType: !7, size: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3070, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3070, file: !94, line: 435, baseType: !168, size: 64, offset: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2799, file: !94, line: 751, baseType: !226, size: 128, offset: 4800)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2799, file: !94, line: 762, baseType: !3077, size: 64, offset: 4928)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2799, file: !94, line: 770, baseType: !3080, offset: 4992)
!3080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3081, line: 5, elements: !717)
!3081 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2799, file: !94, line: 772, baseType: !3083, size: 64, offset: 4992)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3085, line: 18, flags: DIFlagFwdDecl)
!3085 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2799, file: !94, line: 773, baseType: !3087, size: 64, offset: 5056)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3089, line: 41, size: 512, elements: !3090)
!3089 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!3090 = !{!3091, !3092, !3186, !3187, !3188, !3189}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3088, file: !3089, line: 42, baseType: !3087, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3088, file: !3089, line: 43, baseType: !3093, size: 64, offset: 64)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3095)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3089, line: 125, size: 1408, elements: !3096)
!3096 = !{!3097, !3101, !3105, !3111, !3115, !3116, !3121, !3125, !3129, !3133, !3137, !3138, !3142, !3146, !3150, !3161, !3162, !3163, !3164, !3174, !3178, !3182}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3095, file: !3089, line: 126, baseType: !3098, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!3087, !3087}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3095, file: !3089, line: 127, baseType: !3102, size: 64, offset: 64)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{null, !3087}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3095, file: !3089, line: 128, baseType: !3106, size: 64, offset: 128)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!302, !3109}
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3088)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3095, file: !3089, line: 129, baseType: !3112, size: 64, offset: 192)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!2083, !3109, !2818}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !3095, file: !3089, line: 131, baseType: !3106, size: 64, offset: 256)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !3095, file: !3089, line: 133, baseType: !3117, size: 64, offset: 320)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!3120, !3109}
!3120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !3089, line: 132, flags: DIFlagFwdDecl)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3095, file: !3089, line: 134, baseType: !3122, size: 64, offset: 384)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!302, !3109, !146}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3095, file: !3089, line: 136, baseType: !3126, size: 64, offset: 448)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!109, !3109, !146, !7, !150, !164}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3095, file: !3089, line: 141, baseType: !3130, size: 64, offset: 512)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!109, !3109, !146, !2572, !164}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3095, file: !3089, line: 144, baseType: !3134, size: 64, offset: 576)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!146, !3109}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3095, file: !3089, line: 145, baseType: !3134, size: 64, offset: 640)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3095, file: !3089, line: 146, baseType: !3139, size: 64, offset: 704)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!3087, !3109}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3095, file: !3089, line: 148, baseType: !3143, size: 64, offset: 768)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!3087, !3109, !3087}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3095, file: !3089, line: 151, baseType: !3147, size: 64, offset: 832)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!3087, !3109, !146}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3095, file: !3089, line: 153, baseType: !3151, size: 64, offset: 896)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!109, !3109, !146, !146, !7, !7, !3154}
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3089, line: 94, size: 640, elements: !3156)
!3156 = !{!3157, !3158, !3159}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3155, file: !3089, line: 95, baseType: !3087, size: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3155, file: !3089, line: 96, baseType: !7, size: 32, offset: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3155, file: !3089, line: 97, baseType: !3160, size: 512, offset: 128)
!3160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 512, elements: !558)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3095, file: !3089, line: 158, baseType: !3143, size: 64, offset: 960)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3095, file: !3089, line: 161, baseType: !3139, size: 64, offset: 1024)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3095, file: !3089, line: 163, baseType: !3098, size: 64, offset: 1088)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3095, file: !3089, line: 164, baseType: !3165, size: 64, offset: 1152)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!109, !3109, !3168}
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3089, line: 73, size: 128, elements: !3170)
!3170 = !{!3171, !3172, !3173}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3169, file: !3089, line: 74, baseType: !7, size: 32)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3169, file: !3089, line: 75, baseType: !7, size: 32, offset: 32)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3169, file: !3089, line: 76, baseType: !3109, size: 64, offset: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !3095, file: !3089, line: 166, baseType: !3175, size: 64, offset: 1216)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!150, !3087, !109}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !3095, file: !3089, line: 167, baseType: !3179, size: 64, offset: 1280)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!109, !3109, !7}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3095, file: !3089, line: 168, baseType: !3183, size: 64, offset: 1344)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!109, !3087}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3088, file: !3089, line: 44, baseType: !2798, size: 64, offset: 128)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3088, file: !3089, line: 45, baseType: !226, size: 128, offset: 192)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3088, file: !3089, line: 46, baseType: !226, size: 128, offset: 320)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3088, file: !3089, line: 47, baseType: !212, size: 8, offset: 448)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2799, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2799, file: !94, line: 778, baseType: !1280, size: 32, offset: 5152)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2799, file: !94, line: 779, baseType: !398, size: 32, offset: 5184)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2799, file: !94, line: 781, baseType: !188, size: 32, offset: 5216)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2799, file: !94, line: 782, baseType: !226, size: 128, offset: 5248)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2799, file: !94, line: 784, baseType: !3196, size: 64, offset: 5376)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3198)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3199, line: 52, size: 768, elements: !3200)
!3199 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3200 = !{!3201, !3202, !3203, !3204, !3205, !3209, !3213, !3214, !3215, !3216, !3220, !3224}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3198, file: !3199, line: 53, baseType: !146, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3198, file: !3199, line: 55, baseType: !1533, size: 64, offset: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3198, file: !3199, line: 56, baseType: !1533, size: 64, offset: 128)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3198, file: !3199, line: 58, baseType: !2815, size: 64, offset: 192)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3198, file: !3199, line: 59, baseType: !3206, size: 64, offset: 256)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!913, !2818, !2824}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3198, file: !3199, line: 61, baseType: !3210, size: 64, offset: 320)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{null, !3196}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3198, file: !3199, line: 62, baseType: !2826, size: 64, offset: 384)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3198, file: !3199, line: 64, baseType: !2835, size: 64, offset: 448)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3198, file: !3199, line: 66, baseType: !2066, size: 64, offset: 512)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3198, file: !3199, line: 67, baseType: !3217, size: 64, offset: 576)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!2083, !2818}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3198, file: !3199, line: 69, baseType: !3221, size: 64, offset: 640)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{null, !2818, !1099, !1100}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3198, file: !3199, line: 71, baseType: !2830, size: 64, offset: 704)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2799, file: !94, line: 785, baseType: !1533, size: 64, offset: 5440)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2799, file: !94, line: 787, baseType: !2826, size: 64, offset: 5504)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2799, file: !94, line: 788, baseType: !3228, size: 64, offset: 5568)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2799, file: !94, line: 789, baseType: !3231, size: 64, offset: 5632)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2799, file: !94, line: 791, baseType: !3234, size: 64, offset: 5696)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !3236)
!3236 = !{!3237, !3238, !3239, !3240, !3241}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3235, file: !94, line: 598, baseType: !116, size: 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3235, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3235, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3235, file: !94, line: 601, baseType: !302, size: 8, offset: 96)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3235, file: !94, line: 602, baseType: !302, size: 8, offset: 104)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2799, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2799, file: !94, line: 795, baseType: !302, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2799, file: !94, line: 796, baseType: !302, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2799, file: !94, line: 797, baseType: !302, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2799, file: !94, line: 798, baseType: !302, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2799, file: !94, line: 799, baseType: !302, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2793, file: !237, line: 307, baseType: !2798, size: 64, offset: 256)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !2793, file: !237, line: 308, baseType: !1533, size: 64, offset: 320)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !2793, file: !237, line: 309, baseType: !1533, size: 64, offset: 384)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2793, file: !237, line: 310, baseType: !146, size: 64, offset: 448)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2793, file: !237, line: 311, baseType: !109, size: 32, offset: 512)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2793, file: !237, line: 316, baseType: !109, size: 32, offset: 544)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !2793, file: !237, line: 318, baseType: !2395, size: 64, offset: 576)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !2793, file: !237, line: 319, baseType: !3256, size: 64, offset: 640)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !237, line: 977, size: 1856, elements: !3258)
!3258 = !{!3259, !3311, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3257, file: !237, line: 978, baseType: !3260, size: 896)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !237, line: 873, size: 896, elements: !3261)
!3261 = !{!3262, !3263, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3260, file: !237, line: 874, baseType: !2792, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3260, file: !237, line: 875, baseType: !3264, size: 64, offset: 64)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !237, line: 912, size: 1792, elements: !3266)
!3266 = !{!3267, !3268, !3269, !3270, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3265, file: !237, line: 917, baseType: !539, size: 32)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3265, file: !237, line: 923, baseType: !744, size: 256, offset: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3265, file: !237, line: 925, baseType: !226, size: 128, offset: 320)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3265, file: !237, line: 926, baseType: !3271, size: 128, offset: 448)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !237, line: 901, size: 128, elements: !3272)
!3272 = !{!3273, !3274}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3271, file: !237, line: 902, baseType: !582, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3271, file: !237, line: 903, baseType: !451, size: 64, offset: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3265, file: !237, line: 927, baseType: !3271, size: 128, offset: 576)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3265, file: !237, line: 928, baseType: !226, size: 128, offset: 704)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3265, file: !237, line: 930, baseType: !109, size: 32, offset: 832)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3265, file: !237, line: 931, baseType: !109, size: 32, offset: 864)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3265, file: !237, line: 932, baseType: !109, size: 32, offset: 896)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3265, file: !237, line: 934, baseType: !109, size: 32, offset: 928)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3265, file: !237, line: 935, baseType: !109, size: 32, offset: 960)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3265, file: !237, line: 936, baseType: !109, size: 32, offset: 992)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3265, file: !237, line: 937, baseType: !109, size: 32, offset: 1024)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3265, file: !237, line: 939, baseType: !329, size: 32, offset: 1056)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3265, file: !237, line: 940, baseType: !387, size: 64, offset: 1088)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3265, file: !237, line: 945, baseType: !451, size: 64, offset: 1152)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3265, file: !237, line: 946, baseType: !451, size: 64, offset: 1216)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3265, file: !237, line: 947, baseType: !451, size: 64, offset: 1280)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3265, file: !237, line: 953, baseType: !3264, size: 64, offset: 1344)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3265, file: !237, line: 954, baseType: !451, size: 64, offset: 1408)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3265, file: !237, line: 955, baseType: !451, size: 64, offset: 1472)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3265, file: !237, line: 956, baseType: !109, size: 32, offset: 1536)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3265, file: !237, line: 958, baseType: !109, size: 32, offset: 1568)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3265, file: !237, line: 960, baseType: !352, size: 128, align: 64, offset: 1600)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3265, file: !237, line: 968, baseType: !3296, size: 64, offset: 1728)
!3296 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3297, line: 12, baseType: !3298)
!3297 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3297, line: 10, size: 64, elements: !3299)
!3299 = !{!3300}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3298, file: !3297, line: 11, baseType: !737, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3260, file: !237, line: 877, baseType: !226, size: 128, offset: 128)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3260, file: !237, line: 879, baseType: !226, size: 128, offset: 256)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3260, file: !237, line: 880, baseType: !226, size: 128, offset: 384)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3260, file: !237, line: 883, baseType: !7, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3260, file: !237, line: 885, baseType: !7, size: 32, offset: 544)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3260, file: !237, line: 886, baseType: !7, size: 32, offset: 576)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3260, file: !237, line: 888, baseType: !178, size: 32, offset: 608)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3260, file: !237, line: 889, baseType: !352, size: 128, align: 64, offset: 640)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3260, file: !237, line: 891, baseType: !150, size: 64, offset: 768)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3260, file: !237, line: 898, baseType: !109, size: 32, offset: 832)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3257, file: !237, line: 979, baseType: !3312, size: 64, offset: 896)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3257, file: !237, line: 981, baseType: !226, size: 128, offset: 960)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3257, file: !237, line: 982, baseType: !109, size: 32, offset: 1088)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3257, file: !237, line: 984, baseType: !109, size: 32, offset: 1120)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3257, file: !237, line: 985, baseType: !109, size: 32, offset: 1152)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3257, file: !237, line: 987, baseType: !539, size: 32, offset: 1184)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3257, file: !237, line: 988, baseType: !516, size: 512, offset: 1216)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3257, file: !237, line: 989, baseType: !298, size: 64, offset: 1728)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3257, file: !237, line: 990, baseType: !7, size: 32, offset: 1792)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !2793, file: !237, line: 320, baseType: !178, size: 32, offset: 704)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !2793, file: !237, line: 321, baseType: !109, size: 32, offset: 736)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !2793, file: !237, line: 322, baseType: !109, size: 32, offset: 768)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !2793, file: !237, line: 325, baseType: !7, size: 32, offset: 800)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !2793, file: !237, line: 331, baseType: !3326, size: 64, offset: 832)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{null, !2792}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !2793, file: !237, line: 332, baseType: !3326, size: 64, offset: 896)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !2793, file: !237, line: 350, baseType: !3331, size: 64, offset: 960)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!109, !2775}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !2793, file: !237, line: 356, baseType: !3335, size: 64, offset: 1024)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{null, !2775, !696}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !2793, file: !237, line: 357, baseType: !3335, size: 64, offset: 1088)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2793, file: !237, line: 385, baseType: !3340, size: 64, offset: 1152)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!109, !2775, !109}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !2793, file: !237, line: 386, baseType: !3344, size: 64, offset: 1216)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{null, !2775, !109}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2793, file: !237, line: 406, baseType: !3344, size: 64, offset: 1280)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2793, file: !237, line: 407, baseType: !3344, size: 64, offset: 1344)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2793, file: !237, line: 415, baseType: !3350, size: 64, offset: 1408)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{null, !2775}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !2793, file: !237, line: 427, baseType: !3354, size: 64, offset: 1472)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{null, !2792, !7}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !2793, file: !237, line: 436, baseType: !3358, size: 64, offset: 1536)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!109, !2792}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !2793, file: !237, line: 443, baseType: !3326, size: 64, offset: 1600)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !2793, file: !237, line: 450, baseType: !3331, size: 64, offset: 1664)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !2793, file: !237, line: 455, baseType: !3364, size: 64, offset: 1728)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{null, !3312, !302}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !2793, file: !237, line: 461, baseType: !3368, size: 64, offset: 1792)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3370, line: 11, flags: DIFlagFwdDecl)
!3370 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !2793, file: !237, line: 469, baseType: !3372, size: 64, offset: 1856)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{null, !3312, !3312}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !2793, file: !237, line: 476, baseType: !3376, size: 64, offset: 1920)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!150, !2775, !1955, !109, !302}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !2793, file: !237, line: 483, baseType: !1237, size: 64, offset: 1984)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !2793, file: !237, line: 494, baseType: !3381, size: 64, offset: 2048)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!1133, !2775, !3384, !168}
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !237, line: 1014, size: 448, elements: !3386)
!3386 = !{!3387, !3388, !3391, !3392, !3393, !3394, !3399}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3385, file: !237, line: 1015, baseType: !2775, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3385, file: !237, line: 1016, baseType: !3389, size: 64, offset: 64)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !237, line: 641, flags: DIFlagFwdDecl)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3385, file: !237, line: 1017, baseType: !168, size: 64, offset: 128)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3385, file: !237, line: 1018, baseType: !168, size: 64, offset: 192)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3385, file: !237, line: 1019, baseType: !451, size: 64, offset: 256)
!3394 = !DIDerivedType(tag: DW_TAG_member, scope: !3385, file: !237, line: 1020, baseType: !3395, size: 64, offset: 320)
!3395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3385, file: !237, line: 1020, size: 64, elements: !3396)
!3396 = !{!3397, !3398}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3395, file: !237, line: 1021, baseType: !150, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3395, file: !237, line: 1022, baseType: !168, size: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3385, file: !237, line: 1024, baseType: !109, size: 32, offset: 384)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !2793, file: !237, line: 506, baseType: !3401, size: 64, offset: 2112)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!109, !229}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !2793, file: !237, line: 520, baseType: !3350, size: 64, offset: 2176)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !2793, file: !237, line: 530, baseType: !3331, size: 64, offset: 2240)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2793, file: !237, line: 537, baseType: !3407, size: 64, offset: 2304)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!302, !2792, !109}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !2793, file: !237, line: 542, baseType: !3411, size: 64, offset: 2368)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!109, !2775, !451}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !2776, file: !237, line: 715, baseType: !150, size: 64, offset: 1280)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2776, file: !237, line: 717, baseType: !236, size: 32, offset: 1344)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !2776, file: !237, line: 718, baseType: !7, size: 32, offset: 1376)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2776, file: !237, line: 719, baseType: !3418, size: 64, offset: 1408)
!3418 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3419, line: 26, baseType: !3420)
!3419 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3419, line: 24, size: 64, elements: !3421)
!3421 = !{!3422}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3420, file: !3419, line: 25, baseType: !3296, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2776, file: !237, line: 720, baseType: !739, size: 64, offset: 1472)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !2776, file: !237, line: 728, baseType: !451, size: 64, offset: 1536)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !2776, file: !237, line: 729, baseType: !451, size: 64, offset: 1600)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !2776, file: !237, line: 730, baseType: !451, size: 64, offset: 1664)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2776, file: !237, line: 732, baseType: !3428, size: 1088, offset: 1728)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3429, line: 385, size: 1088, elements: !3430)
!3429 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3430 = !{!3431, !3432, !3433, !3434, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3484, !3485, !3492, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3428, file: !3429, line: 390, baseType: !399, size: 32)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3428, file: !3429, line: 395, baseType: !399, size: 32, offset: 32)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3428, file: !3429, line: 400, baseType: !452, size: 64, offset: 64)
!3434 = !DIDerivedType(tag: DW_TAG_member, scope: !3428, file: !3429, line: 402, baseType: !3435, size: 64, offset: 128)
!3435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3428, file: !3429, line: 402, size: 64, elements: !3436)
!3436 = !{!3437, !3438}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3435, file: !3429, line: 403, baseType: !452, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3435, file: !3429, line: 404, baseType: !452, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3428, file: !3429, line: 407, baseType: !452, size: 64, offset: 192)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3428, file: !3429, line: 408, baseType: !452, size: 64, offset: 256)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3428, file: !3429, line: 410, baseType: !452, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3428, file: !3429, line: 411, baseType: !452, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3428, file: !3429, line: 412, baseType: !452, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3428, file: !3429, line: 413, baseType: !452, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3428, file: !3429, line: 414, baseType: !452, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3428, file: !3429, line: 415, baseType: !452, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3428, file: !3429, line: 416, baseType: !452, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3428, file: !3429, line: 417, baseType: !452, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3428, file: !3429, line: 418, baseType: !452, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3428, file: !3429, line: 419, baseType: !452, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3428, file: !3429, line: 420, baseType: !452, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3428, file: !3429, line: 421, baseType: !452, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3428, file: !3429, line: 422, baseType: !452, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3428, file: !3429, line: 423, baseType: !452, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3428, file: !3429, line: 424, baseType: !452, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3428, file: !3429, line: 435, baseType: !452, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3428, file: !3429, line: 436, baseType: !452, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3428, file: !3429, line: 437, baseType: !452, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3428, file: !3429, line: 439, baseType: !452, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3428, file: !3429, line: 440, baseType: !452, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3428, file: !3429, line: 442, baseType: !452, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3428, file: !3429, line: 443, baseType: !452, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3428, file: !3429, line: 444, baseType: !452, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3428, file: !3429, line: 445, baseType: !452, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3428, file: !3429, line: 446, baseType: !452, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3428, file: !3429, line: 447, baseType: !452, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3428, file: !3429, line: 448, baseType: !452, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3428, file: !3429, line: 449, baseType: !452, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3428, file: !3429, line: 450, baseType: !452, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3428, file: !3429, line: 451, baseType: !452, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3428, file: !3429, line: 452, baseType: !452, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3428, file: !3429, line: 453, baseType: !452, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3428, file: !3429, line: 454, baseType: !452, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3428, file: !3429, line: 455, baseType: !452, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3428, file: !3429, line: 456, baseType: !452, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3428, file: !3429, line: 457, baseType: !452, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3428, file: !3429, line: 458, baseType: !452, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3428, file: !3429, line: 459, baseType: !452, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3479 = !DIDerivedType(tag: DW_TAG_member, scope: !3428, file: !3429, line: 461, baseType: !3480, size: 32, offset: 384)
!3480 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3428, file: !3429, line: 461, size: 32, elements: !3481)
!3481 = !{!3482, !3483}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3480, file: !3429, line: 462, baseType: !399, size: 32)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3480, file: !3429, line: 463, baseType: !399, size: 32)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3428, file: !3429, line: 466, baseType: !399, size: 32, offset: 416)
!3485 = !DIDerivedType(tag: DW_TAG_member, scope: !3428, file: !3429, line: 467, baseType: !3486, size: 64, offset: 448)
!3486 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3428, file: !3429, line: 467, size: 64, elements: !3487)
!3487 = !{!3488, !3489, !3490, !3491}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3486, file: !3429, line: 468, baseType: !452, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3486, file: !3429, line: 469, baseType: !452, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3486, file: !3429, line: 470, baseType: !452, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3486, file: !3429, line: 471, baseType: !452, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, scope: !3428, file: !3429, line: 473, baseType: !3493, size: 64, offset: 512)
!3493 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3428, file: !3429, line: 473, size: 64, elements: !3494)
!3494 = !{!3495, !3496, !3497, !3498}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3493, file: !3429, line: 474, baseType: !452, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3493, file: !3429, line: 475, baseType: !452, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3493, file: !3429, line: 476, baseType: !452, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3493, file: !3429, line: 477, baseType: !452, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3428, file: !3429, line: 479, baseType: !452, size: 64, offset: 576)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3428, file: !3429, line: 485, baseType: !452, size: 64, offset: 640)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3428, file: !3429, line: 490, baseType: !399, size: 32, offset: 704)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3428, file: !3429, line: 492, baseType: !838, size: 32, offset: 736)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3428, file: !3429, line: 501, baseType: !452, size: 64, offset: 768)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3428, file: !3429, line: 506, baseType: !399, size: 32, offset: 832)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3428, file: !3429, line: 507, baseType: !223, size: 16, offset: 864)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3428, file: !3429, line: 508, baseType: !223, size: 16, offset: 880)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3428, file: !3429, line: 509, baseType: !399, size: 32, offset: 896)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3428, file: !3429, line: 510, baseType: !399, size: 32, offset: 928)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3428, file: !3429, line: 518, baseType: !452, size: 64, offset: 960)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3428, file: !3429, line: 520, baseType: !452, size: 64, offset: 1024)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !2776, file: !237, line: 733, baseType: !222, size: 16, offset: 2816)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !2776, file: !237, line: 734, baseType: !222, size: 16, offset: 2832)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !2776, file: !237, line: 735, baseType: !222, size: 16, offset: 2848)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !2776, file: !237, line: 736, baseType: !3515, size: 1536, offset: 2880)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !237, line: 155, size: 1536, elements: !3516)
!3516 = !{!3517, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3601, !3602, !3603, !3604}
!3517 = !DIDerivedType(tag: DW_TAG_member, scope: !3515, file: !237, line: 157, baseType: !3518, size: 768)
!3518 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3515, file: !237, line: 157, size: 768, elements: !3519)
!3519 = !{!3520, !3539, !3543, !3547, !3552, !3574}
!3520 = !DIDerivedType(tag: DW_TAG_member, scope: !3518, file: !237, line: 158, baseType: !3521, size: 768)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3518, file: !237, line: 158, size: 768, elements: !3522)
!3522 = !{!3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3538}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3521, file: !237, line: 159, baseType: !451, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !3521, file: !237, line: 160, baseType: !451, size: 64, offset: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !3521, file: !237, line: 161, baseType: !168, size: 64, offset: 128)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !3521, file: !237, line: 162, baseType: !168, size: 64, offset: 192)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !3521, file: !237, line: 163, baseType: !109, size: 32, offset: 256)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3521, file: !237, line: 164, baseType: !109, size: 32, offset: 288)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3521, file: !237, line: 165, baseType: !109, size: 32, offset: 320)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3521, file: !237, line: 166, baseType: !109, size: 32, offset: 352)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !3521, file: !237, line: 168, baseType: !3532, size: 192, offset: 384)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !237, line: 134, size: 192, elements: !3533)
!3533 = !{!3534, !3535, !3536, !3537}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3532, file: !237, line: 135, baseType: !451, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3532, file: !237, line: 136, baseType: !7, size: 32, offset: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3532, file: !237, line: 137, baseType: !109, size: 32, offset: 96)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3532, file: !237, line: 138, baseType: !109, size: 32, offset: 128)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !3521, file: !237, line: 169, baseType: !3532, size: 192, offset: 576)
!3539 = !DIDerivedType(tag: DW_TAG_member, scope: !3518, file: !237, line: 171, baseType: !3540, size: 512)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3518, file: !237, line: 171, size: 512, elements: !3541)
!3541 = !{!3542}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3540, file: !237, line: 172, baseType: !516, size: 512)
!3543 = !DIDerivedType(tag: DW_TAG_member, scope: !3518, file: !237, line: 174, baseType: !3544, size: 128)
!3544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3518, file: !237, line: 174, size: 128, elements: !3545)
!3545 = !{!3546}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !3544, file: !237, line: 176, baseType: !226, size: 128)
!3547 = !DIDerivedType(tag: DW_TAG_member, scope: !3518, file: !237, line: 178, baseType: !3548, size: 128)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3518, file: !237, line: 178, size: 128, elements: !3549)
!3549 = !{!3550, !3551}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !3548, file: !237, line: 179, baseType: !451, size: 64)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !3548, file: !237, line: 180, baseType: !451, size: 64, offset: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, scope: !3518, file: !237, line: 183, baseType: !3553, size: 320)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3518, file: !237, line: 183, size: 320, elements: !3554)
!3554 = !{!3555, !3563}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3553, file: !237, line: 189, baseType: !3556, size: 192)
!3556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !3557, line: 14, size: 192, elements: !3558)
!3557 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!3558 = !{!3559, !3560, !3561, !3562}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3556, file: !3557, line: 15, baseType: !168, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3556, file: !3557, line: 16, baseType: !168, size: 64, offset: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3556, file: !3557, line: 17, baseType: !212, size: 8, offset: 128)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3556, file: !3557, line: 18, baseType: !212, size: 8, offset: 136)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !3553, file: !237, line: 190, baseType: !3564, size: 128, offset: 192)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !3565, line: 21, size: 128, elements: !3566)
!3565 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!3566 = !{!3567, !3572}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !3564, file: !3565, line: 22, baseType: !3568, size: 64)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !3565, line: 17, size: 64, elements: !3569)
!3569 = !{!3570}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3568, file: !3565, line: 18, baseType: !3571, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3564, file: !3565, line: 23, baseType: !3573, size: 64, offset: 64)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, scope: !3518, file: !237, line: 193, baseType: !3575, size: 192)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3518, file: !237, line: 193, size: 192, elements: !3576)
!3576 = !{!3577, !3578, !3579, !3580, !3581}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !3575, file: !237, line: 194, baseType: !212, size: 8)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !3575, file: !237, line: 195, baseType: !212, size: 8, offset: 8)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3575, file: !237, line: 196, baseType: !222, size: 16, offset: 16)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !3575, file: !237, line: 197, baseType: !451, size: 64, offset: 64)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !3575, file: !237, line: 198, baseType: !451, size: 64, offset: 128)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3515, file: !237, line: 205, baseType: !387, size: 64, offset: 768)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3515, file: !237, line: 211, baseType: !150, size: 64, offset: 832)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3515, file: !237, line: 214, baseType: !168, size: 64, offset: 896)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3515, file: !237, line: 223, baseType: !109, size: 32, offset: 960)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !3515, file: !237, line: 229, baseType: !3418, size: 64, offset: 1024)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3515, file: !237, line: 234, baseType: !451, size: 64, offset: 1088)
!3588 = !DIDerivedType(tag: DW_TAG_member, scope: !3515, file: !237, line: 236, baseType: !3589, size: 128, offset: 1152)
!3589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3515, file: !237, line: 236, size: 128, elements: !3590)
!3590 = !{!3591, !3596}
!3591 = !DIDerivedType(tag: DW_TAG_member, scope: !3589, file: !237, line: 237, baseType: !3592, size: 128)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3589, file: !237, line: 237, size: 128, elements: !3593)
!3593 = !{!3594, !3595}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !3592, file: !237, line: 241, baseType: !451, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !3592, file: !237, line: 249, baseType: !3418, size: 64, offset: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, scope: !3589, file: !237, line: 251, baseType: !3597, size: 128)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3589, file: !237, line: 251, size: 128, elements: !3598)
!3598 = !{!3599, !3600}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !3597, file: !237, line: 252, baseType: !451, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !3597, file: !237, line: 253, baseType: !451, size: 64, offset: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !3515, file: !237, line: 261, baseType: !451, size: 64, offset: 1280)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3515, file: !237, line: 262, baseType: !451, size: 64, offset: 1344)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !3515, file: !237, line: 268, baseType: !451, size: 64, offset: 1408)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !3515, file: !237, line: 269, baseType: !451, size: 64, offset: 1472)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2776, file: !237, line: 738, baseType: !3264, size: 64, offset: 4416)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !2776, file: !237, line: 744, baseType: !3312, size: 64, offset: 4480)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2776, file: !237, line: 745, baseType: !737, size: 64, offset: 4544)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !2776, file: !237, line: 751, baseType: !739, size: 64, offset: 4608)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !2776, file: !237, line: 752, baseType: !739, size: 64, offset: 4672)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !2776, file: !237, line: 757, baseType: !744, size: 256, offset: 4736)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !2776, file: !237, line: 758, baseType: !226, size: 128, offset: 4992)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2776, file: !237, line: 759, baseType: !2775, size: 64, offset: 5120)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !2776, file: !237, line: 761, baseType: !109, size: 32, offset: 5184)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2776, file: !237, line: 762, baseType: !109, size: 32, offset: 5216)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !2776, file: !237, line: 764, baseType: !226, size: 128, offset: 5248)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2776, file: !237, line: 765, baseType: !387, size: 64, offset: 5376)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !2776, file: !237, line: 768, baseType: !744, size: 256, offset: 5440)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !2776, file: !237, line: 769, baseType: !178, size: 32, offset: 5696)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2776, file: !237, line: 771, baseType: !3389, size: 64, offset: 5760)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !2776, file: !237, line: 772, baseType: !226, size: 128, offset: 5824)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !2776, file: !237, line: 773, baseType: !168, size: 64, offset: 5952)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !2776, file: !237, line: 774, baseType: !109, size: 32, offset: 6016)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !2776, file: !237, line: 777, baseType: !183, size: 192, offset: 6080)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2776, file: !237, line: 778, baseType: !3625, size: 64, offset: 6272)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !14, line: 1083, size: 384, elements: !3627)
!3627 = !{!3628, !3629, !3630, !3631, !3632, !3633}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3626, file: !14, line: 1084, baseType: !761, size: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3626, file: !14, line: 1085, baseType: !109, size: 32, offset: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3626, file: !14, line: 1086, baseType: !109, size: 32, offset: 96)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3626, file: !14, line: 1087, baseType: !3625, size: 64, offset: 128)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3626, file: !14, line: 1088, baseType: !724, size: 64, offset: 192)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3626, file: !14, line: 1089, baseType: !352, size: 128, align: 64, offset: 256)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !2776, file: !237, line: 781, baseType: !7, size: 32, offset: 6336)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !2776, file: !237, line: 782, baseType: !7, size: 32, offset: 6368)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !2776, file: !237, line: 783, baseType: !7, size: 32, offset: 6400)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !2776, file: !237, line: 784, baseType: !7, size: 32, offset: 6432)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !2776, file: !237, line: 785, baseType: !168, size: 64, offset: 6464)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !2776, file: !237, line: 786, baseType: !3640, size: 256, offset: 6528)
!3640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !3641, line: 17, size: 256, elements: !3642)
!3641 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!3642 = !{!3643, !3644, !3649}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3640, file: !3641, line: 18, baseType: !408, size: 128)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3640, file: !3641, line: 19, baseType: !3645, size: 64, offset: 128)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{null, !3648}
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !3640, file: !3641, line: 20, baseType: !3650, size: 64, offset: 192)
!3650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3651, line: 16, size: 64, elements: !3652)
!3651 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3652 = !{!3653}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3650, file: !3651, line: 17, baseType: !387, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !2776, file: !237, line: 787, baseType: !352, size: 128, align: 64, offset: 6784)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !2776, file: !237, line: 788, baseType: !7, size: 32, offset: 6912)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !2776, file: !237, line: 789, baseType: !3650, size: 64, offset: 6976)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !2776, file: !237, line: 791, baseType: !178, size: 32, offset: 7040)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !2776, file: !237, line: 794, baseType: !3659, size: 192, offset: 7104)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !237, line: 579, size: 192, elements: !3660)
!3660 = !{!3661, !3662, !3663}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3659, file: !237, line: 580, baseType: !226, size: 128)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3659, file: !237, line: 581, baseType: !539, size: 32, offset: 128)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !3659, file: !237, line: 582, baseType: !7, size: 32, offset: 160)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !2776, file: !237, line: 796, baseType: !3665, size: 64, offset: 7296)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !237, line: 585, size: 128, elements: !3667)
!3667 = !{!3668, !3669}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3666, file: !237, line: 586, baseType: !168, size: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3666, file: !237, line: 587, baseType: !168, size: 64, offset: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !2776, file: !237, line: 797, baseType: !168, size: 64, offset: 7360)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !2776, file: !237, line: 800, baseType: !2775, size: 64, offset: 7424)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !2776, file: !237, line: 802, baseType: !3350, size: 64, offset: 7488)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2776, file: !237, line: 803, baseType: !352, size: 128, align: 64, offset: 7552)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2776, file: !237, line: 805, baseType: !366, size: 64, offset: 7680)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2776, file: !237, line: 806, baseType: !451, size: 64, offset: 7744)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !2776, file: !237, line: 808, baseType: !739, size: 64, offset: 7808)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !2776, file: !237, line: 810, baseType: !3678, size: 64, offset: 7872)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!451}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !2776, file: !237, line: 811, baseType: !3682, size: 64, offset: 7936)
!3682 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !237, line: 605, baseType: !3683)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{null, !2775, !3686, !3791}
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !237, line: 1148, size: 2048, align: 512, elements: !3688)
!3688 = !{!3689, !3690, !3691, !3692, !3693, !3698, !3699, !3700, !3705, !3706, !3713, !3734, !3756, !3766, !3784, !3785, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !3687, file: !237, line: 1153, baseType: !451, size: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3687, file: !237, line: 1154, baseType: !451, size: 64, offset: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !3687, file: !237, line: 1155, baseType: !451, size: 64, offset: 128)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3687, file: !237, line: 1161, baseType: !451, size: 64, offset: 192)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !3687, file: !237, line: 1165, baseType: !3694, size: 64, offset: 256)
!3694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3687, file: !237, line: 1162, size: 64, elements: !3695)
!3695 = !{!3696, !3697}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3694, file: !237, line: 1163, baseType: !398, size: 32)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !3694, file: !237, line: 1164, baseType: !398, size: 32, offset: 32)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3687, file: !237, line: 1166, baseType: !451, size: 64, offset: 320)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3687, file: !237, line: 1167, baseType: !451, size: 64, offset: 384)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !3687, file: !237, line: 1171, baseType: !3701, size: 64, offset: 448)
!3701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3687, file: !237, line: 1168, size: 64, elements: !3702)
!3702 = !{!3703, !3704}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3701, file: !237, line: 1169, baseType: !398, size: 32)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3701, file: !237, line: 1170, baseType: !398, size: 32, offset: 32)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3687, file: !237, line: 1177, baseType: !451, size: 64, offset: 512)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !3687, file: !237, line: 1178, baseType: !3707, size: 64, offset: 576)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !237, line: 67, size: 64, elements: !3709)
!3709 = !{!3710, !3711}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3708, file: !237, line: 68, baseType: !452, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3708, file: !237, line: 69, baseType: !3712, offset: 64)
!3712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, elements: !1145)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3687, file: !237, line: 1179, baseType: !3714, size: 64, offset: 640)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !237, line: 93, size: 256, elements: !3716)
!3716 = !{!3717, !3733}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !3715, file: !237, line: 94, baseType: !3718, size: 224)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !237, line: 83, size: 224, elements: !3719)
!3719 = !{!3720, !3726, !3731, !3732}
!3720 = !DIDerivedType(tag: DW_TAG_member, scope: !3718, file: !237, line: 84, baseType: !3721, size: 64)
!3721 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3718, file: !237, line: 84, size: 64, elements: !3722)
!3722 = !{!3723, !3725}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3721, file: !237, line: 85, baseType: !3724, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3721, file: !237, line: 86, baseType: !168, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !3718, file: !237, line: 88, baseType: !3727, size: 64, offset: 64)
!3727 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !237, line: 80, baseType: !3728)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!168, !150, !2083, !168, !168}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3718, file: !237, line: 89, baseType: !150, size: 64, offset: 128)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3718, file: !237, line: 90, baseType: !398, size: 32, offset: 192)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3715, file: !237, line: 95, baseType: !398, size: 32, offset: 224)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !3687, file: !237, line: 1180, baseType: !3735, size: 64, offset: 704)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !237, line: 123, size: 128, elements: !3737)
!3737 = !{!3738, !3739, !3740}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3736, file: !237, line: 124, baseType: !452, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !3736, file: !237, line: 125, baseType: !452, size: 64, offset: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3736, file: !237, line: 126, baseType: !3741, offset: 128)
!3741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3742, elements: !1145)
!3742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3429, line: 1415, size: 192, elements: !3743)
!3743 = !{!3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !3742, file: !3429, line: 1416, baseType: !452, size: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !3742, file: !3429, line: 1417, baseType: !452, size: 64, offset: 64)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !3742, file: !3429, line: 1418, baseType: !452, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !3742, file: !3429, line: 1419, baseType: !452, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !3742, file: !3429, line: 1420, baseType: !452, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !3742, file: !3429, line: 1421, baseType: !452, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !3742, file: !3429, line: 1422, baseType: !452, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3742, file: !3429, line: 1423, baseType: !452, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !3742, file: !3429, line: 1424, baseType: !452, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !3742, file: !3429, line: 1425, baseType: !452, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3742, file: !3429, line: 1426, baseType: !452, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3742, file: !3429, line: 1427, baseType: !452, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3687, file: !237, line: 1181, baseType: !3757, size: 64, offset: 768)
!3757 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3429, line: 1430, size: 64, elements: !3758)
!3758 = !{!3759, !3760}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3757, file: !3429, line: 1431, baseType: !452, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_member, scope: !3757, file: !3429, line: 1433, baseType: !3761, size: 64)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3757, file: !3429, line: 1433, size: 64, elements: !3762)
!3762 = !{!3763, !3764, !3765}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !3761, file: !3429, line: 1434, baseType: !399, size: 32)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !3761, file: !3429, line: 1435, baseType: !223, size: 16, offset: 32)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !3761, file: !3429, line: 1436, baseType: !223, size: 16, offset: 48)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !3687, file: !237, line: 1182, baseType: !3767, size: 64, offset: 832)
!3767 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3429, line: 1267, size: 64, elements: !3768)
!3768 = !{!3769, !3770}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3767, file: !3429, line: 1268, baseType: !452, size: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, scope: !3767, file: !3429, line: 1269, baseType: !3771, size: 64)
!3771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3767, file: !3429, line: 1269, size: 64, elements: !3772)
!3772 = !{!3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !3771, file: !3429, line: 1270, baseType: !452, size: 5, flags: DIFlagBitField, extraData: i64 0)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !3771, file: !3429, line: 1271, baseType: !452, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !3771, file: !3429, line: 1272, baseType: !452, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !3771, file: !3429, line: 1273, baseType: !452, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !3771, file: !3429, line: 1274, baseType: !452, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !3771, file: !3429, line: 1275, baseType: !452, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !3771, file: !3429, line: 1276, baseType: !452, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !3771, file: !3429, line: 1277, baseType: !452, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !3771, file: !3429, line: 1278, baseType: !452, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !3771, file: !3429, line: 1279, baseType: !452, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !3771, file: !3429, line: 1280, baseType: !452, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !3687, file: !237, line: 1183, baseType: !451, size: 64, offset: 896)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !3687, file: !237, line: 1185, baseType: !3786, size: 128, offset: 960)
!3786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !3787, line: 7, size: 128, elements: !3788)
!3787 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!3788 = !{!3789, !3790}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !3786, file: !3787, line: 8, baseType: !452, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3786, file: !3787, line: 9, baseType: !3791, size: 64, offset: 64)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3793, line: 103, size: 1344, elements: !3794)
!3793 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3794 = !{!3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3823, !3824, !3825}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3792, file: !3793, line: 109, baseType: !168, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3792, file: !3793, line: 110, baseType: !168, size: 64, offset: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3792, file: !3793, line: 111, baseType: !168, size: 64, offset: 128)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3792, file: !3793, line: 112, baseType: !168, size: 64, offset: 192)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3792, file: !3793, line: 113, baseType: !168, size: 64, offset: 256)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3792, file: !3793, line: 114, baseType: !168, size: 64, offset: 320)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3792, file: !3793, line: 117, baseType: !168, size: 64, offset: 384)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3792, file: !3793, line: 118, baseType: !168, size: 64, offset: 448)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3792, file: !3793, line: 119, baseType: !168, size: 64, offset: 512)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3792, file: !3793, line: 120, baseType: !168, size: 64, offset: 576)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3792, file: !3793, line: 121, baseType: !168, size: 64, offset: 640)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3792, file: !3793, line: 122, baseType: !168, size: 64, offset: 704)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3792, file: !3793, line: 123, baseType: !168, size: 64, offset: 768)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3792, file: !3793, line: 124, baseType: !168, size: 64, offset: 832)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3792, file: !3793, line: 125, baseType: !168, size: 64, offset: 896)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3792, file: !3793, line: 139, baseType: !168, size: 64, offset: 960)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3792, file: !3793, line: 142, baseType: !168, size: 64, offset: 1024)
!3812 = !DIDerivedType(tag: DW_TAG_member, scope: !3792, file: !3793, line: 144, baseType: !3813, size: 64, offset: 1088)
!3813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3792, file: !3793, line: 144, size: 64, elements: !3814)
!3814 = !{!3815, !3816, !3817}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3813, file: !3793, line: 146, baseType: !222, size: 16)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3813, file: !3793, line: 148, baseType: !451, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3813, file: !3793, line: 150, baseType: !3818, size: 64)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3793, line: 59, size: 64, elements: !3819)
!3819 = !{!3820, !3821, !3822}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3818, file: !3793, line: 61, baseType: !451, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3818, file: !3793, line: 63, baseType: !451, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3818, file: !3793, line: 65, baseType: !451, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3792, file: !3793, line: 153, baseType: !168, size: 64, offset: 1152)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3792, file: !3793, line: 154, baseType: !168, size: 64, offset: 1216)
!3825 = !DIDerivedType(tag: DW_TAG_member, scope: !3792, file: !3793, line: 156, baseType: !3826, size: 64, offset: 1280)
!3826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3792, file: !3793, line: 156, size: 64, elements: !3827)
!3827 = !{!3828, !3829, !3830}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3826, file: !3793, line: 158, baseType: !222, size: 16)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3826, file: !3793, line: 160, baseType: !451, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3826, file: !3793, line: 162, baseType: !3831, size: 64)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3793, line: 69, size: 64, elements: !3832)
!3832 = !{!3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3831, file: !3793, line: 71, baseType: !451, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3831, file: !3793, line: 73, baseType: !451, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3831, file: !3793, line: 75, baseType: !451, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3831, file: !3793, line: 77, baseType: !451, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3831, file: !3793, line: 80, baseType: !451, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3831, file: !3793, line: 83, baseType: !451, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3831, file: !3793, line: 86, baseType: !451, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3831, file: !3793, line: 88, baseType: !451, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3831, file: !3793, line: 93, baseType: !451, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3831, file: !3793, line: 100, baseType: !451, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !3687, file: !237, line: 1186, baseType: !3786, size: 128, offset: 1088)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !3687, file: !237, line: 1187, baseType: !451, size: 64, offset: 1216)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3687, file: !237, line: 1189, baseType: !451, size: 64, offset: 1280)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3687, file: !237, line: 1190, baseType: !451, size: 64, offset: 1344)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3687, file: !237, line: 1191, baseType: !451, size: 64, offset: 1408)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3687, file: !237, line: 1192, baseType: !451, size: 64, offset: 1472)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !3687, file: !237, line: 1193, baseType: !451, size: 64, offset: 1536)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !3687, file: !237, line: 1194, baseType: !451, size: 64, offset: 1600)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !3687, file: !237, line: 1195, baseType: !451, size: 64, offset: 1664)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !2776, file: !237, line: 812, baseType: !150, size: 64, offset: 8000)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !2776, file: !237, line: 820, baseType: !2575, size: 64, offset: 8064)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2776, file: !237, line: 821, baseType: !2756, size: 64, offset: 8128)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2776, file: !237, line: 828, baseType: !3856, size: 64, offset: 8192)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !237, line: 1046, size: 1664, elements: !3858)
!3858 = !{!3859, !4117}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !3857, file: !237, line: 1047, baseType: !3860, size: 1600)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3861, line: 152, size: 1600, elements: !3862)
!3861 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3862 = !{!3863, !3973, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4116}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3860, file: !3861, line: 154, baseType: !3864, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3861, line: 389, size: 7872, elements: !3866)
!3866 = !{!3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3886, !3887, !3891, !3892, !3893, !3894, !3895, !3900, !3916, !3917, !3919, !3920, !3921, !3943, !3944, !3945, !3946, !3952, !3953, !3954, !3955, !3956, !3960, !3963, !3964, !3971}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3865, file: !3861, line: 391, baseType: !3860, size: 1600)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3865, file: !3861, line: 393, baseType: !168, size: 64, offset: 1600)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3865, file: !3861, line: 401, baseType: !109, size: 32, offset: 1664)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3865, file: !3861, line: 404, baseType: !109, size: 32, offset: 1696)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3865, file: !3861, line: 417, baseType: !109, size: 32, offset: 1728)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3865, file: !3861, line: 418, baseType: !109, size: 32, offset: 1760)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3865, file: !3861, line: 419, baseType: !109, size: 32, offset: 1792)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3865, file: !3861, line: 432, baseType: !109, size: 32, offset: 1824)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3865, file: !3861, line: 433, baseType: !109, size: 32, offset: 1856)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3865, file: !3861, line: 434, baseType: !109, size: 32, offset: 1888)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3865, file: !3861, line: 436, baseType: !109, size: 32, offset: 1920)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3865, file: !3861, line: 439, baseType: !7, size: 32, offset: 1952)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3865, file: !3861, line: 441, baseType: !2101, size: 64, offset: 1984)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3865, file: !3861, line: 442, baseType: !3881, size: 448, offset: 2048)
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3861, line: 138, size: 448, elements: !3882)
!3882 = !{!3883, !3884, !3885}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3881, file: !3861, line: 140, baseType: !2101, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3881, file: !3861, line: 141, baseType: !168, size: 64, offset: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3881, file: !3861, line: 142, baseType: !2495, size: 320, offset: 128)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3865, file: !3861, line: 443, baseType: !3881, size: 448, offset: 2496)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3865, file: !3861, line: 446, baseType: !3888, offset: 2944)
!3888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3881, elements: !3889)
!3889 = !{!3890}
!3890 = !DISubrange(count: 0)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3865, file: !3861, line: 455, baseType: !222, size: 16, offset: 2944)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3865, file: !3861, line: 456, baseType: !222, size: 16, offset: 2960)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3865, file: !3861, line: 457, baseType: !222, size: 16, offset: 2976)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3865, file: !3861, line: 458, baseType: !222, size: 16, offset: 2992)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3865, file: !3861, line: 461, baseType: !3896, size: 896, offset: 3008)
!3896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3897, size: 896, elements: !3898)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3898 = !{!3899}
!3899 = !DISubrange(count: 14)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3865, file: !3861, line: 463, baseType: !3901, size: 64, offset: 3904)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3861, line: 537, size: 41664, elements: !3903)
!3903 = !{!3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3902, file: !3861, line: 538, baseType: !2121, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3902, file: !3861, line: 541, baseType: !7, size: 32, offset: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3902, file: !3861, line: 544, baseType: !109, size: 32, offset: 96)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3902, file: !3861, line: 547, baseType: !226, size: 128, offset: 128)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3902, file: !3861, line: 548, baseType: !352, size: 128, align: 64, offset: 256)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3902, file: !3861, line: 555, baseType: !3865, size: 7872, offset: 384)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3902, file: !3861, line: 558, baseType: !3864, size: 64, offset: 8256)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3902, file: !3861, line: 561, baseType: !178, size: 32, offset: 8320)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3902, file: !3861, line: 564, baseType: !7, size: 32, offset: 8352)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3902, file: !3861, line: 567, baseType: !2718, size: 32768, offset: 8384)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3902, file: !3861, line: 570, baseType: !3915, size: 512, offset: 41152)
!3915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 512, elements: !1496)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3865, file: !3861, line: 469, baseType: !226, size: 128, offset: 3968)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3865, file: !3861, line: 478, baseType: !3918, size: 1792, offset: 4096)
!3918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 1792, elements: !3898)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3865, file: !3861, line: 487, baseType: !3864, size: 64, offset: 5888)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3865, file: !3861, line: 488, baseType: !3864, size: 64, offset: 5952)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3865, file: !3861, line: 491, baseType: !3922, size: 64, offset: 6016)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3861, line: 327, size: 896, elements: !3924)
!3924 = !{!3925, !3928, !3938, !3939, !3940, !3941, !3942}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3923, file: !3861, line: 332, baseType: !3926)
!3926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3927, line: 64, elements: !717)
!3927 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3923, file: !3861, line: 333, baseType: !3929, size: 192)
!3929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3861, line: 299, size: 192, elements: !3930)
!3930 = !{!3931}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3929, file: !3861, line: 300, baseType: !3932, size: 192)
!3932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3933, line: 17, size: 192, elements: !3934)
!3933 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3934 = !{!3935, !3936, !3937}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3932, file: !3933, line: 18, baseType: !451, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3932, file: !3933, line: 19, baseType: !451, size: 64, offset: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3932, file: !3933, line: 20, baseType: !453, size: 64, offset: 128)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3923, file: !3861, line: 339, baseType: !3929, size: 192, offset: 192)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3923, file: !3861, line: 347, baseType: !3929, size: 192, offset: 384)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3923, file: !3861, line: 353, baseType: !3929, size: 192, offset: 576)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3923, file: !3861, line: 366, baseType: !3864, size: 64, offset: 768)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3923, file: !3861, line: 367, baseType: !3864, size: 64, offset: 832)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3865, file: !3861, line: 492, baseType: !226, size: 128, offset: 6080)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3865, file: !3861, line: 495, baseType: !3929, size: 192, offset: 6208)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3865, file: !3861, line: 496, baseType: !3929, size: 192, offset: 6400)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3865, file: !3861, line: 497, baseType: !3947, size: 192, offset: 6592)
!3947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !389, line: 324, size: 192, elements: !3948)
!3948 = !{!3949, !3950, !3951}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3947, file: !389, line: 326, baseType: !451, size: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3947, file: !389, line: 327, baseType: !451, size: 64, offset: 64)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3947, file: !389, line: 328, baseType: !539, size: 32, offset: 128)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3865, file: !3861, line: 503, baseType: !226, size: 128, offset: 6784)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3865, file: !3861, line: 504, baseType: !744, size: 256, offset: 6912)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3865, file: !3861, line: 507, baseType: !183, size: 192, offset: 7168)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3865, file: !3861, line: 510, baseType: !1035, size: 256, offset: 7360)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3865, file: !3861, line: 513, baseType: !3957, size: 64, offset: 7616)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3959, line: 214, elements: !717)
!3959 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3865, file: !3861, line: 516, baseType: !3961, offset: 7680)
!3961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3962, line: 76, elements: !717)
!3962 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3865, file: !3861, line: 519, baseType: !178, size: 32, offset: 7680)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3865, file: !3861, line: 522, baseType: !3965, size: 128, offset: 7712)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3861, line: 370, size: 128, elements: !3966)
!3966 = !{!3967, !3968, !3969, !3970}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3965, file: !3861, line: 372, baseType: !302, size: 8)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3965, file: !3861, line: 375, baseType: !109, size: 32, offset: 32)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3965, file: !3861, line: 380, baseType: !109, size: 32, offset: 64)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3965, file: !3861, line: 386, baseType: !109, size: 32, offset: 96)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3865, file: !3861, line: 529, baseType: !3972, offset: 7872)
!3972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3864, elements: !1145)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3860, file: !3861, line: 157, baseType: !3974, size: 64, offset: 64)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3861, line: 669, size: 1984, elements: !3976)
!3976 = !{!3977, !3981, !3985, !3989, !3990, !3991, !3992, !3996, !4000, !4001, !4007, !4011, !4012, !4013, !4042, !4046, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4099, !4100}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3975, file: !3861, line: 670, baseType: !3978, size: 64)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!3897, !3897}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3975, file: !3861, line: 671, baseType: !3982, size: 64, offset: 64)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!109, !3897}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3975, file: !3861, line: 672, baseType: !3986, size: 64, offset: 128)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{null, !3897}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3975, file: !3861, line: 673, baseType: !3986, size: 64, offset: 192)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3975, file: !3861, line: 674, baseType: !3986, size: 64, offset: 256)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3975, file: !3861, line: 675, baseType: !3986, size: 64, offset: 320)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3975, file: !3861, line: 676, baseType: !3993, size: 64, offset: 384)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{null, !3897, !109}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3975, file: !3861, line: 677, baseType: !3997, size: 64, offset: 448)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!109, !2146, !3897}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3975, file: !3861, line: 679, baseType: !3997, size: 64, offset: 512)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3975, file: !3861, line: 682, baseType: !4002, size: 64, offset: 576)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!109, !4005}
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3861, line: 30, flags: DIFlagFwdDecl)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3975, file: !3861, line: 683, baseType: !4008, size: 64, offset: 640)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{null, !4005}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3975, file: !3861, line: 684, baseType: !4008, size: 64, offset: 704)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3975, file: !3861, line: 685, baseType: !2669, size: 64, offset: 768)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3975, file: !3861, line: 686, baseType: !4014, size: 64, offset: 832)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!109, !387, !4017}
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3861, line: 209, size: 4736, elements: !4019)
!4019 = !{!4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4018, file: !3861, line: 215, baseType: !3896, size: 896)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4018, file: !3861, line: 218, baseType: !329, size: 32, offset: 896)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !4018, file: !3861, line: 226, baseType: !4017, size: 64, offset: 960)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !4018, file: !3861, line: 229, baseType: !3864, size: 64, offset: 1024)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !4018, file: !3861, line: 232, baseType: !109, size: 32, offset: 1088)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !4018, file: !3861, line: 241, baseType: !226, size: 128, offset: 1152)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !4018, file: !3861, line: 242, baseType: !226, size: 128, offset: 1280)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !4018, file: !3861, line: 243, baseType: !226, size: 128, offset: 1408)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !4018, file: !3861, line: 246, baseType: !226, size: 128, offset: 1536)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !4018, file: !3861, line: 255, baseType: !3918, size: 1792, offset: 1664)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !4018, file: !3861, line: 258, baseType: !226, size: 128, offset: 3456)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !4018, file: !3861, line: 259, baseType: !226, size: 128, offset: 3584)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !4018, file: !3861, line: 265, baseType: !342, size: 128, offset: 3712)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !4018, file: !3861, line: 271, baseType: !226, size: 128, offset: 3840)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !4018, file: !3861, line: 277, baseType: !226, size: 128, offset: 3968)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !4018, file: !3861, line: 278, baseType: !226, size: 128, offset: 4096)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !4018, file: !3861, line: 279, baseType: !226, size: 128, offset: 4224)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !4018, file: !3861, line: 288, baseType: !3864, size: 64, offset: 4352)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !4018, file: !3861, line: 289, baseType: !3864, size: 64, offset: 4416)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !4018, file: !3861, line: 290, baseType: !4017, size: 64, offset: 4480)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !4018, file: !3861, line: 293, baseType: !302, size: 8, offset: 4544)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4018, file: !3861, line: 296, baseType: !352, size: 128, align: 64, offset: 4608)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3975, file: !3861, line: 688, baseType: !4043, size: 64, offset: 896)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{null, !387, !4017}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3975, file: !3861, line: 689, baseType: !4047, size: 64, offset: 960)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{null, !387}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3975, file: !3861, line: 690, baseType: !4047, size: 64, offset: 1024)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3975, file: !3861, line: 691, baseType: !4047, size: 64, offset: 1088)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3975, file: !3861, line: 692, baseType: !3986, size: 64, offset: 1152)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3975, file: !3861, line: 694, baseType: !302, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3975, file: !3861, line: 707, baseType: !302, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3975, file: !3861, line: 719, baseType: !302, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3975, file: !3861, line: 722, baseType: !109, size: 32, offset: 1248)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3975, file: !3861, line: 723, baseType: !146, size: 64, offset: 1280)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3975, file: !3861, line: 726, baseType: !146, size: 64, offset: 1344)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3975, file: !3861, line: 729, baseType: !3901, size: 64, offset: 1408)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3975, file: !3861, line: 732, baseType: !371, size: 192, offset: 1472)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3975, file: !3861, line: 738, baseType: !226, size: 128, offset: 1664)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3975, file: !3861, line: 744, baseType: !4063, size: 64, offset: 1792)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3861, line: 580, size: 1728, elements: !4065)
!4065 = !{!4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4075, !4076, !4077, !4081, !4085, !4086, !4087, !4088, !4089, !4093, !4097, !4098}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4064, file: !3861, line: 586, baseType: !3915, size: 512)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4064, file: !3861, line: 587, baseType: !168, size: 64, offset: 512)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4064, file: !3861, line: 593, baseType: !164, size: 64, offset: 576)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4064, file: !3861, line: 596, baseType: !7, size: 32, offset: 640)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4064, file: !3861, line: 604, baseType: !7, size: 32, offset: 672)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4064, file: !3861, line: 610, baseType: !3974, size: 64, offset: 704)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4064, file: !3861, line: 611, baseType: !226, size: 128, offset: 768)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4064, file: !3861, line: 612, baseType: !4074, size: 64, offset: 896)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4064, file: !3861, line: 614, baseType: !2137, size: 64, offset: 960)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4064, file: !3861, line: 615, baseType: !2195, size: 64, offset: 1024)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4064, file: !3861, line: 621, baseType: !4078, size: 64, offset: 1088)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!451, !3897, !4063}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4064, file: !3861, line: 625, baseType: !4082, size: 64, offset: 1152)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!300, !3897, !4063}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4064, file: !3861, line: 628, baseType: !2176, size: 64, offset: 1216)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4064, file: !3861, line: 631, baseType: !2164, size: 64, offset: 1280)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4064, file: !3861, line: 632, baseType: !2172, size: 64, offset: 1344)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4064, file: !3861, line: 633, baseType: !2168, size: 64, offset: 1408)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4064, file: !3861, line: 640, baseType: !4090, size: 64, offset: 1472)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{!109, !3897, !4063, !451}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4064, file: !3861, line: 645, baseType: !4094, size: 64, offset: 1536)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{!109, !3897, !4063, !300}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4064, file: !3861, line: 654, baseType: !2203, size: 64, offset: 1600)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4064, file: !3861, line: 657, baseType: !2210, size: 64, offset: 1664)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3975, file: !3861, line: 745, baseType: !4063, size: 64, offset: 1856)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3975, file: !3861, line: 754, baseType: !7, size: 32, offset: 1920)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3860, file: !3861, line: 160, baseType: !1641, size: 128, offset: 128)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3860, file: !3861, line: 163, baseType: !226, size: 128, offset: 256)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3860, file: !3861, line: 164, baseType: !226, size: 128, offset: 384)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3860, file: !3861, line: 167, baseType: !226, size: 128, offset: 512)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3860, file: !3861, line: 173, baseType: !109, size: 32, offset: 640)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3860, file: !3861, line: 175, baseType: !7, size: 32, offset: 672)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3860, file: !3861, line: 183, baseType: !451, size: 64, offset: 704)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3860, file: !3861, line: 189, baseType: !178, size: 32, offset: 768)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3860, file: !3861, line: 192, baseType: !1035, size: 256, offset: 832)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3860, file: !3861, line: 193, baseType: !4111, size: 448, offset: 1088)
!4111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1036, line: 120, size: 448, elements: !4112)
!4112 = !{!4113, !4114, !4115}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4111, file: !1036, line: 121, baseType: !1035, size: 256)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4111, file: !1036, line: 122, baseType: !352, size: 128, align: 64, offset: 256)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4111, file: !1036, line: 125, baseType: !2557, size: 64, offset: 384)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3860, file: !3861, line: 199, baseType: !3897, size: 64, offset: 1536)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3857, file: !237, line: 1048, baseType: !4118, size: 64, offset: 1600)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !237, line: 1039, size: 256, elements: !4120)
!4120 = !{!4121, !4122, !4123, !4124}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4119, file: !237, line: 1040, baseType: !451, size: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4119, file: !237, line: 1041, baseType: !451, size: 64, offset: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !4119, file: !237, line: 1042, baseType: !451, size: 64, offset: 128)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4119, file: !237, line: 1043, baseType: !109, size: 32, offset: 192)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2776, file: !237, line: 832, baseType: !150, size: 64, offset: 8256)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !2776, file: !237, line: 834, baseType: !226, size: 128, offset: 8320)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !2776, file: !237, line: 842, baseType: !399, size: 32, offset: 8448)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1441, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1441, file: !6, line: 525, baseType: !4130, size: 64, offset: 8384)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !4133, line: 28, size: 192, elements: !4134)
!4133 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!4134 = !{!4135, !4136, !4137}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4132, file: !4133, line: 29, baseType: !146, size: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !4132, file: !4133, line: 30, baseType: !146, size: 64, offset: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !4132, file: !4133, line: 31, baseType: !168, size: 64, offset: 128)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1441, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1441, file: !6, line: 533, baseType: !150, size: 64, offset: 8512)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1441, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1441, file: !6, line: 535, baseType: !4142, size: 64, offset: 8640)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1441, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1441, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1441, file: !6, line: 540, baseType: !2658, size: 64, offset: 8768)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1441, file: !6, line: 563, baseType: !226, size: 128, offset: 8832)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1441, file: !6, line: 565, baseType: !226, size: 128, offset: 8960)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1441, file: !6, line: 568, baseType: !2669, size: 64, offset: 9088)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1441, file: !6, line: 570, baseType: !178, size: 32, offset: 9152)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1417, file: !14, line: 2382, baseType: !1416, size: 64, offset: 448)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1417, file: !14, line: 2383, baseType: !338, size: 64, offset: 512)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1417, file: !14, line: 2385, baseType: !4153, offset: 576)
!4153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2524, line: 206, elements: !717)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1417, file: !14, line: 2386, baseType: !4153, offset: 576)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1417, file: !14, line: 2387, baseType: !4153, offset: 576)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1417, file: !14, line: 2388, baseType: !4157, offset: 576)
!4157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4153, elements: !780)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1417, file: !14, line: 2390, baseType: !4153, offset: 576)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1417, file: !14, line: 2391, baseType: !4153, offset: 576)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1417, file: !14, line: 2392, baseType: !4153, offset: 576)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1417, file: !14, line: 2393, baseType: !4153, offset: 576)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1408, file: !14, line: 1197, baseType: !4163, size: 64, offset: 384)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4165)
!4165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !4166)
!4166 = !{!4167, !4171, !4175, !4176, !4180, !4184, !4188, !4189, !4190, !4194, !4198, !4202, !4203, !4204, !4210, !4214, !4215, !4219, !4220, !4221, !4222, !4226, !4230, !4277, !4292, !4293}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !4165, file: !14, line: 2058, baseType: !4168, size: 64)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{!1206, !1407}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !4165, file: !14, line: 2059, baseType: !4172, size: 64, offset: 64)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{null, !1206}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4165, file: !14, line: 2060, baseType: !4172, size: 64, offset: 128)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !4165, file: !14, line: 2062, baseType: !4177, size: 64, offset: 192)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{null, !1206, !109}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !4165, file: !14, line: 2063, baseType: !4181, size: 64, offset: 256)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{!109, !1206, !1864}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !4165, file: !14, line: 2064, baseType: !4185, size: 64, offset: 320)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!109, !1206}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !4165, file: !14, line: 2065, baseType: !4172, size: 64, offset: 384)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !4165, file: !14, line: 2066, baseType: !1436, size: 64, offset: 448)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !4165, file: !14, line: 2067, baseType: !4191, size: 64, offset: 512)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{!109, !1407, !109}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !4165, file: !14, line: 2068, baseType: !4195, size: 64, offset: 576)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!109, !1407, !13}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !4165, file: !14, line: 2069, baseType: !4199, size: 64, offset: 640)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!109, !1407}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !4165, file: !14, line: 2070, baseType: !4195, size: 64, offset: 704)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !4165, file: !14, line: 2071, baseType: !4199, size: 64, offset: 768)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !4165, file: !14, line: 2072, baseType: !4205, size: 64, offset: 832)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!109, !1171, !4208}
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !4165, file: !14, line: 2073, baseType: !4211, size: 64, offset: 896)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DISubroutineType(types: !4213)
!4213 = !{!109, !1407, !2395, !913}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !4165, file: !14, line: 2074, baseType: !1436, size: 64, offset: 960)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4165, file: !14, line: 2076, baseType: !4216, size: 64, offset: 1024)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!109, !2146, !1171}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !4165, file: !14, line: 2077, baseType: !4216, size: 64, offset: 1088)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4165, file: !14, line: 2078, baseType: !4216, size: 64, offset: 1152)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !4165, file: !14, line: 2079, baseType: !4216, size: 64, offset: 1216)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !4165, file: !14, line: 2081, baseType: !4223, size: 64, offset: 1280)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DISubroutineType(types: !4225)
!4225 = !{!1358, !1407, !109, !913, !164, !170}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !4165, file: !14, line: 2082, baseType: !4227, size: 64, offset: 1344)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DISubroutineType(types: !4229)
!4229 = !{!1358, !1407, !109, !146, !164, !170}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !4165, file: !14, line: 2083, baseType: !4231, size: 64, offset: 1408)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!4234, !1206}
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !4237)
!4237 = !{!4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4262, !4263, !4264}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4236, file: !19, line: 297, baseType: !342, size: 128)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4236, file: !19, line: 298, baseType: !226, size: 128, offset: 128)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4236, file: !19, line: 299, baseType: !226, size: 128, offset: 256)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4236, file: !19, line: 300, baseType: !226, size: 128, offset: 384)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4236, file: !19, line: 301, baseType: !744, size: 256, offset: 512)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4236, file: !19, line: 302, baseType: !188, size: 32, offset: 768)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4236, file: !19, line: 303, baseType: !178, size: 32, offset: 800)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4236, file: !19, line: 304, baseType: !1407, size: 64, offset: 832)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4236, file: !19, line: 305, baseType: !4247, size: 64, offset: 896)
!4247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !4248)
!4248 = !{!4249, !4261}
!4249 = !DIDerivedType(tag: DW_TAG_member, scope: !4247, file: !19, line: 69, baseType: !4250, size: 32)
!4250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4247, file: !19, line: 69, size: 32, elements: !4251)
!4251 = !{!4252, !4253, !4254}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4250, file: !19, line: 70, baseType: !786, size: 32)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4250, file: !19, line: 71, baseType: !804, size: 32)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4250, file: !19, line: 72, baseType: !4255, size: 32)
!4255 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4256, line: 24, baseType: !4257)
!4256 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4257 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4256, line: 22, size: 32, elements: !4258)
!4258 = !{!4259}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4257, file: !4256, line: 23, baseType: !4260, size: 32)
!4260 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4256, line: 20, baseType: !792)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4247, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4236, file: !19, line: 306, baseType: !170, size: 64, offset: 960)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4236, file: !19, line: 307, baseType: !168, size: 64, offset: 1024)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4236, file: !19, line: 308, baseType: !4265, size: 576, offset: 1088)
!4265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !4266)
!4266 = !{!4267, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4265, file: !19, line: 206, baseType: !4268, size: 64)
!4268 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !172)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4265, file: !19, line: 207, baseType: !4268, size: 64, offset: 64)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4265, file: !19, line: 208, baseType: !4268, size: 64, offset: 128)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4265, file: !19, line: 209, baseType: !4268, size: 64, offset: 192)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4265, file: !19, line: 210, baseType: !4268, size: 64, offset: 256)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4265, file: !19, line: 211, baseType: !4268, size: 64, offset: 320)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4265, file: !19, line: 212, baseType: !4268, size: 64, offset: 384)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4265, file: !19, line: 213, baseType: !861, size: 64, offset: 448)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4265, file: !19, line: 214, baseType: !861, size: 64, offset: 512)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !4165, file: !14, line: 2085, baseType: !4278, size: 64, offset: 1472)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = !DISubroutineType(types: !4280)
!4280 = !{!1133, !1407, !4281}
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4283, line: 15, size: 256, elements: !4284)
!4283 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4284 = !{!4285, !4286, !4287, !4288, !4289}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4282, file: !4283, line: 16, baseType: !380, size: 32)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4282, file: !4283, line: 19, baseType: !109, size: 32, offset: 32)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4282, file: !4283, line: 26, baseType: !168, size: 64, offset: 64)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4282, file: !4283, line: 33, baseType: !168, size: 64, offset: 128)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4282, file: !4283, line: 36, baseType: !4290, size: 64, offset: 192)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !4165, file: !14, line: 2087, baseType: !4278, size: 64, offset: 1536)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4165, file: !14, line: 2089, baseType: !1436, size: 64, offset: 1600)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1408, file: !14, line: 1198, baseType: !4295, size: 64, offset: 448)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4297)
!4297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !4298)
!4298 = !{!4299, !4303, !4307, !4311, !4312, !4313, !4314, !4315, !4320, !4325, !4329}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4297, file: !19, line: 325, baseType: !4300, size: 64)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!109, !4235}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4297, file: !19, line: 326, baseType: !4304, size: 64, offset: 64)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{!4235, !1407, !109}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4297, file: !19, line: 327, baseType: !4308, size: 64, offset: 128)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = !DISubroutineType(types: !4310)
!4310 = !{null, !4235}
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4297, file: !19, line: 328, baseType: !4300, size: 64, offset: 192)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4297, file: !19, line: 329, baseType: !4300, size: 64, offset: 256)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4297, file: !19, line: 330, baseType: !4300, size: 64, offset: 320)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4297, file: !19, line: 331, baseType: !4191, size: 64, offset: 384)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4297, file: !19, line: 334, baseType: !4316, size: 64, offset: 448)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DISubroutineType(types: !4318)
!4318 = !{!4319, !1206}
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4297, file: !19, line: 335, baseType: !4321, size: 64, offset: 512)
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{!109, !1206, !4324}
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4297, file: !19, line: 337, baseType: !4326, size: 64, offset: 576)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = !DISubroutineType(types: !4328)
!4328 = !{!109, !1206, !4319}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4297, file: !19, line: 339, baseType: !4330, size: 64, offset: 640)
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{!109, !1407, !4333}
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1408, file: !14, line: 1199, baseType: !4335, size: 64, offset: 512)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4337)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !4338)
!4338 = !{!4339, !4343, !4344, !4348, !4349, !4350, !4365, !4388, !4392, !4393, !4416}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4337, file: !19, line: 431, baseType: !4340, size: 64)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!109, !1407, !109, !109, !1327}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4337, file: !19, line: 432, baseType: !4191, size: 64, offset: 64)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4337, file: !19, line: 433, baseType: !4345, size: 64, offset: 128)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DISubroutineType(types: !4347)
!4347 = !{!109, !1407, !7}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4337, file: !19, line: 434, baseType: !4345, size: 64, offset: 192)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4337, file: !19, line: 435, baseType: !4191, size: 64, offset: 256)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4337, file: !19, line: 436, baseType: !4351, size: 64, offset: 320)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{!109, !1407, !109, !4354}
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !4356)
!4356 = !{!4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4355, file: !19, line: 418, baseType: !109, size: 32)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4355, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4355, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4355, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4355, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4355, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4355, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4355, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4337, file: !19, line: 437, baseType: !4366, size: 64, offset: 384)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = !DISubroutineType(types: !4368)
!4368 = !{!109, !1407, !4247, !4369}
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !4371)
!4371 = !{!4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4370, file: !19, line: 346, baseType: !109, size: 32)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4370, file: !19, line: 347, baseType: !451, size: 64, offset: 64)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4370, file: !19, line: 348, baseType: !451, size: 64, offset: 128)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4370, file: !19, line: 349, baseType: !451, size: 64, offset: 192)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4370, file: !19, line: 350, baseType: !451, size: 64, offset: 256)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4370, file: !19, line: 351, baseType: !451, size: 64, offset: 320)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4370, file: !19, line: 352, baseType: !451, size: 64, offset: 384)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4370, file: !19, line: 353, baseType: !300, size: 64, offset: 448)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4370, file: !19, line: 355, baseType: !300, size: 64, offset: 512)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4370, file: !19, line: 356, baseType: !109, size: 32, offset: 576)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4370, file: !19, line: 357, baseType: !109, size: 32, offset: 608)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4370, file: !19, line: 358, baseType: !451, size: 64, offset: 640)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4370, file: !19, line: 359, baseType: !451, size: 64, offset: 704)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4370, file: !19, line: 360, baseType: !451, size: 64, offset: 768)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4370, file: !19, line: 361, baseType: !300, size: 64, offset: 832)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4370, file: !19, line: 362, baseType: !109, size: 32, offset: 896)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4337, file: !19, line: 438, baseType: !4389, size: 64, offset: 448)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{!109, !1407, !4333, !4369}
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4337, file: !19, line: 440, baseType: !4366, size: 64, offset: 512)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4337, file: !19, line: 441, baseType: !4394, size: 64, offset: 576)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = !DISubroutineType(types: !4396)
!4396 = !{!109, !1407, !4397}
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !4399)
!4399 = !{!4400, !4401}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4398, file: !19, line: 412, baseType: !7, size: 32)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4398, file: !19, line: 413, baseType: !4402, size: 1344, offset: 64)
!4402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4403, size: 1344, elements: !780)
!4403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !4404)
!4404 = !{!4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4415}
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4403, file: !19, line: 398, baseType: !7, size: 32)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4403, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4403, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4403, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4403, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4403, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4403, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4403, file: !19, line: 406, baseType: !453, size: 64, offset: 256)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4403, file: !19, line: 407, baseType: !4414, size: 64, offset: 320)
!4414 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !154, line: 132, baseType: !451)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4403, file: !19, line: 408, baseType: !4414, size: 64, offset: 384)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4337, file: !19, line: 442, baseType: !4345, size: 64, offset: 640)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1408, file: !14, line: 1200, baseType: !4418, size: 64, offset: 576)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4420)
!4420 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1408, file: !14, line: 1201, baseType: !168, size: 64, offset: 640)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1408, file: !14, line: 1202, baseType: !168, size: 64, offset: 704)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1408, file: !14, line: 1203, baseType: !168, size: 64, offset: 768)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1408, file: !14, line: 1204, baseType: !1171, size: 64, offset: 832)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1408, file: !14, line: 1205, baseType: !845, size: 320, offset: 896)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1408, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1408, file: !14, line: 1207, baseType: !178, size: 32, offset: 1248)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1408, file: !14, line: 1209, baseType: !150, size: 64, offset: 1280)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1408, file: !14, line: 1211, baseType: !4430, size: 64, offset: 1344)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4433)
!4433 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1408, file: !14, line: 1223, baseType: !4435, size: 64, offset: 1408)
!4435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1183, line: 34, size: 64, elements: !4436)
!4436 = !{!4437}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4435, file: !1183, line: 35, baseType: !1186, size: 64)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1408, file: !14, line: 1224, baseType: !226, size: 128, offset: 1472)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1408, file: !14, line: 1225, baseType: !4440, size: 64, offset: 1600)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1408, file: !14, line: 1226, baseType: !4443, size: 64, offset: 1664)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1408, file: !14, line: 1227, baseType: !4446, size: 64, offset: 1728)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1408, file: !14, line: 1228, baseType: !4449, size: 64, offset: 1792)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1408, file: !14, line: 1229, baseType: !342, size: 128, offset: 1856)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1408, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1408, file: !14, line: 1231, baseType: !4454, size: 2496, offset: 2048)
!4454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !4455)
!4455 = !{!4456, !4457, !4458, !4460, !4492}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4454, file: !19, line: 522, baseType: !7, size: 32)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4454, file: !19, line: 523, baseType: !845, size: 320, offset: 64)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4454, file: !19, line: 524, baseType: !4459, size: 192, offset: 384)
!4459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1206, size: 192, elements: !780)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4454, file: !19, line: 525, baseType: !4461, size: 1728, offset: 576)
!4461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4462, size: 1728, elements: !780)
!4462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !4463)
!4463 = !{!4464, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4462, file: !19, line: 223, baseType: !4465, size: 64)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !4467)
!4467 = !{!4468, !4469, !4482, !4483}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4466, file: !19, line: 446, baseType: !109, size: 32)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4466, file: !19, line: 447, baseType: !4470, size: 64, offset: 64)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4472)
!4472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !4473)
!4473 = !{!4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4472, file: !19, line: 313, baseType: !4191, size: 64)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4472, file: !19, line: 314, baseType: !4191, size: 64, offset: 64)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4472, file: !19, line: 315, baseType: !4191, size: 64, offset: 128)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4472, file: !19, line: 316, baseType: !4191, size: 64, offset: 192)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4472, file: !19, line: 317, baseType: !4300, size: 64, offset: 256)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4472, file: !19, line: 318, baseType: !4300, size: 64, offset: 320)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4472, file: !19, line: 319, baseType: !4300, size: 64, offset: 384)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4472, file: !19, line: 320, baseType: !4330, size: 64, offset: 448)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4466, file: !19, line: 448, baseType: !1440, size: 64, offset: 128)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4466, file: !19, line: 449, baseType: !4465, size: 64, offset: 192)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4462, file: !19, line: 224, baseType: !109, size: 32, offset: 64)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4462, file: !19, line: 226, baseType: !226, size: 128, offset: 128)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4462, file: !19, line: 227, baseType: !168, size: 64, offset: 256)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4462, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4462, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4462, file: !19, line: 230, baseType: !4268, size: 64, offset: 384)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4462, file: !19, line: 231, baseType: !4268, size: 64, offset: 448)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4462, file: !19, line: 232, baseType: !150, size: 64, offset: 512)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4454, file: !19, line: 526, baseType: !4493, size: 192, offset: 2304)
!4493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4470, size: 192, elements: !780)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1408, file: !14, line: 1233, baseType: !4495, size: 2368, offset: 4544)
!4495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !4496)
!4496 = !{!4497, !4498, !4499}
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4495, file: !14, line: 1185, baseType: !155, size: 16)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4495, file: !14, line: 1186, baseType: !155, size: 16, offset: 16)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4495, file: !14, line: 1187, baseType: !4500, size: 2304, offset: 64)
!4500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4501, size: 2304, elements: !780)
!4501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4502, line: 12, size: 768, elements: !4503)
!4502 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4503 = !{!4504, !4512, !4513, !4514, !4515}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4501, file: !4502, line: 13, baseType: !4505, size: 384)
!4505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4506, line: 17, size: 384, elements: !4507)
!4506 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4507 = !{!4508, !4509, !4510, !4511}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4505, file: !4506, line: 18, baseType: !109, size: 32)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4505, file: !4506, line: 19, baseType: !109, size: 32, offset: 32)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4505, file: !4506, line: 20, baseType: !183, size: 192, offset: 64)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4505, file: !4506, line: 22, baseType: !352, size: 128, align: 64, offset: 256)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4501, file: !4502, line: 14, baseType: !2347, size: 64, offset: 384)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4501, file: !4502, line: 15, baseType: !3650, size: 64, offset: 448)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4501, file: !4502, line: 16, baseType: !183, size: 192, offset: 512)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4501, file: !4502, line: 17, baseType: !178, size: 32, offset: 704)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1408, file: !14, line: 1240, baseType: !150, size: 64, offset: 6912)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1408, file: !14, line: 1243, baseType: !398, size: 32, offset: 6976)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1408, file: !14, line: 1245, baseType: !861, size: 64, offset: 7040)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1408, file: !14, line: 1246, baseType: !861, size: 64, offset: 7104)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1408, file: !14, line: 1248, baseType: !399, size: 32, offset: 7168)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1408, file: !14, line: 1249, baseType: !4522, size: 64, offset: 7232)
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4523, size: 64)
!4523 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1408, file: !14, line: 1252, baseType: !4525, size: 256, offset: 7296)
!4525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 256, elements: !4526)
!4526 = !{!4527}
!4527 = !DISubrange(count: 32)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1408, file: !14, line: 1253, baseType: !4529, size: 128, offset: 7552)
!4529 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4530, line: 21, baseType: !4531)
!4530 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4531 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4530, line: 19, size: 128, elements: !4532)
!4532 = !{!4533}
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4531, file: !4530, line: 20, baseType: !4534, size: 128)
!4534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 128, elements: !4535)
!4535 = !{!4536}
!4536 = !DISubrange(count: 16)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1408, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1408, file: !14, line: 1261, baseType: !744, size: 256, offset: 7744)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1408, file: !14, line: 1267, baseType: !146, size: 64, offset: 8000)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1408, file: !14, line: 1269, baseType: !4541, size: 64, offset: 8064)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4543)
!4543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1173, line: 128, size: 1024, align: 512, elements: !4544)
!4544 = !{!4545, !4549, !4550, !4557, !4563, !4567, !4571, !4575, !4576, !4580, !4584, !4589, !4593}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4543, file: !1173, line: 129, baseType: !4546, size: 64)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = !DISubroutineType(types: !4548)
!4548 = !{!109, !1171, !7}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4543, file: !1173, line: 130, baseType: !4546, size: 64, offset: 64)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4543, file: !1173, line: 131, baseType: !4551, size: 64, offset: 128)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4552, size: 64)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{!109, !4554, !4556}
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1172)
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4543, file: !1173, line: 132, baseType: !4558, size: 64, offset: 192)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{!109, !4554, !7, !146, !4561}
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1191)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4543, file: !1173, line: 134, baseType: !4564, size: 64, offset: 256)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = !DISubroutineType(types: !4566)
!4566 = !{!109, !4554}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4543, file: !1173, line: 135, baseType: !4568, size: 64, offset: 320)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = !DISubroutineType(types: !4570)
!4570 = !{!109, !1171}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4543, file: !1173, line: 136, baseType: !4572, size: 64, offset: 384)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = !DISubroutineType(types: !4574)
!4574 = !{null, !1171}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4543, file: !1173, line: 137, baseType: !4572, size: 64, offset: 448)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4543, file: !1173, line: 138, baseType: !4577, size: 64, offset: 512)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = !DISubroutineType(types: !4579)
!4579 = !{null, !1171, !1206}
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4543, file: !1173, line: 139, baseType: !4581, size: 64, offset: 576)
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{!913, !1171, !913, !109}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4543, file: !1173, line: 140, baseType: !4585, size: 64, offset: 640)
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = !DISubroutineType(types: !4587)
!4587 = !{!1166, !4588}
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4543, file: !1173, line: 141, baseType: !4590, size: 64, offset: 704)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DISubroutineType(types: !4592)
!4592 = !{!109, !1327, !302}
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4543, file: !1173, line: 142, baseType: !4594, size: 64, offset: 768)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = !DISubroutineType(types: !4596)
!4596 = !{!1171, !1171, !4597}
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1207)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1408, file: !14, line: 1271, baseType: !4600, size: 448, offset: 8128)
!4600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4283, line: 63, size: 448, elements: !4601)
!4601 = !{!4602, !4607, !4608, !4609, !4610, !4611, !4612}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4600, file: !4283, line: 64, baseType: !4603, size: 64)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{!168, !4606, !4281}
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4600, file: !4283, line: 66, baseType: !4603, size: 64, offset: 64)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4600, file: !4283, line: 69, baseType: !1133, size: 64, offset: 128)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4600, file: !4283, line: 70, baseType: !109, size: 32, offset: 192)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4600, file: !4283, line: 71, baseType: !7, size: 32, offset: 224)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4600, file: !4283, line: 74, baseType: !226, size: 128, offset: 256)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4600, file: !4283, line: 85, baseType: !4613, size: 64, offset: 384)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1408, file: !14, line: 1274, baseType: !737, size: 64, offset: 8576)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1408, file: !14, line: 1280, baseType: !737, size: 64, offset: 8640)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1408, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1408, file: !14, line: 1286, baseType: !2044, size: 32, offset: 8736)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1408, file: !14, line: 1289, baseType: !2557, size: 64, offset: 8768)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1408, file: !14, line: 1290, baseType: !338, size: 64, offset: 8832)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1408, file: !14, line: 1297, baseType: !986, size: 64, offset: 8896)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1408, file: !14, line: 1304, baseType: !4622, size: 64, offset: 8960)
!4622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4623, line: 49, size: 64, elements: !4624)
!4623 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4624 = !{!4625}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4622, file: !4623, line: 50, baseType: !4626, size: 64)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4623, line: 41, size: 512, align: 512, elements: !4628)
!4628 = !{!4629, !4630, !4635}
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4627, file: !4623, line: 43, baseType: !188, size: 32)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4627, file: !4623, line: 45, baseType: !4631, size: 192, offset: 64)
!4631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4623, line: 29, size: 192, elements: !4632)
!4632 = !{!4633, !4634}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4631, file: !4623, line: 30, baseType: !226, size: 128)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4631, file: !4623, line: 32, baseType: !1133, size: 64, offset: 128)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4627, file: !4623, line: 46, baseType: !1133, size: 64, offset: 256)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1408, file: !14, line: 1305, baseType: !4622, size: 64, offset: 9024)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1408, file: !14, line: 1306, baseType: !352, size: 128, align: 64, offset: 9088)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1408, file: !14, line: 1307, baseType: !1035, size: 256, offset: 9216)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1408, file: !14, line: 1309, baseType: !744, size: 256, offset: 9472)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1408, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1408, file: !14, line: 1317, baseType: !188, size: 32, align: 512, offset: 10240)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1408, file: !14, line: 1318, baseType: !226, size: 128, offset: 10304)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1408, file: !14, line: 1320, baseType: !188, size: 32, offset: 10432)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1408, file: !14, line: 1321, baseType: !226, size: 128, offset: 10496)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1207, file: !14, line: 656, baseType: !1557, size: 64, offset: 512)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1207, file: !14, line: 659, baseType: !150, size: 64, offset: 576)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1207, file: !14, line: 663, baseType: !168, size: 64, offset: 640)
!4648 = !DIDerivedType(tag: DW_TAG_member, scope: !1207, file: !14, line: 671, baseType: !4649, size: 32, offset: 704)
!4649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1207, file: !14, line: 671, size: 32, elements: !4650)
!4650 = !{!4651, !4652}
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4649, file: !14, line: 672, baseType: !2605, size: 32)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4649, file: !14, line: 673, baseType: !7, size: 32)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1207, file: !14, line: 675, baseType: !1280, size: 32, offset: 736)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1207, file: !14, line: 676, baseType: !170, size: 64, offset: 768)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1207, file: !14, line: 677, baseType: !1316, size: 128, offset: 832)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1207, file: !14, line: 678, baseType: !1316, size: 128, offset: 960)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1207, file: !14, line: 679, baseType: !1316, size: 128, offset: 1088)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1207, file: !14, line: 680, baseType: !188, size: 32, offset: 1216)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1207, file: !14, line: 681, baseType: !155, size: 16, offset: 1248)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1207, file: !14, line: 682, baseType: !212, size: 8, offset: 1264)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1207, file: !14, line: 683, baseType: !212, size: 8, offset: 1272)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1207, file: !14, line: 684, baseType: !4414, size: 64, offset: 1280)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1207, file: !14, line: 691, baseType: !168, size: 64, offset: 1344)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1207, file: !14, line: 692, baseType: !845, size: 320, offset: 1408)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1207, file: !14, line: 694, baseType: !168, size: 64, offset: 1728)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1207, file: !14, line: 695, baseType: !168, size: 64, offset: 1792)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1207, file: !14, line: 697, baseType: !342, size: 128, offset: 1856)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1207, file: !14, line: 698, baseType: !226, size: 128, offset: 1984)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1207, file: !14, line: 707, baseType: !226, size: 128, offset: 2112)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1207, file: !14, line: 708, baseType: !226, size: 128, offset: 2240)
!4671 = !DIDerivedType(tag: DW_TAG_member, scope: !1207, file: !14, line: 709, baseType: !4672, size: 128, offset: 2368)
!4672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1207, file: !14, line: 709, size: 128, elements: !4673)
!4673 = !{!4674, !4675}
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4672, file: !14, line: 710, baseType: !338, size: 64)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4672, file: !14, line: 711, baseType: !352, size: 128, align: 64)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1207, file: !14, line: 713, baseType: !739, size: 64, offset: 2496)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1207, file: !14, line: 714, baseType: !739, size: 64, offset: 2560)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1207, file: !14, line: 715, baseType: !178, size: 32, offset: 2624)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1207, file: !14, line: 716, baseType: !178, size: 32, offset: 2656)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1207, file: !14, line: 717, baseType: !178, size: 32, offset: 2688)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1207, file: !14, line: 719, baseType: !178, size: 32, offset: 2720)
!4682 = !DIDerivedType(tag: DW_TAG_member, scope: !1207, file: !14, line: 721, baseType: !4683, size: 64, offset: 2752)
!4683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1207, file: !14, line: 721, size: 64, elements: !4684)
!4684 = !{!4685, !4811}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4683, file: !14, line: 722, baseType: !4686, size: 64)
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4687, size: 64)
!4687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4688)
!4688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !4689)
!4689 = !{!4690, !4691, !4695, !4699, !4703, !4704, !4705, !4711, !4724, !4728, !4732, !4733, !4737, !4738, !4742, !4747, !4748, !4752, !4756, !4762, !4763, !4767, !4768, !4774, !4778, !4779, !4784, !4788, !4792, !4796, !4800, !4801, !4807}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4688, file: !14, line: 1915, baseType: !1440, size: 64)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4688, file: !14, line: 1916, baseType: !4692, size: 64, offset: 64)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = !DISubroutineType(types: !4694)
!4694 = !{!170, !724, !170, !109}
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4688, file: !14, line: 1917, baseType: !4696, size: 64, offset: 128)
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!1358, !724, !913, !164, !169}
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4688, file: !14, line: 1918, baseType: !4700, size: 64, offset: 192)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{!1358, !724, !146, !164, !169}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4688, file: !14, line: 1919, baseType: !1978, size: 64, offset: 256)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4688, file: !14, line: 1920, baseType: !1978, size: 64, offset: 320)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4688, file: !14, line: 1921, baseType: !4706, size: 64, offset: 384)
!4706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4707, size: 64)
!4707 = !DISubroutineType(types: !4708)
!4708 = !{!109, !1981, !4709, !7}
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4710, size: 64)
!4710 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4688, file: !14, line: 1923, baseType: !4712, size: 64, offset: 448)
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = !DISubroutineType(types: !4714)
!4714 = !{!109, !724, !4715}
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !4717)
!4717 = !{!4718, !4723}
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4716, file: !14, line: 1859, baseType: !4719, size: 64)
!4719 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !4720)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DISubroutineType(types: !4722)
!4722 = !{!302, !4715, !146, !109, !170, !451, !7}
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4716, file: !14, line: 1860, baseType: !170, size: 64, offset: 64)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4688, file: !14, line: 1924, baseType: !4725, size: 64, offset: 512)
!4725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4726, size: 64)
!4726 = !DISubroutineType(types: !4727)
!4727 = !{!2213, !724, !2215}
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4688, file: !14, line: 1925, baseType: !4729, size: 64, offset: 576)
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4730, size: 64)
!4730 = !DISubroutineType(types: !4731)
!4731 = !{!1133, !724, !7, !168}
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4688, file: !14, line: 1926, baseType: !4729, size: 64, offset: 640)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4688, file: !14, line: 1927, baseType: !4734, size: 64, offset: 704)
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = !DISubroutineType(types: !4736)
!4736 = !{!109, !724, !1687}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4688, file: !14, line: 1928, baseType: !168, size: 64, offset: 768)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4688, file: !14, line: 1929, baseType: !4739, size: 64, offset: 832)
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4740 = !DISubroutineType(types: !4741)
!4741 = !{!109, !1206, !724}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4688, file: !14, line: 1930, baseType: !4743, size: 64, offset: 896)
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = !DISubroutineType(types: !4745)
!4745 = !{!109, !724, !4746}
!4746 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !150)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4688, file: !14, line: 1931, baseType: !4739, size: 64, offset: 960)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4688, file: !14, line: 1932, baseType: !4749, size: 64, offset: 1024)
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4750 = !DISubroutineType(types: !4751)
!4751 = !{!109, !724, !170, !170, !109}
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4688, file: !14, line: 1933, baseType: !4753, size: 64, offset: 1088)
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4754, size: 64)
!4754 = !DISubroutineType(types: !4755)
!4755 = !{!109, !109, !724, !109}
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4688, file: !14, line: 1934, baseType: !4757, size: 64, offset: 1152)
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4758, size: 64)
!4758 = !DISubroutineType(types: !4759)
!4759 = !{!109, !724, !109, !4760}
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4688, file: !14, line: 1935, baseType: !721, size: 64, offset: 1216)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4688, file: !14, line: 1936, baseType: !4764, size: 64, offset: 1280)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{!109, !109}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4688, file: !14, line: 1937, baseType: !4757, size: 64, offset: 1344)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4688, file: !14, line: 1938, baseType: !4769, size: 64, offset: 1408)
!4769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4770, size: 64)
!4770 = !DISubroutineType(types: !4771)
!4771 = !{!1358, !4772, !724, !169, !164, !7}
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4773, size: 64)
!4773 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !389, line: 59, flags: DIFlagFwdDecl)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4688, file: !14, line: 1939, baseType: !4775, size: 64, offset: 1472)
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = !DISubroutineType(types: !4777)
!4777 = !{!1358, !724, !169, !4772, !164, !7}
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4688, file: !14, line: 1940, baseType: !2034, size: 64, offset: 1536)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4688, file: !14, line: 1941, baseType: !4780, size: 64, offset: 1600)
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!4781 = !DISubroutineType(types: !4782)
!4782 = !{!109, !724, !109, !4783, !1955}
!4783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4760, size: 64)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4688, file: !14, line: 1942, baseType: !4785, size: 64, offset: 1664)
!4785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4786, size: 64)
!4786 = !DISubroutineType(types: !4787)
!4787 = !{!1133, !724, !109, !170, !170}
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4688, file: !14, line: 1944, baseType: !4789, size: 64, offset: 1728)
!4789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4790, size: 64)
!4790 = !DISubroutineType(types: !4791)
!4791 = !{null, !2146, !724}
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4688, file: !14, line: 1948, baseType: !4793, size: 64, offset: 1792)
!4793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4794, size: 64)
!4794 = !DISubroutineType(types: !4795)
!4795 = !{!1358, !724, !170, !724, !170, !164, !7}
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4688, file: !14, line: 1950, baseType: !4797, size: 64, offset: 1856)
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4798, size: 64)
!4798 = !DISubroutineType(types: !4799)
!4799 = !{!170, !724, !170, !724, !170, !170, !7}
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4688, file: !14, line: 1953, baseType: !4749, size: 64, offset: 1920)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4688, file: !14, line: 1954, baseType: !4802, size: 64, offset: 1984)
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4803, size: 64)
!4803 = !DISubroutineType(types: !4804)
!4804 = !{!109, !4805, !7}
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4688, file: !14, line: 1955, baseType: !4808, size: 64, offset: 2048)
!4808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4809, size: 64)
!4809 = !DISubroutineType(types: !4810)
!4810 = !{!109, !4805, !4709, !7}
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4683, file: !14, line: 723, baseType: !4172, size: 64)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1207, file: !14, line: 725, baseType: !4813, size: 64, offset: 2816)
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1207, file: !14, line: 726, baseType: !1558, size: 1536, align: 64, offset: 2880)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1207, file: !14, line: 727, baseType: !226, size: 128, offset: 4416)
!4817 = !DIDerivedType(tag: DW_TAG_member, scope: !1207, file: !14, line: 728, baseType: !4818, size: 64, offset: 4544)
!4818 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1207, file: !14, line: 728, size: 64, elements: !4819)
!4819 = !{!4820, !4821, !4824, !4825}
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4818, file: !14, line: 729, baseType: !4772, size: 64)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4818, file: !14, line: 730, baseType: !4822, size: 64)
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 64)
!4823 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4818, file: !14, line: 731, baseType: !913, size: 64)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4818, file: !14, line: 732, baseType: !7, size: 32)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1207, file: !14, line: 735, baseType: !399, size: 32, offset: 4608)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1207, file: !14, line: 738, baseType: !399, size: 32, offset: 4640)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1207, file: !14, line: 739, baseType: !4522, size: 64, offset: 4672)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1207, file: !14, line: 750, baseType: !150, size: 64, offset: 4736)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1172, file: !1173, line: 91, baseType: !4831, size: 256, offset: 448)
!4831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 256, elements: !4526)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1172, file: !1173, line: 94, baseType: !4833, size: 64, offset: 704)
!4833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4834, line: 25, size: 64, elements: !4835)
!4834 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4835 = !{!4836}
!4836 = !DIDerivedType(tag: DW_TAG_member, scope: !4833, file: !4834, line: 26, baseType: !4837, size: 64)
!4837 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4833, file: !4834, line: 26, size: 64, elements: !4838)
!4838 = !{!4839, !4840}
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4837, file: !4834, line: 28, baseType: !452, size: 64, align: 64)
!4840 = !DIDerivedType(tag: DW_TAG_member, scope: !4837, file: !4834, line: 30, baseType: !4841, size: 64)
!4841 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4837, file: !4834, line: 30, size: 64, elements: !4842)
!4842 = !{!4843, !4844}
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4841, file: !4834, line: 31, baseType: !188, size: 32)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4841, file: !4834, line: 32, baseType: !109, size: 32, offset: 32)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1172, file: !1173, line: 95, baseType: !4541, size: 64, offset: 768)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1172, file: !1173, line: 96, baseType: !1407, size: 64, offset: 832)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1172, file: !1173, line: 97, baseType: !168, size: 64, offset: 896)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1172, file: !1173, line: 98, baseType: !150, size: 64, offset: 960)
!4849 = !DIDerivedType(tag: DW_TAG_member, scope: !1172, file: !1173, line: 100, baseType: !4850, size: 128, offset: 1024)
!4850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1172, file: !1173, line: 100, size: 128, elements: !4851)
!4851 = !{!4852, !4853}
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4850, file: !1173, line: 101, baseType: !226, size: 128)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4850, file: !1173, line: 102, baseType: !2224, size: 64)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1172, file: !1173, line: 104, baseType: !226, size: 128, offset: 1152)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1172, file: !1173, line: 105, baseType: !226, size: 128, offset: 1280)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1172, file: !1173, line: 113, baseType: !4857, size: 128, offset: 1408)
!4857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1172, file: !1173, line: 109, size: 128, elements: !4858)
!4858 = !{!4859, !4860, !4861}
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4857, file: !1173, line: 110, baseType: !342, size: 128)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4857, file: !1173, line: 111, baseType: !1182, size: 128)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4857, file: !1173, line: 112, baseType: !352, size: 128, align: 64)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1167, file: !1168, line: 72, baseType: !1407, size: 64, offset: 64)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1167, file: !1168, line: 73, baseType: !109, size: 32, offset: 128)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1167, file: !1168, line: 74, baseType: !1245, size: 64, offset: 192)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1162, file: !1163, line: 10, baseType: !1171, size: 64, offset: 64)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !725, file: !14, line: 1015, baseType: !1206, size: 64, offset: 1344)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !725, file: !14, line: 1016, baseType: !4686, size: 64, offset: 1408)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !725, file: !14, line: 1018, baseType: !451, size: 64, offset: 1472)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !725, file: !14, line: 1020, baseType: !150, size: 64, offset: 1536)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !725, file: !14, line: 1023, baseType: !150, size: 64, offset: 1600)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !725, file: !14, line: 1027, baseType: !2767, size: 64, offset: 1664)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !725, file: !14, line: 1029, baseType: !1557, size: 64, offset: 1728)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !725, file: !14, line: 1030, baseType: !2044, size: 32, offset: 1792)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !725, file: !14, line: 1031, baseType: !2044, size: 32, offset: 1824)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !700, file: !38, line: 756, baseType: !168, size: 64, offset: 704)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !700, file: !38, line: 757, baseType: !168, size: 64, offset: 768)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !700, file: !38, line: 760, baseType: !168, size: 64, offset: 832)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !700, file: !38, line: 761, baseType: !168, size: 64, offset: 896)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !700, file: !38, line: 763, baseType: !168, size: 64, offset: 960)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !700, file: !38, line: 764, baseType: !4881, size: 64, offset: 1024)
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1702, line: 299, baseType: !4883)
!4883 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1702, line: 299, size: 64, elements: !4884)
!4884 = !{!4885}
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !4883, file: !1702, line: 299, baseType: !4886, size: 64)
!4886 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1707, line: 18, baseType: !168)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !700, file: !38, line: 773, baseType: !178, size: 32, offset: 1088)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !700, file: !38, line: 785, baseType: !178, size: 32, offset: 1120)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !700, file: !38, line: 795, baseType: !4890, size: 64, offset: 1152)
!4890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4891, size: 64)
!4891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !4892)
!4892 = !{!4893, !4894}
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4891, file: !38, line: 727, baseType: !451, size: 64)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !4891, file: !38, line: 728, baseType: !109, size: 32, offset: 64)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !700, file: !38, line: 801, baseType: !168, size: 64, offset: 1216)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !700, file: !38, line: 804, baseType: !737, size: 64, offset: 1280)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !700, file: !38, line: 806, baseType: !109, size: 32, offset: 1344)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !700, file: !38, line: 808, baseType: !188, size: 32, offset: 1376)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !700, file: !38, line: 823, baseType: !845, size: 320, offset: 1408)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !700, file: !38, line: 825, baseType: !226, size: 128, offset: 1728)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !700, file: !38, line: 845, baseType: !109, size: 32, offset: 1856)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !700, file: !38, line: 849, baseType: !168, size: 64, offset: 1920)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !700, file: !38, line: 850, baseType: !168, size: 64, offset: 1984)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !700, file: !38, line: 852, baseType: !168, size: 64, offset: 2048)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !700, file: !38, line: 853, baseType: !168, size: 64, offset: 2112)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !700, file: !38, line: 854, baseType: !739, size: 64, offset: 2176)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !700, file: !38, line: 855, baseType: !168, size: 64, offset: 2240)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !700, file: !38, line: 856, baseType: !168, size: 64, offset: 2304)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !700, file: !38, line: 857, baseType: !168, size: 64, offset: 2368)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !700, file: !38, line: 858, baseType: !168, size: 64, offset: 2432)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !700, file: !38, line: 865, baseType: !570, size: 32, offset: 2496)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !700, file: !38, line: 867, baseType: !188, size: 32, offset: 2528)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !700, file: !38, line: 869, baseType: !168, size: 64, offset: 2560)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !700, file: !38, line: 869, baseType: !168, size: 64, offset: 2624)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !700, file: !38, line: 869, baseType: !168, size: 64, offset: 2688)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !700, file: !38, line: 869, baseType: !168, size: 64, offset: 2752)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !700, file: !38, line: 870, baseType: !168, size: 64, offset: 2816)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !700, file: !38, line: 870, baseType: !168, size: 64, offset: 2880)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !700, file: !38, line: 870, baseType: !168, size: 64, offset: 2944)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !700, file: !38, line: 871, baseType: !168, size: 64, offset: 3008)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !700, file: !38, line: 871, baseType: !168, size: 64, offset: 3072)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !700, file: !38, line: 871, baseType: !168, size: 64, offset: 3136)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !700, file: !38, line: 871, baseType: !168, size: 64, offset: 3200)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !700, file: !38, line: 873, baseType: !4925, size: 3328, offset: 3264)
!4925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 3328, elements: !4926)
!4926 = !{!4927}
!4927 = !DISubrange(count: 52)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !700, file: !38, line: 875, baseType: !4929, size: 1280, offset: 6592)
!4929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !961, size: 1280, elements: !347)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !700, file: !38, line: 877, baseType: !4931, size: 64, offset: 7872)
!4931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4932, size: 64)
!4932 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !700, file: !38, line: 880, baseType: !4934, size: 1088, offset: 7936)
!4934 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !4935, line: 72, baseType: !4936)
!4935 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!4936 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4935, line: 23, size: 1088, elements: !4937)
!4937 = !{!4938, !4939, !4940, !4941, !4942, !4945, !4946, !4947, !4948, !4973, !4974, !4975}
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !4936, file: !4935, line: 28, baseType: !451, size: 64)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !4936, file: !4935, line: 38, baseType: !739, size: 64, offset: 64)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !4936, file: !4935, line: 40, baseType: !168, size: 64, offset: 128)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !4936, file: !4935, line: 43, baseType: !845, size: 320, offset: 192)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !4936, file: !4935, line: 44, baseType: !4943, size: 64, offset: 512)
!4943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4944, size: 64)
!4944 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !4935, line: 44, flags: DIFlagFwdDecl)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4936, file: !4935, line: 48, baseType: !168, size: 64, offset: 576)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4936, file: !4935, line: 59, baseType: !744, size: 256, offset: 640)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !4936, file: !4935, line: 60, baseType: !150, size: 64, offset: 896)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !4936, file: !4935, line: 61, baseType: !4949, size: 64, offset: 960)
!4949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4950, size: 64)
!4950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4951)
!4951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !4952, line: 13, size: 1216, elements: !4953)
!4952 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!4953 = !{!4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972}
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4951, file: !4952, line: 14, baseType: !150, size: 64)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4951, file: !4952, line: 15, baseType: !168, size: 64, offset: 64)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !4951, file: !4952, line: 17, baseType: !168, size: 64, offset: 128)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !4951, file: !4952, line: 17, baseType: !168, size: 64, offset: 192)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !4951, file: !4952, line: 18, baseType: !168, size: 64, offset: 256)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !4951, file: !4952, line: 18, baseType: !168, size: 64, offset: 320)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !4951, file: !4952, line: 19, baseType: !2083, size: 64, offset: 384)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !4951, file: !4952, line: 21, baseType: !1133, size: 64, offset: 448)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !4951, file: !4952, line: 23, baseType: !1133, size: 64, offset: 512)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !4951, file: !4952, line: 24, baseType: !1133, size: 64, offset: 576)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !4951, file: !4952, line: 25, baseType: !1133, size: 64, offset: 640)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !4951, file: !4952, line: 26, baseType: !1133, size: 64, offset: 704)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !4951, file: !4952, line: 27, baseType: !1133, size: 64, offset: 768)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !4951, file: !4952, line: 28, baseType: !1133, size: 64, offset: 832)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !4951, file: !4952, line: 29, baseType: !1133, size: 64, offset: 896)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !4951, file: !4952, line: 30, baseType: !1133, size: 64, offset: 960)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !4951, file: !4952, line: 31, baseType: !1133, size: 64, offset: 1024)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !4951, file: !4952, line: 32, baseType: !1133, size: 64, offset: 1088)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !4951, file: !4952, line: 33, baseType: !1133, size: 64, offset: 1152)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !4936, file: !4935, line: 63, baseType: !178, size: 32, offset: 1024)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !4936, file: !4935, line: 69, baseType: !222, size: 16, offset: 1056)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !4936, file: !4935, line: 70, baseType: !2402, size: 16, offset: 1072)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !700, file: !38, line: 882, baseType: !168, size: 64, offset: 9024)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !700, file: !38, line: 885, baseType: !188, size: 32, offset: 9088)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !700, file: !38, line: 886, baseType: !4979, size: 64, offset: 9152)
!4979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4980, size: 64)
!4980 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !700, file: !38, line: 901, baseType: !986, size: 64, offset: 9216)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !700, file: !38, line: 904, baseType: !724, size: 64, offset: 9280)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !700, file: !38, line: 906, baseType: !4984, size: 64, offset: 9344)
!4984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4985, size: 64)
!4985 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !700, file: !38, line: 930, baseType: !178, size: 32, offset: 9408)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !700, file: !38, line: 933, baseType: !178, size: 32, offset: 9440)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !700, file: !38, line: 935, baseType: !4989, size: 64, offset: 9472)
!4989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !4990)
!4990 = !{!4991}
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !4989, file: !68, line: 104, baseType: !4992, size: 64)
!4992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4993, size: 64)
!4993 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !700, file: !38, line: 940, baseType: !737, size: 64, offset: 9536)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !700, file: !38, line: 942, baseType: !1035, size: 256, offset: 9600)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !697, file: !38, line: 986, baseType: !4997, offset: 10240)
!4997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, elements: !1145)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !388, file: !389, line: 882, baseType: !696, size: 64, offset: 9792)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !388, file: !389, line: 884, baseType: !109, size: 32, offset: 9856)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !388, file: !389, line: 885, baseType: !109, size: 32, offset: 9888)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !388, file: !389, line: 886, baseType: !109, size: 32, offset: 9920)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !388, file: !389, line: 888, baseType: !109, size: 32, offset: 9952)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !388, file: !389, line: 890, baseType: !168, size: 64, offset: 9984)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !388, file: !389, line: 893, baseType: !7, size: 32, offset: 10048)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !388, file: !389, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !388, file: !389, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !388, file: !389, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !388, file: !389, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !388, file: !389, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !388, file: !389, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !388, file: !389, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !388, file: !389, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !388, file: !389, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !388, file: !389, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !388, file: !389, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !388, file: !389, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !388, file: !389, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !388, file: !389, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !388, file: !389, line: 969, baseType: !168, size: 64, offset: 10176)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !388, file: !389, line: 971, baseType: !5021, size: 448, offset: 10240)
!5021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !5022)
!5022 = !{!5023, !5024, !5029}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !5021, file: !62, line: 26, baseType: !168, size: 64)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !5021, file: !62, line: 27, baseType: !5025, size: 64, offset: 64)
!5025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5026, size: 64)
!5026 = !DISubroutineType(types: !5027)
!5027 = !{!1133, !5028}
!5028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5021, size: 64)
!5029 = !DIDerivedType(tag: DW_TAG_member, scope: !5021, file: !62, line: 28, baseType: !5030, size: 320, offset: 128)
!5030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5021, file: !62, line: 28, size: 320, elements: !5031)
!5031 = !{!5032, !5042, !5067}
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !5030, file: !62, line: 37, baseType: !5033, size: 320)
!5033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5030, file: !62, line: 30, size: 320, elements: !5034)
!5034 = !{!5035, !5037, !5038, !5039, !5040, !5041}
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !5033, file: !62, line: 31, baseType: !5036, size: 64)
!5036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5033, file: !62, line: 32, baseType: !398, size: 32, offset: 64)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5033, file: !62, line: 33, baseType: !398, size: 32, offset: 96)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !5033, file: !62, line: 34, baseType: !398, size: 32, offset: 128)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5033, file: !62, line: 35, baseType: !451, size: 64, offset: 192)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !5033, file: !62, line: 36, baseType: !5036, size: 64, offset: 256)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !5030, file: !62, line: 47, baseType: !5043, size: 192)
!5043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5030, file: !62, line: 39, size: 192, elements: !5044)
!5044 = !{!5045, !5046, !5047, !5066}
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !5043, file: !62, line: 40, baseType: !562, size: 32)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5043, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!5047 = !DIDerivedType(tag: DW_TAG_member, scope: !5043, file: !62, line: 42, baseType: !5048, size: 64, offset: 64)
!5048 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5043, file: !62, line: 42, size: 64, elements: !5049)
!5049 = !{!5050, !5058}
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !5048, file: !62, line: 43, baseType: !5051, size: 64)
!5051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5052, size: 64)
!5052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !5053, line: 7, size: 128, elements: !5054)
!5053 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!5054 = !{!5055, !5057}
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5052, file: !5053, line: 8, baseType: !5056, size: 64)
!5056 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !166, line: 93, baseType: !172)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5052, file: !5053, line: 9, baseType: !172, size: 64, offset: 64)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !5048, file: !62, line: 44, baseType: !5059, size: 64)
!5059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5060, size: 64)
!5060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !5061, line: 7, size: 64, elements: !5062)
!5061 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!5062 = !{!5063, !5065}
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5060, file: !5061, line: 8, baseType: !5064, size: 32)
!5064 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !5061, line: 5, baseType: !837)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5060, file: !5061, line: 9, baseType: !837, size: 32, offset: 32)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5043, file: !62, line: 46, baseType: !451, size: 64, offset: 128)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5030, file: !62, line: 55, baseType: !5068, size: 256)
!5068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5030, file: !62, line: 49, size: 256, elements: !5069)
!5069 = !{!5070, !5078, !5079, !5080, !5081}
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !5068, file: !62, line: 50, baseType: !5071, size: 64)
!5071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5072, size: 64)
!5072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !5073, line: 36, size: 64, elements: !5074)
!5073 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!5074 = !{!5075, !5076, !5077}
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !5072, file: !5073, line: 37, baseType: !109, size: 32)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !5072, file: !5073, line: 38, baseType: !873, size: 16, offset: 32)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !5072, file: !5073, line: 39, baseType: !873, size: 16, offset: 48)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !5068, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !5068, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5068, file: !62, line: 53, baseType: !168, size: 64, offset: 128)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5068, file: !62, line: 54, baseType: !168, size: 64, offset: 192)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !388, file: !389, line: 973, baseType: !5083, size: 32, offset: 10688)
!5083 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !154, line: 27, baseType: !5084)
!5084 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !166, line: 28, baseType: !109)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !388, file: !389, line: 974, baseType: !5083, size: 32, offset: 10720)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !388, file: !389, line: 978, baseType: !168, size: 64, offset: 10752)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !388, file: !389, line: 987, baseType: !387, size: 64, offset: 10816)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !388, file: !389, line: 990, baseType: !387, size: 64, offset: 10880)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !388, file: !389, line: 995, baseType: !226, size: 128, offset: 10944)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !388, file: !389, line: 996, baseType: !226, size: 128, offset: 11072)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !388, file: !389, line: 997, baseType: !387, size: 64, offset: 11200)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !388, file: !389, line: 1005, baseType: !226, size: 128, offset: 11264)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !388, file: !389, line: 1006, baseType: !226, size: 128, offset: 11392)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !388, file: !389, line: 1009, baseType: !325, size: 64, offset: 11520)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !388, file: !389, line: 1010, baseType: !5096, size: 512, offset: 11584)
!5096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 512, elements: !347)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !388, file: !389, line: 1011, baseType: !226, size: 128, offset: 12096)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !388, file: !389, line: 1012, baseType: !226, size: 128, offset: 12224)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !388, file: !389, line: 1014, baseType: !1073, size: 64, offset: 12352)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !388, file: !389, line: 1017, baseType: !2395, size: 64, offset: 12416)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !388, file: !389, line: 1020, baseType: !2395, size: 64, offset: 12480)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !388, file: !389, line: 1023, baseType: !150, size: 64, offset: 12544)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !388, file: !389, line: 1025, baseType: !451, size: 64, offset: 12608)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !388, file: !389, line: 1026, baseType: !451, size: 64, offset: 12672)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !388, file: !389, line: 1031, baseType: !451, size: 64, offset: 12736)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !388, file: !389, line: 1032, baseType: !3947, size: 192, offset: 12800)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !388, file: !389, line: 1041, baseType: !168, size: 64, offset: 12992)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !388, file: !389, line: 1042, baseType: !168, size: 64, offset: 13056)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !388, file: !389, line: 1045, baseType: !451, size: 64, offset: 13120)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !388, file: !389, line: 1048, baseType: !451, size: 64, offset: 13184)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !388, file: !389, line: 1051, baseType: !168, size: 64, offset: 13248)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !388, file: !389, line: 1052, baseType: !168, size: 64, offset: 13312)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !388, file: !389, line: 1055, baseType: !5114, size: 640, offset: 13376)
!5114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !5115, line: 132, size: 640, elements: !5116)
!5115 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!5116 = !{!5117, !5123, !5124}
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !5114, file: !5115, line: 133, baseType: !5118, size: 576)
!5118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5119, size: 576, elements: !780)
!5119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !5115, line: 117, size: 192, elements: !5120)
!5120 = !{!5121, !5122}
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !5119, file: !5115, line: 118, baseType: !451, size: 64)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !5119, file: !5115, line: 119, baseType: !576, size: 128, offset: 64)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !5114, file: !5115, line: 134, baseType: !7, size: 32, offset: 576)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !5114, file: !5115, line: 135, baseType: !7, size: 32, offset: 608)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !388, file: !389, line: 1058, baseType: !5126, size: 448, offset: 14016)
!5126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !5115, line: 144, size: 448, elements: !5127)
!5127 = !{!5128, !5129, !5130}
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5126, file: !5115, line: 145, baseType: !352, size: 128, align: 64)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5126, file: !5115, line: 146, baseType: !744, size: 256, offset: 128)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !5126, file: !5115, line: 147, baseType: !7, size: 32, offset: 384)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !388, file: !389, line: 1064, baseType: !796, size: 64, offset: 14464)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !388, file: !389, line: 1067, baseType: !796, size: 64, offset: 14528)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !388, file: !389, line: 1070, baseType: !796, size: 64, offset: 14592)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !388, file: !389, line: 1074, baseType: !829, size: 64, offset: 14656)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !388, file: !389, line: 1084, baseType: !5136, size: 128, offset: 14720)
!5136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 128, elements: !4535)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !388, file: !389, line: 1086, baseType: !5138, size: 64, offset: 14848)
!5138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5139, size: 64)
!5139 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !389, line: 55, flags: DIFlagFwdDecl)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !388, file: !389, line: 1089, baseType: !5141, size: 64, offset: 14912)
!5141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !5142, line: 12, size: 64, elements: !5143)
!5142 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!5143 = !{!5144}
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !5141, file: !5142, line: 13, baseType: !5145, size: 64)
!5145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5146, size: 64)
!5146 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !5142, line: 8, flags: DIFlagFwdDecl)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !388, file: !389, line: 1090, baseType: !5148, size: 128, offset: 14976)
!5148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !5149, line: 13, size: 128, elements: !5150)
!5149 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!5150 = !{!5151}
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !5148, file: !5149, line: 14, baseType: !226, size: 128)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !388, file: !389, line: 1097, baseType: !5153, size: 64, offset: 15104)
!5153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5154, size: 64)
!5154 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !389, line: 50, flags: DIFlagFwdDecl)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !388, file: !389, line: 1100, baseType: !5156, size: 64, offset: 15168)
!5156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5157, size: 64)
!5157 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !389, line: 1100, flags: DIFlagFwdDecl)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !388, file: !389, line: 1103, baseType: !5159, size: 64, offset: 15232)
!5159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5160, size: 64)
!5160 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !389, line: 53, flags: DIFlagFwdDecl)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !388, file: !389, line: 1107, baseType: !5162, size: 64, offset: 15296)
!5162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5163, size: 64)
!5163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !5164, line: 31, size: 576, elements: !5165)
!5164 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!5165 = !{!5166, !5167, !5170, !5173, !5176, !5177, !5180, !5183, !5184}
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5163, file: !5164, line: 32, baseType: !329, size: 32)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !5163, file: !5164, line: 33, baseType: !5168, size: 64, offset: 64)
!5168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5169, size: 64)
!5169 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !5164, line: 9, flags: DIFlagFwdDecl)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !5163, file: !5164, line: 34, baseType: !5171, size: 64, offset: 128)
!5171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5172, size: 64)
!5172 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !5164, line: 10, flags: DIFlagFwdDecl)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !5163, file: !5164, line: 35, baseType: !5174, size: 64, offset: 192)
!5174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5175, size: 64)
!5175 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !5164, line: 8, flags: DIFlagFwdDecl)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !5163, file: !5164, line: 36, baseType: !366, size: 64, offset: 256)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !5163, file: !5164, line: 37, baseType: !5178, size: 64, offset: 320)
!5178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5179, size: 64)
!5179 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !831, line: 34, flags: DIFlagFwdDecl)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !5163, file: !5164, line: 38, baseType: !5181, size: 64, offset: 384)
!5181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5182, size: 64)
!5182 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !5164, line: 38, flags: DIFlagFwdDecl)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !5163, file: !5164, line: 39, baseType: !5181, size: 64, offset: 448)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !5163, file: !5164, line: 40, baseType: !5185, size: 64, offset: 512)
!5185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5186, size: 64)
!5186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !5187, line: 771, size: 384, elements: !5188)
!5187 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!5188 = !{!5189, !5190, !5191, !5192}
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5186, file: !5187, line: 772, baseType: !1019, size: 192)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !5186, file: !5187, line: 773, baseType: !986, size: 64, offset: 192)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !5186, file: !5187, line: 774, baseType: !1118, size: 64, offset: 256)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !5186, file: !5187, line: 775, baseType: !4017, size: 64, offset: 320)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !388, file: !389, line: 1110, baseType: !5194, size: 64, offset: 15360)
!5194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5195, size: 64)
!5195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !5196, line: 93, size: 8768, elements: !5197)
!5196 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!5197 = !{!5198, !5199, !5200, !5201, !5202, !5203, !5204, !5205, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5246, !5255, !5256, !5258, !5259, !5260, !5263, !5269, !5270, !5271, !5272, !5273, !5274, !5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5283, !5284, !5285, !5286, !5287, !5288, !5289, !5290, !5301, !5302, !5309, !5319, !5381, !5382, !5385, !5386, !5387, !5388, !5389, !5390}
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !5195, file: !5196, line: 94, baseType: !329, size: 32)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !5195, file: !5196, line: 95, baseType: !178, size: 32, offset: 32)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5195, file: !5196, line: 96, baseType: !109, size: 32, offset: 64)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !5195, file: !5196, line: 97, baseType: !109, size: 32, offset: 96)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !5195, file: !5196, line: 98, baseType: !226, size: 128, offset: 128)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !5195, file: !5196, line: 100, baseType: !183, size: 192, offset: 256)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !5195, file: !5196, line: 103, baseType: !387, size: 64, offset: 448)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !5195, file: !5196, line: 106, baseType: !5206, size: 192, offset: 512)
!5206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !5207, line: 32, size: 192, elements: !5208)
!5207 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!5208 = !{!5209, !5210}
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5206, file: !5207, line: 33, baseType: !226, size: 128)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5206, file: !5207, line: 34, baseType: !5211, size: 64, offset: 128)
!5211 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !5212, line: 25, baseType: !5213)
!5212 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!5213 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5212, line: 23, size: 64, elements: !5214)
!5214 = !{!5215}
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !5213, file: !5212, line: 24, baseType: !647, size: 64)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !5195, file: !5196, line: 109, baseType: !338, size: 64, offset: 704)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !5195, file: !5196, line: 112, baseType: !109, size: 32, offset: 768)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !5195, file: !5196, line: 114, baseType: !109, size: 32, offset: 800)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !5195, file: !5196, line: 115, baseType: !387, size: 64, offset: 832)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !5195, file: !5196, line: 118, baseType: !109, size: 32, offset: 896)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5195, file: !5196, line: 119, baseType: !7, size: 32, offset: 928)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !5195, file: !5196, line: 121, baseType: !5223, size: 64, offset: 960)
!5223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5224, size: 64)
!5224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !5196, line: 80, size: 448, elements: !5225)
!5225 = !{!5226, !5227, !5233}
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5224, file: !5196, line: 81, baseType: !178, size: 32)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !5224, file: !5196, line: 82, baseType: !5228, size: 128, offset: 64)
!5228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !5196, line: 75, size: 128, elements: !5229)
!5229 = !{!5230, !5231}
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5228, file: !5196, line: 76, baseType: !387, size: 64)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5228, file: !5196, line: 77, baseType: !5232, size: 64, offset: 64)
!5232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5228, size: 64)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5224, file: !5196, line: 83, baseType: !1074, size: 256, offset: 192)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !5195, file: !5196, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !5195, file: !5196, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !5195, file: !5196, line: 138, baseType: !7, size: 32, offset: 1056)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !5195, file: !5196, line: 139, baseType: !226, size: 128, offset: 1088)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !5195, file: !5196, line: 142, baseType: !516, size: 512, offset: 1216)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !5195, file: !5196, line: 143, baseType: !298, size: 64, offset: 1728)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !5195, file: !5196, line: 150, baseType: !5241, size: 256, offset: 1792)
!5241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5242, size: 256, elements: !2385)
!5242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !5196, line: 38, size: 128, elements: !5243)
!5243 = !{!5244, !5245}
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5242, file: !5196, line: 39, baseType: !451, size: 64)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !5242, file: !5196, line: 40, baseType: !451, size: 64, offset: 64)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !5195, file: !5196, line: 156, baseType: !5247, size: 192, offset: 2048)
!5247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !5196, line: 66, size: 192, elements: !5248)
!5248 = !{!5249}
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !5247, file: !5196, line: 67, baseType: !5250, size: 192)
!5250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !5196, line: 47, size: 192, elements: !5251)
!5251 = !{!5252, !5253, !5254}
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5250, file: !5196, line: 48, baseType: !739, size: 64)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5250, file: !5196, line: 49, baseType: !739, size: 64, offset: 64)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !5250, file: !5196, line: 50, baseType: !739, size: 64, offset: 128)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !5195, file: !5196, line: 160, baseType: !5114, size: 640, offset: 2240)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !5195, file: !5196, line: 163, baseType: !5257, size: 256, offset: 2880)
!5257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 256, elements: !347)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !5195, file: !5196, line: 169, baseType: !325, size: 64, offset: 3136)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !5195, file: !5196, line: 172, baseType: !109, size: 32, offset: 3200)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !5195, file: !5196, line: 174, baseType: !5261, size: 64, offset: 3264)
!5261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5262, size: 64)
!5262 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !5196, line: 174, flags: DIFlagFwdDecl)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !5195, file: !5196, line: 185, baseType: !5264, size: 64, offset: 3328)
!5264 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !566, line: 860, baseType: !5265)
!5265 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !566, line: 853, size: 64, elements: !5266)
!5266 = !{!5267, !5268}
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !5265, file: !566, line: 858, baseType: !1177, size: 32)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5265, file: !566, line: 859, baseType: !188, size: 32, offset: 32)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5195, file: !5196, line: 186, baseType: !451, size: 64, offset: 3392)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5195, file: !5196, line: 186, baseType: !451, size: 64, offset: 3456)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !5195, file: !5196, line: 186, baseType: !451, size: 64, offset: 3520)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !5195, file: !5196, line: 186, baseType: !451, size: 64, offset: 3584)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !5195, file: !5196, line: 187, baseType: !451, size: 64, offset: 3648)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !5195, file: !5196, line: 188, baseType: !451, size: 64, offset: 3712)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !5195, file: !5196, line: 189, baseType: !3947, size: 192, offset: 3776)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5195, file: !5196, line: 190, baseType: !168, size: 64, offset: 3968)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5195, file: !5196, line: 190, baseType: !168, size: 64, offset: 4032)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !5195, file: !5196, line: 190, baseType: !168, size: 64, offset: 4096)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !5195, file: !5196, line: 190, baseType: !168, size: 64, offset: 4160)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !5195, file: !5196, line: 191, baseType: !168, size: 64, offset: 4224)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !5195, file: !5196, line: 191, baseType: !168, size: 64, offset: 4288)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !5195, file: !5196, line: 191, baseType: !168, size: 64, offset: 4352)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !5195, file: !5196, line: 191, baseType: !168, size: 64, offset: 4416)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !5195, file: !5196, line: 192, baseType: !168, size: 64, offset: 4480)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !5195, file: !5196, line: 192, baseType: !168, size: 64, offset: 4544)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !5195, file: !5196, line: 192, baseType: !168, size: 64, offset: 4608)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !5195, file: !5196, line: 192, baseType: !168, size: 64, offset: 4672)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !5195, file: !5196, line: 193, baseType: !168, size: 64, offset: 4736)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !5195, file: !5196, line: 193, baseType: !168, size: 64, offset: 4800)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !5195, file: !5196, line: 194, baseType: !5291, size: 448, offset: 4864)
!5291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !5292, line: 12, size: 448, elements: !5293)
!5292 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!5293 = !{!5294, !5295, !5296, !5297, !5298, !5299, !5300}
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !5291, file: !5292, line: 15, baseType: !451, size: 64)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !5291, file: !5292, line: 17, baseType: !451, size: 64, offset: 64)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !5291, file: !5292, line: 19, baseType: !451, size: 64, offset: 128)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !5291, file: !5292, line: 21, baseType: !451, size: 64, offset: 192)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5291, file: !5292, line: 29, baseType: !451, size: 64, offset: 256)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5291, file: !5292, line: 35, baseType: !451, size: 64, offset: 320)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5291, file: !5292, line: 44, baseType: !451, size: 64, offset: 384)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !5195, file: !5196, line: 202, baseType: !453, size: 64, offset: 5312)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !5195, file: !5196, line: 213, baseType: !5303, size: 2048, offset: 5376)
!5303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5304, size: 2048, elements: !4535)
!5304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !5305, line: 43, size: 128, elements: !5306)
!5305 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!5306 = !{!5307, !5308}
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !5304, file: !5305, line: 44, baseType: !167, size: 64)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !5304, file: !5305, line: 45, baseType: !167, size: 64, offset: 64)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !5195, file: !5196, line: 216, baseType: !5310, size: 448, offset: 7424)
!5310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !5196, line: 30, size: 448, elements: !5311)
!5311 = !{!5312, !5313, !5314, !5315, !5316, !5317, !5318}
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5310, file: !5196, line: 31, baseType: !109, size: 32)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5310, file: !5196, line: 32, baseType: !1133, size: 64, offset: 64)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !5310, file: !5196, line: 33, baseType: !168, size: 64, offset: 128)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5310, file: !5196, line: 34, baseType: !451, size: 64, offset: 192)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5310, file: !5196, line: 34, baseType: !451, size: 64, offset: 256)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5310, file: !5196, line: 35, baseType: !168, size: 64, offset: 320)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5310, file: !5196, line: 35, baseType: !168, size: 64, offset: 384)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !5195, file: !5196, line: 219, baseType: !5320, size: 64, offset: 7872)
!5320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5321, size: 64)
!5321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !5322, line: 41, size: 3456, elements: !5323)
!5322 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!5323 = !{!5324, !5325, !5326, !5327, !5328, !5329, !5330, !5331, !5332, !5333, !5334, !5335, !5336, !5337, !5338, !5340, !5341, !5342, !5343, !5344, !5345, !5346, !5347, !5348, !5349, !5350, !5351, !5352, !5353, !5354, !5355, !5356, !5357, !5358, !5359, !5360, !5361, !5362, !5363, !5364, !5365, !5366, !5367, !5368, !5369, !5370, !5371, !5372, !5373, !5374, !5375, !5376, !5377, !5378, !5379, !5380}
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5321, file: !5322, line: 47, baseType: !223, size: 16)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5321, file: !5322, line: 48, baseType: !399, size: 32, offset: 32)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5321, file: !5322, line: 54, baseType: !214, size: 8, offset: 64)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !5321, file: !5322, line: 55, baseType: !214, size: 8, offset: 72)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !5321, file: !5322, line: 73, baseType: !452, size: 64, align: 64, offset: 128)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !5321, file: !5322, line: 74, baseType: !452, size: 64, offset: 192)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !5321, file: !5322, line: 81, baseType: !452, size: 64, offset: 256)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !5321, file: !5322, line: 82, baseType: !452, size: 64, offset: 320)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !5321, file: !5322, line: 85, baseType: !452, size: 64, offset: 384)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !5321, file: !5322, line: 86, baseType: !452, size: 64, offset: 448)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !5321, file: !5322, line: 94, baseType: !452, size: 64, offset: 512)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !5321, file: !5322, line: 102, baseType: !452, size: 64, offset: 576)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !5321, file: !5322, line: 107, baseType: !4525, size: 256, offset: 640)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !5321, file: !5322, line: 108, baseType: !214, size: 8, align: 64, offset: 896)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !5321, file: !5322, line: 110, baseType: !5339, size: 24, offset: 904)
!5339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 24, elements: !780)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !5321, file: !5322, line: 111, baseType: !399, size: 32, align: 64, offset: 960)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !5321, file: !5322, line: 113, baseType: !399, size: 32, offset: 992)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !5321, file: !5322, line: 114, baseType: !399, size: 32, offset: 1024)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !5321, file: !5322, line: 115, baseType: !399, size: 32, offset: 1056)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !5321, file: !5322, line: 117, baseType: !399, size: 32, offset: 1088)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !5321, file: !5322, line: 118, baseType: !452, size: 64, align: 64, offset: 1152)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5321, file: !5322, line: 120, baseType: !452, size: 64, offset: 1216)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5321, file: !5322, line: 121, baseType: !452, size: 64, offset: 1280)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5321, file: !5322, line: 122, baseType: !452, size: 64, offset: 1344)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5321, file: !5322, line: 123, baseType: !452, size: 64, offset: 1408)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !5321, file: !5322, line: 133, baseType: !452, size: 64, offset: 1472)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !5321, file: !5322, line: 137, baseType: !452, size: 64, offset: 1536)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !5321, file: !5322, line: 142, baseType: !452, size: 64, offset: 1600)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !5321, file: !5322, line: 143, baseType: !452, size: 64, offset: 1664)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !5321, file: !5322, line: 146, baseType: !452, size: 64, offset: 1728)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !5321, file: !5322, line: 147, baseType: !452, size: 64, offset: 1792)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !5321, file: !5322, line: 148, baseType: !452, size: 64, offset: 1856)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !5321, file: !5322, line: 149, baseType: !452, size: 64, offset: 1920)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5321, file: !5322, line: 154, baseType: !452, size: 64, offset: 1984)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5321, file: !5322, line: 155, baseType: !452, size: 64, offset: 2048)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5321, file: !5322, line: 156, baseType: !452, size: 64, offset: 2112)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5321, file: !5322, line: 158, baseType: !452, size: 64, offset: 2176)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5321, file: !5322, line: 159, baseType: !452, size: 64, offset: 2240)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !5321, file: !5322, line: 162, baseType: !452, size: 64, offset: 2304)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !5321, file: !5322, line: 163, baseType: !452, size: 64, offset: 2368)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !5321, file: !5322, line: 164, baseType: !452, size: 64, offset: 2432)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !5321, file: !5322, line: 167, baseType: !452, size: 64, offset: 2496)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !5321, file: !5322, line: 168, baseType: !452, size: 64, offset: 2560)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !5321, file: !5322, line: 171, baseType: !452, size: 64, offset: 2624)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !5321, file: !5322, line: 172, baseType: !452, size: 64, offset: 2688)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !5321, file: !5322, line: 175, baseType: !452, size: 64, offset: 2752)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !5321, file: !5322, line: 178, baseType: !452, size: 64, offset: 2816)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !5321, file: !5322, line: 179, baseType: !452, size: 64, offset: 2880)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !5321, file: !5322, line: 182, baseType: !399, size: 32, offset: 2944)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !5321, file: !5322, line: 186, baseType: !452, size: 64, align: 64, offset: 3008)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !5321, file: !5322, line: 194, baseType: !452, size: 64, offset: 3072)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !5321, file: !5322, line: 195, baseType: !452, size: 64, offset: 3136)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !5321, file: !5322, line: 199, baseType: !452, size: 64, offset: 3200)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !5321, file: !5322, line: 200, baseType: !452, size: 64, offset: 3264)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5321, file: !5322, line: 203, baseType: !452, size: 64, offset: 3328)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !5321, file: !5322, line: 204, baseType: !452, size: 64, offset: 3392)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !5195, file: !5196, line: 222, baseType: !7, size: 32, offset: 7936)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !5195, file: !5196, line: 223, baseType: !5383, size: 64, offset: 8000)
!5383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5384, size: 64)
!5384 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !5196, line: 223, flags: DIFlagFwdDecl)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !5195, file: !5196, line: 230, baseType: !302, size: 8, offset: 8064)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !5195, file: !5196, line: 231, baseType: !873, size: 16, offset: 8080)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !5195, file: !5196, line: 232, baseType: !873, size: 16, offset: 8096)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !5195, file: !5196, line: 234, baseType: !696, size: 64, offset: 8128)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !5195, file: !5196, line: 237, baseType: !744, size: 256, offset: 8192)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !5195, file: !5196, line: 243, baseType: !845, size: 320, offset: 8448)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !388, file: !389, line: 1111, baseType: !5392, size: 64, offset: 15424)
!5392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5393, size: 64)
!5393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !5196, line: 20, size: 16640, elements: !5394)
!5394 = !{!5395, !5396, !5397, !5398}
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !5393, file: !5196, line: 21, baseType: !188, size: 32)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5393, file: !5196, line: 22, baseType: !329, size: 32, offset: 32)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !5393, file: !5196, line: 23, baseType: !183, size: 192, offset: 64)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5393, file: !5196, line: 24, baseType: !5399, size: 16384, offset: 256)
!5399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5400, size: 16384, elements: !1496)
!5400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !5207, line: 51, size: 256, elements: !5401)
!5401 = !{!5402}
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !5400, file: !5207, line: 52, baseType: !5403, size: 256)
!5403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !5207, line: 37, size: 256, elements: !5404)
!5404 = !{!5405, !5412, !5413, !5417}
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !5403, file: !5207, line: 39, baseType: !5406, size: 64)
!5406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !5407, line: 83, baseType: !5408)
!5407 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!5408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5409, size: 64)
!5409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !5407, line: 82, baseType: !5410)
!5410 = !DISubroutineType(types: !5411)
!5411 = !{null, !109}
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !5403, file: !5207, line: 40, baseType: !168, size: 64, offset: 64)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !5403, file: !5207, line: 46, baseType: !5414, size: 64, offset: 128)
!5414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !5407, line: 86, baseType: !5415)
!5415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5416, size: 64)
!5416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !5407, line: 85, baseType: !2670)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !5403, file: !5207, line: 48, baseType: !5211, size: 64, offset: 192)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !388, file: !389, line: 1112, baseType: !5211, size: 64, offset: 15488)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !388, file: !389, line: 1113, baseType: !5211, size: 64, offset: 15552)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !388, file: !389, line: 1115, baseType: !5211, size: 64, offset: 15616)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !388, file: !389, line: 1116, baseType: !5206, size: 192, offset: 15680)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !388, file: !389, line: 1117, baseType: !168, size: 64, offset: 15872)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !388, file: !389, line: 1118, baseType: !164, size: 64, offset: 15936)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !388, file: !389, line: 1119, baseType: !7, size: 32, offset: 16000)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !388, file: !389, line: 1121, baseType: !355, size: 64, offset: 16064)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !388, file: !389, line: 1125, baseType: !5427, size: 64, offset: 16128)
!5427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5428, size: 64)
!5428 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !389, line: 43, flags: DIFlagFwdDecl)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !388, file: !389, line: 1127, baseType: !786, size: 32, offset: 16192)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !388, file: !389, line: 1128, baseType: !7, size: 32, offset: 16224)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !388, file: !389, line: 1130, baseType: !5432, size: 128, offset: 16256)
!5432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !5433, line: 37, size: 128, elements: !5434)
!5433 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!5434 = !{!5435, !5436, !5437}
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5432, file: !5433, line: 38, baseType: !109, size: 32)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !5432, file: !5433, line: 39, baseType: !178, size: 32, offset: 32)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5432, file: !5433, line: 40, baseType: !5438, size: 64, offset: 64)
!5438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5439, size: 64)
!5439 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !5433, line: 24, flags: DIFlagFwdDecl)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !388, file: !389, line: 1131, baseType: !5441, size: 256, offset: 16384)
!5441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !5442, line: 12, size: 256, elements: !5443)
!5442 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!5443 = !{!5444, !5445, !5446, !5447}
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !5441, file: !5442, line: 13, baseType: !913, size: 64)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5441, file: !5442, line: 14, baseType: !168, size: 64, offset: 64)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5441, file: !5442, line: 15, baseType: !168, size: 64, offset: 128)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !5441, file: !5442, line: 16, baseType: !302, size: 8, offset: 192)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !388, file: !389, line: 1134, baseType: !451, size: 64, offset: 16640)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !388, file: !389, line: 1135, baseType: !451, size: 64, offset: 16704)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !388, file: !389, line: 1138, baseType: !188, size: 32, offset: 16768)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !388, file: !389, line: 1141, baseType: !539, size: 32, offset: 16800)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !388, file: !389, line: 1143, baseType: !5453, size: 64, offset: 16832)
!5453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !389, line: 735, size: 64, elements: !5454)
!5454 = !{!5455}
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5453, file: !389, line: 736, baseType: !5456, size: 64)
!5456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5453, size: 64)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !388, file: !389, line: 1147, baseType: !579, size: 128, offset: 16896)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !388, file: !389, line: 1149, baseType: !387, size: 64, offset: 17024)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !388, file: !389, line: 1151, baseType: !5460, size: 64, offset: 17088)
!5460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5461, size: 64)
!5461 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !389, line: 1151, flags: DIFlagFwdDecl)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !388, file: !389, line: 1188, baseType: !150, size: 64, offset: 17152)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !388, file: !389, line: 1191, baseType: !5464, size: 64, offset: 17216)
!5464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5465, size: 64)
!5465 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !389, line: 44, flags: DIFlagFwdDecl)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !388, file: !389, line: 1194, baseType: !5467, size: 64, offset: 17280)
!5467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5468, size: 64)
!5468 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !389, line: 45, flags: DIFlagFwdDecl)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !388, file: !389, line: 1197, baseType: !5470, size: 64, offset: 17344)
!5470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5471, size: 64)
!5471 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !389, line: 61, flags: DIFlagFwdDecl)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !388, file: !389, line: 1199, baseType: !5473, size: 64, offset: 17408)
!5473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5474, size: 64)
!5474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !5475, line: 99, size: 128, elements: !5476)
!5475 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!5476 = !{!5477, !5478, !5479}
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5474, file: !5475, line: 100, baseType: !737, size: 64)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5474, file: !5475, line: 101, baseType: !178, size: 32, offset: 64)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5474, file: !5475, line: 103, baseType: !155, size: 16, offset: 96)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !388, file: !389, line: 1202, baseType: !5481, size: 64, offset: 17472)
!5481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5482, size: 64)
!5482 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !389, line: 48, flags: DIFlagFwdDecl)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !388, file: !389, line: 1205, baseType: !168, size: 64, offset: 17536)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !388, file: !389, line: 1206, baseType: !5485, size: 64, offset: 17600)
!5485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5486, size: 64)
!5486 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !5207, line: 14, baseType: !5487)
!5487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !5207, line: 12, size: 384, elements: !5488)
!5488 = !{!5489}
!5489 = !DIDerivedType(tag: DW_TAG_member, scope: !5487, file: !5207, line: 13, baseType: !5490, size: 384)
!5490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5487, file: !5207, line: 13, size: 384, elements: !5491)
!5491 = !{!5492, !5493, !5494, !5495}
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5490, file: !5207, line: 13, baseType: !109, size: 32)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5490, file: !5207, line: 13, baseType: !109, size: 32, offset: 32)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5490, file: !5207, line: 13, baseType: !109, size: 32, offset: 64)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5490, file: !5207, line: 13, baseType: !5496, size: 256, offset: 128)
!5496 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5497, line: 37, size: 256, elements: !5498)
!5497 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5498 = !{!5499, !5504, !5517, !5523, !5532, !5559, !5564}
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5496, file: !5497, line: 42, baseType: !5500, size: 64)
!5500 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5496, file: !5497, line: 39, size: 64, elements: !5501)
!5501 = !{!5502, !5503}
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5500, file: !5497, line: 40, baseType: !5084, size: 32)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5500, file: !5497, line: 41, baseType: !792, size: 32, offset: 32)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5496, file: !5497, line: 50, baseType: !5505, size: 192)
!5505 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5496, file: !5497, line: 45, size: 192, elements: !5506)
!5506 = !{!5507, !5509, !5510, !5516}
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5505, file: !5497, line: 46, baseType: !5508, size: 32)
!5508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !166, line: 95, baseType: !109)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5505, file: !5497, line: 47, baseType: !109, size: 32, offset: 32)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5505, file: !5497, line: 48, baseType: !5511, size: 64, offset: 64)
!5511 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5497, line: 11, baseType: !5512)
!5512 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5497, line: 8, size: 64, elements: !5513)
!5513 = !{!5514, !5515}
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5512, file: !5497, line: 9, baseType: !109, size: 32)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5512, file: !5497, line: 10, baseType: !150, size: 64)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5505, file: !5497, line: 49, baseType: !109, size: 32, offset: 128)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5496, file: !5497, line: 57, baseType: !5518, size: 128)
!5518 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5496, file: !5497, line: 53, size: 128, elements: !5519)
!5519 = !{!5520, !5521, !5522}
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5518, file: !5497, line: 54, baseType: !5084, size: 32)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5518, file: !5497, line: 55, baseType: !792, size: 32, offset: 32)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5518, file: !5497, line: 56, baseType: !5511, size: 64, offset: 64)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5496, file: !5497, line: 66, baseType: !5524, size: 256)
!5524 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5496, file: !5497, line: 60, size: 256, elements: !5525)
!5525 = !{!5526, !5527, !5528, !5529, !5531}
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5524, file: !5497, line: 61, baseType: !5084, size: 32)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5524, file: !5497, line: 62, baseType: !792, size: 32, offset: 32)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !5524, file: !5497, line: 63, baseType: !109, size: 32, offset: 64)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !5524, file: !5497, line: 64, baseType: !5530, size: 64, offset: 128)
!5530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !166, line: 94, baseType: !1360)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !5524, file: !5497, line: 65, baseType: !5530, size: 64, offset: 192)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5496, file: !5497, line: 105, baseType: !5533, size: 256)
!5533 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5496, file: !5497, line: 69, size: 256, elements: !5534)
!5534 = !{!5535, !5536}
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !5533, file: !5497, line: 70, baseType: !150, size: 64)
!5536 = !DIDerivedType(tag: DW_TAG_member, scope: !5533, file: !5497, line: 79, baseType: !5537, size: 192, offset: 64)
!5537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5533, file: !5497, line: 79, size: 192, elements: !5538)
!5538 = !{!5539, !5540, !5541, !5548, !5553}
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !5537, file: !5497, line: 81, baseType: !109, size: 32)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !5537, file: !5497, line: 86, baseType: !873, size: 16)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !5537, file: !5497, line: 92, baseType: !5542, size: 192)
!5542 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5537, file: !5497, line: 88, size: 192, elements: !5543)
!5543 = !{!5544, !5546, !5547}
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !5542, file: !5497, line: 89, baseType: !5545, size: 64)
!5545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 64, elements: !558)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !5542, file: !5497, line: 90, baseType: !150, size: 64, offset: 64)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !5542, file: !5497, line: 91, baseType: !150, size: 64, offset: 128)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !5537, file: !5497, line: 97, baseType: !5549, size: 96)
!5549 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5537, file: !5497, line: 94, size: 96, elements: !5550)
!5550 = !{!5551, !5552}
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !5549, file: !5497, line: 95, baseType: !5545, size: 64)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !5549, file: !5497, line: 96, baseType: !399, size: 32, offset: 64)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !5537, file: !5497, line: 103, baseType: !5554, size: 128)
!5554 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5537, file: !5497, line: 99, size: 128, elements: !5555)
!5555 = !{!5556, !5557, !5558}
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5554, file: !5497, line: 100, baseType: !168, size: 64)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5554, file: !5497, line: 101, baseType: !399, size: 32, offset: 64)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5554, file: !5497, line: 102, baseType: !399, size: 32, offset: 96)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5496, file: !5497, line: 111, baseType: !5560, size: 128)
!5560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5496, file: !5497, line: 108, size: 128, elements: !5561)
!5561 = !{!5562, !5563}
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5560, file: !5497, line: 109, baseType: !1133, size: 64)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5560, file: !5497, line: 110, baseType: !109, size: 32, offset: 64)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5496, file: !5497, line: 118, baseType: !5565, size: 128)
!5565 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5496, file: !5497, line: 114, size: 128, elements: !5566)
!5566 = !{!5567, !5568, !5569}
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5565, file: !5497, line: 115, baseType: !150, size: 64)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5565, file: !5497, line: 116, baseType: !109, size: 32, offset: 64)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5565, file: !5497, line: 117, baseType: !7, size: 32, offset: 96)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !388, file: !389, line: 1208, baseType: !5291, size: 448, offset: 17664)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !388, file: !389, line: 1215, baseType: !451, size: 64, offset: 18112)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !388, file: !389, line: 1217, baseType: !451, size: 64, offset: 18176)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !388, file: !389, line: 1219, baseType: !451, size: 64, offset: 18240)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !388, file: !389, line: 1223, baseType: !5575, size: 64, offset: 18304)
!5575 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !5576, line: 99, baseType: !5577)
!5576 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!5577 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5576, line: 99, size: 64, elements: !5578)
!5578 = !{!5579}
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5577, file: !5576, line: 99, baseType: !647, size: 64)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !388, file: !389, line: 1225, baseType: !1177, size: 32, offset: 18368)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !388, file: !389, line: 1226, baseType: !109, size: 32, offset: 18400)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !388, file: !389, line: 1227, baseType: !109, size: 32, offset: 18432)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !388, file: !389, line: 1231, baseType: !4017, size: 64, offset: 18496)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !388, file: !389, line: 1233, baseType: !226, size: 128, offset: 18560)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !388, file: !389, line: 1240, baseType: !5586, size: 64, offset: 18688)
!5586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5587, size: 64)
!5587 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !389, line: 62, flags: DIFlagFwdDecl)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !388, file: !389, line: 1242, baseType: !5589, size: 64, offset: 18752)
!5589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5590, size: 64)
!5590 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !389, line: 1242, flags: DIFlagFwdDecl)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !388, file: !389, line: 1244, baseType: !226, size: 128, offset: 18816)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !388, file: !389, line: 1245, baseType: !5593, size: 64, offset: 18944)
!5593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5594, size: 64)
!5594 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !389, line: 51, flags: DIFlagFwdDecl)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !388, file: !389, line: 1246, baseType: !744, size: 256, offset: 19008)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !388, file: !389, line: 1247, baseType: !7, size: 32, offset: 19264)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !388, file: !389, line: 1250, baseType: !3264, size: 64, offset: 19328)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !388, file: !389, line: 1251, baseType: !744, size: 256, offset: 19392)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !388, file: !389, line: 1252, baseType: !226, size: 128, offset: 19648)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !388, file: !389, line: 1259, baseType: !1780, size: 64, offset: 19776)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !388, file: !389, line: 1260, baseType: !873, size: 16, offset: 19840)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !388, file: !389, line: 1261, baseType: !873, size: 16, offset: 19856)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !388, file: !389, line: 1314, baseType: !5604, size: 64, offset: 19904)
!5604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5605, size: 64)
!5605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5606, line: 62, size: 256, align: 256, elements: !5607)
!5606 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5607 = !{!5608, !5609, !5610, !5611, !5612, !5613, !5614}
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5605, file: !5606, line: 75, baseType: !399, size: 32)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5605, file: !5606, line: 90, baseType: !399, size: 32, offset: 32)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5605, file: !5606, line: 112, baseType: !452, size: 64, offset: 64)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5605, file: !5606, line: 132, baseType: !399, size: 32, offset: 128)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5605, file: !5606, line: 140, baseType: !399, size: 32, offset: 160)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5605, file: !5606, line: 149, baseType: !399, size: 32, offset: 192)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5605, file: !5606, line: 154, baseType: !5615, offset: 224)
!5615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, elements: !1145)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !388, file: !389, line: 1315, baseType: !398, size: 32, offset: 19968)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !388, file: !389, line: 1316, baseType: !398, size: 32, offset: 20000)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !388, file: !389, line: 1321, baseType: !168, size: 64, offset: 20032)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !388, file: !389, line: 1325, baseType: !109, size: 32, offset: 20096)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !388, file: !389, line: 1326, baseType: !109, size: 32, offset: 20128)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !388, file: !389, line: 1327, baseType: !109, size: 32, offset: 20160)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !388, file: !389, line: 1328, baseType: !109, size: 32, offset: 20192)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !388, file: !389, line: 1329, baseType: !352, size: 128, align: 64, offset: 20224)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !388, file: !389, line: 1332, baseType: !5625, size: 128, offset: 20352)
!5625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5626, line: 51, size: 128, elements: !5627)
!5626 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5627 = !{!5628, !5633, !5634}
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5625, file: !5626, line: 60, baseType: !5629, size: 64)
!5629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5630, line: 7, size: 64, elements: !5631)
!5630 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5631 = !{!5632}
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5629, file: !5630, line: 12, baseType: !644, size: 64)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5625, file: !5626, line: 63, baseType: !302, size: 8, offset: 64)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5625, file: !5626, line: 70, baseType: !302, size: 8, offset: 72)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !388, file: !389, line: 1335, baseType: !4772, size: 64, offset: 20480)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !388, file: !389, line: 1337, baseType: !5637, size: 128, offset: 20544)
!5637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5626, line: 39, size: 128, elements: !5638)
!5638 = !{!5639, !5640, !5641}
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5637, file: !5626, line: 40, baseType: !1577, size: 64)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5637, file: !5626, line: 42, baseType: !399, size: 32, offset: 64)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5637, file: !5626, line: 43, baseType: !399, size: 32, offset: 96)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !388, file: !389, line: 1340, baseType: !5643, size: 64, offset: 20672)
!5643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5644, size: 64)
!5644 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !389, line: 69, flags: DIFlagFwdDecl)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !388, file: !389, line: 1351, baseType: !109, size: 32, offset: 20736)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !388, file: !389, line: 1352, baseType: !109, size: 32, offset: 20768)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !388, file: !389, line: 1354, baseType: !168, size: 64, offset: 20800)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !388, file: !389, line: 1364, baseType: !451, size: 64, offset: 20864)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !388, file: !389, line: 1365, baseType: !451, size: 64, offset: 20928)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !388, file: !389, line: 1412, baseType: !168, size: 64, offset: 20992)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !388, file: !389, line: 1453, baseType: !5652, size: 64, offset: 21056)
!5652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5653, size: 64)
!5653 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !389, line: 1453, flags: DIFlagFwdDecl)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !388, file: !389, line: 1457, baseType: !5655, size: 64, offset: 21120)
!5655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5656, size: 64)
!5656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !5657)
!5657 = !{!5658, !5659, !5678, !5681, !5682, !5715, !5725}
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5656, file: !68, line: 62, baseType: !67, size: 32)
!5659 = !DIDerivedType(tag: DW_TAG_member, scope: !5656, file: !68, line: 64, baseType: !5660, size: 192, offset: 64)
!5660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5656, file: !68, line: 64, size: 192, elements: !5661)
!5661 = !{!5662, !5673}
!5662 = !DIDerivedType(tag: DW_TAG_member, scope: !5660, file: !68, line: 65, baseType: !5663, size: 192)
!5663 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5660, file: !68, line: 65, size: 192, elements: !5664)
!5664 = !{!5665, !5672}
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5663, file: !68, line: 66, baseType: !5666, size: 128)
!5666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5667, line: 50, size: 128, elements: !5668)
!5667 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5668 = !{!5669, !5670, !5671}
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5666, file: !5667, line: 52, baseType: !168, size: 64)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5666, file: !5667, line: 54, baseType: !7, size: 32, offset: 64)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5666, file: !5667, line: 55, baseType: !7, size: 32, offset: 96)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5663, file: !68, line: 67, baseType: !168, size: 64, offset: 128)
!5673 = !DIDerivedType(tag: DW_TAG_member, scope: !5660, file: !68, line: 70, baseType: !5674, size: 192)
!5674 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5660, file: !68, line: 70, size: 192, elements: !5675)
!5675 = !{!5676, !5677}
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5674, file: !68, line: 71, baseType: !352, size: 128, align: 64)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5674, file: !68, line: 72, baseType: !168, size: 64, offset: 128)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5656, file: !68, line: 76, baseType: !5679, size: 64, offset: 256)
!5679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5680, size: 64)
!5680 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5656, file: !68, line: 77, baseType: !168, size: 64, offset: 320)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5656, file: !68, line: 79, baseType: !5683, size: 64, offset: 384)
!5683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5684, size: 64)
!5684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5667, line: 25, size: 256, elements: !5685)
!5685 = !{!5686, !5692, !5696}
!5686 = !DIDerivedType(tag: DW_TAG_member, scope: !5684, file: !5667, line: 26, baseType: !5687, size: 128)
!5687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5684, file: !5667, line: 26, size: 128, elements: !5688)
!5688 = !{!5689, !5691}
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5687, file: !5667, line: 27, baseType: !5690, size: 128)
!5690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 128, elements: !4535)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5687, file: !5667, line: 28, baseType: !5690, size: 128)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5684, file: !5667, line: 31, baseType: !5693, size: 64, offset: 128)
!5693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5694, size: 64)
!5694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5695)
!5695 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5667, line: 23, flags: DIFlagFwdDecl)
!5696 = !DIDerivedType(tag: DW_TAG_member, scope: !5684, file: !5667, line: 33, baseType: !5697, size: 64, offset: 192)
!5697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5684, file: !5667, line: 33, size: 64, elements: !5698)
!5698 = !{!5699, !5705, !5710}
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5697, file: !5667, line: 38, baseType: !5700, size: 64)
!5700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5697, file: !5667, line: 34, size: 64, elements: !5701)
!5701 = !{!5702, !5703, !5704}
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5700, file: !5667, line: 35, baseType: !837, size: 32)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5700, file: !5667, line: 36, baseType: !212, size: 8, offset: 32)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5700, file: !5667, line: 37, baseType: !212, size: 8, offset: 40)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5697, file: !5667, line: 42, baseType: !5706, size: 16)
!5706 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5697, file: !5667, line: 39, size: 16, elements: !5707)
!5707 = !{!5708, !5709}
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5706, file: !5667, line: 40, baseType: !212, size: 8)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5706, file: !5667, line: 41, baseType: !212, size: 8, offset: 8)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5697, file: !5667, line: 46, baseType: !5711, size: 16)
!5711 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5697, file: !5667, line: 43, size: 16, elements: !5712)
!5712 = !{!5713, !5714}
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5711, file: !5667, line: 44, baseType: !212, size: 8)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5711, file: !5667, line: 45, baseType: !212, size: 8, offset: 8)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5656, file: !68, line: 81, baseType: !5716, size: 64, offset: 448)
!5716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5717, size: 64)
!5717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !5718)
!5718 = !{!5719, !5720, !5721, !5722, !5723, !5724}
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5717, file: !68, line: 86, baseType: !5679, size: 64)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5717, file: !68, line: 87, baseType: !168, size: 64, offset: 64)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5717, file: !68, line: 88, baseType: !168, size: 64, offset: 128)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5717, file: !68, line: 89, baseType: !168, size: 64, offset: 192)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5717, file: !68, line: 90, baseType: !302, size: 8, offset: 256)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5717, file: !68, line: 92, baseType: !5716, size: 64, offset: 320)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5656, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !388, file: !389, line: 1463, baseType: !5727, offset: 21184)
!5727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !389, line: 739, elements: !717)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !388, file: !389, line: 1470, baseType: !352, size: 128, align: 64, offset: 21184)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !388, file: !389, line: 1471, baseType: !329, size: 32, offset: 21312)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !388, file: !389, line: 1472, baseType: !109, size: 32, offset: 21344)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !388, file: !389, line: 1474, baseType: !387, size: 64, offset: 21376)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !388, file: !389, line: 1475, baseType: !2495, size: 320, offset: 21440)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !388, file: !389, line: 1478, baseType: !5734, size: 64, offset: 21760)
!5734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5735, size: 64)
!5735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !5736, line: 49, size: 512, elements: !5737)
!5736 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!5737 = !{!5738, !5739, !5740, !5741, !5742, !5743, !5744, !5745, !5747}
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5735, file: !5736, line: 50, baseType: !5734, size: 64)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5735, file: !5736, line: 51, baseType: !150, size: 64, offset: 64)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5735, file: !5736, line: 52, baseType: !168, size: 64, offset: 128)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5735, file: !5736, line: 53, baseType: !168, size: 64, offset: 192)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5735, file: !5736, line: 54, baseType: !1954, size: 64, offset: 256)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !5735, file: !5736, line: 56, baseType: !7, size: 32, offset: 320)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !5735, file: !5736, line: 58, baseType: !7, size: 32, offset: 352)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !5735, file: !5736, line: 59, baseType: !5746, size: 64, offset: 384)
!5746 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !154, line: 159, baseType: !451)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !5735, file: !5736, line: 60, baseType: !2083, size: 64, offset: 448)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !388, file: !389, line: 1482, baseType: !329, size: 32, offset: 21824)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !388, file: !389, line: 1489, baseType: !150, size: 64, offset: 21888)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !388, file: !389, line: 1504, baseType: !150, size: 64, offset: 21952)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !388, file: !389, line: 1505, baseType: !452, size: 64, offset: 22016)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !388, file: !389, line: 1506, baseType: !451, size: 64, offset: 22080)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !388, file: !389, line: 1507, baseType: !452, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !388, file: !389, line: 1508, baseType: !452, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !388, file: !389, line: 1509, baseType: !452, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !388, file: !389, line: 1510, baseType: !352, size: 128, align: 64, offset: 22208)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !388, file: !389, line: 1511, baseType: !109, size: 32, offset: 22336)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !388, file: !389, line: 1515, baseType: !5759, size: 64, offset: 22400)
!5759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !413, line: 56, size: 64, elements: !5760)
!5760 = !{!5761}
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5759, file: !413, line: 57, baseType: !416, size: 64)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !388, file: !389, line: 1518, baseType: !5759, size: 64, offset: 22464)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !388, file: !389, line: 1528, baseType: !352, size: 128, align: 64, offset: 22528)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !388, file: !389, line: 1552, baseType: !5765, size: 35328, offset: 23040)
!5765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5766, line: 430, size: 35328, elements: !5767)
!5766 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5767 = !{!5768, !5786, !5787, !5788, !5789, !5790, !5791, !5792, !5793, !5795, !5796, !5797, !5798, !5799, !5800, !5803, !5804, !5805, !5806}
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5765, file: !5766, line: 432, baseType: !5769, size: 192)
!5769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5770, size: 192, elements: !780)
!5770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5771, line: 16, size: 64, elements: !5772)
!5771 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5772 = !{!5773, !5774, !5775, !5776, !5777, !5778, !5779, !5780, !5781, !5782, !5783, !5784, !5785}
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5770, file: !5771, line: 17, baseType: !222, size: 16)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5770, file: !5771, line: 18, baseType: !222, size: 16, offset: 16)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5770, file: !5771, line: 19, baseType: !222, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5770, file: !5771, line: 19, baseType: !222, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5770, file: !5771, line: 19, baseType: !222, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5770, file: !5771, line: 19, baseType: !222, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5770, file: !5771, line: 19, baseType: !222, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5770, file: !5771, line: 20, baseType: !222, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5770, file: !5771, line: 20, baseType: !222, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5770, file: !5771, line: 20, baseType: !222, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5770, file: !5771, line: 20, baseType: !222, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5770, file: !5771, line: 20, baseType: !222, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5770, file: !5771, line: 20, baseType: !222, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5765, file: !5766, line: 436, baseType: !168, size: 64, offset: 192)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5765, file: !5766, line: 440, baseType: !155, size: 16, offset: 256)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5765, file: !5766, line: 441, baseType: !155, size: 16, offset: 272)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5765, file: !5766, line: 442, baseType: !155, size: 16, offset: 288)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5765, file: !5766, line: 443, baseType: !155, size: 16, offset: 304)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5765, file: !5766, line: 447, baseType: !168, size: 64, offset: 320)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5765, file: !5766, line: 448, baseType: !168, size: 64, offset: 384)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5765, file: !5766, line: 459, baseType: !5794, size: 256, offset: 448)
!5794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2775, size: 256, elements: !347)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5765, file: !5766, line: 461, baseType: !168, size: 64, offset: 704)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5765, file: !5766, line: 463, baseType: !168, size: 64, offset: 768)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5765, file: !5766, line: 465, baseType: !168, size: 64, offset: 832)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5765, file: !5766, line: 466, baseType: !168, size: 64, offset: 896)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5765, file: !5766, line: 467, baseType: !168, size: 64, offset: 960)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5765, file: !5766, line: 473, baseType: !5801, size: 64, offset: 1024)
!5801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5802, size: 64)
!5802 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5766, line: 10, flags: DIFlagFwdDecl)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5765, file: !5766, line: 480, baseType: !168, size: 64, offset: 1088)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5765, file: !5766, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5765, file: !5766, line: 491, baseType: !398, size: 32, offset: 1184)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5765, file: !5766, line: 501, baseType: !5807, size: 33792, offset: 1536)
!5807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5808, line: 448, size: 33792, elements: !5809)
!5808 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5809 = !{!5810, !5811, !5812, !5920, !5921, !5927, !5928}
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5807, file: !5808, line: 461, baseType: !7, size: 32)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5807, file: !5808, line: 468, baseType: !168, size: 64, offset: 64)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5807, file: !5808, line: 476, baseType: !5813, size: 64, offset: 128)
!5813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5814, size: 64)
!5814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5808, line: 356, size: 33280, align: 512, elements: !5815)
!5815 = !{!5816, !5817, !5818, !5819, !5820, !5821, !5822, !5823, !5824, !5825}
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5814, file: !5808, line: 358, baseType: !7, size: 32)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5814, file: !5808, line: 361, baseType: !7, size: 32, offset: 32)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5814, file: !5808, line: 364, baseType: !451, size: 64, offset: 64)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5814, file: !5808, line: 367, baseType: !451, size: 64, offset: 128)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5814, file: !5808, line: 370, baseType: !451, size: 64, offset: 192)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5814, file: !5808, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5814, file: !5808, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5814, file: !5808, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5814, file: !5808, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5814, file: !5808, line: 397, baseType: !5826, size: 32768, offset: 512)
!5826 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5808, line: 348, size: 32768, elements: !5827)
!5827 = !{!5828, !5843, !5880, !5905, !5918}
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5826, file: !5808, line: 349, baseType: !5829, size: 896)
!5829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5808, line: 12, size: 896, elements: !5830)
!5830 = !{!5831, !5832, !5833, !5834, !5835, !5836, !5837, !5838, !5842}
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5829, file: !5808, line: 13, baseType: !398, size: 32)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5829, file: !5808, line: 14, baseType: !398, size: 32, offset: 32)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5829, file: !5808, line: 15, baseType: !398, size: 32, offset: 64)
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5829, file: !5808, line: 16, baseType: !398, size: 32, offset: 96)
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5829, file: !5808, line: 17, baseType: !398, size: 32, offset: 128)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5829, file: !5808, line: 18, baseType: !398, size: 32, offset: 160)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5829, file: !5808, line: 19, baseType: !398, size: 32, offset: 192)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5829, file: !5808, line: 22, baseType: !5839, size: 640, offset: 224)
!5839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 640, elements: !5840)
!5840 = !{!5841}
!5841 = !DISubrange(count: 20)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5829, file: !5808, line: 25, baseType: !398, size: 32, offset: 864)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5826, file: !5808, line: 350, baseType: !5844, size: 4096, align: 128)
!5844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5808, line: 34, size: 4096, align: 128, elements: !5845)
!5845 = !{!5846, !5847, !5848, !5849, !5850, !5865, !5866, !5867, !5869, !5871, !5875}
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5844, file: !5808, line: 35, baseType: !222, size: 16)
!5847 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5844, file: !5808, line: 36, baseType: !222, size: 16, offset: 16)
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5844, file: !5808, line: 37, baseType: !222, size: 16, offset: 32)
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5844, file: !5808, line: 38, baseType: !222, size: 16, offset: 48)
!5850 = !DIDerivedType(tag: DW_TAG_member, scope: !5844, file: !5808, line: 39, baseType: !5851, size: 128, offset: 64)
!5851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5844, file: !5808, line: 39, size: 128, elements: !5852)
!5852 = !{!5853, !5858}
!5853 = !DIDerivedType(tag: DW_TAG_member, scope: !5851, file: !5808, line: 40, baseType: !5854, size: 128)
!5854 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5851, file: !5808, line: 40, size: 128, elements: !5855)
!5855 = !{!5856, !5857}
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5854, file: !5808, line: 41, baseType: !451, size: 64)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5854, file: !5808, line: 42, baseType: !451, size: 64, offset: 64)
!5858 = !DIDerivedType(tag: DW_TAG_member, scope: !5851, file: !5808, line: 44, baseType: !5859, size: 128)
!5859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5851, file: !5808, line: 44, size: 128, elements: !5860)
!5860 = !{!5861, !5862, !5863, !5864}
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5859, file: !5808, line: 45, baseType: !398, size: 32)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5859, file: !5808, line: 46, baseType: !398, size: 32, offset: 32)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5859, file: !5808, line: 47, baseType: !398, size: 32, offset: 64)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5859, file: !5808, line: 48, baseType: !398, size: 32, offset: 96)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5844, file: !5808, line: 51, baseType: !398, size: 32, offset: 192)
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5844, file: !5808, line: 52, baseType: !398, size: 32, offset: 224)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5844, file: !5808, line: 55, baseType: !5868, size: 1024, offset: 256)
!5868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 1024, elements: !4526)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5844, file: !5808, line: 58, baseType: !5870, size: 2048, offset: 1280)
!5870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 2048, elements: !1496)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5844, file: !5808, line: 60, baseType: !5872, size: 384, offset: 3328)
!5872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 384, elements: !5873)
!5873 = !{!5874}
!5874 = !DISubrange(count: 12)
!5875 = !DIDerivedType(tag: DW_TAG_member, scope: !5844, file: !5808, line: 62, baseType: !5876, size: 384, offset: 3712)
!5876 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5844, file: !5808, line: 62, size: 384, elements: !5877)
!5877 = !{!5878, !5879}
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5876, file: !5808, line: 63, baseType: !5872, size: 384)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5876, file: !5808, line: 64, baseType: !5872, size: 384)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5826, file: !5808, line: 351, baseType: !5881, size: 1088)
!5881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5808, line: 79, size: 1088, elements: !5882)
!5882 = !{!5883, !5884, !5885, !5886, !5887, !5888, !5889, !5890, !5891, !5892, !5893, !5894, !5895, !5896, !5897, !5904}
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5881, file: !5808, line: 80, baseType: !398, size: 32)
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5881, file: !5808, line: 81, baseType: !398, size: 32, offset: 32)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5881, file: !5808, line: 82, baseType: !398, size: 32, offset: 64)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5881, file: !5808, line: 83, baseType: !398, size: 32, offset: 96)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5881, file: !5808, line: 84, baseType: !398, size: 32, offset: 128)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5881, file: !5808, line: 85, baseType: !398, size: 32, offset: 160)
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5881, file: !5808, line: 86, baseType: !398, size: 32, offset: 192)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5881, file: !5808, line: 88, baseType: !5839, size: 640, offset: 224)
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5881, file: !5808, line: 89, baseType: !212, size: 8, offset: 864)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5881, file: !5808, line: 90, baseType: !212, size: 8, offset: 872)
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5881, file: !5808, line: 91, baseType: !212, size: 8, offset: 880)
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5881, file: !5808, line: 92, baseType: !212, size: 8, offset: 888)
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5881, file: !5808, line: 93, baseType: !212, size: 8, offset: 896)
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5881, file: !5808, line: 94, baseType: !212, size: 8, offset: 904)
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5881, file: !5808, line: 95, baseType: !5898, size: 64, offset: 960)
!5898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5899, size: 64)
!5899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5900, line: 11, size: 128, elements: !5901)
!5900 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5901 = !{!5902, !5903}
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5899, file: !5900, line: 12, baseType: !1133, size: 64)
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5899, file: !5900, line: 13, baseType: !3791, size: 64, offset: 64)
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5881, file: !5808, line: 96, baseType: !398, size: 32, offset: 1024)
!5905 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5826, file: !5808, line: 352, baseType: !5906, size: 4608, align: 512)
!5906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5808, line: 333, size: 4608, align: 512, elements: !5907)
!5907 = !{!5908, !5909, !5916}
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5906, file: !5808, line: 334, baseType: !5844, size: 4096, align: 128)
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5906, file: !5808, line: 335, baseType: !5910, size: 512, offset: 4096)
!5910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5808, line: 312, size: 512, elements: !5911)
!5911 = !{!5912, !5913, !5914}
!5912 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5910, file: !5808, line: 313, baseType: !451, size: 64)
!5913 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5910, file: !5808, line: 314, baseType: !451, size: 64, offset: 64)
!5914 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5910, file: !5808, line: 315, baseType: !5915, size: 384, offset: 128)
!5915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 384, elements: !891)
!5916 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5906, file: !5808, line: 336, baseType: !5917, offset: 4608)
!5917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, elements: !1145)
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5826, file: !5808, line: 353, baseType: !5919, size: 32768)
!5919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 32768, elements: !2719)
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5807, file: !5808, line: 484, baseType: !5813, size: 64, offset: 192)
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5807, file: !5808, line: 491, baseType: !5922, size: 128, offset: 256)
!5922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5808, line: 404, size: 128, elements: !5923)
!5923 = !{!5924, !5925, !5926}
!5924 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5922, file: !5808, line: 424, baseType: !451, size: 64)
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5922, file: !5808, line: 432, baseType: !7, size: 32, offset: 64)
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5922, file: !5808, line: 440, baseType: !7, size: 32, offset: 96)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5807, file: !5808, line: 498, baseType: !5922, size: 128, offset: 384)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5807, file: !5808, line: 508, baseType: !5814, size: 33280, align: 512, offset: 512)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !367, file: !368, line: 31, baseType: !3368, size: 64, offset: 448)
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !367, file: !368, line: 32, baseType: !7, size: 32, offset: 512)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !367, file: !368, line: 33, baseType: !366, size: 64, offset: 576)
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !367, file: !368, line: 35, baseType: !5933, size: 64, offset: 640)
!5933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5934, size: 64)
!5934 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !368, line: 17, flags: DIFlagFwdDecl)
!5935 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !367, file: !368, line: 37, baseType: !986, size: 64, offset: 704)
!5936 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !367, file: !368, line: 38, baseType: !1118, size: 64, offset: 768)
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !367, file: !368, line: 39, baseType: !109, size: 32, offset: 832)
!5938 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !367, file: !368, line: 40, baseType: !1019, size: 192, offset: 896)
!5939 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !367, file: !368, line: 42, baseType: !109, size: 32, offset: 1088)
!5940 = !DIDerivedType(tag: DW_TAG_member, name: "client_id", scope: !308, file: !309, line: 284, baseType: !451, size: 64, offset: 320)
!5941 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !308, file: !309, line: 287, baseType: !5942, size: 32, offset: 384)
!5942 = !DIDerivedType(tag: DW_TAG_typedef, name: "drm_magic_t", file: !5943, line: 85, baseType: !7)
!5943 = !DIFile(filename: "./include/uapi/drm/drm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9daee414dd46c3bd0bb57211914f5e3a")
!5944 = !DIDerivedType(tag: DW_TAG_member, name: "lhead", scope: !308, file: !309, line: 295, baseType: !226, size: 128, offset: 448)
!5945 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !308, file: !309, line: 298, baseType: !5946, size: 64, offset: 576)
!5946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5947, size: 64)
!5947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_minor", file: !309, line: 77, size: 640, elements: !5948)
!5948 = !{!5949, !5950, !5951, !5952, !5956, !5957, !5958}
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5947, file: !309, line: 79, baseType: !109, size: 32)
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5947, file: !309, line: 80, baseType: !109, size: 32, offset: 32)
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "kdev", scope: !5947, file: !309, line: 81, baseType: !2798, size: 64, offset: 64)
!5952 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5947, file: !309, line: 82, baseType: !5953, size: 64, offset: 128)
!5953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5954, size: 64)
!5954 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !5955, line: 61, flags: DIFlagFwdDecl)
!5955 = !DIFile(filename: "./include/drm/drm_prime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "95f128be875629bb4216af76254b38de")
!5956 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_root", scope: !5947, file: !309, line: 84, baseType: !1171, size: 64, offset: 192)
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !5947, file: !309, line: 86, baseType: !226, size: 128, offset: 256)
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_lock", scope: !5947, file: !309, line: 87, baseType: !744, size: 256, offset: 384)
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !308, file: !309, line: 306, baseType: !371, size: 192, offset: 640)
!5960 = !DIDerivedType(tag: DW_TAG_member, name: "table_lock", scope: !308, file: !309, line: 309, baseType: !188, size: 32, offset: 832)
!5961 = !DIDerivedType(tag: DW_TAG_member, name: "syncobj_idr", scope: !308, file: !309, line: 312, baseType: !371, size: 192, offset: 896)
!5962 = !DIDerivedType(tag: DW_TAG_member, name: "syncobj_table_lock", scope: !308, file: !309, line: 314, baseType: !188, size: 32, offset: 1088)
!5963 = !DIDerivedType(tag: DW_TAG_member, name: "filp", scope: !308, file: !309, line: 317, baseType: !724, size: 64, offset: 1152)
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !308, file: !309, line: 325, baseType: !150, size: 64, offset: 1216)
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "fbs", scope: !308, file: !309, line: 336, baseType: !226, size: 128, offset: 1280)
!5966 = !DIDerivedType(tag: DW_TAG_member, name: "fbs_lock", scope: !308, file: !309, line: 339, baseType: !744, size: 256, offset: 1408)
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "blobs", scope: !308, file: !309, line: 349, baseType: !226, size: 128, offset: 1664)
!5968 = !DIDerivedType(tag: DW_TAG_member, name: "event_wait", scope: !308, file: !309, line: 352, baseType: !183, size: 192, offset: 1792)
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "pending_event_list", scope: !308, file: !309, line: 363, baseType: !226, size: 128, offset: 1984)
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !308, file: !309, line: 373, baseType: !226, size: 128, offset: 2112)
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "event_space", scope: !308, file: !309, line: 382, baseType: !109, size: 32, offset: 2240)
!5972 = !DIDerivedType(tag: DW_TAG_member, name: "event_read_lock", scope: !308, file: !309, line: 385, baseType: !744, size: 256, offset: 2304)
!5973 = !DIDerivedType(tag: DW_TAG_member, name: "prime", scope: !308, file: !309, line: 392, baseType: !5974, size: 384, offset: 2560)
!5974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_prime_file_private", file: !5955, line: 45, size: 384, elements: !5975)
!5975 = !{!5976, !5977, !5978}
!5976 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5974, file: !5955, line: 47, baseType: !744, size: 256)
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "dmabufs", scope: !5974, file: !5955, line: 48, baseType: !582, size: 64, offset: 256)
!5978 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !5974, file: !5955, line: 49, baseType: !582, size: 64, offset: 320)
!5979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5980, size: 64)
!5980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_raw_drm_vblank_event", file: !5981, line: 15, size: 256, elements: !5982)
!5981 = !DIFile(filename: "drivers/gpu/drm/drm_trace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "16fd5de46352749d0fdc8b0ea8f0fb24")
!5982 = !{!5983, !5984, !5985, !5986, !5987, !5988}
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !5980, file: !5981, line: 15, baseType: !2737, size: 64)
!5984 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5980, file: !5981, line: 15, baseType: !109, size: 32, offset: 64)
!5985 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !5980, file: !5981, line: 15, baseType: !7, size: 32, offset: 96)
!5986 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5980, file: !5981, line: 15, baseType: !298, size: 64, offset: 128)
!5987 = !DIDerivedType(tag: DW_TAG_member, name: "high_prec", scope: !5980, file: !5981, line: 15, baseType: !302, size: 8, offset: 192)
!5988 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !5980, file: !5981, line: 15, baseType: !5615, offset: 200)
!5989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5990, size: 64)
!5990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_raw_drm_vblank_event_queued", file: !5981, line: 35, size: 192, elements: !5991)
!5991 = !{!5992, !5993, !5994, !5995, !5996}
!5992 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !5990, file: !5981, line: 35, baseType: !2737, size: 64)
!5993 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5990, file: !5981, line: 35, baseType: !307, size: 64, offset: 64)
!5994 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5990, file: !5981, line: 35, baseType: !109, size: 32, offset: 128)
!5995 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !5990, file: !5981, line: 35, baseType: !7, size: 32, offset: 160)
!5996 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !5990, file: !5981, line: 35, baseType: !5615, offset: 192)
!5997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5998, size: 64)
!5998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_raw_drm_vblank_event_delivered", file: !5981, line: 52, size: 192, elements: !5999)
!5999 = !{!6000, !6001, !6002, !6003, !6004}
!6000 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !5998, file: !5981, line: 52, baseType: !2737, size: 64)
!6001 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5998, file: !5981, line: 52, baseType: !307, size: 64, offset: 64)
!6002 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5998, file: !5981, line: 52, baseType: !109, size: 32, offset: 128)
!6003 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !5998, file: !5981, line: 52, baseType: !7, size: 32, offset: 160)
!6004 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !5998, file: !5981, line: 52, baseType: !5615, offset: 192)
!6005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6006, size: 64)
!6006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6007)
!6007 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2769)
!6008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6009, size: 64)
!6009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6010)
!6010 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !341)
!6011 = !{!6012, !6014, !6016, !6018, !6020, !6022, !6024, !6026, !6028, !6030, !6032, !6034, !6036, !6038, !6040, !0, !6042, !6047, !6052, !6056, !6059, !6062, !6067, !6069, !6071, !6073, !6075, !6078, !6081, !6083, !6088, !6090, !6092, !6097, !6102, !6104, !6107, !6109, !6114, !6119, !6121, !6123}
!6012 = !DIGlobalVariableExpression(var: !6013, expr: !DIExpression())
!6013 = distinct !DIGlobalVariable(name: "__tracepoint_drm_vblank_event", scope: !2, file: !5981, line: 15, type: !2625, isLocal: false, isDefinition: true)
!6014 = !DIGlobalVariableExpression(var: !6015, expr: !DIExpression())
!6015 = distinct !DIGlobalVariable(name: "__SCK__tp_func_drm_vblank_event", scope: !2, file: !5981, line: 15, type: !2642, isLocal: false, isDefinition: true)
!6016 = !DIGlobalVariableExpression(var: !6017, expr: !DIExpression())
!6017 = distinct !DIGlobalVariable(name: "__tracepoint_drm_vblank_event_queued", scope: !2, file: !5981, line: 35, type: !2625, isLocal: false, isDefinition: true)
!6018 = !DIGlobalVariableExpression(var: !6019, expr: !DIExpression())
!6019 = distinct !DIGlobalVariable(name: "__SCK__tp_func_drm_vblank_event_queued", scope: !2, file: !5981, line: 35, type: !2642, isLocal: false, isDefinition: true)
!6020 = !DIGlobalVariableExpression(var: !6021, expr: !DIExpression())
!6021 = distinct !DIGlobalVariable(name: "__tracepoint_drm_vblank_event_delivered", scope: !2, file: !5981, line: 52, type: !2625, isLocal: false, isDefinition: true)
!6022 = !DIGlobalVariableExpression(var: !6023, expr: !DIExpression())
!6023 = distinct !DIGlobalVariable(name: "__SCK__tp_func_drm_vblank_event_delivered", scope: !2, file: !5981, line: 52, type: !2642, isLocal: false, isDefinition: true)
!6024 = !DIGlobalVariableExpression(var: !6025, expr: !DIExpression())
!6025 = distinct !DIGlobalVariable(name: "event_class_drm_vblank_event", scope: !2, file: !5981, line: 15, type: !2581, isLocal: true, isDefinition: true)
!6026 = !DIGlobalVariableExpression(var: !6027, expr: !DIExpression())
!6027 = distinct !DIGlobalVariable(name: "event_drm_vblank_event", scope: !2, file: !5981, line: 15, type: !2576, isLocal: true, isDefinition: true, align: 32)
!6028 = !DIGlobalVariableExpression(var: !6029, expr: !DIExpression())
!6029 = distinct !DIGlobalVariable(name: "__event_drm_vblank_event", scope: !2, file: !5981, line: 15, type: !2575, isLocal: true, isDefinition: true)
!6030 = !DIGlobalVariableExpression(var: !6031, expr: !DIExpression())
!6031 = distinct !DIGlobalVariable(name: "event_class_drm_vblank_event_queued", scope: !2, file: !5981, line: 35, type: !2581, isLocal: true, isDefinition: true)
!6032 = !DIGlobalVariableExpression(var: !6033, expr: !DIExpression())
!6033 = distinct !DIGlobalVariable(name: "event_drm_vblank_event_queued", scope: !2, file: !5981, line: 35, type: !2576, isLocal: true, isDefinition: true, align: 32)
!6034 = !DIGlobalVariableExpression(var: !6035, expr: !DIExpression())
!6035 = distinct !DIGlobalVariable(name: "__event_drm_vblank_event_queued", scope: !2, file: !5981, line: 35, type: !2575, isLocal: true, isDefinition: true)
!6036 = !DIGlobalVariableExpression(var: !6037, expr: !DIExpression())
!6037 = distinct !DIGlobalVariable(name: "event_class_drm_vblank_event_delivered", scope: !2, file: !5981, line: 52, type: !2581, isLocal: true, isDefinition: true)
!6038 = !DIGlobalVariableExpression(var: !6039, expr: !DIExpression())
!6039 = distinct !DIGlobalVariable(name: "event_drm_vblank_event_delivered", scope: !2, file: !5981, line: 52, type: !2576, isLocal: true, isDefinition: true, align: 32)
!6040 = !DIGlobalVariableExpression(var: !6041, expr: !DIExpression())
!6041 = distinct !DIGlobalVariable(name: "__event_drm_vblank_event_delivered", scope: !2, file: !5981, line: 52, type: !2575, isLocal: true, isDefinition: true)
!6042 = !DIGlobalVariableExpression(var: !6043, expr: !DIExpression())
!6043 = distinct !DIGlobalVariable(name: "__tpstrtab_drm_vblank_event_queued", scope: !2, file: !5981, line: 35, type: !6044, isLocal: true, isDefinition: true)
!6044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 192, elements: !6045)
!6045 = !{!6046}
!6046 = !DISubrange(count: 24)
!6047 = !DIGlobalVariableExpression(var: !6048, expr: !DIExpression())
!6048 = distinct !DIGlobalVariable(name: "__tpstrtab_drm_vblank_event_delivered", scope: !2, file: !5981, line: 52, type: !6049, isLocal: true, isDefinition: true)
!6049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 216, elements: !6050)
!6050 = !{!6051}
!6051 = !DISubrange(count: 27)
!6052 = !DIGlobalVariableExpression(var: !6053, expr: !DIExpression())
!6053 = distinct !DIGlobalVariable(name: "str__drm__trace_system_name", scope: !2, file: !6054, line: 11, type: !6055, isLocal: true, isDefinition: true)
!6054 = !DIFile(filename: "./include/trace/stages/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b6fe39f4189f752573bd7bb8760fdf7e")
!6055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 32, elements: !347)
!6056 = !DIGlobalVariableExpression(var: !6057, expr: !DIExpression())
!6057 = distinct !DIGlobalVariable(scope: null, file: !5981, line: 15, type: !6058, isLocal: true, isDefinition: true)
!6058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 32, elements: !347)
!6059 = !DIGlobalVariableExpression(var: !6060, expr: !DIExpression())
!6060 = distinct !DIGlobalVariable(scope: null, file: !5981, line: 15, type: !6061, isLocal: true, isDefinition: true)
!6061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 40, elements: !1004)
!6062 = !DIGlobalVariableExpression(var: !6063, expr: !DIExpression())
!6063 = distinct !DIGlobalVariable(scope: null, file: !5981, line: 15, type: !6064, isLocal: true, isDefinition: true)
!6064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 104, elements: !6065)
!6065 = !{!6066}
!6066 = !DISubrange(count: 13)
!6067 = !DIGlobalVariableExpression(var: !6068, expr: !DIExpression())
!6068 = distinct !DIGlobalVariable(scope: null, file: !5981, line: 15, type: !6058, isLocal: true, isDefinition: true)
!6069 = !DIGlobalVariableExpression(var: !6070, expr: !DIExpression())
!6070 = distinct !DIGlobalVariable(scope: null, file: !5981, line: 15, type: !5545, isLocal: true, isDefinition: true)
!6071 = !DIGlobalVariableExpression(var: !6072, expr: !DIExpression())
!6072 = distinct !DIGlobalVariable(scope: null, file: !5981, line: 15, type: !6061, isLocal: true, isDefinition: true)
!6073 = !DIGlobalVariableExpression(var: !6074, expr: !DIExpression())
!6074 = distinct !DIGlobalVariable(scope: null, file: !5981, line: 15, type: !6061, isLocal: true, isDefinition: true)
!6075 = !DIGlobalVariableExpression(var: !6076, expr: !DIExpression())
!6076 = distinct !DIGlobalVariable(scope: null, file: !5981, line: 15, type: !6077, isLocal: true, isDefinition: true)
!6077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 80, elements: !1127)
!6078 = !DIGlobalVariableExpression(var: !6079, expr: !DIExpression())
!6079 = distinct !DIGlobalVariable(name: "trace_event_fields_drm_vblank_event", scope: !2, file: !5981, line: 15, type: !6080, isLocal: true, isDefinition: true)
!6080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2592, size: 1600, elements: !1004)
!6081 = !DIGlobalVariableExpression(var: !6082, expr: !DIExpression())
!6082 = distinct !DIGlobalVariable(name: "trace_event_type_funcs_drm_vblank_event", scope: !2, file: !5981, line: 15, type: !2680, isLocal: true, isDefinition: true)
!6083 = !DIGlobalVariableExpression(var: !6084, expr: !DIExpression())
!6084 = distinct !DIGlobalVariable(scope: null, file: !5981, line: 15, type: !6085, isLocal: true, isDefinition: true)
!6085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 336, elements: !6086)
!6086 = !{!6087}
!6087 = !DISubrange(count: 42)
!6088 = !DIGlobalVariableExpression(var: !6089, expr: !DIExpression())
!6089 = distinct !DIGlobalVariable(scope: null, file: !5981, line: 15, type: !6061, isLocal: true, isDefinition: true)
!6090 = !DIGlobalVariableExpression(var: !6091, expr: !DIExpression())
!6091 = distinct !DIGlobalVariable(scope: null, file: !5981, line: 15, type: !890, isLocal: true, isDefinition: true)
!6092 = !DIGlobalVariableExpression(var: !6093, expr: !DIExpression())
!6093 = distinct !DIGlobalVariable(name: "print_fmt_drm_vblank_event", scope: !2, file: !5981, line: 15, type: !6094, isLocal: true, isDefinition: true)
!6094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 880, elements: !6095)
!6095 = !{!6096}
!6096 = !DISubrange(count: 110)
!6097 = !DIGlobalVariableExpression(var: !6098, expr: !DIExpression())
!6098 = distinct !DIGlobalVariable(scope: null, file: !5981, line: 35, type: !6099, isLocal: true, isDefinition: true)
!6099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 144, elements: !6100)
!6100 = !{!6101}
!6101 = !DISubrange(count: 18)
!6102 = !DIGlobalVariableExpression(var: !6103, expr: !DIExpression())
!6103 = distinct !DIGlobalVariable(scope: null, file: !5981, line: 35, type: !6061, isLocal: true, isDefinition: true)
!6104 = !DIGlobalVariableExpression(var: !6105, expr: !DIExpression())
!6105 = distinct !DIGlobalVariable(name: "trace_event_fields_drm_vblank_event_queued", scope: !2, file: !5981, line: 35, type: !6106, isLocal: true, isDefinition: true)
!6106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2592, size: 1280, elements: !347)
!6107 = !DIGlobalVariableExpression(var: !6108, expr: !DIExpression())
!6108 = distinct !DIGlobalVariable(name: "trace_event_type_funcs_drm_vblank_event_queued", scope: !2, file: !5981, line: 35, type: !2680, isLocal: true, isDefinition: true)
!6109 = !DIGlobalVariableExpression(var: !6110, expr: !DIExpression())
!6110 = distinct !DIGlobalVariable(scope: null, file: !5981, line: 35, type: !6111, isLocal: true, isDefinition: true)
!6111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 208, elements: !6112)
!6112 = !{!6113}
!6113 = !DISubrange(count: 26)
!6114 = !DIGlobalVariableExpression(var: !6115, expr: !DIExpression())
!6115 = distinct !DIGlobalVariable(name: "print_fmt_drm_vblank_event_queued", scope: !2, file: !5981, line: 35, type: !6116, isLocal: true, isDefinition: true)
!6116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 472, elements: !6117)
!6117 = !{!6118}
!6118 = !DISubrange(count: 59)
!6119 = !DIGlobalVariableExpression(var: !6120, expr: !DIExpression())
!6120 = distinct !DIGlobalVariable(name: "trace_event_fields_drm_vblank_event_delivered", scope: !2, file: !5981, line: 52, type: !6106, isLocal: true, isDefinition: true)
!6121 = !DIGlobalVariableExpression(var: !6122, expr: !DIExpression())
!6122 = distinct !DIGlobalVariable(name: "trace_event_type_funcs_drm_vblank_event_delivered", scope: !2, file: !5981, line: 52, type: !2680, isLocal: true, isDefinition: true)
!6123 = !DIGlobalVariableExpression(var: !6124, expr: !DIExpression())
!6124 = distinct !DIGlobalVariable(name: "print_fmt_drm_vblank_event_delivered", scope: !2, file: !5981, line: 52, type: !6116, isLocal: true, isDefinition: true)
!6125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 136, elements: !6126)
!6126 = !{!6127}
!6127 = !DISubrange(count: 17)
!6128 = !{i32 7, !"Dwarf Version", i32 5}
!6129 = !{i32 2, !"Debug Info Version", i32 3}
!6130 = !{i32 1, !"wchar_size", i32 2}
!6131 = !{i32 8, !"cf-protection-branch", i32 1}
!6132 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6133 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6134 = !{i32 1, !"Code Model", i32 2}
!6135 = !{i32 1, !"override-stack-alignment", i32 8}
!6136 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6137 = distinct !DISubprogram(name: "__traceiter_drm_vblank_event", scope: !5981, file: !5981, line: 15, type: !6138, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6140)
!6138 = !DISubroutineType(types: !6139)
!6139 = !{!109, !150, !109, !7, !298, !302}
!6140 = !{!6141, !6142, !6143, !6144, !6145, !6146, !6147, !6148}
!6141 = !DILocalVariable(name: "__data", arg: 1, scope: !6137, file: !5981, line: 15, type: !150)
!6142 = !DILocalVariable(name: "crtc", arg: 2, scope: !6137, file: !5981, line: 15, type: !109)
!6143 = !DILocalVariable(name: "seq", arg: 3, scope: !6137, file: !5981, line: 15, type: !7)
!6144 = !DILocalVariable(name: "time", arg: 4, scope: !6137, file: !5981, line: 15, type: !298)
!6145 = !DILocalVariable(name: "high_prec", arg: 5, scope: !6137, file: !5981, line: 15, type: !302)
!6146 = !DILocalVariable(name: "it_func_ptr", scope: !6137, file: !5981, line: 15, type: !285)
!6147 = !DILocalVariable(name: "it_func", scope: !6137, file: !5981, line: 15, type: !150)
!6148 = !DILocalVariable(name: "__UNIQUE_ID_rcu311", scope: !6149, file: !5981, line: 15, type: !285)
!6149 = distinct !DILexicalBlock(scope: !6137, file: !5981, line: 15, column: 1)
!6150 = !DILocation(line: 15, column: 1, scope: !6137)
!6151 = !DILocation(line: 15, column: 1, scope: !6149)
!6152 = !DILocation(line: 15, column: 1, scope: !6153)
!6153 = distinct !DILexicalBlock(scope: !6149, file: !5981, line: 15, column: 1)
!6154 = !DILocation(line: 15, column: 1, scope: !6155)
!6155 = distinct !DILexicalBlock(scope: !6153, file: !5981, line: 15, column: 1)
!6156 = !DILocation(line: 15, column: 1, scope: !6157)
!6157 = distinct !DILexicalBlock(scope: !6137, file: !5981, line: 15, column: 1)
!6158 = !DILocation(line: 15, column: 1, scope: !6159)
!6159 = distinct !DILexicalBlock(scope: !6157, file: !5981, line: 15, column: 1)
!6160 = !DILocation(line: 15, column: 1, scope: !6161)
!6161 = distinct !DILexicalBlock(scope: !6162, file: !5981, line: 15, column: 1)
!6162 = distinct !DILexicalBlock(scope: !6159, file: !5981, line: 15, column: 1)
!6163 = !DILocation(line: 15, column: 1, scope: !6164)
!6164 = distinct !DILexicalBlock(scope: !6161, file: !5981, line: 15, column: 1)
!6165 = !DILocation(line: 15, column: 1, scope: !6162)
!6166 = !{i8 0, i8 2}
!6167 = distinct !{!6167, !6158, !6158, !6168, !6169}
!6168 = !{!"llvm.loop.mustprogress"}
!6169 = !{!"llvm.loop.unroll.disable"}
!6170 = distinct !DISubprogram(name: "__probestub_drm_vblank_event", scope: !5981, file: !5981, line: 15, type: !296, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6171)
!6171 = !{!6172, !6173, !6174, !6175, !6176}
!6172 = !DILocalVariable(name: "__data", arg: 1, scope: !6170, file: !5981, line: 15, type: !150)
!6173 = !DILocalVariable(name: "crtc", arg: 2, scope: !6170, file: !5981, line: 15, type: !109)
!6174 = !DILocalVariable(name: "seq", arg: 3, scope: !6170, file: !5981, line: 15, type: !7)
!6175 = !DILocalVariable(name: "time", arg: 4, scope: !6170, file: !5981, line: 15, type: !298)
!6176 = !DILocalVariable(name: "high_prec", arg: 5, scope: !6170, file: !5981, line: 15, type: !302)
!6177 = !DILocation(line: 15, column: 1, scope: !6170)
!6178 = distinct !DISubprogram(name: "__traceiter_drm_vblank_event_queued", scope: !5981, file: !5981, line: 35, type: !6179, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6181)
!6179 = !DISubroutineType(types: !6180)
!6180 = !{!109, !150, !307, !109, !7}
!6181 = !{!6182, !6183, !6184, !6185, !6186, !6187, !6188}
!6182 = !DILocalVariable(name: "__data", arg: 1, scope: !6178, file: !5981, line: 35, type: !150)
!6183 = !DILocalVariable(name: "file", arg: 2, scope: !6178, file: !5981, line: 35, type: !307)
!6184 = !DILocalVariable(name: "crtc", arg: 3, scope: !6178, file: !5981, line: 35, type: !109)
!6185 = !DILocalVariable(name: "seq", arg: 4, scope: !6178, file: !5981, line: 35, type: !7)
!6186 = !DILocalVariable(name: "it_func_ptr", scope: !6178, file: !5981, line: 35, type: !285)
!6187 = !DILocalVariable(name: "it_func", scope: !6178, file: !5981, line: 35, type: !150)
!6188 = !DILocalVariable(name: "__UNIQUE_ID_rcu314", scope: !6189, file: !5981, line: 35, type: !285)
!6189 = distinct !DILexicalBlock(scope: !6178, file: !5981, line: 35, column: 1)
!6190 = !DILocation(line: 35, column: 1, scope: !6178)
!6191 = !DILocation(line: 35, column: 1, scope: !6189)
!6192 = !DILocation(line: 35, column: 1, scope: !6193)
!6193 = distinct !DILexicalBlock(scope: !6189, file: !5981, line: 35, column: 1)
!6194 = !DILocation(line: 35, column: 1, scope: !6195)
!6195 = distinct !DILexicalBlock(scope: !6193, file: !5981, line: 35, column: 1)
!6196 = !DILocation(line: 35, column: 1, scope: !6197)
!6197 = distinct !DILexicalBlock(scope: !6178, file: !5981, line: 35, column: 1)
!6198 = !DILocation(line: 35, column: 1, scope: !6199)
!6199 = distinct !DILexicalBlock(scope: !6197, file: !5981, line: 35, column: 1)
!6200 = !DILocation(line: 35, column: 1, scope: !6201)
!6201 = distinct !DILexicalBlock(scope: !6202, file: !5981, line: 35, column: 1)
!6202 = distinct !DILexicalBlock(scope: !6199, file: !5981, line: 35, column: 1)
!6203 = !DILocation(line: 35, column: 1, scope: !6204)
!6204 = distinct !DILexicalBlock(scope: !6201, file: !5981, line: 35, column: 1)
!6205 = !DILocation(line: 35, column: 1, scope: !6202)
!6206 = distinct !{!6206, !6198, !6198, !6168, !6169}
!6207 = distinct !DISubprogram(name: "__probestub_drm_vblank_event_queued", scope: !5981, file: !5981, line: 35, type: !305, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6208)
!6208 = !{!6209, !6210, !6211, !6212}
!6209 = !DILocalVariable(name: "__data", arg: 1, scope: !6207, file: !5981, line: 35, type: !150)
!6210 = !DILocalVariable(name: "file", arg: 2, scope: !6207, file: !5981, line: 35, type: !307)
!6211 = !DILocalVariable(name: "crtc", arg: 3, scope: !6207, file: !5981, line: 35, type: !109)
!6212 = !DILocalVariable(name: "seq", arg: 4, scope: !6207, file: !5981, line: 35, type: !7)
!6213 = !DILocation(line: 35, column: 1, scope: !6207)
!6214 = distinct !DISubprogram(name: "__traceiter_drm_vblank_event_delivered", scope: !5981, file: !5981, line: 52, type: !6179, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6215)
!6215 = !{!6216, !6217, !6218, !6219, !6220, !6221, !6222}
!6216 = !DILocalVariable(name: "__data", arg: 1, scope: !6214, file: !5981, line: 52, type: !150)
!6217 = !DILocalVariable(name: "file", arg: 2, scope: !6214, file: !5981, line: 52, type: !307)
!6218 = !DILocalVariable(name: "crtc", arg: 3, scope: !6214, file: !5981, line: 52, type: !109)
!6219 = !DILocalVariable(name: "seq", arg: 4, scope: !6214, file: !5981, line: 52, type: !7)
!6220 = !DILocalVariable(name: "it_func_ptr", scope: !6214, file: !5981, line: 52, type: !285)
!6221 = !DILocalVariable(name: "it_func", scope: !6214, file: !5981, line: 52, type: !150)
!6222 = !DILocalVariable(name: "__UNIQUE_ID_rcu317", scope: !6223, file: !5981, line: 52, type: !285)
!6223 = distinct !DILexicalBlock(scope: !6214, file: !5981, line: 52, column: 1)
!6224 = !DILocation(line: 52, column: 1, scope: !6214)
!6225 = !DILocation(line: 52, column: 1, scope: !6223)
!6226 = !DILocation(line: 52, column: 1, scope: !6227)
!6227 = distinct !DILexicalBlock(scope: !6223, file: !5981, line: 52, column: 1)
!6228 = !DILocation(line: 52, column: 1, scope: !6229)
!6229 = distinct !DILexicalBlock(scope: !6227, file: !5981, line: 52, column: 1)
!6230 = !DILocation(line: 52, column: 1, scope: !6231)
!6231 = distinct !DILexicalBlock(scope: !6214, file: !5981, line: 52, column: 1)
!6232 = !DILocation(line: 52, column: 1, scope: !6233)
!6233 = distinct !DILexicalBlock(scope: !6231, file: !5981, line: 52, column: 1)
!6234 = !DILocation(line: 52, column: 1, scope: !6235)
!6235 = distinct !DILexicalBlock(scope: !6236, file: !5981, line: 52, column: 1)
!6236 = distinct !DILexicalBlock(scope: !6233, file: !5981, line: 52, column: 1)
!6237 = !DILocation(line: 52, column: 1, scope: !6238)
!6238 = distinct !DILexicalBlock(scope: !6235, file: !5981, line: 52, column: 1)
!6239 = !DILocation(line: 52, column: 1, scope: !6236)
!6240 = distinct !{!6240, !6232, !6232, !6168, !6169}
!6241 = distinct !DISubprogram(name: "__probestub_drm_vblank_event_delivered", scope: !5981, file: !5981, line: 52, type: !305, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6242)
!6242 = !{!6243, !6244, !6245, !6246}
!6243 = !DILocalVariable(name: "__data", arg: 1, scope: !6241, file: !5981, line: 52, type: !150)
!6244 = !DILocalVariable(name: "file", arg: 2, scope: !6241, file: !5981, line: 52, type: !307)
!6245 = !DILocalVariable(name: "crtc", arg: 3, scope: !6241, file: !5981, line: 52, type: !109)
!6246 = !DILocalVariable(name: "seq", arg: 4, scope: !6241, file: !5981, line: 52, type: !7)
!6247 = !DILocation(line: 52, column: 1, scope: !6241)
!6248 = distinct !DISubprogram(name: "trace_event_raw_event_drm_vblank_event", scope: !5981, file: !5981, line: 15, type: !296, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6249)
!6249 = !{!6250, !6251, !6252, !6253, !6254}
!6250 = !DILocalVariable(name: "__data", arg: 1, scope: !6248, file: !5981, line: 15, type: !150)
!6251 = !DILocalVariable(name: "crtc", arg: 2, scope: !6248, file: !5981, line: 15, type: !109)
!6252 = !DILocalVariable(name: "seq", arg: 3, scope: !6248, file: !5981, line: 15, type: !7)
!6253 = !DILocalVariable(name: "time", arg: 4, scope: !6248, file: !5981, line: 15, type: !298)
!6254 = !DILocalVariable(name: "high_prec", arg: 5, scope: !6248, file: !5981, line: 15, type: !302)
!6255 = !DILocation(line: 15, column: 1, scope: !6248)
!6256 = distinct !DISubprogram(name: "perf_trace_drm_vblank_event", scope: !5981, file: !5981, line: 15, type: !296, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6257)
!6257 = !{!6258, !6259, !6260, !6261, !6262, !6263, !6264, !6266, !6267, !6268, !6269, !6270, !6271, !6272, !6273, !6274, !6277}
!6258 = !DILocalVariable(name: "__data", arg: 1, scope: !6256, file: !5981, line: 15, type: !150)
!6259 = !DILocalVariable(name: "crtc", arg: 2, scope: !6256, file: !5981, line: 15, type: !109)
!6260 = !DILocalVariable(name: "seq", arg: 3, scope: !6256, file: !5981, line: 15, type: !7)
!6261 = !DILocalVariable(name: "time", arg: 4, scope: !6256, file: !5981, line: 15, type: !298)
!6262 = !DILocalVariable(name: "high_prec", arg: 5, scope: !6256, file: !5981, line: 15, type: !302)
!6263 = !DILocalVariable(name: "event_call", scope: !6256, file: !5981, line: 15, type: !2575)
!6264 = !DILocalVariable(name: "__data_offsets", scope: !6256, file: !5981, line: 15, type: !6265)
!6265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_data_offsets_drm_vblank_event", file: !5981, line: 15, elements: !717)
!6266 = !DILocalVariable(name: "entry", scope: !6256, file: !5981, line: 15, type: !5979)
!6267 = !DILocalVariable(name: "__regs", scope: !6256, file: !5981, line: 15, type: !3791)
!6268 = !DILocalVariable(name: "__count", scope: !6256, file: !5981, line: 15, type: !451)
!6269 = !DILocalVariable(name: "__task", scope: !6256, file: !5981, line: 15, type: !387)
!6270 = !DILocalVariable(name: "head", scope: !6256, file: !5981, line: 15, type: !2767)
!6271 = !DILocalVariable(name: "__entry_size", scope: !6256, file: !5981, line: 15, type: !109)
!6272 = !DILocalVariable(name: "__data_size", scope: !6256, file: !5981, line: 15, type: !109)
!6273 = !DILocalVariable(name: "rctx", scope: !6256, file: !5981, line: 15, type: !109)
!6274 = !DILocalVariable(name: "__vpp_verify", scope: !6275, file: !5981, line: 15, type: !2083)
!6275 = distinct !DILexicalBlock(scope: !6276, file: !5981, line: 15, column: 1)
!6276 = distinct !DILexicalBlock(scope: !6256, file: !5981, line: 15, column: 1)
!6277 = !DILocalVariable(name: "tcp_ptr__", scope: !6278, file: !5981, line: 15, type: !168)
!6278 = distinct !DILexicalBlock(scope: !6276, file: !5981, line: 15, column: 1)
!6279 = !DILocation(line: 15, column: 1, scope: !6256)
!6280 = !DILocation(line: 15, column: 1, scope: !6276)
!6281 = !DILocation(line: 15, column: 1, scope: !6275)
!6282 = !DILocation(line: 15, column: 1, scope: !6278)
!6283 = !{i64 2156204391}
!6284 = !DILocation(line: 15, column: 1, scope: !6285)
!6285 = distinct !DILexicalBlock(scope: !6256, file: !5981, line: 15, column: 1)
!6286 = !DILocation(line: 15, column: 1, scope: !6287)
!6287 = distinct !DILexicalBlock(scope: !6256, file: !5981, line: 15, column: 1)
!6288 = !DILocation(line: 15, column: 1, scope: !6289)
!6289 = distinct !DILexicalBlock(scope: !6256, file: !5981, line: 15, column: 1)
!6290 = distinct !DISubprogram(name: "trace_event_raw_event_drm_vblank_event_queued", scope: !5981, file: !5981, line: 35, type: !305, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6291)
!6291 = !{!6292, !6293, !6294, !6295}
!6292 = !DILocalVariable(name: "__data", arg: 1, scope: !6290, file: !5981, line: 35, type: !150)
!6293 = !DILocalVariable(name: "file", arg: 2, scope: !6290, file: !5981, line: 35, type: !307)
!6294 = !DILocalVariable(name: "crtc", arg: 3, scope: !6290, file: !5981, line: 35, type: !109)
!6295 = !DILocalVariable(name: "seq", arg: 4, scope: !6290, file: !5981, line: 35, type: !7)
!6296 = !DILocation(line: 35, column: 1, scope: !6290)
!6297 = distinct !DISubprogram(name: "perf_trace_drm_vblank_event_queued", scope: !5981, file: !5981, line: 35, type: !305, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6298)
!6298 = !{!6299, !6300, !6301, !6302, !6303, !6304, !6306, !6307, !6308, !6309, !6310, !6311, !6312, !6313, !6314, !6317}
!6299 = !DILocalVariable(name: "__data", arg: 1, scope: !6297, file: !5981, line: 35, type: !150)
!6300 = !DILocalVariable(name: "file", arg: 2, scope: !6297, file: !5981, line: 35, type: !307)
!6301 = !DILocalVariable(name: "crtc", arg: 3, scope: !6297, file: !5981, line: 35, type: !109)
!6302 = !DILocalVariable(name: "seq", arg: 4, scope: !6297, file: !5981, line: 35, type: !7)
!6303 = !DILocalVariable(name: "event_call", scope: !6297, file: !5981, line: 35, type: !2575)
!6304 = !DILocalVariable(name: "__data_offsets", scope: !6297, file: !5981, line: 35, type: !6305)
!6305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_data_offsets_drm_vblank_event_queued", file: !5981, line: 35, elements: !717)
!6306 = !DILocalVariable(name: "entry", scope: !6297, file: !5981, line: 35, type: !5989)
!6307 = !DILocalVariable(name: "__regs", scope: !6297, file: !5981, line: 35, type: !3791)
!6308 = !DILocalVariable(name: "__count", scope: !6297, file: !5981, line: 35, type: !451)
!6309 = !DILocalVariable(name: "__task", scope: !6297, file: !5981, line: 35, type: !387)
!6310 = !DILocalVariable(name: "head", scope: !6297, file: !5981, line: 35, type: !2767)
!6311 = !DILocalVariable(name: "__entry_size", scope: !6297, file: !5981, line: 35, type: !109)
!6312 = !DILocalVariable(name: "__data_size", scope: !6297, file: !5981, line: 35, type: !109)
!6313 = !DILocalVariable(name: "rctx", scope: !6297, file: !5981, line: 35, type: !109)
!6314 = !DILocalVariable(name: "__vpp_verify", scope: !6315, file: !5981, line: 35, type: !2083)
!6315 = distinct !DILexicalBlock(scope: !6316, file: !5981, line: 35, column: 1)
!6316 = distinct !DILexicalBlock(scope: !6297, file: !5981, line: 35, column: 1)
!6317 = !DILocalVariable(name: "tcp_ptr__", scope: !6318, file: !5981, line: 35, type: !168)
!6318 = distinct !DILexicalBlock(scope: !6316, file: !5981, line: 35, column: 1)
!6319 = !DILocation(line: 35, column: 1, scope: !6297)
!6320 = !DILocation(line: 35, column: 1, scope: !6316)
!6321 = !DILocation(line: 35, column: 1, scope: !6315)
!6322 = !DILocation(line: 35, column: 1, scope: !6318)
!6323 = !{i64 2156208748}
!6324 = !DILocation(line: 35, column: 1, scope: !6325)
!6325 = distinct !DILexicalBlock(scope: !6297, file: !5981, line: 35, column: 1)
!6326 = !DILocation(line: 35, column: 1, scope: !6327)
!6327 = distinct !DILexicalBlock(scope: !6297, file: !5981, line: 35, column: 1)
!6328 = !DILocation(line: 35, column: 1, scope: !6329)
!6329 = distinct !DILexicalBlock(scope: !6297, file: !5981, line: 35, column: 1)
!6330 = distinct !DISubprogram(name: "trace_event_raw_event_drm_vblank_event_delivered", scope: !5981, file: !5981, line: 52, type: !305, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6331)
!6331 = !{!6332, !6333, !6334, !6335}
!6332 = !DILocalVariable(name: "__data", arg: 1, scope: !6330, file: !5981, line: 52, type: !150)
!6333 = !DILocalVariable(name: "file", arg: 2, scope: !6330, file: !5981, line: 52, type: !307)
!6334 = !DILocalVariable(name: "crtc", arg: 3, scope: !6330, file: !5981, line: 52, type: !109)
!6335 = !DILocalVariable(name: "seq", arg: 4, scope: !6330, file: !5981, line: 52, type: !7)
!6336 = !DILocation(line: 52, column: 1, scope: !6330)
!6337 = distinct !DISubprogram(name: "perf_trace_drm_vblank_event_delivered", scope: !5981, file: !5981, line: 52, type: !305, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6338)
!6338 = !{!6339, !6340, !6341, !6342, !6343, !6344, !6346, !6347, !6348, !6349, !6350, !6351, !6352, !6353, !6354, !6357}
!6339 = !DILocalVariable(name: "__data", arg: 1, scope: !6337, file: !5981, line: 52, type: !150)
!6340 = !DILocalVariable(name: "file", arg: 2, scope: !6337, file: !5981, line: 52, type: !307)
!6341 = !DILocalVariable(name: "crtc", arg: 3, scope: !6337, file: !5981, line: 52, type: !109)
!6342 = !DILocalVariable(name: "seq", arg: 4, scope: !6337, file: !5981, line: 52, type: !7)
!6343 = !DILocalVariable(name: "event_call", scope: !6337, file: !5981, line: 52, type: !2575)
!6344 = !DILocalVariable(name: "__data_offsets", scope: !6337, file: !5981, line: 52, type: !6345)
!6345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_data_offsets_drm_vblank_event_delivered", file: !5981, line: 52, elements: !717)
!6346 = !DILocalVariable(name: "entry", scope: !6337, file: !5981, line: 52, type: !5997)
!6347 = !DILocalVariable(name: "__regs", scope: !6337, file: !5981, line: 52, type: !3791)
!6348 = !DILocalVariable(name: "__count", scope: !6337, file: !5981, line: 52, type: !451)
!6349 = !DILocalVariable(name: "__task", scope: !6337, file: !5981, line: 52, type: !387)
!6350 = !DILocalVariable(name: "head", scope: !6337, file: !5981, line: 52, type: !2767)
!6351 = !DILocalVariable(name: "__entry_size", scope: !6337, file: !5981, line: 52, type: !109)
!6352 = !DILocalVariable(name: "__data_size", scope: !6337, file: !5981, line: 52, type: !109)
!6353 = !DILocalVariable(name: "rctx", scope: !6337, file: !5981, line: 52, type: !109)
!6354 = !DILocalVariable(name: "__vpp_verify", scope: !6355, file: !5981, line: 52, type: !2083)
!6355 = distinct !DILexicalBlock(scope: !6356, file: !5981, line: 52, column: 1)
!6356 = distinct !DILexicalBlock(scope: !6337, file: !5981, line: 52, column: 1)
!6357 = !DILocalVariable(name: "tcp_ptr__", scope: !6358, file: !5981, line: 52, type: !168)
!6358 = distinct !DILexicalBlock(scope: !6356, file: !5981, line: 52, column: 1)
!6359 = !DILocation(line: 52, column: 1, scope: !6337)
!6360 = !DILocation(line: 52, column: 1, scope: !6356)
!6361 = !DILocation(line: 52, column: 1, scope: !6355)
!6362 = !DILocation(line: 52, column: 1, scope: !6358)
!6363 = !{i64 2156213180}
!6364 = !DILocation(line: 52, column: 1, scope: !6365)
!6365 = distinct !DILexicalBlock(scope: !6337, file: !5981, line: 52, column: 1)
!6366 = !DILocation(line: 52, column: 1, scope: !6367)
!6367 = distinct !DILexicalBlock(scope: !6337, file: !5981, line: 52, column: 1)
!6368 = !DILocation(line: 52, column: 1, scope: !6369)
!6369 = distinct !DILexicalBlock(scope: !6337, file: !5981, line: 52, column: 1)
!6370 = distinct !DISubprogram(name: "do_trace_event_raw_event_drm_vblank_event", scope: !5981, file: !5981, line: 15, type: !296, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6371)
!6371 = !{!6372, !6373, !6374, !6375, !6376, !6377, !6396, !6397, !6415, !6416}
!6372 = !DILocalVariable(name: "__data", arg: 1, scope: !6370, file: !5981, line: 15, type: !150)
!6373 = !DILocalVariable(name: "crtc", arg: 2, scope: !6370, file: !5981, line: 15, type: !109)
!6374 = !DILocalVariable(name: "seq", arg: 3, scope: !6370, file: !5981, line: 15, type: !7)
!6375 = !DILocalVariable(name: "time", arg: 4, scope: !6370, file: !5981, line: 15, type: !298)
!6376 = !DILocalVariable(name: "high_prec", arg: 5, scope: !6370, file: !5981, line: 15, type: !302)
!6377 = !DILocalVariable(name: "trace_file", scope: !6370, file: !5981, line: 15, type: !6378)
!6378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6379, size: 64)
!6379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_file", file: !246, line: 655, size: 768, elements: !6380)
!6380 = !{!6381, !6382, !6383, !6384, !6387, !6388, !6391, !6392, !6393, !6394, !6395}
!6381 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !6379, file: !246, line: 656, baseType: !226, size: 128)
!6382 = !DIDerivedType(tag: DW_TAG_member, name: "event_call", scope: !6379, file: !246, line: 657, baseType: !2575, size: 64, offset: 128)
!6383 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !6379, file: !246, line: 658, baseType: !2756, size: 64, offset: 192)
!6384 = !DIDerivedType(tag: DW_TAG_member, name: "ei", scope: !6379, file: !246, line: 659, baseType: !6385, size: 64, offset: 256)
!6385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6386, size: 64)
!6386 = !DICompositeType(tag: DW_TAG_structure_type, name: "eventfs_inode", file: !246, line: 659, flags: DIFlagFwdDecl)
!6387 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !6379, file: !246, line: 660, baseType: !2691, size: 64, offset: 320)
!6388 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !6379, file: !246, line: 661, baseType: !6389, size: 64, offset: 384)
!6389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6390, size: 64)
!6390 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_subsystem_dir", file: !246, line: 485, flags: DIFlagFwdDecl)
!6391 = !DIDerivedType(tag: DW_TAG_member, name: "triggers", scope: !6379, file: !246, line: 662, baseType: !226, size: 128, offset: 448)
!6392 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6379, file: !246, line: 680, baseType: !168, size: 64, offset: 576)
!6393 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !6379, file: !246, line: 681, baseType: !178, size: 32, offset: 640)
!6394 = !DIDerivedType(tag: DW_TAG_member, name: "sm_ref", scope: !6379, file: !246, line: 682, baseType: !178, size: 32, offset: 672)
!6395 = !DIDerivedType(tag: DW_TAG_member, name: "tm_ref", scope: !6379, file: !246, line: 683, baseType: !178, size: 32, offset: 704)
!6396 = !DILocalVariable(name: "__data_offsets", scope: !6370, file: !5981, line: 15, type: !6265)
!6397 = !DILocalVariable(name: "fbuffer", scope: !6370, file: !5981, line: 15, type: !6398)
!6398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_buffer", file: !246, line: 308, size: 384, elements: !6399)
!6399 = !{!6400, !6403, !6411, !6412, !6413, !6414}
!6400 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !6398, file: !246, line: 309, baseType: !6401, size: 64)
!6401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6402, size: 64)
!6402 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_buffer", file: !2706, line: 9, flags: DIFlagFwdDecl)
!6403 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !6398, file: !246, line: 310, baseType: !6404, size: 64, offset: 64)
!6404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6405, size: 64)
!6405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_event", file: !2706, line: 15, size: 32, elements: !6406)
!6406 = !{!6407, !6408, !6409}
!6407 = !DIDerivedType(tag: DW_TAG_member, name: "type_len", scope: !6405, file: !2706, line: 16, baseType: !398, size: 5, flags: DIFlagBitField, extraData: i64 0)
!6408 = !DIDerivedType(tag: DW_TAG_member, name: "time_delta", scope: !6405, file: !2706, line: 16, baseType: !398, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!6409 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !6405, file: !2706, line: 18, baseType: !6410, offset: 32)
!6410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, elements: !1145)
!6411 = !DIDerivedType(tag: DW_TAG_member, name: "trace_file", scope: !6398, file: !246, line: 311, baseType: !6378, size: 64, offset: 128)
!6412 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !6398, file: !246, line: 312, baseType: !150, size: 64, offset: 192)
!6413 = !DIDerivedType(tag: DW_TAG_member, name: "trace_ctx", scope: !6398, file: !246, line: 313, baseType: !7, size: 32, offset: 256)
!6414 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !6398, file: !246, line: 314, baseType: !3791, size: 64, offset: 320)
!6415 = !DILocalVariable(name: "entry", scope: !6370, file: !5981, line: 15, type: !5979)
!6416 = !DILocalVariable(name: "__data_size", scope: !6370, file: !5981, line: 15, type: !109)
!6417 = !DILocation(line: 15, column: 1, scope: !6370)
!6418 = !DILocation(line: 15, column: 1, scope: !6419)
!6419 = distinct !DILexicalBlock(scope: !6370, file: !5981, line: 15, column: 1)
!6420 = !DILocation(line: 15, column: 1, scope: !6421)
!6421 = distinct !DILexicalBlock(scope: !6370, file: !5981, line: 15, column: 1)
!6422 = !DILocation(line: 15, column: 1, scope: !6423)
!6423 = distinct !DILexicalBlock(scope: !6370, file: !5981, line: 15, column: 1)
!6424 = distinct !DISubprogram(name: "trace_trigger_soft_disabled", scope: !246, file: !246, line: 746, type: !6425, scopeLine: 747, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6427)
!6425 = !DISubroutineType(types: !6426)
!6426 = !{!302, !6378}
!6427 = !{!6428, !6429}
!6428 = !DILocalVariable(name: "file", arg: 1, scope: !6424, file: !246, line: 746, type: !6378)
!6429 = !DILocalVariable(name: "eflags", scope: !6424, file: !246, line: 748, type: !168)
!6430 = !DILocation(line: 746, column: 54, scope: !6424)
!6431 = !DILocation(line: 748, column: 2, scope: !6424)
!6432 = !DILocation(line: 748, column: 16, scope: !6424)
!6433 = !DILocation(line: 748, column: 25, scope: !6424)
!6434 = !DILocation(line: 748, column: 31, scope: !6424)
!6435 = !DILocation(line: 750, column: 6, scope: !6436)
!6436 = distinct !DILexicalBlock(scope: !6424, file: !246, line: 750, column: 6)
!6437 = !DILocation(line: 750, column: 6, scope: !6424)
!6438 = !DILocation(line: 753, column: 3, scope: !6436)
!6439 = !DILocation(line: 755, column: 6, scope: !6440)
!6440 = distinct !DILexicalBlock(scope: !6424, file: !246, line: 755, column: 6)
!6441 = !DILocation(line: 755, column: 6, scope: !6424)
!6442 = !DILocation(line: 756, column: 3, scope: !6440)
!6443 = !DILocation(line: 758, column: 39, scope: !6424)
!6444 = !DILocation(line: 758, column: 9, scope: !6424)
!6445 = !DILocation(line: 758, column: 2, scope: !6424)
!6446 = !DILocation(line: 759, column: 1, scope: !6424)
!6447 = distinct !DISubprogram(name: "trace_event_get_offsets_drm_vblank_event", scope: !5981, file: !5981, line: 15, type: !6448, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6451)
!6448 = !DISubroutineType(types: !6449)
!6449 = !{!109, !6450, !109, !7, !298, !302}
!6450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6265, size: 64)
!6451 = !{!6452, !6453, !6454, !6455, !6456, !6457, !6458, !6459}
!6452 = !DILocalVariable(name: "__data_offsets", arg: 1, scope: !6447, file: !5981, line: 15, type: !6450)
!6453 = !DILocalVariable(name: "crtc", arg: 2, scope: !6447, file: !5981, line: 15, type: !109)
!6454 = !DILocalVariable(name: "seq", arg: 3, scope: !6447, file: !5981, line: 15, type: !7)
!6455 = !DILocalVariable(name: "time", arg: 4, scope: !6447, file: !5981, line: 15, type: !298)
!6456 = !DILocalVariable(name: "high_prec", arg: 5, scope: !6447, file: !5981, line: 15, type: !302)
!6457 = !DILocalVariable(name: "__data_size", scope: !6447, file: !5981, line: 15, type: !109)
!6458 = !DILocalVariable(name: "__item_length", scope: !6447, file: !5981, line: 15, type: !109)
!6459 = !DILocalVariable(name: "entry", scope: !6447, file: !5981, line: 15, type: !5979)
!6460 = !DILocation(line: 15, column: 1, scope: !6447)
!6461 = !DISubprogram(name: "trace_event_buffer_reserve", scope: !246, file: !246, line: 317, type: !6462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6462 = !DISubroutineType(types: !6463)
!6463 = !{!150, !6464, !6378, !168}
!6464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6398, size: 64)
!6465 = !DISubprogram(name: "trace_event_buffer_commit", scope: !246, file: !246, line: 321, type: !6466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6466 = !DISubroutineType(types: !6467)
!6467 = !{null, !6464}
!6468 = !DISubprogram(name: "__trace_trigger_soft_disabled", scope: !246, file: !246, line: 734, type: !6425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6469 = distinct !DISubprogram(name: "trace_raw_output_drm_vblank_event", scope: !5981, file: !5981, line: 15, type: !2685, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6470)
!6470 = !{!6471, !6472, !6473, !6474, !6476, !6477, !6478}
!6471 = !DILocalVariable(name: "iter", arg: 1, scope: !6469, file: !5981, line: 15, type: !2687)
!6472 = !DILocalVariable(name: "flags", arg: 2, scope: !6469, file: !5981, line: 15, type: !109)
!6473 = !DILocalVariable(name: "trace_event", arg: 3, scope: !6469, file: !5981, line: 15, type: !2750)
!6474 = !DILocalVariable(name: "s", scope: !6469, file: !5981, line: 15, type: !6475)
!6475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!6476 = !DILocalVariable(name: "p", scope: !6469, file: !5981, line: 15, type: !6475)
!6477 = !DILocalVariable(name: "field", scope: !6469, file: !5981, line: 15, type: !5979)
!6478 = !DILocalVariable(name: "ret", scope: !6469, file: !5981, line: 15, type: !109)
!6479 = !DILocation(line: 15, column: 1, scope: !6469)
!6480 = !DILocation(line: 15, column: 1, scope: !6481)
!6481 = distinct !DILexicalBlock(scope: !6469, file: !5981, line: 15, column: 1)
!6482 = !DISubprogram(name: "trace_raw_output_prep", scope: !246, file: !246, line: 57, type: !6483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6483 = !DISubroutineType(types: !6484)
!6484 = !{!109, !2687, !2750}
!6485 = !DISubprogram(name: "trace_event_printf", scope: !246, file: !246, line: 60, type: !6486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6486 = !DISubroutineType(types: !6487)
!6487 = !{null, !2687, !146, null}
!6488 = !DISubprogram(name: "trace_handle_return", scope: !246, file: !246, line: 165, type: !6489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6489 = !DISubroutineType(types: !6490)
!6490 = !{!256, !6475}
!6491 = distinct !DISubprogram(name: "do_trace_event_raw_event_drm_vblank_event_queued", scope: !5981, file: !5981, line: 35, type: !305, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6492)
!6492 = !{!6493, !6494, !6495, !6496, !6497, !6498, !6499, !6500, !6501}
!6493 = !DILocalVariable(name: "__data", arg: 1, scope: !6491, file: !5981, line: 35, type: !150)
!6494 = !DILocalVariable(name: "file", arg: 2, scope: !6491, file: !5981, line: 35, type: !307)
!6495 = !DILocalVariable(name: "crtc", arg: 3, scope: !6491, file: !5981, line: 35, type: !109)
!6496 = !DILocalVariable(name: "seq", arg: 4, scope: !6491, file: !5981, line: 35, type: !7)
!6497 = !DILocalVariable(name: "trace_file", scope: !6491, file: !5981, line: 35, type: !6378)
!6498 = !DILocalVariable(name: "__data_offsets", scope: !6491, file: !5981, line: 35, type: !6305)
!6499 = !DILocalVariable(name: "fbuffer", scope: !6491, file: !5981, line: 35, type: !6398)
!6500 = !DILocalVariable(name: "entry", scope: !6491, file: !5981, line: 35, type: !5989)
!6501 = !DILocalVariable(name: "__data_size", scope: !6491, file: !5981, line: 35, type: !109)
!6502 = !DILocation(line: 35, column: 1, scope: !6491)
!6503 = !DILocation(line: 35, column: 1, scope: !6504)
!6504 = distinct !DILexicalBlock(scope: !6491, file: !5981, line: 35, column: 1)
!6505 = !DILocation(line: 35, column: 1, scope: !6506)
!6506 = distinct !DILexicalBlock(scope: !6491, file: !5981, line: 35, column: 1)
!6507 = !DILocation(line: 35, column: 1, scope: !6508)
!6508 = distinct !DILexicalBlock(scope: !6491, file: !5981, line: 35, column: 1)
!6509 = distinct !DISubprogram(name: "trace_event_get_offsets_drm_vblank_event_queued", scope: !5981, file: !5981, line: 35, type: !6510, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6513)
!6510 = !DISubroutineType(types: !6511)
!6511 = !{!109, !6512, !307, !109, !7}
!6512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6305, size: 64)
!6513 = !{!6514, !6515, !6516, !6517, !6518, !6519, !6520}
!6514 = !DILocalVariable(name: "__data_offsets", arg: 1, scope: !6509, file: !5981, line: 35, type: !6512)
!6515 = !DILocalVariable(name: "file", arg: 2, scope: !6509, file: !5981, line: 35, type: !307)
!6516 = !DILocalVariable(name: "crtc", arg: 3, scope: !6509, file: !5981, line: 35, type: !109)
!6517 = !DILocalVariable(name: "seq", arg: 4, scope: !6509, file: !5981, line: 35, type: !7)
!6518 = !DILocalVariable(name: "__data_size", scope: !6509, file: !5981, line: 35, type: !109)
!6519 = !DILocalVariable(name: "__item_length", scope: !6509, file: !5981, line: 35, type: !109)
!6520 = !DILocalVariable(name: "entry", scope: !6509, file: !5981, line: 35, type: !5989)
!6521 = !DILocation(line: 35, column: 1, scope: !6509)
!6522 = distinct !DISubprogram(name: "trace_raw_output_drm_vblank_event_queued", scope: !5981, file: !5981, line: 35, type: !2685, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6523)
!6523 = !{!6524, !6525, !6526, !6527, !6528, !6529, !6530}
!6524 = !DILocalVariable(name: "iter", arg: 1, scope: !6522, file: !5981, line: 35, type: !2687)
!6525 = !DILocalVariable(name: "flags", arg: 2, scope: !6522, file: !5981, line: 35, type: !109)
!6526 = !DILocalVariable(name: "trace_event", arg: 3, scope: !6522, file: !5981, line: 35, type: !2750)
!6527 = !DILocalVariable(name: "s", scope: !6522, file: !5981, line: 35, type: !6475)
!6528 = !DILocalVariable(name: "p", scope: !6522, file: !5981, line: 35, type: !6475)
!6529 = !DILocalVariable(name: "field", scope: !6522, file: !5981, line: 35, type: !5989)
!6530 = !DILocalVariable(name: "ret", scope: !6522, file: !5981, line: 35, type: !109)
!6531 = !DILocation(line: 35, column: 1, scope: !6522)
!6532 = !DILocation(line: 35, column: 1, scope: !6533)
!6533 = distinct !DILexicalBlock(scope: !6522, file: !5981, line: 35, column: 1)
!6534 = distinct !DISubprogram(name: "do_trace_event_raw_event_drm_vblank_event_delivered", scope: !5981, file: !5981, line: 52, type: !305, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6535)
!6535 = !{!6536, !6537, !6538, !6539, !6540, !6541, !6542, !6543, !6544}
!6536 = !DILocalVariable(name: "__data", arg: 1, scope: !6534, file: !5981, line: 52, type: !150)
!6537 = !DILocalVariable(name: "file", arg: 2, scope: !6534, file: !5981, line: 52, type: !307)
!6538 = !DILocalVariable(name: "crtc", arg: 3, scope: !6534, file: !5981, line: 52, type: !109)
!6539 = !DILocalVariable(name: "seq", arg: 4, scope: !6534, file: !5981, line: 52, type: !7)
!6540 = !DILocalVariable(name: "trace_file", scope: !6534, file: !5981, line: 52, type: !6378)
!6541 = !DILocalVariable(name: "__data_offsets", scope: !6534, file: !5981, line: 52, type: !6345)
!6542 = !DILocalVariable(name: "fbuffer", scope: !6534, file: !5981, line: 52, type: !6398)
!6543 = !DILocalVariable(name: "entry", scope: !6534, file: !5981, line: 52, type: !5997)
!6544 = !DILocalVariable(name: "__data_size", scope: !6534, file: !5981, line: 52, type: !109)
!6545 = !DILocation(line: 52, column: 1, scope: !6534)
!6546 = !DILocation(line: 52, column: 1, scope: !6547)
!6547 = distinct !DILexicalBlock(scope: !6534, file: !5981, line: 52, column: 1)
!6548 = !DILocation(line: 52, column: 1, scope: !6549)
!6549 = distinct !DILexicalBlock(scope: !6534, file: !5981, line: 52, column: 1)
!6550 = !DILocation(line: 52, column: 1, scope: !6551)
!6551 = distinct !DILexicalBlock(scope: !6534, file: !5981, line: 52, column: 1)
!6552 = distinct !DISubprogram(name: "trace_event_get_offsets_drm_vblank_event_delivered", scope: !5981, file: !5981, line: 52, type: !6553, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6556)
!6553 = !DISubroutineType(types: !6554)
!6554 = !{!109, !6555, !307, !109, !7}
!6555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6345, size: 64)
!6556 = !{!6557, !6558, !6559, !6560, !6561, !6562, !6563}
!6557 = !DILocalVariable(name: "__data_offsets", arg: 1, scope: !6552, file: !5981, line: 52, type: !6555)
!6558 = !DILocalVariable(name: "file", arg: 2, scope: !6552, file: !5981, line: 52, type: !307)
!6559 = !DILocalVariable(name: "crtc", arg: 3, scope: !6552, file: !5981, line: 52, type: !109)
!6560 = !DILocalVariable(name: "seq", arg: 4, scope: !6552, file: !5981, line: 52, type: !7)
!6561 = !DILocalVariable(name: "__data_size", scope: !6552, file: !5981, line: 52, type: !109)
!6562 = !DILocalVariable(name: "__item_length", scope: !6552, file: !5981, line: 52, type: !109)
!6563 = !DILocalVariable(name: "entry", scope: !6552, file: !5981, line: 52, type: !5997)
!6564 = !DILocation(line: 52, column: 1, scope: !6552)
!6565 = distinct !DISubprogram(name: "trace_raw_output_drm_vblank_event_delivered", scope: !5981, file: !5981, line: 52, type: !2685, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6566)
!6566 = !{!6567, !6568, !6569, !6570, !6571, !6572, !6573}
!6567 = !DILocalVariable(name: "iter", arg: 1, scope: !6565, file: !5981, line: 52, type: !2687)
!6568 = !DILocalVariable(name: "flags", arg: 2, scope: !6565, file: !5981, line: 52, type: !109)
!6569 = !DILocalVariable(name: "trace_event", arg: 3, scope: !6565, file: !5981, line: 52, type: !2750)
!6570 = !DILocalVariable(name: "s", scope: !6565, file: !5981, line: 52, type: !6475)
!6571 = !DILocalVariable(name: "p", scope: !6565, file: !5981, line: 52, type: !6475)
!6572 = !DILocalVariable(name: "field", scope: !6565, file: !5981, line: 52, type: !5997)
!6573 = !DILocalVariable(name: "ret", scope: !6565, file: !5981, line: 52, type: !109)
!6574 = !DILocation(line: 52, column: 1, scope: !6565)
!6575 = !DILocation(line: 52, column: 1, scope: !6576)
!6576 = distinct !DILexicalBlock(scope: !6565, file: !5981, line: 52, column: 1)
!6577 = distinct !DISubprogram(name: "bpf_prog_array_valid", scope: !246, file: !246, line: 443, type: !6578, scopeLine: 444, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6580)
!6578 = !DISubroutineType(types: !6579)
!6579 = !{!302, !2575}
!6580 = !{!6581}
!6581 = !DILocalVariable(name: "call", arg: 1, scope: !6577, file: !246, line: 443, type: !2575)
!6582 = !DILocation(line: 443, column: 66, scope: !6577)
!6583 = !DILocation(line: 462, column: 11, scope: !6584)
!6584 = distinct !DILexicalBlock(scope: !6577, file: !246, line: 462, column: 11)
!6585 = !DILocation(line: 462, column: 11, scope: !6586)
!6586 = distinct !DILexicalBlock(scope: !6584, file: !246, line: 462, column: 11)
!6587 = !DILocation(line: 462, column: 10, scope: !6577)
!6588 = !DILocation(line: 462, column: 9, scope: !6577)
!6589 = !DILocation(line: 462, column: 2, scope: !6577)
!6590 = distinct !DISubprogram(name: "hlist_empty", scope: !6591, file: !6591, line: 970, type: !6592, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6596)
!6591 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6592 = !DISubroutineType(types: !6593)
!6593 = !{!109, !6594}
!6594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6595, size: 64)
!6595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!6596 = !{!6597}
!6597 = !DILocalVariable(name: "h", arg: 1, scope: !6590, file: !6591, line: 970, type: !6594)
!6598 = !DILocation(line: 970, column: 56, scope: !6590)
!6599 = !DILocation(line: 972, column: 10, scope: !6600)
!6600 = distinct !DILexicalBlock(scope: !6590, file: !6591, line: 972, column: 10)
!6601 = !DILocation(line: 972, column: 10, scope: !6602)
!6602 = distinct !DILexicalBlock(scope: !6600, file: !6591, line: 972, column: 10)
!6603 = !DILocation(line: 972, column: 9, scope: !6590)
!6604 = !DILocation(line: 972, column: 2, scope: !6590)
!6605 = !DISubprogram(name: "perf_trace_buf_alloc", scope: !246, file: !246, line: 904, type: !6606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6606 = !DISubroutineType(types: !6607)
!6607 = !{!150, !109, !6608, !2395}
!6608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!6609 = distinct !DISubprogram(name: "perf_fetch_caller_regs", scope: !237, file: !237, line: 1427, type: !6610, scopeLine: 1428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6612)
!6610 = !DISubroutineType(types: !6611)
!6611 = !{null, !3791}
!6612 = !{!6613}
!6613 = !DILocalVariable(name: "regs", arg: 1, scope: !6609, file: !237, line: 1427, type: !3791)
!6614 = !DILocation(line: 1427, column: 59, scope: !6609)
!6615 = !DILocation(line: 1429, column: 2, scope: !6616)
!6616 = distinct !DILexicalBlock(scope: !6609, file: !237, line: 1429, column: 2)
!6617 = !DILocation(line: 1430, column: 1, scope: !6609)
!6618 = !DISubprogram(name: "perf_trace_run_bpf_submit", scope: !246, file: !246, line: 936, type: !6619, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6619 = !DISubroutineType(types: !6620)
!6620 = !{null, !150, !109, !109, !2575, !451, !3791, !2767, !387}
