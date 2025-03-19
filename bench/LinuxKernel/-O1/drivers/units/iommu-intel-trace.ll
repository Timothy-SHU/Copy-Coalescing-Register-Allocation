; ModuleID = 'drivers/iommu/intel/trace.c'
source_filename = "drivers/iommu/intel/trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "\09.section \22__tracepoints_ptrs\22, \22a\22\09\09"
module asm "\09.balign 4\09\09\09\09\09"
module asm "\09.long \09__tracepoint_qi_submit - .\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm ".pushsection .static_call.text, \22ax\22\09\09"
module asm ".align 4\09\09\09\09\09\09"
module asm ".globl __SCT__tp_func_qi_submit\09\09"
module asm "__SCT__tp_func_qi_submit:\09\09\09"
module asm "986: "
module asm "\09.pushsection .discard.noendbr"
module asm "\09.long 986b"
module asm "\09.popsection"
module asm "\09.byte 0xe9; .long __traceiter_qi_submit - (. + 4)\09\09\09\09\09\09"
module asm ".byte 0x0f, 0xb9, 0xcc\09\09\09\09"
module asm ".type __SCT__tp_func_qi_submit, @function\09"
module asm ".size __SCT__tp_func_qi_submit, . - __SCT__tp_func_qi_submit "
module asm ".popsection\09\09\09\09\09"
module asm "\09.section \22__tracepoints_ptrs\22, \22a\22\09\09"
module asm "\09.balign 4\09\09\09\09\09"
module asm "\09.long \09__tracepoint_prq_report - .\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm ".pushsection .static_call.text, \22ax\22\09\09"
module asm ".align 4\09\09\09\09\09\09"
module asm ".globl __SCT__tp_func_prq_report\09\09"
module asm "__SCT__tp_func_prq_report:\09\09\09"
module asm "986: "
module asm "\09.pushsection .discard.noendbr"
module asm "\09.long 986b"
module asm "\09.popsection"
module asm "\09.byte 0xe9; .long __traceiter_prq_report - (. + 4)\09\09\09\09\09\09"
module asm ".byte 0x0f, 0xb9, 0xcc\09\09\09\09"
module asm ".type __SCT__tp_func_prq_report, @function\09"
module asm ".size __SCT__tp_func_prq_report, . - __SCT__tp_func_prq_report "
module asm ".popsection\09\09\09\09\09"

%struct.static_call_key = type { ptr, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%struct.atomic_t = type { i32 }
%union.anon = type { i64 }
%struct.trace_event_fields = type { ptr, %union.anon.25 }
%union.anon.25 = type { %struct.anon.24 }
%struct.anon.24 = type { ptr, i32, i32, i8, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.26, %struct.trace_event, ptr, ptr, %union.anon.27, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.26 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.27 = type { ptr }
%struct.trace_print_flags = type { i64, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_data_offsets_qi_submit = type { i32 }
%struct.trace_event_raw_qi_submit = type { %struct.trace_entry, i64, i64, i64, i64, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.intel_iommu = type { ptr, i64, i64, i64, i64, i64, [4 x i64], i32, %struct.raw_spinlock, i32, i32, i32, i32, i32, i32, i16, [13 x i8], ptr, ptr, %struct.spinlock, ptr, %struct.iommu_flush, ptr, [16 x i8], ptr, [4 x i32], %struct.iommu_device, i32, i32, ptr, ptr, ptr }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.iommu_flush = type { ptr, ptr }
%struct.iommu_device = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.trace_event_data_offsets_prq_report = type { i32, i32, i32 }
%struct.trace_event_raw_prq_report = type { %struct.trace_entry, i64, i64, i64, i64, i64, i32, i32, i32, [0 x i8] }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i64, ptr, i32, ptr, i32, i64, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i64, i32, i32, i32, i64, i64, i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i64] }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i64, i32 }
%struct.seq_buf = type { ptr, i64, i64 }
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
%struct.hlist_head = type { ptr }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.28, i64, i64, %union.anon.29 }
%union.anon.28 = type { i64 }
%union.anon.29 = type { i64 }

@__tpstrtab_qi_submit = internal constant [10 x i8] c"qi_submit\00", section "__tracepoints_strings", align 1, !dbg !0
@__SCK__tp_func_qi_submit = hidden global %struct.static_call_key { ptr @__traceiter_qi_submit, %union.anon.0 { i64 1 } }, align 8, !dbg !6983
@__tracepoint_qi_submit = hidden global %struct.tracepoint { ptr @__tpstrtab_qi_submit, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_qi_submit, ptr @__SCT__tp_func_qi_submit, ptr @__traceiter_qi_submit, ptr @__probestub_qi_submit, ptr null, ptr null, ptr null }, section "__tracepoints", align 8, !dbg !6981
@__tpstrtab_prq_report = internal constant [11 x i8] c"prq_report\00", section "__tracepoints_strings", align 1, !dbg !7001
@__SCK__tp_func_prq_report = hidden global %struct.static_call_key { ptr @__traceiter_prq_report, %union.anon.0 { i64 1 } }, align 8, !dbg !6987
@__tracepoint_prq_report = hidden global %struct.tracepoint { ptr @__tpstrtab_prq_report, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_prq_report, ptr @__SCT__tp_func_prq_report, ptr @__traceiter_prq_report, ptr @__probestub_prq_report, ptr null, ptr null, ptr null }, section "__tracepoints", align 8, !dbg !6985
@str__intel_iommu__trace_system_name = internal constant [12 x i8] c"intel_iommu\00", align 1, !dbg !7006
@trace_event_fields_qi_submit = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.25 { %struct.anon.24 { ptr @.str.2, i32 8, i32 8, i8 0, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.25 { %struct.anon.24 { ptr @.str.3, i32 8, i32 8, i8 0, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.25 { %struct.anon.24 { ptr @.str.4, i32 8, i32 8, i8 0, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.25 { %struct.anon.24 { ptr @.str.5, i32 8, i32 8, i8 0, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.25 { %struct.anon.24 { ptr @.str.7, i32 4, i32 4, i8 0, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 16, !dbg !7031
@event_class_qi_submit = internal global %struct.trace_event_class { ptr @str__intel_iommu__trace_system_name, ptr @trace_event_raw_event_qi_submit, ptr @perf_trace_qi_submit, ptr @trace_event_reg, ptr @trace_event_fields_qi_submit, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_qi_submit, i64 48), ptr getelementptr (i8, ptr @event_class_qi_submit, i64 48) }, ptr @trace_event_raw_init }, section ".ref.data", align 8, !dbg !6989
@trace_event_type_funcs_qi_submit = internal global %struct.trace_event_functions { ptr @trace_raw_output_qi_submit, ptr null, ptr null, ptr null }, align 8, !dbg !7034
@print_fmt_qi_submit = internal global [330 x i8] c"\22%s %s: 0x%llx 0x%llx 0x%llx 0x%llx\22, __print_symbolic(REC->qw0 & 0xf, { 0x1, \22cc_inv\22 }, { 0x2, \22iotlb_inv\22 }, { 0x3, \22dev_tlb_inv\22 }, { 0x4, \22iec_inv\22 }, { 0x5, \22inv_wait\22 }, { 0x6, \22p_iotlb_inv\22 }, { 0x7, \22pc_inv\22 }, { 0x8, \22p_dev_tlb_inv\22 }, { 0x9, \22page_grp_resp\22 }), __get_str(iommu), REC->qw0, REC->qw1, REC->qw2, REC->qw3\00", align 16, !dbg !7083
@event_qi_submit = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_qi_submit, %union.anon.26 { ptr @__tracepoint_qi_submit }, %struct.trace_event { %struct.hlist_node zeroinitializer, i32 0, ptr @trace_event_type_funcs_qi_submit }, ptr @print_fmt_qi_submit, ptr null, %union.anon.27 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4, !dbg !6991
@__event_qi_submit = internal global ptr @event_qi_submit, section "_ftrace_events", align 8, !dbg !6993
@trace_event_fields_prq_report = internal global [9 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.25 { %struct.anon.24 { ptr @.str.18, i32 8, i32 8, i8 0, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.25 { %struct.anon.24 { ptr @.str.19, i32 8, i32 8, i8 0, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.25 { %struct.anon.24 { ptr @.str.20, i32 8, i32 8, i8 0, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.25 { %struct.anon.24 { ptr @.str.21, i32 8, i32 8, i8 0, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.22, %union.anon.25 { %struct.anon.24 { ptr @.str.23, i32 8, i32 8, i8 0, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.25 { %struct.anon.24 { ptr @.str.7, i32 4, i32 4, i8 0, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.25 { %struct.anon.24 { ptr @.str.24, i32 4, i32 4, i8 0, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.25 { %struct.anon.24 { ptr @.str.25, i32 4, i32 4, i8 0, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 16, !dbg !7105
@event_class_prq_report = internal global %struct.trace_event_class { ptr @str__intel_iommu__trace_system_name, ptr @trace_event_raw_event_prq_report, ptr @perf_trace_prq_report, ptr @trace_event_reg, ptr @trace_event_fields_prq_report, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_prq_report, i64 48), ptr getelementptr (i8, ptr @event_class_prq_report, i64 48) }, ptr @trace_event_raw_init }, section ".ref.data", align 8, !dbg !6995
@trace_event_type_funcs_prq_report = internal global %struct.trace_event_functions { ptr @trace_raw_output_prq_report, ptr null, ptr null, ptr null }, align 8, !dbg !7108
@print_fmt_prq_report = internal global [150 x i8] c"\22%s/%s seq# %ld: %s\22, __get_str(iommu), __get_str(dev), REC->seq, decode_prq_descriptor(__get_str(buff), 256, REC->dw0, REC->dw1, REC->dw2, REC->dw3)\00", align 16, !dbg !7123
@event_prq_report = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_prq_report, %union.anon.26 { ptr @__tracepoint_prq_report }, %struct.trace_event { %struct.hlist_node zeroinitializer, i32 0, ptr @trace_event_type_funcs_prq_report }, ptr @print_fmt_prq_report, ptr null, %union.anon.27 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4, !dbg !6997
@__event_prq_report = internal global ptr @event_prq_report, section "_ftrace_events", align 8, !dbg !6999
@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1, !dbg !7010
@.str.1 = private unnamed_addr constant [4 x i8] c"u64\00", align 1, !dbg !7013
@.str.2 = private unnamed_addr constant [4 x i8] c"qw0\00", align 1, !dbg !7016
@.str.3 = private unnamed_addr constant [4 x i8] c"qw1\00", align 1, !dbg !7018
@.str.4 = private unnamed_addr constant [4 x i8] c"qw2\00", align 1, !dbg !7020
@.str.5 = private unnamed_addr constant [4 x i8] c"qw3\00", align 1, !dbg !7022
@.str.6 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1, !dbg !7024
@.str.7 = private unnamed_addr constant [6 x i8] c"iommu\00", align 1, !dbg !7029
@.str.8 = private unnamed_addr constant [36 x i8] c"%s %s: 0x%llx 0x%llx 0x%llx 0x%llx\0A\00", align 1, !dbg !7036
@trace_raw_output_qi_submit.symbols = internal constant [10 x %struct.trace_print_flags] [%struct.trace_print_flags { i64 1, ptr @.str.9 }, %struct.trace_print_flags { i64 2, ptr @.str.10 }, %struct.trace_print_flags { i64 3, ptr @.str.11 }, %struct.trace_print_flags { i64 4, ptr @.str.12 }, %struct.trace_print_flags { i64 5, ptr @.str.13 }, %struct.trace_print_flags { i64 6, ptr @.str.14 }, %struct.trace_print_flags { i64 7, ptr @.str.15 }, %struct.trace_print_flags { i64 8, ptr @.str.16 }, %struct.trace_print_flags { i64 9, ptr @.str.17 }, %struct.trace_print_flags { i64 -1, ptr null }], align 16, !dbg !7065
@.str.9 = private unnamed_addr constant [7 x i8] c"cc_inv\00", align 1, !dbg !7041
@.str.10 = private unnamed_addr constant [10 x i8] c"iotlb_inv\00", align 1, !dbg !7043
@.str.11 = private unnamed_addr constant [12 x i8] c"dev_tlb_inv\00", align 1, !dbg !7046
@.str.12 = private unnamed_addr constant [8 x i8] c"iec_inv\00", align 1, !dbg !7049
@.str.13 = private unnamed_addr constant [9 x i8] c"inv_wait\00", align 1, !dbg !7051
@.str.14 = private unnamed_addr constant [12 x i8] c"p_iotlb_inv\00", align 1, !dbg !7056
@.str.15 = private unnamed_addr constant [7 x i8] c"pc_inv\00", align 1, !dbg !7058
@.str.16 = private unnamed_addr constant [14 x i8] c"p_dev_tlb_inv\00", align 1, !dbg !7060
@.str.17 = private unnamed_addr constant [14 x i8] c"page_grp_resp\00", align 1, !dbg !7063
@.str.18 = private unnamed_addr constant [4 x i8] c"dw0\00", align 1, !dbg !7088
@.str.19 = private unnamed_addr constant [4 x i8] c"dw1\00", align 1, !dbg !7090
@.str.20 = private unnamed_addr constant [4 x i8] c"dw2\00", align 1, !dbg !7092
@.str.21 = private unnamed_addr constant [4 x i8] c"dw3\00", align 1, !dbg !7094
@.str.22 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1, !dbg !7096
@.str.23 = private unnamed_addr constant [4 x i8] c"seq\00", align 1, !dbg !7098
@.str.24 = private unnamed_addr constant [4 x i8] c"dev\00", align 1, !dbg !7100
@.str.25 = private unnamed_addr constant [5 x i8] c"buff\00", align 1, !dbg !7102
@.str.26 = private unnamed_addr constant [20 x i8] c"%s/%s seq# %ld: %s\0A\00", align 1, !dbg !7110
@.str.27 = private unnamed_addr constant [60 x i8] c"rid=0x%llx addr=0x%llx %c%c%c%c%c pasid=0x%llx index=0x%llx\00", align 1, !dbg !7113
@.str.28 = private unnamed_addr constant [24 x i8] c" private=0x%llx/0x%llx\0A\00", align 1, !dbg !7118
@this_cpu_off = external dso_local global i64, section ".data..percpu..read_mostly", align 8
@llvm.compiler.used = appending global [8 x ptr] [ptr @__tracepoint_qi_submit, ptr @__tracepoint_prq_report, ptr @event_class_qi_submit, ptr @event_qi_submit, ptr @__event_qi_submit, ptr @event_class_prq_report, ptr @event_prq_report, ptr @__event_prq_report], section "llvm.metadata"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_qi_submit(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__traceiter_qi_submit(ptr noundef %__data, ptr noundef %iommu, i64 noundef %qw0, i64 noundef %qw1, i64 noundef %qw2, i64 noundef %qw3) #1 align 16 !dbg !7138 {
entry:
  %__data.addr = alloca ptr, align 8
  %iommu.addr = alloca ptr, align 8
  %qw0.addr = alloca i64, align 8
  %qw1.addr = alloca i64, align 8
  %qw2.addr = alloca i64, align 8
  %qw3.addr = alloca i64, align 8
  %it_func_ptr = alloca ptr, align 8
  %it_func = alloca ptr, align 8
  %__UNIQUE_ID_rcu349 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !7142, metadata !DIExpression()), !dbg !7152
  store ptr %iommu, ptr %iommu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iommu.addr, metadata !7143, metadata !DIExpression()), !dbg !7152
  store i64 %qw0, ptr %qw0.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %qw0.addr, metadata !7144, metadata !DIExpression()), !dbg !7152
  store i64 %qw1, ptr %qw1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %qw1.addr, metadata !7145, metadata !DIExpression()), !dbg !7152
  store i64 %qw2, ptr %qw2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %qw2.addr, metadata !7146, metadata !DIExpression()), !dbg !7152
  store i64 %qw3, ptr %qw3.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %qw3.addr, metadata !7147, metadata !DIExpression()), !dbg !7152
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #8, !dbg !7152
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !7148, metadata !DIExpression()), !dbg !7152
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func) #8, !dbg !7152
  call void @llvm.dbg.declare(metadata ptr %it_func, metadata !7149, metadata !DIExpression()), !dbg !7152
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu349) #8, !dbg !7153
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu349, metadata !7150, metadata !DIExpression()), !dbg !7153
  br label %do.body, !dbg !7154

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !7156

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7156

do.end:                                           ; preds = %do.cond
  %0 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_qi_submit, i32 0, i32 8), align 8, !dbg !7154
  store ptr %0, ptr %tmp, align 8, !dbg !7156
  %1 = load ptr, ptr %tmp, align 8, !dbg !7154
  store ptr %1, ptr %__UNIQUE_ID_rcu349, align 8, !dbg !7153
  %2 = load ptr, ptr %__UNIQUE_ID_rcu349, align 8, !dbg !7153
  store ptr %2, ptr %tmp1, align 8, !dbg !7153
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu349) #8, !dbg !7152
  %3 = load ptr, ptr %tmp1, align 8, !dbg !7153
  store ptr %3, ptr %it_func_ptr, align 8, !dbg !7152
  %4 = load ptr, ptr %it_func_ptr, align 8, !dbg !7158
  %tobool = icmp ne ptr %4, null, !dbg !7158
  br i1 %tobool, label %if.then, label %if.end, !dbg !7152

if.then:                                          ; preds = %do.end
  br label %do.body2, !dbg !7160

do.body2:                                         ; preds = %do.cond7, %if.then
  br label %do.body3, !dbg !7162

do.body3:                                         ; preds = %do.body2
  br label %do.cond4, !dbg !7165

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !7165

do.end5:                                          ; preds = %do.cond4
  %5 = load ptr, ptr %it_func_ptr, align 8, !dbg !7162
  %func = getelementptr inbounds %struct.tracepoint_func, ptr %5, i32 0, i32 0, !dbg !7162
  %6 = load volatile ptr, ptr %func, align 8, !dbg !7162
  store ptr %6, ptr %tmp6, align 8, !dbg !7165
  %7 = load ptr, ptr %tmp6, align 8, !dbg !7162
  store ptr %7, ptr %it_func, align 8, !dbg !7167
  %8 = load ptr, ptr %it_func_ptr, align 8, !dbg !7167
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1, !dbg !7167
  %9 = load ptr, ptr %data, align 8, !dbg !7167
  store ptr %9, ptr %__data.addr, align 8, !dbg !7167
  %10 = load ptr, ptr %it_func, align 8, !dbg !7167
  %11 = load ptr, ptr %__data.addr, align 8, !dbg !7167
  %12 = load ptr, ptr %iommu.addr, align 8, !dbg !7167
  %13 = load i64, ptr %qw0.addr, align 8, !dbg !7167
  %14 = load i64, ptr %qw1.addr, align 8, !dbg !7167
  %15 = load i64, ptr %qw2.addr, align 8, !dbg !7167
  %16 = load i64, ptr %qw3.addr, align 8, !dbg !7167
  call void %10(ptr noundef %11, ptr noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) #9, !dbg !7167
  br label %do.cond7, !dbg !7167

do.cond7:                                         ; preds = %do.end5
  %17 = load ptr, ptr %it_func_ptr, align 8, !dbg !7160
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %17, i32 1, !dbg !7160
  store ptr %incdec.ptr, ptr %it_func_ptr, align 8, !dbg !7160
  %func8 = getelementptr inbounds %struct.tracepoint_func, ptr %incdec.ptr, i32 0, i32 0, !dbg !7160
  %18 = load ptr, ptr %func8, align 8, !dbg !7160
  %tobool9 = icmp ne ptr %18, null, !dbg !7167
  br i1 %tobool9, label %do.body2, label %do.end10, !dbg !7167, !llvm.loop !7168

do.end10:                                         ; preds = %do.cond7
  br label %if.end, !dbg !7160

if.end:                                           ; preds = %do.end10, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func) #8, !dbg !7152
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #8, !dbg !7152
  ret i32 0, !dbg !7152
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__probestub_qi_submit(ptr noundef %__data, ptr noundef %iommu, i64 noundef %qw0, i64 noundef %qw1, i64 noundef %qw2, i64 noundef %qw3) #1 align 16 !dbg !7171 {
entry:
  %__data.addr = alloca ptr, align 8
  %iommu.addr = alloca ptr, align 8
  %qw0.addr = alloca i64, align 8
  %qw1.addr = alloca i64, align 8
  %qw2.addr = alloca i64, align 8
  %qw3.addr = alloca i64, align 8
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !7173, metadata !DIExpression()), !dbg !7179
  store ptr %iommu, ptr %iommu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iommu.addr, metadata !7174, metadata !DIExpression()), !dbg !7179
  store i64 %qw0, ptr %qw0.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %qw0.addr, metadata !7175, metadata !DIExpression()), !dbg !7179
  store i64 %qw1, ptr %qw1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %qw1.addr, metadata !7176, metadata !DIExpression()), !dbg !7179
  store i64 %qw2, ptr %qw2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %qw2.addr, metadata !7177, metadata !DIExpression()), !dbg !7179
  store i64 %qw3, ptr %qw3.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %qw3.addr, metadata !7178, metadata !DIExpression()), !dbg !7179
  ret void, !dbg !7179
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_prq_report(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__traceiter_prq_report(ptr noundef %__data, ptr noundef %iommu, ptr noundef %dev, i64 noundef %dw0, i64 noundef %dw1, i64 noundef %dw2, i64 noundef %dw3, i64 noundef %seq) #1 align 16 !dbg !7180 {
entry:
  %__data.addr = alloca ptr, align 8
  %iommu.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %dw0.addr = alloca i64, align 8
  %dw1.addr = alloca i64, align 8
  %dw2.addr = alloca i64, align 8
  %dw3.addr = alloca i64, align 8
  %seq.addr = alloca i64, align 8
  %it_func_ptr = alloca ptr, align 8
  %it_func = alloca ptr, align 8
  %__UNIQUE_ID_rcu352 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !7184, metadata !DIExpression()), !dbg !7196
  store ptr %iommu, ptr %iommu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iommu.addr, metadata !7185, metadata !DIExpression()), !dbg !7196
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7186, metadata !DIExpression()), !dbg !7196
  store i64 %dw0, ptr %dw0.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dw0.addr, metadata !7187, metadata !DIExpression()), !dbg !7196
  store i64 %dw1, ptr %dw1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dw1.addr, metadata !7188, metadata !DIExpression()), !dbg !7196
  store i64 %dw2, ptr %dw2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dw2.addr, metadata !7189, metadata !DIExpression()), !dbg !7196
  store i64 %dw3, ptr %dw3.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dw3.addr, metadata !7190, metadata !DIExpression()), !dbg !7196
  store i64 %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !7191, metadata !DIExpression()), !dbg !7196
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #8, !dbg !7196
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !7192, metadata !DIExpression()), !dbg !7196
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func) #8, !dbg !7196
  call void @llvm.dbg.declare(metadata ptr %it_func, metadata !7193, metadata !DIExpression()), !dbg !7196
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu352) #8, !dbg !7197
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu352, metadata !7194, metadata !DIExpression()), !dbg !7197
  br label %do.body, !dbg !7198

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !7200

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7200

do.end:                                           ; preds = %do.cond
  %0 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_prq_report, i32 0, i32 8), align 8, !dbg !7198
  store ptr %0, ptr %tmp, align 8, !dbg !7200
  %1 = load ptr, ptr %tmp, align 8, !dbg !7198
  store ptr %1, ptr %__UNIQUE_ID_rcu352, align 8, !dbg !7197
  %2 = load ptr, ptr %__UNIQUE_ID_rcu352, align 8, !dbg !7197
  store ptr %2, ptr %tmp1, align 8, !dbg !7197
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu352) #8, !dbg !7196
  %3 = load ptr, ptr %tmp1, align 8, !dbg !7197
  store ptr %3, ptr %it_func_ptr, align 8, !dbg !7196
  %4 = load ptr, ptr %it_func_ptr, align 8, !dbg !7202
  %tobool = icmp ne ptr %4, null, !dbg !7202
  br i1 %tobool, label %if.then, label %if.end, !dbg !7196

if.then:                                          ; preds = %do.end
  br label %do.body2, !dbg !7204

do.body2:                                         ; preds = %do.cond7, %if.then
  br label %do.body3, !dbg !7206

do.body3:                                         ; preds = %do.body2
  br label %do.cond4, !dbg !7209

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !7209

do.end5:                                          ; preds = %do.cond4
  %5 = load ptr, ptr %it_func_ptr, align 8, !dbg !7206
  %func = getelementptr inbounds %struct.tracepoint_func, ptr %5, i32 0, i32 0, !dbg !7206
  %6 = load volatile ptr, ptr %func, align 8, !dbg !7206
  store ptr %6, ptr %tmp6, align 8, !dbg !7209
  %7 = load ptr, ptr %tmp6, align 8, !dbg !7206
  store ptr %7, ptr %it_func, align 8, !dbg !7211
  %8 = load ptr, ptr %it_func_ptr, align 8, !dbg !7211
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1, !dbg !7211
  %9 = load ptr, ptr %data, align 8, !dbg !7211
  store ptr %9, ptr %__data.addr, align 8, !dbg !7211
  %10 = load ptr, ptr %it_func, align 8, !dbg !7211
  %11 = load ptr, ptr %__data.addr, align 8, !dbg !7211
  %12 = load ptr, ptr %iommu.addr, align 8, !dbg !7211
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !7211
  %14 = load i64, ptr %dw0.addr, align 8, !dbg !7211
  %15 = load i64, ptr %dw1.addr, align 8, !dbg !7211
  %16 = load i64, ptr %dw2.addr, align 8, !dbg !7211
  %17 = load i64, ptr %dw3.addr, align 8, !dbg !7211
  %18 = load i64, ptr %seq.addr, align 8, !dbg !7211
  call void %10(ptr noundef %11, ptr noundef %12, ptr noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18) #9, !dbg !7211
  br label %do.cond7, !dbg !7211

do.cond7:                                         ; preds = %do.end5
  %19 = load ptr, ptr %it_func_ptr, align 8, !dbg !7204
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %19, i32 1, !dbg !7204
  store ptr %incdec.ptr, ptr %it_func_ptr, align 8, !dbg !7204
  %func8 = getelementptr inbounds %struct.tracepoint_func, ptr %incdec.ptr, i32 0, i32 0, !dbg !7204
  %20 = load ptr, ptr %func8, align 8, !dbg !7204
  %tobool9 = icmp ne ptr %20, null, !dbg !7211
  br i1 %tobool9, label %do.body2, label %do.end10, !dbg !7211, !llvm.loop !7212

do.end10:                                         ; preds = %do.cond7
  br label %if.end, !dbg !7204

if.end:                                           ; preds = %do.end10, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func) #8, !dbg !7196
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #8, !dbg !7196
  ret i32 0, !dbg !7196
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__probestub_prq_report(ptr noundef %__data, ptr noundef %iommu, ptr noundef %dev, i64 noundef %dw0, i64 noundef %dw1, i64 noundef %dw2, i64 noundef %dw3, i64 noundef %seq) #1 align 16 !dbg !7213 {
entry:
  %__data.addr = alloca ptr, align 8
  %iommu.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %dw0.addr = alloca i64, align 8
  %dw1.addr = alloca i64, align 8
  %dw2.addr = alloca i64, align 8
  %dw3.addr = alloca i64, align 8
  %seq.addr = alloca i64, align 8
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !7215, metadata !DIExpression()), !dbg !7223
  store ptr %iommu, ptr %iommu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iommu.addr, metadata !7216, metadata !DIExpression()), !dbg !7223
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7217, metadata !DIExpression()), !dbg !7223
  store i64 %dw0, ptr %dw0.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dw0.addr, metadata !7218, metadata !DIExpression()), !dbg !7223
  store i64 %dw1, ptr %dw1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dw1.addr, metadata !7219, metadata !DIExpression()), !dbg !7223
  store i64 %dw2, ptr %dw2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dw2.addr, metadata !7220, metadata !DIExpression()), !dbg !7223
  store i64 %dw3, ptr %dw3.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dw3.addr, metadata !7221, metadata !DIExpression()), !dbg !7223
  store i64 %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !7222, metadata !DIExpression()), !dbg !7223
  ret void, !dbg !7223
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_event_raw_event_qi_submit(ptr noundef %__data, ptr noundef %iommu, i64 noundef %qw0, i64 noundef %qw1, i64 noundef %qw2, i64 noundef %qw3) #1 align 16 !dbg !7224 {
entry:
  %__data.addr = alloca ptr, align 8
  %iommu.addr = alloca ptr, align 8
  %qw0.addr = alloca i64, align 8
  %qw1.addr = alloca i64, align 8
  %qw2.addr = alloca i64, align 8
  %qw3.addr = alloca i64, align 8
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !7226, metadata !DIExpression()), !dbg !7232
  store ptr %iommu, ptr %iommu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iommu.addr, metadata !7227, metadata !DIExpression()), !dbg !7232
  store i64 %qw0, ptr %qw0.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %qw0.addr, metadata !7228, metadata !DIExpression()), !dbg !7232
  store i64 %qw1, ptr %qw1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %qw1.addr, metadata !7229, metadata !DIExpression()), !dbg !7232
  store i64 %qw2, ptr %qw2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %qw2.addr, metadata !7230, metadata !DIExpression()), !dbg !7232
  store i64 %qw3, ptr %qw3.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %qw3.addr, metadata !7231, metadata !DIExpression()), !dbg !7232
  %0 = load ptr, ptr %__data.addr, align 8, !dbg !7232
  %1 = load ptr, ptr %iommu.addr, align 8, !dbg !7232
  %2 = load i64, ptr %qw0.addr, align 8, !dbg !7232
  %3 = load i64, ptr %qw1.addr, align 8, !dbg !7232
  %4 = load i64, ptr %qw2.addr, align 8, !dbg !7232
  %5 = load i64, ptr %qw3.addr, align 8, !dbg !7232
  call void @do_trace_event_raw_event_qi_submit(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #9, !dbg !7232
  ret void, !dbg !7232
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @perf_trace_qi_submit(ptr noundef %__data, ptr noundef %iommu, i64 noundef %qw0, i64 noundef %qw1, i64 noundef %qw2, i64 noundef %qw3) #1 align 16 !dbg !7233 {
entry:
  %__data.addr = alloca ptr, align 8
  %iommu.addr = alloca ptr, align 8
  %qw0.addr = alloca i64, align 8
  %qw1.addr = alloca i64, align 8
  %qw2.addr = alloca i64, align 8
  %qw3.addr = alloca i64, align 8
  %event_call = alloca ptr, align 8
  %__data_offsets = alloca %struct.trace_event_data_offsets_qi_submit, align 4
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
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !7235, metadata !DIExpression()), !dbg !7259
  store ptr %iommu, ptr %iommu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iommu.addr, metadata !7236, metadata !DIExpression()), !dbg !7259
  store i64 %qw0, ptr %qw0.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %qw0.addr, metadata !7237, metadata !DIExpression()), !dbg !7259
  store i64 %qw1, ptr %qw1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %qw1.addr, metadata !7238, metadata !DIExpression()), !dbg !7259
  store i64 %qw2, ptr %qw2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %qw2.addr, metadata !7239, metadata !DIExpression()), !dbg !7259
  store i64 %qw3, ptr %qw3.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %qw3.addr, metadata !7240, metadata !DIExpression()), !dbg !7259
  call void @llvm.lifetime.start.p0(i64 8, ptr %event_call) #8, !dbg !7259
  call void @llvm.dbg.declare(metadata ptr %event_call, metadata !7241, metadata !DIExpression()), !dbg !7259
  %0 = load ptr, ptr %__data.addr, align 8, !dbg !7259
  store ptr %0, ptr %event_call, align 8, !dbg !7259
  call void @llvm.lifetime.start.p0(i64 4, ptr %__data_offsets) #8, !dbg !7259
  call void @llvm.dbg.declare(metadata ptr %__data_offsets, metadata !7242, metadata !DIExpression()), !dbg !7259
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #8, !dbg !7259
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !7246, metadata !DIExpression()), !dbg !7259
  call void @llvm.lifetime.start.p0(i64 8, ptr %__regs) #8, !dbg !7259
  call void @llvm.dbg.declare(metadata ptr %__regs, metadata !7247, metadata !DIExpression()), !dbg !7259
  call void @llvm.lifetime.start.p0(i64 8, ptr %__count) #8, !dbg !7259
  call void @llvm.dbg.declare(metadata ptr %__count, metadata !7248, metadata !DIExpression()), !dbg !7259
  store i64 1, ptr %__count, align 8, !dbg !7259
  call void @llvm.lifetime.start.p0(i64 8, ptr %__task) #8, !dbg !7259
  call void @llvm.dbg.declare(metadata ptr %__task, metadata !7249, metadata !DIExpression()), !dbg !7259
  store ptr null, ptr %__task, align 8, !dbg !7259
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #8, !dbg !7259
  call void @llvm.dbg.declare(metadata ptr %head, metadata !7250, metadata !DIExpression()), !dbg !7259
  call void @llvm.lifetime.start.p0(i64 4, ptr %__entry_size) #8, !dbg !7259
  call void @llvm.dbg.declare(metadata ptr %__entry_size, metadata !7251, metadata !DIExpression()), !dbg !7259
  call void @llvm.lifetime.start.p0(i64 4, ptr %__data_size) #8, !dbg !7259
  call void @llvm.dbg.declare(metadata ptr %__data_size, metadata !7252, metadata !DIExpression()), !dbg !7259
  call void @llvm.lifetime.start.p0(i64 4, ptr %rctx) #8, !dbg !7259
  call void @llvm.dbg.declare(metadata ptr %rctx, metadata !7253, metadata !DIExpression()), !dbg !7259
  %1 = load ptr, ptr %iommu.addr, align 8, !dbg !7259
  %2 = load i64, ptr %qw0.addr, align 8, !dbg !7259
  %3 = load i64, ptr %qw1.addr, align 8, !dbg !7259
  %4 = load i64, ptr %qw2.addr, align 8, !dbg !7259
  %5 = load i64, ptr %qw3.addr, align 8, !dbg !7259
  %call = call i32 @trace_event_get_offsets_qi_submit(ptr noundef %__data_offsets, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #9, !dbg !7259
  store i32 %call, ptr %__data_size, align 4, !dbg !7259
  br label %do.body, !dbg !7260

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #8, !dbg !7261
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !7254, metadata !DIExpression()), !dbg !7261
  store ptr null, ptr %__vpp_verify, align 8, !dbg !7261
  %6 = load ptr, ptr %__vpp_verify, align 8, !dbg !7261
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #8, !dbg !7260
  br label %do.cond, !dbg !7261

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7261

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #8, !dbg !7262
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !7257, metadata !DIExpression()), !dbg !7262
  %7 = load ptr, ptr %event_call, align 8, !dbg !7262
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %7, i32 0, i32 10, !dbg !7262
  %8 = load ptr, ptr %perf_events, align 8, !dbg !7262
  %9 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr %8) #10, !dbg !7262, !srcloc !7263
  store i64 %9, ptr %tcp_ptr__, align 8, !dbg !7262
  %10 = load i64, ptr %tcp_ptr__, align 8, !dbg !7262
  %11 = inttoptr i64 %10 to ptr, !dbg !7262
  store ptr %11, ptr %tmp2, align 8, !dbg !7262
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #8, !dbg !7260
  %12 = load ptr, ptr %tmp2, align 8, !dbg !7262
  store ptr %12, ptr %tmp, align 8, !dbg !7261
  %13 = load ptr, ptr %tmp, align 8, !dbg !7260
  store ptr %13, ptr %head, align 8, !dbg !7259
  %14 = load ptr, ptr %event_call, align 8, !dbg !7264
  %call3 = call zeroext i1 @bpf_prog_array_valid(ptr noundef %14) #9, !dbg !7264
  br i1 %call3, label %if.end, label %land.lhs.true, !dbg !7264

land.lhs.true:                                    ; preds = %do.end
  %15 = load ptr, ptr %__task, align 8, !dbg !7264
  %tobool = icmp ne ptr %15, null, !dbg !7264
  %lnot = xor i1 %tobool, true, !dbg !7264
  %lnot.ext = zext i1 %lnot to i32, !dbg !7264
  %16 = call i1 @llvm.is.constant.i32(i32 %lnot.ext), !dbg !7264
  br i1 %16, label %land.lhs.true4, label %if.end, !dbg !7264

land.lhs.true4:                                   ; preds = %land.lhs.true
  %17 = load ptr, ptr %__task, align 8, !dbg !7264
  %tobool5 = icmp ne ptr %17, null, !dbg !7264
  br i1 %tobool5, label %if.end, label %land.lhs.true6, !dbg !7264

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %18 = load ptr, ptr %head, align 8, !dbg !7264
  %call7 = call i32 @hlist_empty(ptr noundef %18) #9, !dbg !7264
  %tobool8 = icmp ne i32 %call7, 0, !dbg !7264
  br i1 %tobool8, label %if.then, label %if.end, !dbg !7259

if.then:                                          ; preds = %land.lhs.true6
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7264

if.end:                                           ; preds = %land.lhs.true6, %land.lhs.true4, %land.lhs.true, %do.end
  %19 = load i32, ptr %__data_size, align 4, !dbg !7259
  %conv = sext i32 %19 to i64, !dbg !7259
  %add = add i64 %conv, 48, !dbg !7259
  %add9 = add i64 %add, 4, !dbg !7259
  %add10 = add i64 %add9, 7, !dbg !7259
  %and = and i64 %add10, -8, !dbg !7259
  %conv11 = trunc i64 %and to i32, !dbg !7259
  store i32 %conv11, ptr %__entry_size, align 4, !dbg !7259
  %20 = load i32, ptr %__entry_size, align 4, !dbg !7259
  %conv12 = sext i32 %20 to i64, !dbg !7259
  %sub = sub i64 %conv12, 4, !dbg !7259
  %conv13 = trunc i64 %sub to i32, !dbg !7259
  store i32 %conv13, ptr %__entry_size, align 4, !dbg !7259
  %21 = load i32, ptr %__entry_size, align 4, !dbg !7259
  %call14 = call ptr @perf_trace_buf_alloc(i32 noundef %21, ptr noundef %__regs, ptr noundef %rctx) #9, !dbg !7259
  store ptr %call14, ptr %entry1, align 8, !dbg !7259
  %22 = load ptr, ptr %entry1, align 8, !dbg !7266
  %tobool15 = icmp ne ptr %22, null, !dbg !7266
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !7259

if.then16:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7266

if.end17:                                         ; preds = %if.end
  %23 = load ptr, ptr %__regs, align 8, !dbg !7259
  call void @perf_fetch_caller_regs(ptr noundef %23) #9, !dbg !7259
  %iommu18 = getelementptr inbounds %struct.trace_event_data_offsets_qi_submit, ptr %__data_offsets, i32 0, i32 0, !dbg !7259
  %24 = load i32, ptr %iommu18, align 4, !dbg !7259
  %25 = load ptr, ptr %entry1, align 8, !dbg !7259
  %__data_loc_iommu = getelementptr inbounds %struct.trace_event_raw_qi_submit, ptr %25, i32 0, i32 5, !dbg !7259
  store i32 %24, ptr %__data_loc_iommu, align 8, !dbg !7259
  %26 = load ptr, ptr %entry1, align 8, !dbg !7268
  %27 = load ptr, ptr %entry1, align 8, !dbg !7268
  %__data_loc_iommu19 = getelementptr inbounds %struct.trace_event_raw_qi_submit, ptr %27, i32 0, i32 5, !dbg !7268
  %28 = load i32, ptr %__data_loc_iommu19, align 8, !dbg !7268
  %and20 = and i32 %28, 65535, !dbg !7268
  %idx.ext = zext i32 %and20 to i64, !dbg !7268
  %add.ptr = getelementptr i8, ptr %26, i64 %idx.ext, !dbg !7268
  %29 = load ptr, ptr %iommu.addr, align 8, !dbg !7268
  %name = getelementptr inbounds %struct.intel_iommu, ptr %29, i32 0, i32 16, !dbg !7268
  %arraydecay = getelementptr inbounds [13 x i8], ptr %name, i64 0, i64 0, !dbg !7268
  %tobool21 = icmp ne ptr %arraydecay, null, !dbg !7268
  br i1 %tobool21, label %cond.true, label %cond.false, !dbg !7268

cond.true:                                        ; preds = %if.end17
  %30 = load ptr, ptr %iommu.addr, align 8, !dbg !7268
  %name22 = getelementptr inbounds %struct.intel_iommu, ptr %30, i32 0, i32 16, !dbg !7268
  %arraydecay23 = getelementptr inbounds [13 x i8], ptr %name22, i64 0, i64 0, !dbg !7268
  br label %cond.end, !dbg !7268

cond.false:                                       ; preds = %if.end17
  br label %cond.end, !dbg !7268

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arraydecay23, %cond.true ], [ @.str, %cond.false ], !dbg !7268
  %call24 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #9, !dbg !7268
  %31 = load i64, ptr %qw0.addr, align 8, !dbg !7268
  %32 = load ptr, ptr %entry1, align 8, !dbg !7268
  %qw025 = getelementptr inbounds %struct.trace_event_raw_qi_submit, ptr %32, i32 0, i32 1, !dbg !7268
  store i64 %31, ptr %qw025, align 8, !dbg !7268
  %33 = load i64, ptr %qw1.addr, align 8, !dbg !7268
  %34 = load ptr, ptr %entry1, align 8, !dbg !7268
  %qw126 = getelementptr inbounds %struct.trace_event_raw_qi_submit, ptr %34, i32 0, i32 2, !dbg !7268
  store i64 %33, ptr %qw126, align 8, !dbg !7268
  %35 = load i64, ptr %qw2.addr, align 8, !dbg !7268
  %36 = load ptr, ptr %entry1, align 8, !dbg !7268
  %qw227 = getelementptr inbounds %struct.trace_event_raw_qi_submit, ptr %36, i32 0, i32 3, !dbg !7268
  store i64 %35, ptr %qw227, align 8, !dbg !7268
  %37 = load i64, ptr %qw3.addr, align 8, !dbg !7268
  %38 = load ptr, ptr %entry1, align 8, !dbg !7268
  %qw328 = getelementptr inbounds %struct.trace_event_raw_qi_submit, ptr %38, i32 0, i32 4, !dbg !7268
  store i64 %37, ptr %qw328, align 8, !dbg !7268
  %39 = load ptr, ptr %entry1, align 8, !dbg !7259
  %40 = load i32, ptr %__entry_size, align 4, !dbg !7259
  %41 = load i32, ptr %rctx, align 4, !dbg !7259
  %42 = load ptr, ptr %event_call, align 8, !dbg !7259
  %43 = load i64, ptr %__count, align 8, !dbg !7259
  %44 = load ptr, ptr %__regs, align 8, !dbg !7259
  %45 = load ptr, ptr %head, align 8, !dbg !7259
  %46 = load ptr, ptr %__task, align 8, !dbg !7259
  call void @perf_trace_run_bpf_submit(ptr noundef %39, i32 noundef %40, i32 noundef %41, ptr noundef %42, i64 noundef %43, ptr noundef %44, ptr noundef %45, ptr noundef %46) #9, !dbg !7259
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7259
  br label %cleanup, !dbg !7259

cleanup:                                          ; preds = %cond.end, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rctx) #8, !dbg !7259
  call void @llvm.lifetime.end.p0(i64 4, ptr %__data_size) #8, !dbg !7259
  call void @llvm.lifetime.end.p0(i64 4, ptr %__entry_size) #8, !dbg !7259
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #8, !dbg !7259
  call void @llvm.lifetime.end.p0(i64 8, ptr %__task) #8, !dbg !7259
  call void @llvm.lifetime.end.p0(i64 8, ptr %__count) #8, !dbg !7259
  call void @llvm.lifetime.end.p0(i64 8, ptr %__regs) #8, !dbg !7259
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #8, !dbg !7259
  call void @llvm.lifetime.end.p0(i64 4, ptr %__data_offsets) #8, !dbg !7259
  call void @llvm.lifetime.end.p0(i64 8, ptr %event_call) #8, !dbg !7259
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !7259

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_event_raw_event_prq_report(ptr noundef %__data, ptr noundef %iommu, ptr noundef %dev, i64 noundef %dw0, i64 noundef %dw1, i64 noundef %dw2, i64 noundef %dw3, i64 noundef %seq) #1 align 16 !dbg !7270 {
entry:
  %__data.addr = alloca ptr, align 8
  %iommu.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %dw0.addr = alloca i64, align 8
  %dw1.addr = alloca i64, align 8
  %dw2.addr = alloca i64, align 8
  %dw3.addr = alloca i64, align 8
  %seq.addr = alloca i64, align 8
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !7272, metadata !DIExpression()), !dbg !7280
  store ptr %iommu, ptr %iommu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iommu.addr, metadata !7273, metadata !DIExpression()), !dbg !7280
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7274, metadata !DIExpression()), !dbg !7280
  store i64 %dw0, ptr %dw0.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dw0.addr, metadata !7275, metadata !DIExpression()), !dbg !7280
  store i64 %dw1, ptr %dw1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dw1.addr, metadata !7276, metadata !DIExpression()), !dbg !7280
  store i64 %dw2, ptr %dw2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dw2.addr, metadata !7277, metadata !DIExpression()), !dbg !7280
  store i64 %dw3, ptr %dw3.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dw3.addr, metadata !7278, metadata !DIExpression()), !dbg !7280
  store i64 %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !7279, metadata !DIExpression()), !dbg !7280
  %0 = load ptr, ptr %__data.addr, align 8, !dbg !7280
  %1 = load ptr, ptr %iommu.addr, align 8, !dbg !7280
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !7280
  %3 = load i64, ptr %dw0.addr, align 8, !dbg !7280
  %4 = load i64, ptr %dw1.addr, align 8, !dbg !7280
  %5 = load i64, ptr %dw2.addr, align 8, !dbg !7280
  %6 = load i64, ptr %dw3.addr, align 8, !dbg !7280
  %7 = load i64, ptr %seq.addr, align 8, !dbg !7280
  call void @do_trace_event_raw_event_prq_report(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) #9, !dbg !7280
  ret void, !dbg !7280
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @perf_trace_prq_report(ptr noundef %__data, ptr noundef %iommu, ptr noundef %dev, i64 noundef %dw0, i64 noundef %dw1, i64 noundef %dw2, i64 noundef %dw3, i64 noundef %seq) #1 align 16 !dbg !7281 {
entry:
  %__data.addr = alloca ptr, align 8
  %iommu.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %dw0.addr = alloca i64, align 8
  %dw1.addr = alloca i64, align 8
  %dw2.addr = alloca i64, align 8
  %dw3.addr = alloca i64, align 8
  %seq.addr = alloca i64, align 8
  %event_call = alloca ptr, align 8
  %__data_offsets = alloca %struct.trace_event_data_offsets_prq_report, align 4
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
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !7283, metadata !DIExpression()), !dbg !7311
  store ptr %iommu, ptr %iommu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iommu.addr, metadata !7284, metadata !DIExpression()), !dbg !7311
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7285, metadata !DIExpression()), !dbg !7311
  store i64 %dw0, ptr %dw0.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dw0.addr, metadata !7286, metadata !DIExpression()), !dbg !7311
  store i64 %dw1, ptr %dw1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dw1.addr, metadata !7287, metadata !DIExpression()), !dbg !7311
  store i64 %dw2, ptr %dw2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dw2.addr, metadata !7288, metadata !DIExpression()), !dbg !7311
  store i64 %dw3, ptr %dw3.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dw3.addr, metadata !7289, metadata !DIExpression()), !dbg !7311
  store i64 %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !7290, metadata !DIExpression()), !dbg !7311
  call void @llvm.lifetime.start.p0(i64 8, ptr %event_call) #8, !dbg !7311
  call void @llvm.dbg.declare(metadata ptr %event_call, metadata !7291, metadata !DIExpression()), !dbg !7311
  %0 = load ptr, ptr %__data.addr, align 8, !dbg !7311
  store ptr %0, ptr %event_call, align 8, !dbg !7311
  call void @llvm.lifetime.start.p0(i64 12, ptr %__data_offsets) #8, !dbg !7311
  call void @llvm.dbg.declare(metadata ptr %__data_offsets, metadata !7292, metadata !DIExpression()), !dbg !7311
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #8, !dbg !7311
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !7298, metadata !DIExpression()), !dbg !7311
  call void @llvm.lifetime.start.p0(i64 8, ptr %__regs) #8, !dbg !7311
  call void @llvm.dbg.declare(metadata ptr %__regs, metadata !7299, metadata !DIExpression()), !dbg !7311
  call void @llvm.lifetime.start.p0(i64 8, ptr %__count) #8, !dbg !7311
  call void @llvm.dbg.declare(metadata ptr %__count, metadata !7300, metadata !DIExpression()), !dbg !7311
  store i64 1, ptr %__count, align 8, !dbg !7311
  call void @llvm.lifetime.start.p0(i64 8, ptr %__task) #8, !dbg !7311
  call void @llvm.dbg.declare(metadata ptr %__task, metadata !7301, metadata !DIExpression()), !dbg !7311
  store ptr null, ptr %__task, align 8, !dbg !7311
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #8, !dbg !7311
  call void @llvm.dbg.declare(metadata ptr %head, metadata !7302, metadata !DIExpression()), !dbg !7311
  call void @llvm.lifetime.start.p0(i64 4, ptr %__entry_size) #8, !dbg !7311
  call void @llvm.dbg.declare(metadata ptr %__entry_size, metadata !7303, metadata !DIExpression()), !dbg !7311
  call void @llvm.lifetime.start.p0(i64 4, ptr %__data_size) #8, !dbg !7311
  call void @llvm.dbg.declare(metadata ptr %__data_size, metadata !7304, metadata !DIExpression()), !dbg !7311
  call void @llvm.lifetime.start.p0(i64 4, ptr %rctx) #8, !dbg !7311
  call void @llvm.dbg.declare(metadata ptr %rctx, metadata !7305, metadata !DIExpression()), !dbg !7311
  %1 = load ptr, ptr %iommu.addr, align 8, !dbg !7311
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !7311
  %3 = load i64, ptr %dw0.addr, align 8, !dbg !7311
  %4 = load i64, ptr %dw1.addr, align 8, !dbg !7311
  %5 = load i64, ptr %dw2.addr, align 8, !dbg !7311
  %6 = load i64, ptr %dw3.addr, align 8, !dbg !7311
  %7 = load i64, ptr %seq.addr, align 8, !dbg !7311
  %call = call i32 @trace_event_get_offsets_prq_report(ptr noundef %__data_offsets, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) #9, !dbg !7311
  store i32 %call, ptr %__data_size, align 4, !dbg !7311
  br label %do.body, !dbg !7312

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #8, !dbg !7313
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !7306, metadata !DIExpression()), !dbg !7313
  store ptr null, ptr %__vpp_verify, align 8, !dbg !7313
  %8 = load ptr, ptr %__vpp_verify, align 8, !dbg !7313
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #8, !dbg !7312
  br label %do.cond, !dbg !7313

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7313

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #8, !dbg !7314
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !7309, metadata !DIExpression()), !dbg !7314
  %9 = load ptr, ptr %event_call, align 8, !dbg !7314
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %9, i32 0, i32 10, !dbg !7314
  %10 = load ptr, ptr %perf_events, align 8, !dbg !7314
  %11 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr %10) #10, !dbg !7314, !srcloc !7315
  store i64 %11, ptr %tcp_ptr__, align 8, !dbg !7314
  %12 = load i64, ptr %tcp_ptr__, align 8, !dbg !7314
  %13 = inttoptr i64 %12 to ptr, !dbg !7314
  store ptr %13, ptr %tmp2, align 8, !dbg !7314
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #8, !dbg !7312
  %14 = load ptr, ptr %tmp2, align 8, !dbg !7314
  store ptr %14, ptr %tmp, align 8, !dbg !7313
  %15 = load ptr, ptr %tmp, align 8, !dbg !7312
  store ptr %15, ptr %head, align 8, !dbg !7311
  %16 = load ptr, ptr %event_call, align 8, !dbg !7316
  %call3 = call zeroext i1 @bpf_prog_array_valid(ptr noundef %16) #9, !dbg !7316
  br i1 %call3, label %if.end, label %land.lhs.true, !dbg !7316

land.lhs.true:                                    ; preds = %do.end
  %17 = load ptr, ptr %__task, align 8, !dbg !7316
  %tobool = icmp ne ptr %17, null, !dbg !7316
  %lnot = xor i1 %tobool, true, !dbg !7316
  %lnot.ext = zext i1 %lnot to i32, !dbg !7316
  %18 = call i1 @llvm.is.constant.i32(i32 %lnot.ext), !dbg !7316
  br i1 %18, label %land.lhs.true4, label %if.end, !dbg !7316

land.lhs.true4:                                   ; preds = %land.lhs.true
  %19 = load ptr, ptr %__task, align 8, !dbg !7316
  %tobool5 = icmp ne ptr %19, null, !dbg !7316
  br i1 %tobool5, label %if.end, label %land.lhs.true6, !dbg !7316

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %20 = load ptr, ptr %head, align 8, !dbg !7316
  %call7 = call i32 @hlist_empty(ptr noundef %20) #9, !dbg !7316
  %tobool8 = icmp ne i32 %call7, 0, !dbg !7316
  br i1 %tobool8, label %if.then, label %if.end, !dbg !7311

if.then:                                          ; preds = %land.lhs.true6
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7316

if.end:                                           ; preds = %land.lhs.true6, %land.lhs.true4, %land.lhs.true, %do.end
  %21 = load i32, ptr %__data_size, align 4, !dbg !7311
  %conv = sext i32 %21 to i64, !dbg !7311
  %add = add i64 %conv, 64, !dbg !7311
  %add9 = add i64 %add, 4, !dbg !7311
  %add10 = add i64 %add9, 7, !dbg !7311
  %and = and i64 %add10, -8, !dbg !7311
  %conv11 = trunc i64 %and to i32, !dbg !7311
  store i32 %conv11, ptr %__entry_size, align 4, !dbg !7311
  %22 = load i32, ptr %__entry_size, align 4, !dbg !7311
  %conv12 = sext i32 %22 to i64, !dbg !7311
  %sub = sub i64 %conv12, 4, !dbg !7311
  %conv13 = trunc i64 %sub to i32, !dbg !7311
  store i32 %conv13, ptr %__entry_size, align 4, !dbg !7311
  %23 = load i32, ptr %__entry_size, align 4, !dbg !7311
  %call14 = call ptr @perf_trace_buf_alloc(i32 noundef %23, ptr noundef %__regs, ptr noundef %rctx) #9, !dbg !7311
  store ptr %call14, ptr %entry1, align 8, !dbg !7311
  %24 = load ptr, ptr %entry1, align 8, !dbg !7318
  %tobool15 = icmp ne ptr %24, null, !dbg !7318
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !7311

if.then16:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7318

if.end17:                                         ; preds = %if.end
  %25 = load ptr, ptr %__regs, align 8, !dbg !7311
  call void @perf_fetch_caller_regs(ptr noundef %25) #9, !dbg !7311
  %iommu18 = getelementptr inbounds %struct.trace_event_data_offsets_prq_report, ptr %__data_offsets, i32 0, i32 0, !dbg !7311
  %26 = load i32, ptr %iommu18, align 4, !dbg !7311
  %27 = load ptr, ptr %entry1, align 8, !dbg !7311
  %__data_loc_iommu = getelementptr inbounds %struct.trace_event_raw_prq_report, ptr %27, i32 0, i32 6, !dbg !7311
  store i32 %26, ptr %__data_loc_iommu, align 8, !dbg !7311
  %dev19 = getelementptr inbounds %struct.trace_event_data_offsets_prq_report, ptr %__data_offsets, i32 0, i32 1, !dbg !7311
  %28 = load i32, ptr %dev19, align 4, !dbg !7311
  %29 = load ptr, ptr %entry1, align 8, !dbg !7311
  %__data_loc_dev = getelementptr inbounds %struct.trace_event_raw_prq_report, ptr %29, i32 0, i32 7, !dbg !7311
  store i32 %28, ptr %__data_loc_dev, align 4, !dbg !7311
  %buff = getelementptr inbounds %struct.trace_event_data_offsets_prq_report, ptr %__data_offsets, i32 0, i32 2, !dbg !7311
  %30 = load i32, ptr %buff, align 4, !dbg !7311
  %31 = load ptr, ptr %entry1, align 8, !dbg !7311
  %__data_loc_buff = getelementptr inbounds %struct.trace_event_raw_prq_report, ptr %31, i32 0, i32 8, !dbg !7311
  store i32 %30, ptr %__data_loc_buff, align 8, !dbg !7311
  %32 = load i64, ptr %dw0.addr, align 8, !dbg !7320
  %33 = load ptr, ptr %entry1, align 8, !dbg !7320
  %dw020 = getelementptr inbounds %struct.trace_event_raw_prq_report, ptr %33, i32 0, i32 1, !dbg !7320
  store i64 %32, ptr %dw020, align 8, !dbg !7320
  %34 = load i64, ptr %dw1.addr, align 8, !dbg !7320
  %35 = load ptr, ptr %entry1, align 8, !dbg !7320
  %dw121 = getelementptr inbounds %struct.trace_event_raw_prq_report, ptr %35, i32 0, i32 2, !dbg !7320
  store i64 %34, ptr %dw121, align 8, !dbg !7320
  %36 = load i64, ptr %dw2.addr, align 8, !dbg !7320
  %37 = load ptr, ptr %entry1, align 8, !dbg !7320
  %dw222 = getelementptr inbounds %struct.trace_event_raw_prq_report, ptr %37, i32 0, i32 3, !dbg !7320
  store i64 %36, ptr %dw222, align 8, !dbg !7320
  %38 = load i64, ptr %dw3.addr, align 8, !dbg !7320
  %39 = load ptr, ptr %entry1, align 8, !dbg !7320
  %dw323 = getelementptr inbounds %struct.trace_event_raw_prq_report, ptr %39, i32 0, i32 4, !dbg !7320
  store i64 %38, ptr %dw323, align 8, !dbg !7320
  %40 = load i64, ptr %seq.addr, align 8, !dbg !7320
  %41 = load ptr, ptr %entry1, align 8, !dbg !7320
  %seq24 = getelementptr inbounds %struct.trace_event_raw_prq_report, ptr %41, i32 0, i32 5, !dbg !7320
  store i64 %40, ptr %seq24, align 8, !dbg !7320
  %42 = load ptr, ptr %entry1, align 8, !dbg !7320
  %43 = load ptr, ptr %entry1, align 8, !dbg !7320
  %__data_loc_iommu25 = getelementptr inbounds %struct.trace_event_raw_prq_report, ptr %43, i32 0, i32 6, !dbg !7320
  %44 = load i32, ptr %__data_loc_iommu25, align 8, !dbg !7320
  %and26 = and i32 %44, 65535, !dbg !7320
  %idx.ext = zext i32 %and26 to i64, !dbg !7320
  %add.ptr = getelementptr i8, ptr %42, i64 %idx.ext, !dbg !7320
  %45 = load ptr, ptr %iommu.addr, align 8, !dbg !7320
  %name = getelementptr inbounds %struct.intel_iommu, ptr %45, i32 0, i32 16, !dbg !7320
  %arraydecay = getelementptr inbounds [13 x i8], ptr %name, i64 0, i64 0, !dbg !7320
  %tobool27 = icmp ne ptr %arraydecay, null, !dbg !7320
  br i1 %tobool27, label %cond.true, label %cond.false, !dbg !7320

cond.true:                                        ; preds = %if.end17
  %46 = load ptr, ptr %iommu.addr, align 8, !dbg !7320
  %name28 = getelementptr inbounds %struct.intel_iommu, ptr %46, i32 0, i32 16, !dbg !7320
  %arraydecay29 = getelementptr inbounds [13 x i8], ptr %name28, i64 0, i64 0, !dbg !7320
  br label %cond.end, !dbg !7320

cond.false:                                       ; preds = %if.end17
  br label %cond.end, !dbg !7320

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arraydecay29, %cond.true ], [ @.str, %cond.false ], !dbg !7320
  %call30 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #9, !dbg !7320
  %47 = load ptr, ptr %entry1, align 8, !dbg !7320
  %48 = load ptr, ptr %entry1, align 8, !dbg !7320
  %__data_loc_dev31 = getelementptr inbounds %struct.trace_event_raw_prq_report, ptr %48, i32 0, i32 7, !dbg !7320
  %49 = load i32, ptr %__data_loc_dev31, align 4, !dbg !7320
  %and32 = and i32 %49, 65535, !dbg !7320
  %idx.ext33 = zext i32 %and32 to i64, !dbg !7320
  %add.ptr34 = getelementptr i8, ptr %47, i64 %idx.ext33, !dbg !7320
  %50 = load ptr, ptr %dev.addr, align 8, !dbg !7320
  %call35 = call ptr @dev_name(ptr noundef %50) #9, !dbg !7320
  %tobool36 = icmp ne ptr %call35, null, !dbg !7320
  br i1 %tobool36, label %cond.true37, label %cond.false39, !dbg !7320

cond.true37:                                      ; preds = %cond.end
  %51 = load ptr, ptr %dev.addr, align 8, !dbg !7320
  %call38 = call ptr @dev_name(ptr noundef %51) #9, !dbg !7320
  br label %cond.end40, !dbg !7320

cond.false39:                                     ; preds = %cond.end
  br label %cond.end40, !dbg !7320

cond.end40:                                       ; preds = %cond.false39, %cond.true37
  %cond41 = phi ptr [ %call38, %cond.true37 ], [ @.str, %cond.false39 ], !dbg !7320
  %call42 = call ptr @strcpy(ptr noundef %add.ptr34, ptr noundef %cond41) #9, !dbg !7320
  %52 = load ptr, ptr %entry1, align 8, !dbg !7311
  %53 = load i32, ptr %__entry_size, align 4, !dbg !7311
  %54 = load i32, ptr %rctx, align 4, !dbg !7311
  %55 = load ptr, ptr %event_call, align 8, !dbg !7311
  %56 = load i64, ptr %__count, align 8, !dbg !7311
  %57 = load ptr, ptr %__regs, align 8, !dbg !7311
  %58 = load ptr, ptr %head, align 8, !dbg !7311
  %59 = load ptr, ptr %__task, align 8, !dbg !7311
  call void @perf_trace_run_bpf_submit(ptr noundef %52, i32 noundef %53, i32 noundef %54, ptr noundef %55, i64 noundef %56, ptr noundef %57, ptr noundef %58, ptr noundef %59) #9, !dbg !7311
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7311
  br label %cleanup, !dbg !7311

cleanup:                                          ; preds = %cond.end40, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rctx) #8, !dbg !7311
  call void @llvm.lifetime.end.p0(i64 4, ptr %__data_size) #8, !dbg !7311
  call void @llvm.lifetime.end.p0(i64 4, ptr %__entry_size) #8, !dbg !7311
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #8, !dbg !7311
  call void @llvm.lifetime.end.p0(i64 8, ptr %__task) #8, !dbg !7311
  call void @llvm.lifetime.end.p0(i64 8, ptr %__count) #8, !dbg !7311
  call void @llvm.lifetime.end.p0(i64 8, ptr %__regs) #8, !dbg !7311
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #8, !dbg !7311
  call void @llvm.lifetime.end.p0(i64 12, ptr %__data_offsets) #8, !dbg !7311
  call void @llvm.lifetime.end.p0(i64 8, ptr %event_call) #8, !dbg !7311
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !7311

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_trace_event_raw_event_qi_submit(ptr noundef %__data, ptr noundef %iommu, i64 noundef %qw0, i64 noundef %qw1, i64 noundef %qw2, i64 noundef %qw3) #1 align 16 !dbg !7322 {
entry:
  %__data.addr = alloca ptr, align 8
  %iommu.addr = alloca ptr, align 8
  %qw0.addr = alloca i64, align 8
  %qw1.addr = alloca i64, align 8
  %qw2.addr = alloca i64, align 8
  %qw3.addr = alloca i64, align 8
  %trace_file = alloca ptr, align 8
  %__data_offsets = alloca %struct.trace_event_data_offsets_qi_submit, align 4
  %fbuffer = alloca %struct.trace_event_buffer, align 8
  %entry1 = alloca ptr, align 8
  %__data_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !7324, metadata !DIExpression()), !dbg !7369
  store ptr %iommu, ptr %iommu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iommu.addr, metadata !7325, metadata !DIExpression()), !dbg !7369
  store i64 %qw0, ptr %qw0.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %qw0.addr, metadata !7326, metadata !DIExpression()), !dbg !7369
  store i64 %qw1, ptr %qw1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %qw1.addr, metadata !7327, metadata !DIExpression()), !dbg !7369
  store i64 %qw2, ptr %qw2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %qw2.addr, metadata !7328, metadata !DIExpression()), !dbg !7369
  store i64 %qw3, ptr %qw3.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %qw3.addr, metadata !7329, metadata !DIExpression()), !dbg !7369
  call void @llvm.lifetime.start.p0(i64 8, ptr %trace_file) #8, !dbg !7369
  call void @llvm.dbg.declare(metadata ptr %trace_file, metadata !7330, metadata !DIExpression()), !dbg !7369
  %0 = load ptr, ptr %__data.addr, align 8, !dbg !7369
  store ptr %0, ptr %trace_file, align 8, !dbg !7369
  call void @llvm.lifetime.start.p0(i64 4, ptr %__data_offsets) #8, !dbg !7369
  call void @llvm.dbg.declare(metadata ptr %__data_offsets, metadata !7349, metadata !DIExpression()), !dbg !7369
  call void @llvm.lifetime.start.p0(i64 48, ptr %fbuffer) #8, !dbg !7369
  call void @llvm.dbg.declare(metadata ptr %fbuffer, metadata !7350, metadata !DIExpression()), !dbg !7369
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #8, !dbg !7369
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !7367, metadata !DIExpression()), !dbg !7369
  call void @llvm.lifetime.start.p0(i64 4, ptr %__data_size) #8, !dbg !7369
  call void @llvm.dbg.declare(metadata ptr %__data_size, metadata !7368, metadata !DIExpression()), !dbg !7369
  %1 = load ptr, ptr %trace_file, align 8, !dbg !7370
  %call = call zeroext i1 @trace_trigger_soft_disabled(ptr noundef %1) #9, !dbg !7370
  br i1 %call, label %if.then, label %if.end, !dbg !7369

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7370

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %iommu.addr, align 8, !dbg !7369
  %3 = load i64, ptr %qw0.addr, align 8, !dbg !7369
  %4 = load i64, ptr %qw1.addr, align 8, !dbg !7369
  %5 = load i64, ptr %qw2.addr, align 8, !dbg !7369
  %6 = load i64, ptr %qw3.addr, align 8, !dbg !7369
  %call2 = call i32 @trace_event_get_offsets_qi_submit(ptr noundef %__data_offsets, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) #9, !dbg !7369
  store i32 %call2, ptr %__data_size, align 4, !dbg !7369
  %7 = load ptr, ptr %trace_file, align 8, !dbg !7369
  %8 = load i32, ptr %__data_size, align 4, !dbg !7369
  %conv = sext i32 %8 to i64, !dbg !7369
  %add = add i64 48, %conv, !dbg !7369
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef %fbuffer, ptr noundef %7, i64 noundef %add) #9, !dbg !7369
  store ptr %call3, ptr %entry1, align 8, !dbg !7369
  %9 = load ptr, ptr %entry1, align 8, !dbg !7372
  %tobool = icmp ne ptr %9, null, !dbg !7372
  br i1 %tobool, label %if.end5, label %if.then4, !dbg !7369

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7372

if.end5:                                          ; preds = %if.end
  %iommu6 = getelementptr inbounds %struct.trace_event_data_offsets_qi_submit, ptr %__data_offsets, i32 0, i32 0, !dbg !7369
  %10 = load i32, ptr %iommu6, align 4, !dbg !7369
  %11 = load ptr, ptr %entry1, align 8, !dbg !7369
  %__data_loc_iommu = getelementptr inbounds %struct.trace_event_raw_qi_submit, ptr %11, i32 0, i32 5, !dbg !7369
  store i32 %10, ptr %__data_loc_iommu, align 8, !dbg !7369
  %12 = load ptr, ptr %entry1, align 8, !dbg !7374
  %13 = load ptr, ptr %entry1, align 8, !dbg !7374
  %__data_loc_iommu7 = getelementptr inbounds %struct.trace_event_raw_qi_submit, ptr %13, i32 0, i32 5, !dbg !7374
  %14 = load i32, ptr %__data_loc_iommu7, align 8, !dbg !7374
  %and = and i32 %14, 65535, !dbg !7374
  %idx.ext = zext i32 %and to i64, !dbg !7374
  %add.ptr = getelementptr i8, ptr %12, i64 %idx.ext, !dbg !7374
  %15 = load ptr, ptr %iommu.addr, align 8, !dbg !7374
  %name = getelementptr inbounds %struct.intel_iommu, ptr %15, i32 0, i32 16, !dbg !7374
  %arraydecay = getelementptr inbounds [13 x i8], ptr %name, i64 0, i64 0, !dbg !7374
  %tobool8 = icmp ne ptr %arraydecay, null, !dbg !7374
  br i1 %tobool8, label %cond.true, label %cond.false, !dbg !7374

cond.true:                                        ; preds = %if.end5
  %16 = load ptr, ptr %iommu.addr, align 8, !dbg !7374
  %name9 = getelementptr inbounds %struct.intel_iommu, ptr %16, i32 0, i32 16, !dbg !7374
  %arraydecay10 = getelementptr inbounds [13 x i8], ptr %name9, i64 0, i64 0, !dbg !7374
  br label %cond.end, !dbg !7374

cond.false:                                       ; preds = %if.end5
  br label %cond.end, !dbg !7374

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arraydecay10, %cond.true ], [ @.str, %cond.false ], !dbg !7374
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #9, !dbg !7374
  %17 = load i64, ptr %qw0.addr, align 8, !dbg !7374
  %18 = load ptr, ptr %entry1, align 8, !dbg !7374
  %qw012 = getelementptr inbounds %struct.trace_event_raw_qi_submit, ptr %18, i32 0, i32 1, !dbg !7374
  store i64 %17, ptr %qw012, align 8, !dbg !7374
  %19 = load i64, ptr %qw1.addr, align 8, !dbg !7374
  %20 = load ptr, ptr %entry1, align 8, !dbg !7374
  %qw113 = getelementptr inbounds %struct.trace_event_raw_qi_submit, ptr %20, i32 0, i32 2, !dbg !7374
  store i64 %19, ptr %qw113, align 8, !dbg !7374
  %21 = load i64, ptr %qw2.addr, align 8, !dbg !7374
  %22 = load ptr, ptr %entry1, align 8, !dbg !7374
  %qw214 = getelementptr inbounds %struct.trace_event_raw_qi_submit, ptr %22, i32 0, i32 3, !dbg !7374
  store i64 %21, ptr %qw214, align 8, !dbg !7374
  %23 = load i64, ptr %qw3.addr, align 8, !dbg !7374
  %24 = load ptr, ptr %entry1, align 8, !dbg !7374
  %qw315 = getelementptr inbounds %struct.trace_event_raw_qi_submit, ptr %24, i32 0, i32 4, !dbg !7374
  store i64 %23, ptr %qw315, align 8, !dbg !7374
  call void @trace_event_buffer_commit(ptr noundef %fbuffer) #9, !dbg !7369
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7369
  br label %cleanup, !dbg !7369

cleanup:                                          ; preds = %cond.end, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %__data_size) #8, !dbg !7369
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #8, !dbg !7369
  call void @llvm.lifetime.end.p0(i64 48, ptr %fbuffer) #8, !dbg !7369
  call void @llvm.lifetime.end.p0(i64 4, ptr %__data_offsets) #8, !dbg !7369
  call void @llvm.lifetime.end.p0(i64 8, ptr %trace_file) #8, !dbg !7369
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !7369

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @trace_trigger_soft_disabled(ptr noundef %file) #4 align 16 !dbg !7376 {
entry:
  %retval = alloca i1, align 1
  %file.addr = alloca ptr, align 8
  %eflags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !7380, metadata !DIExpression()), !dbg !7382
  call void @llvm.lifetime.start.p0(i64 8, ptr %eflags) #8, !dbg !7383
  call void @llvm.dbg.declare(metadata ptr %eflags, metadata !7381, metadata !DIExpression()), !dbg !7384
  %0 = load ptr, ptr %file.addr, align 8, !dbg !7385
  %flags = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7, !dbg !7386
  %1 = load i64, ptr %flags, align 8, !dbg !7386
  store i64 %1, ptr %eflags, align 8, !dbg !7384
  %2 = load i64, ptr %eflags, align 8, !dbg !7387
  %and = and i64 %2, 704, !dbg !7387
  %tobool = icmp ne i64 %and, 0, !dbg !7387
  %lnot = xor i1 %tobool, true, !dbg !7387
  %lnot1 = xor i1 %lnot, true, !dbg !7387
  %lnot2 = xor i1 %lnot1, true, !dbg !7387
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !7387
  %conv = sext i32 %lnot.ext to i64, !dbg !7387
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7387
  %tobool3 = icmp ne i64 %expval, 0, !dbg !7387
  br i1 %tobool3, label %if.then, label %if.end, !dbg !7389

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !7390
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7390

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %eflags, align 8, !dbg !7391
  %and4 = and i64 %3, 256, !dbg !7391
  %tobool5 = icmp ne i64 %and4, 0, !dbg !7391
  %lnot6 = xor i1 %tobool5, true, !dbg !7391
  %lnot8 = xor i1 %lnot6, true, !dbg !7391
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !7391
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !7391
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !7391
  %tobool12 = icmp ne i64 %expval11, 0, !dbg !7391
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !7393

if.then13:                                        ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !7394
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7394

if.end14:                                         ; preds = %if.end
  %4 = load ptr, ptr %file.addr, align 8, !dbg !7395
  %call = call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %4) #9, !dbg !7396
  store i1 %call, ptr %retval, align 1, !dbg !7397
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7397

cleanup:                                          ; preds = %if.end14, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %eflags) #8, !dbg !7398
  %5 = load i1, ptr %retval, align 1, !dbg !7398
  ret i1 %5, !dbg !7398
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trace_event_get_offsets_qi_submit(ptr noundef %__data_offsets, ptr noundef %iommu, i64 noundef %qw0, i64 noundef %qw1, i64 noundef %qw2, i64 noundef %qw3) #5 align 16 !dbg !7399 {
entry:
  %__data_offsets.addr = alloca ptr, align 8
  %iommu.addr = alloca ptr, align 8
  %qw0.addr = alloca i64, align 8
  %qw1.addr = alloca i64, align 8
  %qw2.addr = alloca i64, align 8
  %qw3.addr = alloca i64, align 8
  %__data_size = alloca i32, align 4
  %__item_length = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  store ptr %__data_offsets, ptr %__data_offsets.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data_offsets.addr, metadata !7404, metadata !DIExpression()), !dbg !7413
  store ptr %iommu, ptr %iommu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iommu.addr, metadata !7405, metadata !DIExpression()), !dbg !7413
  store i64 %qw0, ptr %qw0.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %qw0.addr, metadata !7406, metadata !DIExpression()), !dbg !7413
  store i64 %qw1, ptr %qw1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %qw1.addr, metadata !7407, metadata !DIExpression()), !dbg !7413
  store i64 %qw2, ptr %qw2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %qw2.addr, metadata !7408, metadata !DIExpression()), !dbg !7413
  store i64 %qw3, ptr %qw3.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %qw3.addr, metadata !7409, metadata !DIExpression()), !dbg !7413
  call void @llvm.lifetime.start.p0(i64 4, ptr %__data_size) #8, !dbg !7413
  call void @llvm.dbg.declare(metadata ptr %__data_size, metadata !7410, metadata !DIExpression()), !dbg !7413
  store i32 0, ptr %__data_size, align 4, !dbg !7413
  call void @llvm.lifetime.start.p0(i64 4, ptr %__item_length) #8, !dbg !7413
  call void @llvm.dbg.declare(metadata ptr %__item_length, metadata !7411, metadata !DIExpression()), !dbg !7413
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #8, !dbg !7413
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !7412, metadata !DIExpression()), !dbg !7413
  %0 = load ptr, ptr %iommu.addr, align 8, !dbg !7413
  %name = getelementptr inbounds %struct.intel_iommu, ptr %0, i32 0, i32 16, !dbg !7413
  %arraydecay = getelementptr inbounds [13 x i8], ptr %name, i64 0, i64 0, !dbg !7413
  %tobool = icmp ne ptr %arraydecay, null, !dbg !7413
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !7413

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %iommu.addr, align 8, !dbg !7413
  %name2 = getelementptr inbounds %struct.intel_iommu, ptr %1, i32 0, i32 16, !dbg !7413
  %arraydecay3 = getelementptr inbounds [13 x i8], ptr %name2, i64 0, i64 0, !dbg !7413
  br label %cond.end, !dbg !7413

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !7413

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arraydecay3, %cond.true ], [ @.str, %cond.false ], !dbg !7413
  %call = call i64 @strlen(ptr noundef %cond) #9, !dbg !7413
  %add = add i64 %call, 1, !dbg !7413
  %mul = mul i64 %add, 1, !dbg !7413
  %conv = trunc i64 %mul to i32, !dbg !7413
  store i32 %conv, ptr %__item_length, align 4, !dbg !7413
  %2 = load i32, ptr %__data_size, align 4, !dbg !7413
  %conv4 = sext i32 %2 to i64, !dbg !7413
  %add5 = add i64 %conv4, 44, !dbg !7413
  %conv6 = trunc i64 %add5 to i32, !dbg !7413
  %3 = load ptr, ptr %__data_offsets.addr, align 8, !dbg !7413
  %iommu7 = getelementptr inbounds %struct.trace_event_data_offsets_qi_submit, ptr %3, i32 0, i32 0, !dbg !7413
  store i32 %conv6, ptr %iommu7, align 4, !dbg !7413
  %4 = load i32, ptr %__item_length, align 4, !dbg !7413
  %shl = shl i32 %4, 16, !dbg !7413
  %5 = load ptr, ptr %__data_offsets.addr, align 8, !dbg !7413
  %iommu8 = getelementptr inbounds %struct.trace_event_data_offsets_qi_submit, ptr %5, i32 0, i32 0, !dbg !7413
  %6 = load i32, ptr %iommu8, align 4, !dbg !7413
  %or = or i32 %6, %shl, !dbg !7413
  store i32 %or, ptr %iommu8, align 4, !dbg !7413
  %7 = load i32, ptr %__item_length, align 4, !dbg !7413
  %8 = load i32, ptr %__data_size, align 4, !dbg !7413
  %add9 = add i32 %8, %7, !dbg !7413
  store i32 %add9, ptr %__data_size, align 4, !dbg !7413
  %9 = load i32, ptr %__data_size, align 4, !dbg !7413
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #8, !dbg !7413
  call void @llvm.lifetime.end.p0(i64 4, ptr %__item_length) #8, !dbg !7413
  call void @llvm.lifetime.end.p0(i64 4, ptr %__data_size) #8, !dbg !7413
  ret i32 %9, !dbg !7413
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7414 dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7418 dso_local ptr @strcpy(ptr noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7422 dso_local void @trace_event_buffer_commit(ptr noundef) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7425 dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7426 dso_local i64 @strlen(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trace_raw_output_qi_submit(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #1 align 16 !dbg !7067 {
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
  %tmp = alloca ptr, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !7069, metadata !DIExpression()), !dbg !7429
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7070, metadata !DIExpression()), !dbg !7429
  store ptr %trace_event, ptr %trace_event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trace_event.addr, metadata !7071, metadata !DIExpression()), !dbg !7429
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #8, !dbg !7429
  call void @llvm.dbg.declare(metadata ptr %s, metadata !7072, metadata !DIExpression()), !dbg !7429
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !7429
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16, !dbg !7429
  store ptr %seq, ptr %s, align 8, !dbg !7429
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !7429
  call void @llvm.dbg.declare(metadata ptr %p, metadata !7074, metadata !DIExpression()), !dbg !7429
  %1 = load ptr, ptr %iter.addr, align 8, !dbg !7429
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %1, i32 0, i32 13, !dbg !7429
  store ptr %tmp_seq, ptr %p, align 8, !dbg !7429
  call void @llvm.lifetime.start.p0(i64 8, ptr %field) #8, !dbg !7429
  call void @llvm.dbg.declare(metadata ptr %field, metadata !7075, metadata !DIExpression()), !dbg !7429
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8, !dbg !7429
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7076, metadata !DIExpression()), !dbg !7429
  %2 = load ptr, ptr %iter.addr, align 8, !dbg !7429
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %2, i32 0, i32 17, !dbg !7429
  %3 = load ptr, ptr %ent, align 8, !dbg !7429
  store ptr %3, ptr %field, align 8, !dbg !7429
  %4 = load ptr, ptr %iter.addr, align 8, !dbg !7429
  %5 = load ptr, ptr %trace_event.addr, align 8, !dbg !7429
  %call = call i32 @trace_raw_output_prep(ptr noundef %4, ptr noundef %5) #9, !dbg !7429
  store i32 %call, ptr %ret, align 4, !dbg !7429
  %6 = load i32, ptr %ret, align 4, !dbg !7430
  %cmp = icmp ne i32 %6, 1, !dbg !7430
  br i1 %cmp, label %if.then, label %if.end, !dbg !7429

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %ret, align 4, !dbg !7430
  store i32 %7, ptr %retval, align 4, !dbg !7430
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7430

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %iter.addr, align 8, !dbg !7429
  %9 = load ptr, ptr %p, align 8, !dbg !7432
  %10 = load ptr, ptr %field, align 8, !dbg !7432
  %qw0 = getelementptr inbounds %struct.trace_event_raw_qi_submit, ptr %10, i32 0, i32 1, !dbg !7432
  %11 = load i64, ptr %qw0, align 8, !dbg !7432
  %and = and i64 %11, 15, !dbg !7432
  %call1 = call ptr @trace_print_symbols_seq(ptr noundef %9, i64 noundef %and, ptr noundef @trace_raw_output_qi_submit.symbols) #9, !dbg !7432
  store ptr %call1, ptr %tmp, align 8, !dbg !7432
  %12 = load ptr, ptr %tmp, align 8, !dbg !7432
  %13 = load ptr, ptr %field, align 8, !dbg !7429
  %14 = load ptr, ptr %field, align 8, !dbg !7429
  %__data_loc_iommu = getelementptr inbounds %struct.trace_event_raw_qi_submit, ptr %14, i32 0, i32 5, !dbg !7429
  %15 = load i32, ptr %__data_loc_iommu, align 8, !dbg !7429
  %and2 = and i32 %15, 65535, !dbg !7429
  %idx.ext = zext i32 %and2 to i64, !dbg !7429
  %add.ptr = getelementptr i8, ptr %13, i64 %idx.ext, !dbg !7429
  %16 = load ptr, ptr %field, align 8, !dbg !7429
  %qw03 = getelementptr inbounds %struct.trace_event_raw_qi_submit, ptr %16, i32 0, i32 1, !dbg !7429
  %17 = load i64, ptr %qw03, align 8, !dbg !7429
  %18 = load ptr, ptr %field, align 8, !dbg !7429
  %qw1 = getelementptr inbounds %struct.trace_event_raw_qi_submit, ptr %18, i32 0, i32 2, !dbg !7429
  %19 = load i64, ptr %qw1, align 8, !dbg !7429
  %20 = load ptr, ptr %field, align 8, !dbg !7429
  %qw2 = getelementptr inbounds %struct.trace_event_raw_qi_submit, ptr %20, i32 0, i32 3, !dbg !7429
  %21 = load i64, ptr %qw2, align 8, !dbg !7429
  %22 = load ptr, ptr %field, align 8, !dbg !7429
  %qw3 = getelementptr inbounds %struct.trace_event_raw_qi_submit, ptr %22, i32 0, i32 4, !dbg !7429
  %23 = load i64, ptr %qw3, align 8, !dbg !7429
  call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %8, ptr noundef @.str.8, ptr noundef %12, ptr noundef %add.ptr, i64 noundef %17, i64 noundef %19, i64 noundef %21, i64 noundef %23) #9, !dbg !7429
  %24 = load ptr, ptr %s, align 8, !dbg !7429
  %call4 = call i32 @trace_handle_return(ptr noundef %24) #9, !dbg !7429
  store i32 %call4, ptr %retval, align 4, !dbg !7429
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7429

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8, !dbg !7429
  call void @llvm.lifetime.end.p0(i64 8, ptr %field) #8, !dbg !7429
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !7429
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #8, !dbg !7429
  %25 = load i32, ptr %retval, align 4, !dbg !7429
  ret i32 %25, !dbg !7429
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7434 dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7437 dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7440 dso_local ptr @trace_print_symbols_seq(ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7444 dso_local i32 @trace_handle_return(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_trace_event_raw_event_prq_report(ptr noundef %__data, ptr noundef %iommu, ptr noundef %dev, i64 noundef %dw0, i64 noundef %dw1, i64 noundef %dw2, i64 noundef %dw3, i64 noundef %seq) #1 align 16 !dbg !7447 {
entry:
  %__data.addr = alloca ptr, align 8
  %iommu.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %dw0.addr = alloca i64, align 8
  %dw1.addr = alloca i64, align 8
  %dw2.addr = alloca i64, align 8
  %dw3.addr = alloca i64, align 8
  %seq.addr = alloca i64, align 8
  %trace_file = alloca ptr, align 8
  %__data_offsets = alloca %struct.trace_event_data_offsets_prq_report, align 4
  %fbuffer = alloca %struct.trace_event_buffer, align 8
  %entry1 = alloca ptr, align 8
  %__data_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !7449, metadata !DIExpression()), !dbg !7462
  store ptr %iommu, ptr %iommu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iommu.addr, metadata !7450, metadata !DIExpression()), !dbg !7462
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7451, metadata !DIExpression()), !dbg !7462
  store i64 %dw0, ptr %dw0.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dw0.addr, metadata !7452, metadata !DIExpression()), !dbg !7462
  store i64 %dw1, ptr %dw1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dw1.addr, metadata !7453, metadata !DIExpression()), !dbg !7462
  store i64 %dw2, ptr %dw2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dw2.addr, metadata !7454, metadata !DIExpression()), !dbg !7462
  store i64 %dw3, ptr %dw3.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dw3.addr, metadata !7455, metadata !DIExpression()), !dbg !7462
  store i64 %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !7456, metadata !DIExpression()), !dbg !7462
  call void @llvm.lifetime.start.p0(i64 8, ptr %trace_file) #8, !dbg !7462
  call void @llvm.dbg.declare(metadata ptr %trace_file, metadata !7457, metadata !DIExpression()), !dbg !7462
  %0 = load ptr, ptr %__data.addr, align 8, !dbg !7462
  store ptr %0, ptr %trace_file, align 8, !dbg !7462
  call void @llvm.lifetime.start.p0(i64 12, ptr %__data_offsets) #8, !dbg !7462
  call void @llvm.dbg.declare(metadata ptr %__data_offsets, metadata !7458, metadata !DIExpression()), !dbg !7462
  call void @llvm.lifetime.start.p0(i64 48, ptr %fbuffer) #8, !dbg !7462
  call void @llvm.dbg.declare(metadata ptr %fbuffer, metadata !7459, metadata !DIExpression()), !dbg !7462
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #8, !dbg !7462
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !7460, metadata !DIExpression()), !dbg !7462
  call void @llvm.lifetime.start.p0(i64 4, ptr %__data_size) #8, !dbg !7462
  call void @llvm.dbg.declare(metadata ptr %__data_size, metadata !7461, metadata !DIExpression()), !dbg !7462
  %1 = load ptr, ptr %trace_file, align 8, !dbg !7463
  %call = call zeroext i1 @trace_trigger_soft_disabled(ptr noundef %1) #9, !dbg !7463
  br i1 %call, label %if.then, label %if.end, !dbg !7462

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7463

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %iommu.addr, align 8, !dbg !7462
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !7462
  %4 = load i64, ptr %dw0.addr, align 8, !dbg !7462
  %5 = load i64, ptr %dw1.addr, align 8, !dbg !7462
  %6 = load i64, ptr %dw2.addr, align 8, !dbg !7462
  %7 = load i64, ptr %dw3.addr, align 8, !dbg !7462
  %8 = load i64, ptr %seq.addr, align 8, !dbg !7462
  %call2 = call i32 @trace_event_get_offsets_prq_report(ptr noundef %__data_offsets, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) #9, !dbg !7462
  store i32 %call2, ptr %__data_size, align 4, !dbg !7462
  %9 = load ptr, ptr %trace_file, align 8, !dbg !7462
  %10 = load i32, ptr %__data_size, align 4, !dbg !7462
  %conv = sext i32 %10 to i64, !dbg !7462
  %add = add i64 64, %conv, !dbg !7462
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef %fbuffer, ptr noundef %9, i64 noundef %add) #9, !dbg !7462
  store ptr %call3, ptr %entry1, align 8, !dbg !7462
  %11 = load ptr, ptr %entry1, align 8, !dbg !7465
  %tobool = icmp ne ptr %11, null, !dbg !7465
  br i1 %tobool, label %if.end5, label %if.then4, !dbg !7462

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7465

if.end5:                                          ; preds = %if.end
  %iommu6 = getelementptr inbounds %struct.trace_event_data_offsets_prq_report, ptr %__data_offsets, i32 0, i32 0, !dbg !7462
  %12 = load i32, ptr %iommu6, align 4, !dbg !7462
  %13 = load ptr, ptr %entry1, align 8, !dbg !7462
  %__data_loc_iommu = getelementptr inbounds %struct.trace_event_raw_prq_report, ptr %13, i32 0, i32 6, !dbg !7462
  store i32 %12, ptr %__data_loc_iommu, align 8, !dbg !7462
  %dev7 = getelementptr inbounds %struct.trace_event_data_offsets_prq_report, ptr %__data_offsets, i32 0, i32 1, !dbg !7462
  %14 = load i32, ptr %dev7, align 4, !dbg !7462
  %15 = load ptr, ptr %entry1, align 8, !dbg !7462
  %__data_loc_dev = getelementptr inbounds %struct.trace_event_raw_prq_report, ptr %15, i32 0, i32 7, !dbg !7462
  store i32 %14, ptr %__data_loc_dev, align 4, !dbg !7462
  %buff = getelementptr inbounds %struct.trace_event_data_offsets_prq_report, ptr %__data_offsets, i32 0, i32 2, !dbg !7462
  %16 = load i32, ptr %buff, align 4, !dbg !7462
  %17 = load ptr, ptr %entry1, align 8, !dbg !7462
  %__data_loc_buff = getelementptr inbounds %struct.trace_event_raw_prq_report, ptr %17, i32 0, i32 8, !dbg !7462
  store i32 %16, ptr %__data_loc_buff, align 8, !dbg !7462
  %18 = load i64, ptr %dw0.addr, align 8, !dbg !7467
  %19 = load ptr, ptr %entry1, align 8, !dbg !7467
  %dw08 = getelementptr inbounds %struct.trace_event_raw_prq_report, ptr %19, i32 0, i32 1, !dbg !7467
  store i64 %18, ptr %dw08, align 8, !dbg !7467
  %20 = load i64, ptr %dw1.addr, align 8, !dbg !7467
  %21 = load ptr, ptr %entry1, align 8, !dbg !7467
  %dw19 = getelementptr inbounds %struct.trace_event_raw_prq_report, ptr %21, i32 0, i32 2, !dbg !7467
  store i64 %20, ptr %dw19, align 8, !dbg !7467
  %22 = load i64, ptr %dw2.addr, align 8, !dbg !7467
  %23 = load ptr, ptr %entry1, align 8, !dbg !7467
  %dw210 = getelementptr inbounds %struct.trace_event_raw_prq_report, ptr %23, i32 0, i32 3, !dbg !7467
  store i64 %22, ptr %dw210, align 8, !dbg !7467
  %24 = load i64, ptr %dw3.addr, align 8, !dbg !7467
  %25 = load ptr, ptr %entry1, align 8, !dbg !7467
  %dw311 = getelementptr inbounds %struct.trace_event_raw_prq_report, ptr %25, i32 0, i32 4, !dbg !7467
  store i64 %24, ptr %dw311, align 8, !dbg !7467
  %26 = load i64, ptr %seq.addr, align 8, !dbg !7467
  %27 = load ptr, ptr %entry1, align 8, !dbg !7467
  %seq12 = getelementptr inbounds %struct.trace_event_raw_prq_report, ptr %27, i32 0, i32 5, !dbg !7467
  store i64 %26, ptr %seq12, align 8, !dbg !7467
  %28 = load ptr, ptr %entry1, align 8, !dbg !7467
  %29 = load ptr, ptr %entry1, align 8, !dbg !7467
  %__data_loc_iommu13 = getelementptr inbounds %struct.trace_event_raw_prq_report, ptr %29, i32 0, i32 6, !dbg !7467
  %30 = load i32, ptr %__data_loc_iommu13, align 8, !dbg !7467
  %and = and i32 %30, 65535, !dbg !7467
  %idx.ext = zext i32 %and to i64, !dbg !7467
  %add.ptr = getelementptr i8, ptr %28, i64 %idx.ext, !dbg !7467
  %31 = load ptr, ptr %iommu.addr, align 8, !dbg !7467
  %name = getelementptr inbounds %struct.intel_iommu, ptr %31, i32 0, i32 16, !dbg !7467
  %arraydecay = getelementptr inbounds [13 x i8], ptr %name, i64 0, i64 0, !dbg !7467
  %tobool14 = icmp ne ptr %arraydecay, null, !dbg !7467
  br i1 %tobool14, label %cond.true, label %cond.false, !dbg !7467

cond.true:                                        ; preds = %if.end5
  %32 = load ptr, ptr %iommu.addr, align 8, !dbg !7467
  %name15 = getelementptr inbounds %struct.intel_iommu, ptr %32, i32 0, i32 16, !dbg !7467
  %arraydecay16 = getelementptr inbounds [13 x i8], ptr %name15, i64 0, i64 0, !dbg !7467
  br label %cond.end, !dbg !7467

cond.false:                                       ; preds = %if.end5
  br label %cond.end, !dbg !7467

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arraydecay16, %cond.true ], [ @.str, %cond.false ], !dbg !7467
  %call17 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #9, !dbg !7467
  %33 = load ptr, ptr %entry1, align 8, !dbg !7467
  %34 = load ptr, ptr %entry1, align 8, !dbg !7467
  %__data_loc_dev18 = getelementptr inbounds %struct.trace_event_raw_prq_report, ptr %34, i32 0, i32 7, !dbg !7467
  %35 = load i32, ptr %__data_loc_dev18, align 4, !dbg !7467
  %and19 = and i32 %35, 65535, !dbg !7467
  %idx.ext20 = zext i32 %and19 to i64, !dbg !7467
  %add.ptr21 = getelementptr i8, ptr %33, i64 %idx.ext20, !dbg !7467
  %36 = load ptr, ptr %dev.addr, align 8, !dbg !7467
  %call22 = call ptr @dev_name(ptr noundef %36) #9, !dbg !7467
  %tobool23 = icmp ne ptr %call22, null, !dbg !7467
  br i1 %tobool23, label %cond.true24, label %cond.false26, !dbg !7467

cond.true24:                                      ; preds = %cond.end
  %37 = load ptr, ptr %dev.addr, align 8, !dbg !7467
  %call25 = call ptr @dev_name(ptr noundef %37) #9, !dbg !7467
  br label %cond.end27, !dbg !7467

cond.false26:                                     ; preds = %cond.end
  br label %cond.end27, !dbg !7467

cond.end27:                                       ; preds = %cond.false26, %cond.true24
  %cond28 = phi ptr [ %call25, %cond.true24 ], [ @.str, %cond.false26 ], !dbg !7467
  %call29 = call ptr @strcpy(ptr noundef %add.ptr21, ptr noundef %cond28) #9, !dbg !7467
  call void @trace_event_buffer_commit(ptr noundef %fbuffer) #9, !dbg !7462
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7462
  br label %cleanup, !dbg !7462

cleanup:                                          ; preds = %cond.end27, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %__data_size) #8, !dbg !7462
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #8, !dbg !7462
  call void @llvm.lifetime.end.p0(i64 48, ptr %fbuffer) #8, !dbg !7462
  call void @llvm.lifetime.end.p0(i64 12, ptr %__data_offsets) #8, !dbg !7462
  call void @llvm.lifetime.end.p0(i64 8, ptr %trace_file) #8, !dbg !7462
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !7462

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trace_event_get_offsets_prq_report(ptr noundef %__data_offsets, ptr noundef %iommu, ptr noundef %dev, i64 noundef %dw0, i64 noundef %dw1, i64 noundef %dw2, i64 noundef %dw3, i64 noundef %seq) #5 align 16 !dbg !7469 {
entry:
  %__data_offsets.addr = alloca ptr, align 8
  %iommu.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %dw0.addr = alloca i64, align 8
  %dw1.addr = alloca i64, align 8
  %dw2.addr = alloca i64, align 8
  %dw3.addr = alloca i64, align 8
  %seq.addr = alloca i64, align 8
  %__data_size = alloca i32, align 4
  %__item_length = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  store ptr %__data_offsets, ptr %__data_offsets.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data_offsets.addr, metadata !7474, metadata !DIExpression()), !dbg !7485
  store ptr %iommu, ptr %iommu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iommu.addr, metadata !7475, metadata !DIExpression()), !dbg !7485
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7476, metadata !DIExpression()), !dbg !7485
  store i64 %dw0, ptr %dw0.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dw0.addr, metadata !7477, metadata !DIExpression()), !dbg !7485
  store i64 %dw1, ptr %dw1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dw1.addr, metadata !7478, metadata !DIExpression()), !dbg !7485
  store i64 %dw2, ptr %dw2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dw2.addr, metadata !7479, metadata !DIExpression()), !dbg !7485
  store i64 %dw3, ptr %dw3.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dw3.addr, metadata !7480, metadata !DIExpression()), !dbg !7485
  store i64 %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !7481, metadata !DIExpression()), !dbg !7485
  call void @llvm.lifetime.start.p0(i64 4, ptr %__data_size) #8, !dbg !7485
  call void @llvm.dbg.declare(metadata ptr %__data_size, metadata !7482, metadata !DIExpression()), !dbg !7485
  store i32 0, ptr %__data_size, align 4, !dbg !7485
  call void @llvm.lifetime.start.p0(i64 4, ptr %__item_length) #8, !dbg !7485
  call void @llvm.dbg.declare(metadata ptr %__item_length, metadata !7483, metadata !DIExpression()), !dbg !7485
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #8, !dbg !7485
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !7484, metadata !DIExpression()), !dbg !7485
  %0 = load ptr, ptr %iommu.addr, align 8, !dbg !7485
  %name = getelementptr inbounds %struct.intel_iommu, ptr %0, i32 0, i32 16, !dbg !7485
  %arraydecay = getelementptr inbounds [13 x i8], ptr %name, i64 0, i64 0, !dbg !7485
  %tobool = icmp ne ptr %arraydecay, null, !dbg !7485
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !7485

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %iommu.addr, align 8, !dbg !7485
  %name2 = getelementptr inbounds %struct.intel_iommu, ptr %1, i32 0, i32 16, !dbg !7485
  %arraydecay3 = getelementptr inbounds [13 x i8], ptr %name2, i64 0, i64 0, !dbg !7485
  br label %cond.end, !dbg !7485

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !7485

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arraydecay3, %cond.true ], [ @.str, %cond.false ], !dbg !7485
  %call = call i64 @strlen(ptr noundef %cond) #9, !dbg !7485
  %add = add i64 %call, 1, !dbg !7485
  %mul = mul i64 %add, 1, !dbg !7485
  %conv = trunc i64 %mul to i32, !dbg !7485
  store i32 %conv, ptr %__item_length, align 4, !dbg !7485
  %2 = load i32, ptr %__data_size, align 4, !dbg !7485
  %conv4 = sext i32 %2 to i64, !dbg !7485
  %add5 = add i64 %conv4, 60, !dbg !7485
  %conv6 = trunc i64 %add5 to i32, !dbg !7485
  %3 = load ptr, ptr %__data_offsets.addr, align 8, !dbg !7485
  %iommu7 = getelementptr inbounds %struct.trace_event_data_offsets_prq_report, ptr %3, i32 0, i32 0, !dbg !7485
  store i32 %conv6, ptr %iommu7, align 4, !dbg !7485
  %4 = load i32, ptr %__item_length, align 4, !dbg !7485
  %shl = shl i32 %4, 16, !dbg !7485
  %5 = load ptr, ptr %__data_offsets.addr, align 8, !dbg !7485
  %iommu8 = getelementptr inbounds %struct.trace_event_data_offsets_prq_report, ptr %5, i32 0, i32 0, !dbg !7485
  %6 = load i32, ptr %iommu8, align 4, !dbg !7485
  %or = or i32 %6, %shl, !dbg !7485
  store i32 %or, ptr %iommu8, align 4, !dbg !7485
  %7 = load i32, ptr %__item_length, align 4, !dbg !7485
  %8 = load i32, ptr %__data_size, align 4, !dbg !7485
  %add9 = add i32 %8, %7, !dbg !7485
  store i32 %add9, ptr %__data_size, align 4, !dbg !7485
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !7485
  %call10 = call ptr @dev_name(ptr noundef %9) #9, !dbg !7485
  %tobool11 = icmp ne ptr %call10, null, !dbg !7485
  br i1 %tobool11, label %cond.true12, label %cond.false14, !dbg !7485

cond.true12:                                      ; preds = %cond.end
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !7485
  %call13 = call ptr @dev_name(ptr noundef %10) #9, !dbg !7485
  br label %cond.end15, !dbg !7485

cond.false14:                                     ; preds = %cond.end
  br label %cond.end15, !dbg !7485

cond.end15:                                       ; preds = %cond.false14, %cond.true12
  %cond16 = phi ptr [ %call13, %cond.true12 ], [ @.str, %cond.false14 ], !dbg !7485
  %call17 = call i64 @strlen(ptr noundef %cond16) #9, !dbg !7485
  %add18 = add i64 %call17, 1, !dbg !7485
  %mul19 = mul i64 %add18, 1, !dbg !7485
  %conv20 = trunc i64 %mul19 to i32, !dbg !7485
  store i32 %conv20, ptr %__item_length, align 4, !dbg !7485
  %11 = load i32, ptr %__data_size, align 4, !dbg !7485
  %conv21 = sext i32 %11 to i64, !dbg !7485
  %add22 = add i64 %conv21, 60, !dbg !7485
  %conv23 = trunc i64 %add22 to i32, !dbg !7485
  %12 = load ptr, ptr %__data_offsets.addr, align 8, !dbg !7485
  %dev24 = getelementptr inbounds %struct.trace_event_data_offsets_prq_report, ptr %12, i32 0, i32 1, !dbg !7485
  store i32 %conv23, ptr %dev24, align 4, !dbg !7485
  %13 = load i32, ptr %__item_length, align 4, !dbg !7485
  %shl25 = shl i32 %13, 16, !dbg !7485
  %14 = load ptr, ptr %__data_offsets.addr, align 8, !dbg !7485
  %dev26 = getelementptr inbounds %struct.trace_event_data_offsets_prq_report, ptr %14, i32 0, i32 1, !dbg !7485
  %15 = load i32, ptr %dev26, align 4, !dbg !7485
  %or27 = or i32 %15, %shl25, !dbg !7485
  store i32 %or27, ptr %dev26, align 4, !dbg !7485
  %16 = load i32, ptr %__item_length, align 4, !dbg !7485
  %17 = load i32, ptr %__data_size, align 4, !dbg !7485
  %add28 = add i32 %17, %16, !dbg !7485
  store i32 %add28, ptr %__data_size, align 4, !dbg !7485
  store i32 256, ptr %__item_length, align 4, !dbg !7485
  %18 = load i32, ptr %__data_size, align 4, !dbg !7485
  %conv29 = sext i32 %18 to i64, !dbg !7485
  %add30 = add i64 %conv29, 60, !dbg !7485
  %conv31 = trunc i64 %add30 to i32, !dbg !7485
  %19 = load ptr, ptr %__data_offsets.addr, align 8, !dbg !7485
  %buff = getelementptr inbounds %struct.trace_event_data_offsets_prq_report, ptr %19, i32 0, i32 2, !dbg !7485
  store i32 %conv31, ptr %buff, align 4, !dbg !7485
  %20 = load i32, ptr %__item_length, align 4, !dbg !7485
  %shl32 = shl i32 %20, 16, !dbg !7485
  %21 = load ptr, ptr %__data_offsets.addr, align 8, !dbg !7485
  %buff33 = getelementptr inbounds %struct.trace_event_data_offsets_prq_report, ptr %21, i32 0, i32 2, !dbg !7485
  %22 = load i32, ptr %buff33, align 4, !dbg !7485
  %or34 = or i32 %22, %shl32, !dbg !7485
  store i32 %or34, ptr %buff33, align 4, !dbg !7485
  %23 = load i32, ptr %__item_length, align 4, !dbg !7485
  %24 = load i32, ptr %__data_size, align 4, !dbg !7485
  %add35 = add i32 %24, %23, !dbg !7485
  store i32 %add35, ptr %__data_size, align 4, !dbg !7485
  %25 = load i32, ptr %__data_size, align 4, !dbg !7485
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #8, !dbg !7485
  call void @llvm.lifetime.end.p0(i64 4, ptr %__item_length) #8, !dbg !7485
  call void @llvm.lifetime.end.p0(i64 4, ptr %__data_size) #8, !dbg !7485
  ret i32 %25, !dbg !7485
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #5 align 16 !dbg !7486 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7490, metadata !DIExpression()), !dbg !7491
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7492
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !7494
  %1 = load ptr, ptr %init_name, align 8, !dbg !7494
  %tobool = icmp ne ptr %1, null, !dbg !7492
  br i1 %tobool, label %if.then, label %if.end, !dbg !7495

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !7496
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !7497
  %3 = load ptr, ptr %init_name1, align 8, !dbg !7497
  store ptr %3, ptr %retval, align 8, !dbg !7498
  br label %return, !dbg !7498

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !7499
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !7500
  %call = call ptr @kobject_name(ptr noundef %kobj) #9, !dbg !7501
  store ptr %call, ptr %retval, align 8, !dbg !7502
  br label %return, !dbg !7502

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !7503
  ret ptr %5, !dbg !7503
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #5 align 16 !dbg !7504 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !7506, metadata !DIExpression()), !dbg !7507
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !7508
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !7509
  %1 = load ptr, ptr %name, align 8, !dbg !7509
  ret ptr %1, !dbg !7510
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trace_raw_output_prq_report(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #1 align 16 !dbg !7511 {
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
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !7513, metadata !DIExpression()), !dbg !7520
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7514, metadata !DIExpression()), !dbg !7520
  store ptr %trace_event, ptr %trace_event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trace_event.addr, metadata !7515, metadata !DIExpression()), !dbg !7520
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #8, !dbg !7520
  call void @llvm.dbg.declare(metadata ptr %s, metadata !7516, metadata !DIExpression()), !dbg !7520
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !7520
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16, !dbg !7520
  store ptr %seq, ptr %s, align 8, !dbg !7520
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !7520
  call void @llvm.dbg.declare(metadata ptr %p, metadata !7517, metadata !DIExpression()), !dbg !7520
  %1 = load ptr, ptr %iter.addr, align 8, !dbg !7520
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %1, i32 0, i32 13, !dbg !7520
  store ptr %tmp_seq, ptr %p, align 8, !dbg !7520
  call void @llvm.lifetime.start.p0(i64 8, ptr %field) #8, !dbg !7520
  call void @llvm.dbg.declare(metadata ptr %field, metadata !7518, metadata !DIExpression()), !dbg !7520
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8, !dbg !7520
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7519, metadata !DIExpression()), !dbg !7520
  %2 = load ptr, ptr %iter.addr, align 8, !dbg !7520
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %2, i32 0, i32 17, !dbg !7520
  %3 = load ptr, ptr %ent, align 8, !dbg !7520
  store ptr %3, ptr %field, align 8, !dbg !7520
  %4 = load ptr, ptr %iter.addr, align 8, !dbg !7520
  %5 = load ptr, ptr %trace_event.addr, align 8, !dbg !7520
  %call = call i32 @trace_raw_output_prep(ptr noundef %4, ptr noundef %5) #9, !dbg !7520
  store i32 %call, ptr %ret, align 4, !dbg !7520
  %6 = load i32, ptr %ret, align 4, !dbg !7521
  %cmp = icmp ne i32 %6, 1, !dbg !7521
  br i1 %cmp, label %if.then, label %if.end, !dbg !7520

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %ret, align 4, !dbg !7521
  store i32 %7, ptr %retval, align 4, !dbg !7521
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7521

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %iter.addr, align 8, !dbg !7520
  %9 = load ptr, ptr %field, align 8, !dbg !7520
  %10 = load ptr, ptr %field, align 8, !dbg !7520
  %__data_loc_iommu = getelementptr inbounds %struct.trace_event_raw_prq_report, ptr %10, i32 0, i32 6, !dbg !7520
  %11 = load i32, ptr %__data_loc_iommu, align 8, !dbg !7520
  %and = and i32 %11, 65535, !dbg !7520
  %idx.ext = zext i32 %and to i64, !dbg !7520
  %add.ptr = getelementptr i8, ptr %9, i64 %idx.ext, !dbg !7520
  %12 = load ptr, ptr %field, align 8, !dbg !7520
  %13 = load ptr, ptr %field, align 8, !dbg !7520
  %__data_loc_dev = getelementptr inbounds %struct.trace_event_raw_prq_report, ptr %13, i32 0, i32 7, !dbg !7520
  %14 = load i32, ptr %__data_loc_dev, align 4, !dbg !7520
  %and1 = and i32 %14, 65535, !dbg !7520
  %idx.ext2 = zext i32 %and1 to i64, !dbg !7520
  %add.ptr3 = getelementptr i8, ptr %12, i64 %idx.ext2, !dbg !7520
  %15 = load ptr, ptr %field, align 8, !dbg !7520
  %seq4 = getelementptr inbounds %struct.trace_event_raw_prq_report, ptr %15, i32 0, i32 5, !dbg !7520
  %16 = load i64, ptr %seq4, align 8, !dbg !7520
  %17 = load ptr, ptr %field, align 8, !dbg !7520
  %18 = load ptr, ptr %field, align 8, !dbg !7520
  %__data_loc_buff = getelementptr inbounds %struct.trace_event_raw_prq_report, ptr %18, i32 0, i32 8, !dbg !7520
  %19 = load i32, ptr %__data_loc_buff, align 8, !dbg !7520
  %and5 = and i32 %19, 65535, !dbg !7520
  %idx.ext6 = zext i32 %and5 to i64, !dbg !7520
  %add.ptr7 = getelementptr i8, ptr %17, i64 %idx.ext6, !dbg !7520
  %20 = load ptr, ptr %field, align 8, !dbg !7520
  %dw0 = getelementptr inbounds %struct.trace_event_raw_prq_report, ptr %20, i32 0, i32 1, !dbg !7520
  %21 = load i64, ptr %dw0, align 8, !dbg !7520
  %22 = load ptr, ptr %field, align 8, !dbg !7520
  %dw1 = getelementptr inbounds %struct.trace_event_raw_prq_report, ptr %22, i32 0, i32 2, !dbg !7520
  %23 = load i64, ptr %dw1, align 8, !dbg !7520
  %24 = load ptr, ptr %field, align 8, !dbg !7520
  %dw2 = getelementptr inbounds %struct.trace_event_raw_prq_report, ptr %24, i32 0, i32 3, !dbg !7520
  %25 = load i64, ptr %dw2, align 8, !dbg !7520
  %26 = load ptr, ptr %field, align 8, !dbg !7520
  %dw3 = getelementptr inbounds %struct.trace_event_raw_prq_report, ptr %26, i32 0, i32 4, !dbg !7520
  %27 = load i64, ptr %dw3, align 8, !dbg !7520
  %call8 = call ptr @decode_prq_descriptor(ptr noundef %add.ptr7, i64 noundef 256, i64 noundef %21, i64 noundef %23, i64 noundef %25, i64 noundef %27) #9, !dbg !7520
  call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %8, ptr noundef @.str.26, ptr noundef %add.ptr, ptr noundef %add.ptr3, i64 noundef %16, ptr noundef %call8) #9, !dbg !7520
  %28 = load ptr, ptr %s, align 8, !dbg !7520
  %call9 = call i32 @trace_handle_return(ptr noundef %28) #9, !dbg !7520
  store i32 %call9, ptr %retval, align 4, !dbg !7520
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7520

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8, !dbg !7520
  call void @llvm.lifetime.end.p0(i64 8, ptr %field) #8, !dbg !7520
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !7520
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #8, !dbg !7520
  %29 = load i32, ptr %retval, align 4, !dbg !7520
  ret i32 %29, !dbg !7520
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @decode_prq_descriptor(ptr noundef %str, i64 noundef %size, i64 noundef %dw0, i64 noundef %dw1, i64 noundef %dw2, i64 noundef %dw3) #5 align 16 !dbg !7523 {
entry:
  %str.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %dw0.addr = alloca i64, align 8
  %dw1.addr = alloca i64, align 8
  %dw2.addr = alloca i64, align 8
  %dw3.addr = alloca i64, align 8
  %buf = alloca ptr, align 8
  %bytes = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp28 = alloca i64, align 8
  %tmp59 = alloca i64, align 8
  %tmp77 = alloca i64, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !7527, metadata !DIExpression()), !dbg !7535
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7528, metadata !DIExpression()), !dbg !7536
  store i64 %dw0, ptr %dw0.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dw0.addr, metadata !7529, metadata !DIExpression()), !dbg !7537
  store i64 %dw1, ptr %dw1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dw1.addr, metadata !7530, metadata !DIExpression()), !dbg !7538
  store i64 %dw2, ptr %dw2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dw2.addr, metadata !7531, metadata !DIExpression()), !dbg !7539
  store i64 %dw3, ptr %dw3.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dw3.addr, metadata !7532, metadata !DIExpression()), !dbg !7540
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #8, !dbg !7541
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !7533, metadata !DIExpression()), !dbg !7542
  %0 = load ptr, ptr %str.addr, align 8, !dbg !7543
  store ptr %0, ptr %buf, align 8, !dbg !7542
  call void @llvm.lifetime.start.p0(i64 4, ptr %bytes) #8, !dbg !7544
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !7534, metadata !DIExpression()), !dbg !7545
  %1 = load ptr, ptr %buf, align 8, !dbg !7546
  %2 = load i64, ptr %size.addr, align 8, !dbg !7547
  br label %do.body, !dbg !7548

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !7551

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7551

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !7548

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !7553

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !7553

do.end3:                                          ; preds = %do.cond2
  br label %do.body4, !dbg !7548

do.body4:                                         ; preds = %do.end3
  br label %do.cond5, !dbg !7555

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !7555

do.end6:                                          ; preds = %do.cond5
  br label %do.body7, !dbg !7548

do.body7:                                         ; preds = %do.end6
  br label %do.cond8, !dbg !7557

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !7557

do.end9:                                          ; preds = %do.cond8
  br label %do.body10, !dbg !7548

do.body10:                                        ; preds = %do.end9
  br label %do.cond11, !dbg !7559

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !7559

do.end12:                                         ; preds = %do.cond11
  %3 = load i64, ptr %dw0.addr, align 8, !dbg !7561
  %and = and i64 %3, 4294901760, !dbg !7561
  %shr = lshr i64 %and, 16, !dbg !7561
  store i64 %shr, ptr %tmp, align 8, !dbg !7561
  %4 = load i64, ptr %tmp, align 8, !dbg !7561
  br label %do.body13, !dbg !7562

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !7565

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !7565

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !7562

do.body16:                                        ; preds = %do.end15
  br label %do.cond17, !dbg !7567

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !7567

do.end18:                                         ; preds = %do.cond17
  br label %do.body19, !dbg !7562

do.body19:                                        ; preds = %do.end18
  br label %do.cond20, !dbg !7569

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !7569

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !7562

do.body22:                                        ; preds = %do.end21
  br label %do.cond23, !dbg !7571

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !7571

do.end24:                                         ; preds = %do.cond23
  br label %do.body25, !dbg !7562

do.body25:                                        ; preds = %do.end24
  br label %do.cond26, !dbg !7573

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !7573

do.end27:                                         ; preds = %do.cond26
  %5 = load i64, ptr %dw1.addr, align 8, !dbg !7575
  %and29 = and i64 %5, -4096, !dbg !7575
  %shr30 = lshr i64 %and29, 12, !dbg !7575
  store i64 %shr30, ptr %tmp28, align 8, !dbg !7575
  %6 = load i64, ptr %tmp28, align 8, !dbg !7575
  %7 = load i64, ptr %dw1.addr, align 8, !dbg !7576
  %and31 = and i64 %7, 1, !dbg !7577
  %tobool = icmp ne i64 %and31, 0, !dbg !7576
  %8 = zext i1 %tobool to i64, !dbg !7576
  %cond = select i1 %tobool, i32 114, i32 45, !dbg !7576
  %9 = load i64, ptr %dw1.addr, align 8, !dbg !7578
  %and32 = and i64 %9, 2, !dbg !7579
  %tobool33 = icmp ne i64 %and32, 0, !dbg !7578
  %10 = zext i1 %tobool33 to i64, !dbg !7578
  %cond34 = select i1 %tobool33, i32 119, i32 45, !dbg !7578
  %11 = load i64, ptr %dw0.addr, align 8, !dbg !7580
  %and35 = and i64 %11, 4503599627370496, !dbg !7581
  %tobool36 = icmp ne i64 %and35, 0, !dbg !7580
  %12 = zext i1 %tobool36 to i64, !dbg !7580
  %cond37 = select i1 %tobool36, i32 120, i32 45, !dbg !7580
  %13 = load i64, ptr %dw0.addr, align 8, !dbg !7582
  %and38 = and i64 %13, 9007199254740992, !dbg !7583
  %tobool39 = icmp ne i64 %and38, 0, !dbg !7582
  %14 = zext i1 %tobool39 to i64, !dbg !7582
  %cond40 = select i1 %tobool39, i32 112, i32 45, !dbg !7582
  %15 = load i64, ptr %dw1.addr, align 8, !dbg !7584
  %and41 = and i64 %15, 4, !dbg !7585
  %tobool42 = icmp ne i64 %and41, 0, !dbg !7584
  %16 = zext i1 %tobool42 to i64, !dbg !7584
  %cond43 = select i1 %tobool42, i32 108, i32 45, !dbg !7584
  br label %do.body44, !dbg !7586

do.body44:                                        ; preds = %do.end27
  br label %do.cond45, !dbg !7589

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !7589

do.end46:                                         ; preds = %do.cond45
  br label %do.body47, !dbg !7586

do.body47:                                        ; preds = %do.end46
  br label %do.cond48, !dbg !7591

do.cond48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !7591

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !7586

do.body50:                                        ; preds = %do.end49
  br label %do.cond51, !dbg !7593

do.cond51:                                        ; preds = %do.body50
  br label %do.end52, !dbg !7593

do.end52:                                         ; preds = %do.cond51
  br label %do.body53, !dbg !7586

do.body53:                                        ; preds = %do.end52
  br label %do.cond54, !dbg !7595

do.cond54:                                        ; preds = %do.body53
  br label %do.end55, !dbg !7595

do.end55:                                         ; preds = %do.cond54
  br label %do.body56, !dbg !7586

do.body56:                                        ; preds = %do.end55
  br label %do.cond57, !dbg !7597

do.cond57:                                        ; preds = %do.body56
  br label %do.end58, !dbg !7597

do.end58:                                         ; preds = %do.cond57
  %17 = load i64, ptr %dw0.addr, align 8, !dbg !7599
  %and60 = and i64 %17, 4503595332403200, !dbg !7599
  %shr61 = lshr i64 %and60, 32, !dbg !7599
  store i64 %shr61, ptr %tmp59, align 8, !dbg !7599
  %18 = load i64, ptr %tmp59, align 8, !dbg !7599
  br label %do.body62, !dbg !7600

do.body62:                                        ; preds = %do.end58
  br label %do.cond63, !dbg !7603

do.cond63:                                        ; preds = %do.body62
  br label %do.end64, !dbg !7603

do.end64:                                         ; preds = %do.cond63
  br label %do.body65, !dbg !7600

do.body65:                                        ; preds = %do.end64
  br label %do.cond66, !dbg !7605

do.cond66:                                        ; preds = %do.body65
  br label %do.end67, !dbg !7605

do.end67:                                         ; preds = %do.cond66
  br label %do.body68, !dbg !7600

do.body68:                                        ; preds = %do.end67
  br label %do.cond69, !dbg !7607

do.cond69:                                        ; preds = %do.body68
  br label %do.end70, !dbg !7607

do.end70:                                         ; preds = %do.cond69
  br label %do.body71, !dbg !7600

do.body71:                                        ; preds = %do.end70
  br label %do.cond72, !dbg !7609

do.cond72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7609

do.end73:                                         ; preds = %do.cond72
  br label %do.body74, !dbg !7600

do.body74:                                        ; preds = %do.end73
  br label %do.cond75, !dbg !7611

do.cond75:                                        ; preds = %do.body74
  br label %do.end76, !dbg !7611

do.end76:                                         ; preds = %do.cond75
  %19 = load i64, ptr %dw1.addr, align 8, !dbg !7613
  %and78 = and i64 %19, 4088, !dbg !7613
  %shr79 = lshr i64 %and78, 3, !dbg !7613
  store i64 %shr79, ptr %tmp77, align 8, !dbg !7613
  %20 = load i64, ptr %tmp77, align 8, !dbg !7613
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %2, ptr noundef @.str.27, i64 noundef %4, i64 noundef %6, i32 noundef %cond, i32 noundef %cond34, i32 noundef %cond37, i32 noundef %cond40, i32 noundef %cond43, i64 noundef %18, i64 noundef %20) #9, !dbg !7614
  store i32 %call, ptr %bytes, align 4, !dbg !7615
  %21 = load i64, ptr %dw0.addr, align 8, !dbg !7616
  %and80 = and i64 %21, 512, !dbg !7618
  %tobool81 = icmp ne i64 %and80, 0, !dbg !7618
  br i1 %tobool81, label %if.then, label %if.end, !dbg !7619

if.then:                                          ; preds = %do.end76
  %22 = load i32, ptr %bytes, align 4, !dbg !7620
  %conv = sext i32 %22 to i64, !dbg !7620
  %23 = load i64, ptr %size.addr, align 8, !dbg !7622
  %sub = sub i64 %23, %conv, !dbg !7622
  store i64 %sub, ptr %size.addr, align 8, !dbg !7622
  %24 = load i32, ptr %bytes, align 4, !dbg !7623
  %25 = load ptr, ptr %buf, align 8, !dbg !7624
  %idx.ext = sext i32 %24 to i64, !dbg !7624
  %add.ptr = getelementptr i8, ptr %25, i64 %idx.ext, !dbg !7624
  store ptr %add.ptr, ptr %buf, align 8, !dbg !7624
  %26 = load ptr, ptr %buf, align 8, !dbg !7625
  %27 = load i64, ptr %size.addr, align 8, !dbg !7626
  %28 = load i64, ptr %dw2.addr, align 8, !dbg !7627
  %29 = load i64, ptr %dw3.addr, align 8, !dbg !7628
  %call82 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %26, i64 noundef %27, ptr noundef @.str.28, i64 noundef %28, i64 noundef %29) #9, !dbg !7629
  br label %if.end, !dbg !7630

if.end:                                           ; preds = %if.then, %do.end76
  %30 = load ptr, ptr %str.addr, align 8, !dbg !7631
  call void @llvm.lifetime.end.p0(i64 4, ptr %bytes) #8, !dbg !7632
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #8, !dbg !7632
  ret ptr %30, !dbg !7633
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7634 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bpf_prog_array_valid(ptr noundef %call) #5 align 16 !dbg !7638 {
entry:
  %call.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %call, ptr %call.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %call.addr, metadata !7642, metadata !DIExpression()), !dbg !7643
  br label %do.body, !dbg !7644

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7646

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %call.addr, align 8, !dbg !7644
  %prog_array = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11, !dbg !7644
  %1 = load volatile ptr, ptr %prog_array, align 8, !dbg !7644
  store ptr %1, ptr %tmp, align 8, !dbg !7646
  %2 = load ptr, ptr %tmp, align 8, !dbg !7644
  %tobool = icmp ne ptr %2, null, !dbg !7648
  %lnot = xor i1 %tobool, true, !dbg !7648
  %lnot1 = xor i1 %lnot, true, !dbg !7649
  ret i1 %lnot1, !dbg !7650
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hlist_empty(ptr noundef %h) #5 align 16 !dbg !7651 {
entry:
  %h.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !7658, metadata !DIExpression()), !dbg !7659
  br label %do.body, !dbg !7660

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7662

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %h.addr, align 8, !dbg !7660
  %first = getelementptr inbounds %struct.hlist_head, ptr %0, i32 0, i32 0, !dbg !7660
  %1 = load volatile ptr, ptr %first, align 8, !dbg !7660
  store ptr %1, ptr %tmp, align 8, !dbg !7662
  %2 = load ptr, ptr %tmp, align 8, !dbg !7660
  %tobool = icmp ne ptr %2, null, !dbg !7664
  %lnot = xor i1 %tobool, true, !dbg !7664
  %lnot.ext = zext i1 %lnot to i32, !dbg !7664
  ret i32 %lnot.ext, !dbg !7665
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7666 dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @perf_fetch_caller_regs(ptr noundef %regs) #5 align 16 !dbg !7670 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !7674, metadata !DIExpression()), !dbg !7675
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !7676
  %1 = ptrtoint ptr %0 to i64, !dbg !7676
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !7676
  %ip = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 16, !dbg !7676
  store i64 %1, ptr %ip, align 8, !dbg !7676
  %3 = call ptr @llvm.frameaddress.p0(i32 0), !dbg !7676
  %4 = ptrtoint ptr %3 to i64, !dbg !7676
  %5 = load ptr, ptr %regs.addr, align 8, !dbg !7676
  %sp = getelementptr inbounds %struct.pt_regs, ptr %5, i32 0, i32 19, !dbg !7676
  store i64 %4, ptr %sp, align 8, !dbg !7676
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !7676
  %7 = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 17, !dbg !7676
  store i16 16, ptr %7, align 8, !dbg !7676
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !7676
  %flags = getelementptr inbounds %struct.pt_regs, ptr %8, i32 0, i32 18, !dbg !7676
  store i64 0, ptr %flags, align 8, !dbg !7676
  ret void, !dbg !7678
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7679 dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #0

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
!llvm.module.flags = !{!7129, !7130, !7131, !7132, !7133, !7134, !7135, !7136}
!llvm.ident = !{!7137}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__tpstrtab_qi_submit", scope: !2, file: !6952, line: 21, type: !7128, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/iommu/intel/.trace.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/iommu/intel/trace\22 -D KBUILD_BASENAME=\22trace\22 -D KBUILD_MODNAME=\22trace\22 -D __KBUILD_MODNAME=kmod_trace -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/iommu/intel/trace.ll drivers/iommu/intel/trace.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !355, globals: !6980, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/iommu/intel/trace.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caa9af9c35cc9452e81318eda152467d")
!4 = !{!5, !13, !18, !23, !119, !125, !141, !149, !156, !162, !170, !176, !182, !186, !193, !201, !208, !227, !234, !242, !248, !258, !264, !273, !278, !283, !289, !298, !306, !312, !319, !330, !336, !350}
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
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !19, line: 65, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!20 = !{!21, !22}
!21 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!22 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !25, file: !24, line: 147, baseType: !7, size: 32, elements: !116)
!24 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !24, line: 135, size: 512, elements: !26)
!26 = !{!27, !31, !33, !35, !39, !40, !56, !114, !115}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !25, file: !24, line: 136, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !25, file: !24, line: 137, baseType: !32, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !25, file: !24, line: 138, baseType: !34, size: 32, offset: 128)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !25, file: !24, line: 139, baseType: !36, size: 16, offset: 160)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !37, line: 24, baseType: !38)
!37 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!38 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !25, file: !24, line: 150, baseType: !23, size: 32, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !25, file: !24, line: 151, baseType: !41, size: 64, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !24, line: 64, baseType: !43)
!43 = !DISubroutineType(types: !44)
!44 = !{!34, !45, !34, !32, !46, !52}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 61, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !49, line: 72, baseType: !50)
!49 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !49, line: 16, baseType: !51)
!51 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !37, line: 52, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !49, line: 88, baseType: !55)
!55 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !25, file: !24, line: 152, baseType: !57, size: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !24, line: 117, size: 256, elements: !59)
!59 = !{!60, !65}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !58, file: !24, line: 118, baseType: !61, size: 32)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !37, line: 174, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 172, size: 32, elements: !63)
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !62, file: !37, line: 173, baseType: !34, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !58, file: !24, line: 119, baseType: !66, size: 192, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !67, line: 41, baseType: !68)
!67 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !67, line: 37, size: 192, elements: !69)
!69 = !{!70, !108}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !68, file: !67, line: 38, baseType: !71, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !72, line: 29, baseType: !73)
!72 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !72, line: 17, size: 32, elements: !74)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, scope: !73, file: !72, line: 18, baseType: !76, size: 32)
!76 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !73, file: !72, line: 18, size: 32, elements: !77)
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !76, file: !72, line: 19, baseType: !79, size: 32)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !80, line: 14, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !79, file: !80, line: 15, baseType: !83, size: 32)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !84, line: 44, baseType: !85)
!84 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !84, line: 14, size: 32, elements: !86)
!86 = !{!87}
!87 = !DIDerivedType(tag: DW_TAG_member, scope: !85, file: !84, line: 15, baseType: !88, size: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !85, file: !84, line: 15, size: 32, elements: !89)
!89 = !{!90, !91, !101}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !88, file: !84, line: 16, baseType: !61, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !84, line: 24, baseType: !92, size: 16)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !88, file: !84, line: 24, size: 16, elements: !93)
!93 = !{!94, !100}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !92, file: !84, line: 25, baseType: !95, size: 8)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !96, line: 17, baseType: !97)
!96 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !98, line: 21, baseType: !99)
!98 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!99 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !92, file: !84, line: 26, baseType: !95, size: 8, offset: 8)
!101 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !84, line: 28, baseType: !102, size: 32)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !88, file: !84, line: 28, size: 32, elements: !103)
!103 = !{!104, !107}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !102, file: !84, line: 29, baseType: !105, size: 16)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !96, line: 19, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !98, line: 24, baseType: !38)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !102, file: !84, line: 30, baseType: !105, size: 16, offset: 16)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !68, file: !67, line: 39, baseType: !109, size: 128, offset: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !37, line: 190, size: 128, elements: !110)
!110 = !{!111, !113}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !109, file: !37, line: 191, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !109, file: !37, line: 191, baseType: !112, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !25, file: !24, line: 153, baseType: !32, size: 64, offset: 384)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !25, file: !24, line: 154, baseType: !32, size: 64, offset: 448)
!116 = !{!117, !118}
!117 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!118 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !120, line: 16, baseType: !7, size: 32, elements: !121)
!120 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!121 = !{!122, !123, !124}
!122 = !DIEnumerator(name: "TT_NONE", value: 0)
!123 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!124 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !126, line: 1325, baseType: !7, size: 32, elements: !127)
!126 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140}
!128 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!129 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!130 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!131 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!132 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!133 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!134 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!135 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!136 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!137 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!138 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!139 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!140 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !142, line: 68, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!143 = !{!144, !145, !146, !147, !148}
!144 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!145 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!146 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!147 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!148 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !150, line: 51, baseType: !7, size: 32, elements: !151)
!150 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!151 = !{!152, !153, !154, !155}
!152 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!153 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!154 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!155 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !157, line: 45, baseType: !7, size: 32, elements: !158)
!157 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!158 = !{!159, !160, !161}
!159 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!160 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!161 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "iommu_cap", file: !163, line: 121, baseType: !7, size: 32, elements: !164)
!163 = !DIFile(filename: "./include/linux/iommu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f65f238ea6d814b0cb3e9a685bbbfc5")
!164 = !{!165, !166, !167, !168, !169}
!165 = !DIEnumerator(name: "IOMMU_CAP_CACHE_COHERENCY", value: 0)
!166 = !DIEnumerator(name: "IOMMU_CAP_NOEXEC", value: 1)
!167 = !DIEnumerator(name: "IOMMU_CAP_PRE_BOOT_PROTECTION", value: 2)
!168 = !DIEnumerator(name: "IOMMU_CAP_ENFORCE_CACHE_COHERENCY", value: 3)
!169 = !DIEnumerator(name: "IOMMU_CAP_DEFERRED_FLUSH", value: 4)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "iommu_page_response_code", file: !171, line: 134, baseType: !7, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/uapi/linux/iommu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e3653d45113ea4f03fbf4351dacc583")
!172 = !{!173, !174, !175}
!173 = !DIEnumerator(name: "IOMMU_PAGE_RESP_SUCCESS", value: 0)
!174 = !DIEnumerator(name: "IOMMU_PAGE_RESP_INVALID", value: 1)
!175 = !DIEnumerator(name: "IOMMU_PAGE_RESP_FAILURE", value: 2)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !177, line: 30, baseType: !7, size: 32, elements: !178)
!177 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!178 = !{!179, !180, !181}
!179 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!180 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!181 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "iommu_dev_features", file: !163, line: 194, baseType: !7, size: 32, elements: !183)
!183 = !{!184, !185}
!184 = !DIEnumerator(name: "IOMMU_DEV_FEAT_SVA", value: 0)
!185 = !DIEnumerator(name: "IOMMU_DEV_FEAT_IOPF", value: 1)
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !187, line: 487, baseType: !7, size: 32, elements: !188)
!187 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!188 = !{!189, !190, !191, !192}
!189 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!190 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!191 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!192 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !194, line: 620, baseType: !7, size: 32, elements: !195)
!194 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!195 = !{!196, !197, !198, !199, !200}
!196 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!197 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!198 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!199 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!200 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !194, line: 597, baseType: !34, size: 32, elements: !202)
!202 = !{!203, !204, !205, !206, !207}
!203 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!204 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!205 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!206 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!207 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!208 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !209, line: 12, baseType: !7, size: 32, elements: !210)
!209 = !DIFile(filename: "./include/linux/irqdomain_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "168aa78cd6535dbcc4cf99c0f8004653")
!210 = !{!211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226}
!211 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0)
!212 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1)
!213 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2)
!214 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3)
!215 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4)
!216 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5)
!217 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6)
!218 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7)
!219 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8)
!220 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9)
!221 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10)
!222 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_MSI", value: 11)
!223 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_MSIX", value: 12)
!224 = !DIEnumerator(name: "DOMAIN_BUS_DMAR", value: 13)
!225 = !DIEnumerator(name: "DOMAIN_BUS_AMDVI", value: 14)
!226 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_IMS", value: 15)
!227 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqchip_irq_state", file: !228, line: 497, baseType: !7, size: 32, elements: !229)
!228 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!229 = !{!230, !231, !232, !233}
!230 = !DIEnumerator(name: "IRQCHIP_STATE_PENDING", value: 0)
!231 = !DIEnumerator(name: "IRQCHIP_STATE_ACTIVE", value: 1)
!232 = !DIEnumerator(name: "IRQCHIP_STATE_MASKED", value: 2)
!233 = !DIEnumerator(name: "IRQCHIP_STATE_LINE_LEVEL", value: 3)
!234 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_gc_flags", file: !235, line: 1094, baseType: !7, size: 32, elements: !236)
!235 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ce91671074049198389009db13b88160")
!236 = !{!237, !238, !239, !240, !241}
!237 = !DIEnumerator(name: "IRQ_GC_INIT_MASK_CACHE", value: 1)
!238 = !DIEnumerator(name: "IRQ_GC_INIT_NESTED_LOCK", value: 2)
!239 = !DIEnumerator(name: "IRQ_GC_MASK_CACHE_PER_TYPE", value: 4)
!240 = !DIEnumerator(name: "IRQ_GC_NO_MASK", value: 8)
!241 = !DIEnumerator(name: "IRQ_GC_BE_IO", value: 16)
!242 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !243, line: 11, baseType: !7, size: 32, elements: !244)
!243 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6f79c8839b3f722a70a16edaeaa0164")
!244 = !{!245, !246, !247}
!245 = !DIEnumerator(name: "IRQ_NONE", value: 0)
!246 = !DIEnumerator(name: "IRQ_HANDLED", value: 1)
!247 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2)
!248 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_alloc_type", file: !249, line: 36, baseType: !7, size: 32, elements: !250)
!249 = !DIFile(filename: "./arch/x86/include/asm/hw_irq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "63f4463629042f334374af478f7e7db8")
!250 = !{!251, !252, !253, !254, !255, !256, !257}
!251 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_IOAPIC", value: 1)
!252 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_HPET", value: 2)
!253 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_PCI_MSI", value: 3)
!254 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_PCI_MSIX", value: 4)
!255 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_DMAR", value: 5)
!256 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_AMDVI", value: 6)
!257 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_UV", value: 7)
!258 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !259, line: 26, baseType: !7, size: 32, elements: !260)
!259 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!260 = !{!261, !262, !263}
!261 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!262 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!263 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !187, line: 547, baseType: !7, size: 32, elements: !265)
!265 = !{!266, !267, !268, !269, !270, !271, !272}
!266 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!267 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!268 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!269 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!270 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!271 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!272 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!273 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !187, line: 564, baseType: !7, size: 32, elements: !274)
!274 = !{!275, !276, !277}
!275 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!276 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!277 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!278 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !187, line: 577, baseType: !7, size: 32, elements: !279)
!279 = !{!280, !281, !282}
!280 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!281 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!282 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !187, line: 503, baseType: !7, size: 32, elements: !284)
!284 = !{!285, !286, !287, !288}
!285 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!286 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!287 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!288 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!289 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !290, line: 593, baseType: !34, size: 32, elements: !291)
!290 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!291 = !{!292, !293, !294, !295, !296, !297}
!292 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!293 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!294 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!295 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!296 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!297 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!298 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !299, line: 9, baseType: !7, size: 32, elements: !300)
!299 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!300 = !{!301, !302, !303, !304, !305}
!301 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!302 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!303 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!304 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!305 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!306 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !307, line: 54, baseType: !7, size: 32, elements: !308)
!307 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!308 = !{!309, !310, !311}
!309 = !DIEnumerator(name: "USRQUOTA", value: 0)
!310 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!311 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!312 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !313, line: 15, baseType: !7, size: 32, elements: !314)
!313 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!314 = !{!315, !316, !317, !318}
!315 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!316 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!317 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!318 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!319 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !320, line: 253, baseType: !7, size: 32, elements: !321)
!320 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!321 = !{!322, !323, !324, !325, !326, !327, !328, !329}
!322 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!323 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!324 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!325 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!326 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!327 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!328 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!329 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!330 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !320, line: 158, baseType: !7, size: 32, elements: !331)
!331 = !{!332, !333, !334, !335}
!332 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!333 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!334 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!335 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!336 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !320, line: 640, baseType: !7, size: 32, elements: !337)
!337 = !{!338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349}
!338 = !DIEnumerator(name: "EVENT_FILE_FL_ENABLED", value: 1)
!339 = !DIEnumerator(name: "EVENT_FILE_FL_RECORDED_CMD", value: 2)
!340 = !DIEnumerator(name: "EVENT_FILE_FL_RECORDED_TGID", value: 4)
!341 = !DIEnumerator(name: "EVENT_FILE_FL_FILTERED", value: 8)
!342 = !DIEnumerator(name: "EVENT_FILE_FL_NO_SET_FILTER", value: 16)
!343 = !DIEnumerator(name: "EVENT_FILE_FL_SOFT_MODE", value: 32)
!344 = !DIEnumerator(name: "EVENT_FILE_FL_SOFT_DISABLED", value: 64)
!345 = !DIEnumerator(name: "EVENT_FILE_FL_TRIGGER_MODE", value: 128)
!346 = !DIEnumerator(name: "EVENT_FILE_FL_TRIGGER_COND", value: 256)
!347 = !DIEnumerator(name: "EVENT_FILE_FL_PID_FILTER", value: 512)
!348 = !DIEnumerator(name: "EVENT_FILE_FL_WAS_ENABLED", value: 1024)
!349 = !DIEnumerator(name: "EVENT_FILE_FL_FREED", value: 2048)
!350 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !351, line: 10, baseType: !7, size: 32, elements: !352)
!351 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!352 = !{!353, !354}
!353 = !DIEnumerator(name: "false", value: 0)
!354 = !DIEnumerator(name: "true", value: 1)
!355 = !{!32, !356, !359, !366, !369, !6947, !506, !28, !34, !6950, !6961, !380, !1365, !51, !6974, !6977}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !361, line: 26, size: 192, elements: !362)
!361 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!362 = !{!363, !364, !365}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !360, file: !361, line: 27, baseType: !32, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !360, file: !361, line: 28, baseType: !32, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !360, file: !361, line: 29, baseType: !34, size: 32, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !32)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !32, !372, !378, !378, !378, !378}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "intel_iommu", file: !374, line: 653, size: 2432, elements: !375)
!374 = !DIFile(filename: "drivers/iommu/intel/iommu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "24699789b446efd9769f382d60080e2d")
!375 = !{!376, !377, !381, !382, !383, !384, !385, !389, !392, !394, !395, !396, !397, !398, !399, !400, !401, !405, !407, !408, !409, !415, !426, !429, !433, !444, !446, !6892, !6893, !6894, !6922, !6923}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !373, file: !374, line: 654, baseType: !32, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "reg_phys", scope: !373, file: !374, line: 655, baseType: !378, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !96, line: 23, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !98, line: 31, baseType: !380)
!380 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "reg_size", scope: !373, file: !374, line: 656, baseType: !378, size: 64, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !373, file: !374, line: 657, baseType: !378, size: 64, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "ecap", scope: !373, file: !374, line: 658, baseType: !378, size: 64, offset: 256)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "vccap", scope: !373, file: !374, line: 659, baseType: !378, size: 64, offset: 320)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ecmdcap", scope: !373, file: !374, line: 660, baseType: !386, size: 256, offset: 384)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 256, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 4)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "gcmd", scope: !373, file: !374, line: 661, baseType: !390, size: 32, offset: 640)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !96, line: 21, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !98, line: 27, baseType: !7)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "register_lock", scope: !373, file: !374, line: 662, baseType: !393, size: 32, offset: 672)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !80, line: 23, baseType: !79)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "seq_id", scope: !373, file: !374, line: 663, baseType: !34, size: 32, offset: 704)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "agaw", scope: !373, file: !374, line: 664, baseType: !34, size: 32, offset: 736)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "msagaw", scope: !373, file: !374, line: 665, baseType: !34, size: 32, offset: 768)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !373, file: !374, line: 666, baseType: !7, size: 32, offset: 800)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "pr_irq", scope: !373, file: !374, line: 666, baseType: !7, size: 32, offset: 832)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "perf_irq", scope: !373, file: !374, line: 666, baseType: !7, size: 32, offset: 864)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !373, file: !374, line: 667, baseType: !105, size: 16, offset: 896)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !373, file: !374, line: 668, baseType: !402, size: 104, offset: 912)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 104, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 13)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "domain_ids", scope: !373, file: !374, line: 671, baseType: !406, size: 64, offset: 1024)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "copied_tables", scope: !373, file: !374, line: 672, baseType: !406, size: 64, offset: 1088)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !373, file: !374, line: 673, baseType: !71, size: 32, offset: 1152)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "root_entry", scope: !373, file: !374, line: 674, baseType: !410, size: 64, offset: 1216)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "root_entry", file: !374, line: 553, size: 128, elements: !412)
!412 = !{!413, !414}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "lo", scope: !411, file: !374, line: 554, baseType: !378, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "hi", scope: !411, file: !374, line: 555, baseType: !378, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !373, file: !374, line: 676, baseType: !416, size: 128, offset: 1280)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_flush", file: !374, line: 520, size: 128, elements: !417)
!417 = !{!418, !422}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "flush_context", scope: !416, file: !374, line: 521, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !372, !105, !105, !95, !378}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "flush_iotlb", scope: !416, file: !374, line: 523, baseType: !423, size: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !372, !105, !378, !7, !378}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "iopf_queue", scope: !373, file: !374, line: 684, baseType: !427, size: 64, offset: 1408)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DICompositeType(tag: DW_TAG_structure_type, name: "iopf_queue", file: !374, line: 684, flags: DIFlagFwdDecl)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "iopfq_name", scope: !373, file: !374, line: 685, baseType: !430, size: 128, offset: 1472)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 128, elements: !431)
!431 = !{!432}
!432 = !DISubrange(count: 16)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "qi", scope: !373, file: !374, line: 686, baseType: !434, size: 64, offset: 1600)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "q_inval", file: !374, line: 483, size: 320, elements: !436)
!436 = !{!437, !438, !439, !441, !442, !443}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "q_lock", scope: !435, file: !374, line: 484, baseType: !393, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !435, file: !374, line: 485, baseType: !32, size: 64, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "desc_status", scope: !435, file: !374, line: 486, baseType: !440, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "free_head", scope: !435, file: !374, line: 487, baseType: !34, size: 32, offset: 192)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "free_tail", scope: !435, file: !374, line: 488, baseType: !34, size: 32, offset: 224)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "free_cnt", scope: !435, file: !374, line: 489, baseType: !34, size: 32, offset: 256)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_state", scope: !373, file: !374, line: 687, baseType: !445, size: 128, offset: 1664)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 128, elements: !387)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !373, file: !374, line: 693, baseType: !447, size: 384, offset: 1792)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_device", file: !163, line: 373, size: 384, elements: !448)
!448 = !{!449, !450, !6889, !6890, !6891}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !447, file: !163, line: 374, baseType: !109, size: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !447, file: !163, line: 375, baseType: !451, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !163, line: 264, size: 1216, elements: !454)
!454 = !{!455, !6716, !6720, !6828, !6832, !6833, !6834, !6835, !6839, !6843, !6854, !6858, !6862, !6863, !6881, !6882, !6886, !6887, !6888}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "capable", scope: !453, file: !163, line: 265, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!459, !461, !162}
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !37, line: 35, baseType: !460)
!460 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !187, line: 705, size: 5824, elements: !463)
!463 = !{!464, !5622, !5623, !5626, !5627, !5680, !5762, !5763, !5764, !5765, !5766, !5773, !5865, !5878, !6567, !6571, !6573, !6574, !6575, !6579, !6586, !6587, !6590, !6593, !6594, !6595, !6596, !6597, !6598, !6599, !6600, !6630, !6631, !6632, !6635, !6701, !6710, !6711, !6712, !6713, !6714, !6715}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !462, file: !187, line: 706, baseType: !465, size: 512)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !466, line: 64, size: 512, elements: !467)
!466 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!467 = !{!468, !469, !470, !472, !519, !5611, !5612, !5617, !5618, !5619, !5620, !5621}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !465, file: !466, line: 65, baseType: !28, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !465, file: !466, line: 66, baseType: !109, size: 128, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !465, file: !466, line: 67, baseType: !471, size: 64, offset: 192)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !465, file: !466, line: 68, baseType: !473, size: 64, offset: 256)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !466, line: 168, size: 768, elements: !475)
!475 = !{!476, !477, !478, !479}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !474, file: !466, line: 169, baseType: !109, size: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !474, file: !466, line: 170, baseType: !71, size: 32, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !474, file: !466, line: 171, baseType: !465, size: 512, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !474, file: !466, line: 172, baseType: !480, size: 64, offset: 704)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !482)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !466, line: 133, size: 192, elements: !483)
!483 = !{!484, !491, !496}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !482, file: !466, line: 134, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!34, !489}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !465)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !482, file: !466, line: 135, baseType: !492, size: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!28, !489}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !482, file: !466, line: 136, baseType: !497, size: 64, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!34, !489, !501}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !466, line: 125, size: 20736, elements: !503)
!503 = !{!504, !509, !513, !514, !518}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !502, file: !466, line: 126, baseType: !505, size: 192)
!505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !506, size: 192, elements: !507)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!507 = !{!508}
!508 = !DISubrange(count: 3)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !502, file: !466, line: 127, baseType: !510, size: 4096, offset: 192)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !506, size: 4096, elements: !511)
!511 = !{!512}
!512 = !DISubrange(count: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !502, file: !466, line: 128, baseType: !34, size: 32, offset: 4288)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !502, file: !466, line: 129, baseType: !515, size: 16384, offset: 4320)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 16384, elements: !516)
!516 = !{!517}
!517 = !DISubrange(count: 2048)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !502, file: !466, line: 130, baseType: !34, size: 32, offset: 20704)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !465, file: !466, line: 69, baseType: !520, size: 64, offset: 320)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !522)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !466, line: 116, size: 384, elements: !523)
!523 = !{!524, !528, !551, !5575, !5603, !5607}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !522, file: !466, line: 117, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !471}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !522, file: !466, line: 118, baseType: !529, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !531)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !532, line: 254, size: 128, elements: !533)
!532 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!533 = !{!534, !547}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !531, file: !532, line: 255, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!538, !471, !542, !506}
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !37, line: 66, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !49, line: 73, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !49, line: 15, baseType: !541)
!541 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !532, line: 30, size: 128, elements: !544)
!544 = !{!545, !546}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !543, file: !532, line: 31, baseType: !28, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !543, file: !532, line: 32, baseType: !36, size: 16, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !531, file: !532, line: 256, baseType: !548, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!538, !471, !542, !28, !47}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !522, file: !466, line: 119, baseType: !552, size: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !555)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !532, line: 84, size: 320, elements: !556)
!556 = !{!557, !558, !562, !5571, !5573}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !555, file: !532, line: 85, baseType: !28, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !555, file: !532, line: 86, baseType: !559, size: 64, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!36, !471, !542, !34}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !555, file: !532, line: 88, baseType: !563, size: 64, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DISubroutineType(types: !565)
!565 = !{!36, !471, !566, !34}
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !532, line: 175, size: 512, elements: !568)
!568 = !{!569, !570, !571, !572, !5562, !5566, !5567}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !567, file: !532, line: 176, baseType: !543, size: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !567, file: !532, line: 177, baseType: !47, size: 64, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !567, file: !532, line: 178, baseType: !32, size: 64, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !567, file: !532, line: 179, baseType: !573, size: 64, offset: 256)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!576}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !578)
!578 = !{!579, !5397, !5398, !5399, !5400, !5401, !5402, !5403, !5404, !5556, !5557, !5558, !5559, !5560, !5561}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !577, file: !14, line: 473, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !582)
!582 = !{!583, !584, !585, !593, !594, !601, !602, !605, !606, !5336, !5337, !5338, !5339, !5340, !5345, !5346, !5347, !5348, !5349, !5350, !5351, !5352, !5353, !5354, !5355, !5356, !5357, !5358, !5359, !5360, !5361, !5362, !5363, !5368, !5369, !5370, !5371, !5372, !5373, !5374, !5379, !5382, !5383, !5384, !5393, !5394, !5395, !5396}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !581, file: !14, line: 642, baseType: !36, size: 16)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !581, file: !14, line: 643, baseType: !38, size: 16, offset: 16)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !581, file: !14, line: 644, baseType: !586, size: 32, offset: 32)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !587, line: 23, baseType: !588)
!587 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !587, line: 21, size: 32, elements: !589)
!589 = !{!590}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !588, file: !587, line: 22, baseType: !591, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !37, line: 37, baseType: !592)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !49, line: 49, baseType: !7)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !581, file: !14, line: 645, baseType: !109, size: 128, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !581, file: !14, line: 646, baseType: !595, size: 32, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !587, line: 28, baseType: !596)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !587, line: 26, size: 32, elements: !597)
!597 = !{!598}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !596, file: !587, line: 27, baseType: !599, size: 32)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !37, line: 38, baseType: !600)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !49, line: 50, baseType: !7)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !581, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !581, file: !14, line: 650, baseType: !603, size: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !581, file: !14, line: 651, baseType: !603, size: 64, offset: 320)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !581, file: !14, line: 654, baseType: !607, size: 64, offset: 384)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !609)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !610)
!610 = !{!611, !5170, !5180, !5184, !5188, !5192, !5196, !5200, !5204, !5208, !5212, !5213, !5217, !5221, !5258, !5287, !5291, !5297, !5301, !5305, !5309, !5313, !5317, !5323, !5327}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !609, file: !14, line: 1967, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!615, !580, !615, !7}
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !617, line: 82, size: 1536, elements: !618)
!617 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!618 = !{!619, !620, !630, !638, !639, !654, !655, !659, !672, !5154, !5155, !5156, !5157, !5162, !5163, !5164}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !616, file: !617, line: 84, baseType: !7, size: 32)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !616, file: !617, line: 85, baseType: !621, size: 32, offset: 32)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !622, line: 275, baseType: !623)
!622 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !622, line: 275, size: 32, elements: !624)
!624 = !{!625}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !623, file: !622, line: 275, baseType: !626, size: 32)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !622, line: 69, baseType: !627)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !622, line: 64, size: 32, elements: !628)
!628 = !{!629}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !627, file: !622, line: 65, baseType: !7, size: 32)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !616, file: !617, line: 86, baseType: !631, size: 128, offset: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !632, line: 38, size: 128, elements: !633)
!632 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!633 = !{!634, !636}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !631, file: !632, line: 39, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !631, file: !632, line: 39, baseType: !637, size: 64, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !616, file: !617, line: 87, baseType: !615, size: 64, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !616, file: !617, line: 88, baseType: !640, size: 128, offset: 256)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !617, line: 49, size: 128, elements: !641)
!641 = !{!642, !651}
!642 = !DIDerivedType(tag: DW_TAG_member, scope: !640, file: !617, line: 50, baseType: !643, size: 64)
!643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !640, file: !617, line: 50, size: 64, elements: !644)
!644 = !{!645, !650}
!645 = !DIDerivedType(tag: DW_TAG_member, scope: !643, file: !617, line: 51, baseType: !646, size: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !643, file: !617, line: 51, size: 64, elements: !647)
!647 = !{!648, !649}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !646, file: !617, line: 52, baseType: !390, size: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !646, file: !617, line: 52, baseType: !390, size: 32, offset: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !643, file: !617, line: 54, baseType: !378, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !640, file: !617, line: 56, baseType: !652, size: 64, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !616, file: !617, line: 89, baseType: !580, size: 64, offset: 384)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !616, file: !617, line: 91, baseType: !656, size: 256, offset: 448)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 256, elements: !657)
!657 = !{!658}
!658 = !DISubrange(count: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !616, file: !617, line: 94, baseType: !660, size: 64, offset: 704)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !661, line: 25, size: 64, elements: !662)
!661 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!662 = !{!663}
!663 = !DIDerivedType(tag: DW_TAG_member, scope: !660, file: !661, line: 26, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !660, file: !661, line: 26, size: 64, elements: !665)
!665 = !{!666, !667}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !664, file: !661, line: 28, baseType: !379, size: 64, align: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, scope: !664, file: !661, line: 30, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !664, file: !661, line: 30, size: 64, elements: !669)
!669 = !{!670, !671}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !668, file: !661, line: 31, baseType: !71, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !668, file: !661, line: 32, baseType: !34, size: 32, offset: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !616, file: !617, line: 95, baseType: !673, size: 64, offset: 768)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !617, line: 128, size: 1024, align: 512, elements: !676)
!676 = !{!677, !681, !682, !689, !695, !699, !703, !707, !708, !712, !716, !5144, !5148}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !675, file: !617, line: 129, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!34, !615, !7}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !675, file: !617, line: 130, baseType: !678, size: 64, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !675, file: !617, line: 131, baseType: !683, size: 64, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{!34, !686, !688}
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !616)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !675, file: !617, line: 132, baseType: !690, size: 64, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!34, !686, !7, !28, !693}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !640)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !675, file: !617, line: 134, baseType: !696, size: 64, offset: 256)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!34, !686}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !675, file: !617, line: 135, baseType: !700, size: 64, offset: 320)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!34, !615}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !675, file: !617, line: 136, baseType: !704, size: 64, offset: 384)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !615}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !675, file: !617, line: 137, baseType: !704, size: 64, offset: 448)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !675, file: !617, line: 138, baseType: !709, size: 64, offset: 512)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{null, !615, !580}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !675, file: !617, line: 139, baseType: !713, size: 64, offset: 576)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!506, !615, !506, !34}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !675, file: !617, line: 140, baseType: !717, size: 64, offset: 640)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!720, !5143}
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !722, line: 70, size: 256, elements: !723)
!722 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!723 = !{!724, !725, !5139, !5140}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !721, file: !722, line: 71, baseType: !615, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !721, file: !722, line: 72, baseType: !726, size: 64, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !728)
!728 = !{!729, !730, !733, !734, !735, !736, !4715, !4849, !4889, !4974, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4991, !4995, !4996, !4999, !5002, !5005, !5008, !5009, !5010, !5051, !5073, !5074, !5075, !5076, !5077, !5078, !5081, !5082, !5089, !5090, !5091, !5092, !5093, !5108, !5109, !5110, !5111, !5112, !5113, !5114, !5115, !5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137, !5138}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !727, file: !14, line: 1191, baseType: !109, size: 128)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !727, file: !14, line: 1192, baseType: !731, size: 32, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !37, line: 21, baseType: !732)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !37, line: 18, baseType: !390)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !727, file: !14, line: 1193, baseType: !99, size: 8, offset: 160)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !727, file: !14, line: 1194, baseType: !51, size: 64, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !727, file: !14, line: 1195, baseType: !53, size: 64, offset: 256)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !727, file: !14, line: 1196, baseType: !737, size: 64, offset: 320)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !739)
!739 = !{!740, !741, !742, !749, !753, !757, !761, !4703, !4704, !4705, !4707, !4708, !4709, !4711, !4712, !4713, !4714}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !738, file: !14, line: 2367, baseType: !28, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !738, file: !14, line: 2368, baseType: !34, size: 32, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !738, file: !14, line: 2376, baseType: !743, size: 64, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!34, !746}
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !748, line: 32, flags: DIFlagFwdDecl)
!748 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!749 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !738, file: !14, line: 2377, baseType: !750, size: 64, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !752)
!752 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !738, file: !14, line: 2378, baseType: !754, size: 64, offset: 256)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!615, !737, !34, !28, !32}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !738, file: !14, line: 2380, baseType: !758, size: 64, offset: 320)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{null, !726}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !738, file: !14, line: 2381, baseType: !762, size: 64, offset: 384)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !764)
!764 = !{!765, !766, !767, !771, !792, !818, !819, !820, !821, !825, !830, !831, !851, !907, !908, !909, !910, !911, !912, !913, !914, !922, !926, !953, !973, !974, !975, !976, !985, !1008, !1009, !1012, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1025, !1026, !1152, !1160, !1161, !1162, !1164, !4682, !4683, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !763, file: !6, line: 403, baseType: !5, size: 32)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !763, file: !6, line: 406, baseType: !109, size: 128, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !763, file: !6, line: 409, baseType: !768, size: 448, offset: 192)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 448, elements: !769)
!769 = !{!770}
!770 = !DISubrange(count: 56)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !763, file: !6, line: 417, baseType: !772, size: 768, offset: 640)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !773)
!773 = !{!774, !775, !776, !777, !780}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !772, file: !6, line: 46, baseType: !465, size: 512)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !772, file: !6, line: 47, baseType: !762, size: 64, offset: 512)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !772, file: !6, line: 48, baseType: !471, size: 64, offset: 576)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !772, file: !6, line: 49, baseType: !778, size: 64, offset: 640)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !772, file: !6, line: 50, baseType: !781, size: 64, offset: 704)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !783, line: 26, size: 256, elements: !784)
!783 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!784 = !{!785, !786}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !782, file: !783, line: 27, baseType: !7, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !782, file: !783, line: 28, baseType: !787, size: 192, offset: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !788, line: 43, size: 192, elements: !789)
!788 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!789 = !{!790, !791}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !787, file: !788, line: 44, baseType: !393, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !787, file: !788, line: 45, baseType: !109, size: 128, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !763, file: !6, line: 418, baseType: !793, size: 64, offset: 1408)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !795)
!795 = !{!796, !797, !802, !806, !810, !814}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !794, file: !6, line: 54, baseType: !543, size: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !794, file: !6, line: 55, baseType: !798, size: 64, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!538, !793, !801, !506}
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !794, file: !6, line: 57, baseType: !803, size: 64, offset: 192)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!538, !793, !801, !28, !47}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !794, file: !6, line: 59, baseType: !807, size: 64, offset: 256)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{null, !762, !28}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !794, file: !6, line: 60, baseType: !811, size: 64, offset: 320)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!34, !762}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !794, file: !6, line: 61, baseType: !815, size: 64, offset: 384)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{null, !762}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !763, file: !6, line: 419, baseType: !28, size: 64, offset: 1472)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !763, file: !6, line: 420, baseType: !28, size: 64, offset: 1536)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !763, file: !6, line: 421, baseType: !471, size: 64, offset: 1600)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !763, file: !6, line: 424, baseType: !822, size: 64, offset: 1664)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !824)
!824 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !763, file: !6, line: 425, baseType: !826, size: 64, offset: 1728)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !828)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !96, line: 20, baseType: !829)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !98, line: 26, baseType: !34)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !763, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !763, file: !6, line: 435, baseType: !832, size: 256, offset: 1856)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !833, line: 66, size: 256, elements: !834)
!833 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!834 = !{!835, !844, !845, !850}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !832, file: !833, line: 67, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !837, line: 13, baseType: !838)
!837 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !37, line: 181, baseType: !839)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 179, size: 64, elements: !840)
!840 = !{!841}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !839, file: !37, line: 180, baseType: !842, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !96, line: 22, baseType: !843)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !98, line: 30, baseType: !55)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !832, file: !833, line: 68, baseType: !393, size: 32, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !832, file: !833, line: 70, baseType: !846, size: 32, offset: 96)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !847, line: 15, size: 32, elements: !848)
!847 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!848 = !{!849}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !846, file: !847, line: 20, baseType: !61, size: 32)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !832, file: !833, line: 72, baseType: !109, size: 128, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !763, file: !6, line: 437, baseType: !852, size: 64, offset: 2112)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !854, line: 69, size: 320, elements: !855)
!854 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!855 = !{!856, !857, !858, !878, !880, !884, !885}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !853, file: !854, line: 70, baseType: !28, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !853, file: !854, line: 71, baseType: !762, size: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !853, file: !854, line: 72, baseType: !859, size: 64, offset: 128)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !861)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !854, line: 47, size: 256, elements: !862)
!862 = !{!863, !864, !870, !874}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !861, file: !854, line: 49, baseType: !7, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !861, file: !854, line: 51, baseType: !865, size: 64, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!34, !28, !868}
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !853)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !861, file: !854, line: 53, baseType: !871, size: 64, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{!34, !506, !868}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !861, file: !854, line: 55, baseType: !875, size: 64, offset: 192)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{null, !32}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !853, file: !854, line: 73, baseType: !879, size: 16, offset: 192)
!879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !853, file: !854, line: 74, baseType: !881, size: 8, offset: 208)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !96, line: 16, baseType: !882)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !98, line: 20, baseType: !883)
!883 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !853, file: !854, line: 75, baseType: !95, size: 8, offset: 216)
!885 = !DIDerivedType(tag: DW_TAG_member, scope: !853, file: !854, line: 76, baseType: !886, size: 64, offset: 256)
!886 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !853, file: !854, line: 76, size: 64, elements: !887)
!887 = !{!888, !889, !896}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !886, file: !854, line: 77, baseType: !32, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !886, file: !854, line: 78, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !892)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !854, line: 86, size: 128, elements: !893)
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !892, file: !854, line: 87, baseType: !7, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !892, file: !854, line: 88, baseType: !506, size: 64, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !886, file: !854, line: 79, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !899)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !854, line: 92, size: 256, elements: !900)
!900 = !{!901, !902, !903, !905, !906}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !899, file: !854, line: 94, baseType: !7, size: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !899, file: !854, line: 95, baseType: !7, size: 32, offset: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !899, file: !854, line: 96, baseType: !904, size: 64, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !899, file: !854, line: 97, baseType: !859, size: 64, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !899, file: !854, line: 98, baseType: !32, size: 64, offset: 192)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !763, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !763, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !763, file: !6, line: 442, baseType: !822, size: 64, offset: 2240)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !763, file: !6, line: 443, baseType: !826, size: 64, offset: 2304)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !763, file: !6, line: 444, baseType: !459, size: 8, offset: 2368)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !763, file: !6, line: 451, baseType: !459, size: 8, offset: 2376)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !763, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !763, file: !6, line: 455, baseType: !915, size: 64, offset: 2432)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !917, line: 23, size: 96, elements: !918)
!917 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!918 = !{!919, !920, !921}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !916, file: !917, line: 24, baseType: !34, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !916, file: !917, line: 24, baseType: !34, size: 32, offset: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !916, file: !917, line: 24, baseType: !34, size: 32, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !763, file: !6, line: 458, baseType: !923, size: 64, offset: 2496)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!34}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !763, file: !6, line: 460, baseType: !927, size: 4032, align: 512, offset: 2560)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !928, size: 4032, elements: !951)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !929)
!929 = !{!930, !931, !932}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !928, file: !6, line: 363, baseType: !32, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !928, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !928, file: !6, line: 367, baseType: !933, size: 448, offset: 128)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !934)
!934 = !{!935, !936}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !933, file: !6, line: 320, baseType: !762, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !933, file: !6, line: 321, baseType: !937, size: 384, offset: 64)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !938, line: 40, size: 384, elements: !939)
!938 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!939 = !{!940}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !937, file: !938, line: 41, baseType: !941, size: 384, align: 64)
!941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !942, size: 384, align: 64, elements: !949)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !943, line: 5, size: 192, align: 64, elements: !944)
!943 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!944 = !{!945, !946, !948}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !942, file: !943, line: 6, baseType: !51, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !942, file: !943, line: 7, baseType: !947, size: 64, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !942, file: !943, line: 8, baseType: !947, size: 64, offset: 128)
!949 = !{!950}
!950 = !DISubrange(count: 2)
!951 = !{!952}
!952 = !DISubrange(count: 7)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !763, file: !6, line: 463, baseType: !954, size: 192, offset: 6592)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !955, line: 8, size: 192, elements: !956)
!955 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!956 = !{!957, !958, !959}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !954, file: !955, line: 10, baseType: !7, size: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !954, file: !955, line: 11, baseType: !440, size: 64, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !954, file: !955, line: 12, baseType: !960, size: 64, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !962, line: 59, size: 48, elements: !963)
!962 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!963 = !{!964, !968, !969, !970, !971, !972}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !961, file: !962, line: 60, baseType: !965, size: 16)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !96, line: 18, baseType: !966)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !98, line: 23, baseType: !967)
!967 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !961, file: !962, line: 61, baseType: !965, size: 16, offset: 16)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !961, file: !962, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !961, file: !962, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !961, file: !962, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !961, file: !962, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !763, file: !6, line: 465, baseType: !51, size: 64, offset: 6784)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !763, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !763, file: !6, line: 470, baseType: !109, size: 128, offset: 6912)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !763, file: !6, line: 471, baseType: !977, size: 64, offset: 7040)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !979, line: 33, size: 96, elements: !980)
!979 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!980 = !{!981, !982, !983, !984}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !978, file: !979, line: 37, baseType: !34, size: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !978, file: !979, line: 43, baseType: !34, size: 32, offset: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !978, file: !979, line: 45, baseType: !38, size: 16, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !978, file: !979, line: 47, baseType: !38, size: 16, offset: 80)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !763, file: !6, line: 476, baseType: !986, size: 64, offset: 7104)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !988)
!988 = !{!989, !1005, !1006, !1007}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !987, file: !6, line: 379, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !992, line: 204, baseType: !993)
!992 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !992, line: 197, size: 192, elements: !994)
!994 = !{!995, !997, !998, !999, !1001, !1003}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !993, file: !992, line: 198, baseType: !996, size: 32)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !992, line: 21, baseType: !391)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !993, file: !992, line: 199, baseType: !99, size: 8, offset: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !993, file: !992, line: 200, baseType: !99, size: 8, offset: 40)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !993, file: !992, line: 201, baseType: !1000, size: 16, offset: 48)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !992, line: 17, baseType: !106)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !993, file: !992, line: 202, baseType: !1002, size: 64, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !992, line: 16, baseType: !379)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !993, file: !992, line: 203, baseType: !1004, size: 64, offset: 128)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !992, line: 22, baseType: !379)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !987, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !987, file: !6, line: 381, baseType: !506, size: 64, offset: 128)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !987, file: !6, line: 382, baseType: !506, size: 64, offset: 192)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !763, file: !6, line: 477, baseType: !987, size: 256, offset: 7168)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !763, file: !6, line: 480, baseType: !1010, size: 64, offset: 7424)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !763, file: !6, line: 483, baseType: !1013, size: 64, offset: 7488)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !763, file: !6, line: 488, baseType: !506, size: 64, offset: 7552)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !763, file: !6, line: 492, baseType: !32, size: 64, offset: 7616)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !763, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !763, file: !6, line: 495, baseType: !32, size: 64, offset: 7744)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !763, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !763, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !763, file: !6, line: 500, baseType: !1022, size: 64, offset: 7872)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !361, line: 45, baseType: !1024)
!1024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !763, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !763, file: !6, line: 504, baseType: !1027, size: 64, offset: 8000)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1030, line: 96, size: 192, elements: !1031)
!1030 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1031 = !{!1032, !1033, !1112, !1116}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1029, file: !1030, line: 97, baseType: !7, size: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1029, file: !1030, line: 98, baseType: !1034, size: 64, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1030, line: 24, size: 3072, elements: !1036)
!1036 = !{!1037, !1039, !1040, !1041, !1042, !1064, !1065, !1066, !1067, !1085, !1097, !1098, !1109, !1110, !1111}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1035, file: !1030, line: 26, baseType: !1038, size: 128)
!1038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !836, size: 128, elements: !949)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1035, file: !1030, line: 27, baseType: !1038, size: 128, offset: 128)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1035, file: !1030, line: 28, baseType: !34, size: 32, offset: 256)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1035, file: !1030, line: 31, baseType: !71, size: 32, align: 512, offset: 512)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1035, file: !1030, line: 32, baseType: !1043, size: 960, offset: 576)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1044, line: 206, size: 960, elements: !1045)
!1044 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1045 = !{!1046, !1055, !1058, !1060, !1061, !1063}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1043, file: !1044, line: 207, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !37, line: 232, size: 128, align: 64, elements: !1049)
!1049 = !{!1050, !1051}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1048, file: !37, line: 233, baseType: !1047, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1048, file: !37, line: 234, baseType: !1052, size: 64, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{null, !1047}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1043, file: !1044, line: 208, baseType: !1056, size: 256, offset: 64)
!1056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1057, size: 256, elements: !387)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1043, file: !1044, line: 209, baseType: !1059, size: 256, offset: 320)
!1059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 256, elements: !387)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1043, file: !1044, line: 213, baseType: !541, size: 64, offset: 576)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1043, file: !1044, line: 215, baseType: !1062, size: 256, offset: 640)
!1062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, size: 256, elements: !387)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1043, file: !1044, line: 216, baseType: !95, size: 8, offset: 896)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1035, file: !1030, line: 33, baseType: !51, size: 64, offset: 1536)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1035, file: !1030, line: 34, baseType: !51, size: 64, offset: 1600)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1035, file: !1030, line: 35, baseType: !459, size: 8, offset: 1664)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1035, file: !1030, line: 36, baseType: !1068, size: 320, offset: 1728)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1069, line: 11, size: 320, elements: !1070)
!1069 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1070 = !{!1071, !1078, !1079, !1084}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1068, file: !1069, line: 16, baseType: !1072, size: 128)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !37, line: 198, size: 128, elements: !1073)
!1073 = !{!1074, !1076}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1072, file: !37, line: 199, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1072, file: !37, line: 199, baseType: !1077, size: 64, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1068, file: !1069, line: 17, baseType: !51, size: 64, offset: 128)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1068, file: !1069, line: 18, baseType: !1080, size: 64, offset: 192)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{null, !1083}
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1068, file: !1069, line: 19, baseType: !390, size: 32, offset: 256)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1035, file: !1030, line: 37, baseType: !1086, size: 256, offset: 2048)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1087, line: 98, size: 256, elements: !1088)
!1087 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1088 = !{!1089, !1090, !1091}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1086, file: !1087, line: 99, baseType: !836, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1086, file: !1087, line: 100, baseType: !109, size: 128, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1086, file: !1087, line: 101, baseType: !1092, size: 64, offset: 192)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1087, line: 21, baseType: !1093)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{null, !1096}
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1035, file: !1030, line: 38, baseType: !1048, size: 128, align: 64, offset: 2304)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1035, file: !1030, line: 39, baseType: !1099, size: 64, offset: 2432)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1030, line: 49, size: 768, elements: !1101)
!1101 = !{!1102, !1103, !1104, !1105, !1106, !1107, !1108}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1100, file: !1030, line: 50, baseType: !71, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1100, file: !1030, line: 51, baseType: !1059, size: 256, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1100, file: !1030, line: 53, baseType: !1059, size: 256, offset: 320)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1100, file: !1030, line: 54, baseType: !51, size: 64, offset: 576)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1100, file: !1030, line: 55, baseType: !1099, size: 64, offset: 640)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1100, file: !1030, line: 56, baseType: !34, size: 32, offset: 704)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1100, file: !1030, line: 57, baseType: !34, size: 32, offset: 736)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1035, file: !1030, line: 40, baseType: !51, size: 64, offset: 2496)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1035, file: !1030, line: 42, baseType: !34, size: 32, offset: 2560)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1035, file: !1030, line: 43, baseType: !1028, size: 64, offset: 2624)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1029, file: !1030, line: 99, baseType: !1113, offset: 128)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1114, line: 211, elements: !1115)
!1114 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1115 = !{}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1029, file: !1030, line: 100, baseType: !1117, size: 64, offset: 128)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1030, line: 63, size: 3008, elements: !1119)
!1119 = !{!1120, !1121, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1151}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1118, file: !1030, line: 64, baseType: !1099, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1118, file: !1030, line: 65, baseType: !1122, size: 192, offset: 64)
!1122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1099, size: 192, elements: !507)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1118, file: !1030, line: 67, baseType: !34, size: 32, offset: 256)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1118, file: !1030, line: 68, baseType: !832, size: 256, offset: 320)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1118, file: !1030, line: 69, baseType: !71, size: 32, offset: 576)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1118, file: !1030, line: 70, baseType: !832, size: 256, offset: 640)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1118, file: !1030, line: 71, baseType: !51, size: 64, offset: 896)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1118, file: !1030, line: 72, baseType: !51, size: 64, offset: 960)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1118, file: !1030, line: 73, baseType: !51, size: 64, offset: 1024)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1118, file: !1030, line: 74, baseType: !51, size: 64, offset: 1088)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1118, file: !1030, line: 75, baseType: !51, size: 64, offset: 1152)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1118, file: !1030, line: 76, baseType: !51, size: 64, offset: 1216)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1118, file: !1030, line: 77, baseType: !51, size: 64, offset: 1280)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1118, file: !1030, line: 78, baseType: !51, size: 64, offset: 1344)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1118, file: !1030, line: 79, baseType: !459, size: 8, offset: 1408)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1118, file: !1030, line: 80, baseType: !51, size: 64, offset: 1472)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1118, file: !1030, line: 81, baseType: !832, size: 256, offset: 1536)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1118, file: !1030, line: 82, baseType: !782, size: 256, offset: 1792)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1118, file: !1030, line: 84, baseType: !61, size: 32, offset: 2048)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1118, file: !1030, line: 87, baseType: !51, size: 64, offset: 2112)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1118, file: !1030, line: 88, baseType: !51, size: 64, offset: 2176)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1118, file: !1030, line: 89, baseType: !1143, size: 704, offset: 2240)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1087, line: 111, size: 704, elements: !1144)
!1144 = !{!1145, !1146, !1147, !1150}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1143, file: !1087, line: 112, baseType: !1086, size: 256)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1143, file: !1087, line: 113, baseType: !1068, size: 320, offset: 256)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1143, file: !1087, line: 116, baseType: !1148, size: 64, offset: 576)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1087, line: 18, flags: DIFlagFwdDecl)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1143, file: !1087, line: 117, baseType: !34, size: 32, offset: 640)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1118, file: !1030, line: 90, baseType: !1028, size: 64, offset: 2944)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !763, file: !6, line: 515, baseType: !1153, size: 64, offset: 8064)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1155, line: 117, size: 128, elements: !1156)
!1155 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1156 = !{!1157, !1158, !1159}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1154, file: !1155, line: 118, baseType: !828, size: 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1154, file: !1155, line: 119, baseType: !828, size: 32, offset: 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1154, file: !1155, line: 120, baseType: !541, size: 64, offset: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !763, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !763, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !763, file: !6, line: 520, baseType: !1163, size: 64, offset: 8192)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !763, file: !6, line: 523, baseType: !1165, size: 64, offset: 8256)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !320, line: 372, size: 1024, elements: !1168)
!1168 = !{!1169, !1170, !1210, !1264, !1352, !1353, !1356, !1361, !1362, !1363, !1364, !1369, !1372}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1167, file: !320, line: 373, baseType: !109, size: 128)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1167, file: !320, line: 374, baseType: !1171, size: 64, offset: 128)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !320, line: 291, size: 576, elements: !1173)
!1173 = !{!1174, !1175, !1176, !1177, !1181, !1204, !1208, !1209}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !1172, file: !320, line: 292, baseType: !28, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1172, file: !320, line: 293, baseType: !32, size: 64, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !1172, file: !320, line: 295, baseType: !32, size: 64, offset: 128)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1172, file: !320, line: 297, baseType: !1178, size: 64, offset: 192)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!34, !1166, !319, !32}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !1172, file: !320, line: 299, baseType: !1182, size: 64, offset: 256)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !320, line: 275, size: 320, elements: !1184)
!1184 = !{!1185, !1186}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1183, file: !320, line: 276, baseType: !28, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, scope: !1183, file: !320, line: 277, baseType: !1187, size: 256, offset: 64)
!1187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1183, file: !320, line: 277, size: 256, elements: !1188)
!1188 = !{!1189, !1200}
!1189 = !DIDerivedType(tag: DW_TAG_member, scope: !1187, file: !320, line: 278, baseType: !1190, size: 256)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1187, file: !320, line: 278, size: 256, elements: !1191)
!1191 = !{!1192, !1193, !1194, !1195, !1197, !1198, !1199}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1190, file: !320, line: 279, baseType: !28, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1190, file: !320, line: 280, baseType: !1024, size: 32, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1190, file: !320, line: 281, baseType: !1024, size: 32, offset: 96)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !1190, file: !320, line: 282, baseType: !1196, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !1190, file: !320, line: 283, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !1190, file: !320, line: 284, baseType: !1024, size: 32, offset: 160)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1190, file: !320, line: 285, baseType: !1024, size: 32, offset: 192)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !1187, file: !320, line: 287, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!34, !1166}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !1172, file: !320, line: 300, baseType: !1205, size: 64, offset: 320)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!112, !1166}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !1172, file: !320, line: 301, baseType: !109, size: 128, offset: 384)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !1172, file: !320, line: 302, baseType: !1201, size: 64, offset: 512)
!1210 = !DIDerivedType(tag: DW_TAG_member, scope: !1167, file: !320, line: 375, baseType: !1211, size: 64, offset: 192)
!1211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1167, file: !320, line: 375, size: 64, elements: !1212)
!1212 = !{!1213, !1214}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1211, file: !320, line: 376, baseType: !28, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !1211, file: !320, line: 378, baseType: !1215, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !361, line: 32, size: 640, elements: !1217)
!1217 = !{!1218, !1219, !1231, !1255, !1256, !1257, !1258, !1259, !1263}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1216, file: !361, line: 33, baseType: !28, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1216, file: !361, line: 34, baseType: !1220, size: 128, offset: 64)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !1155, line: 85, size: 128, elements: !1221)
!1221 = !{!1222, !1223}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1220, file: !1155, line: 86, baseType: !61, size: 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, scope: !1220, file: !1155, line: 101, baseType: !1224, size: 64, offset: 64)
!1224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1220, file: !1155, line: 101, size: 64, elements: !1225)
!1225 = !{!1226, !1227, !1228}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1224, file: !1155, line: 102, baseType: !51, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1224, file: !1155, line: 103, baseType: !1153, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1224, file: !1155, line: 104, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !1155, line: 104, flags: DIFlagFwdDecl)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !1216, file: !361, line: 35, baseType: !1232, size: 64, offset: 192)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !1234, line: 61, size: 128, elements: !1235)
!1234 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1235 = !{!1236, !1237}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1233, file: !1234, line: 62, baseType: !32, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, scope: !1233, file: !1234, line: 63, baseType: !1238, size: 64, offset: 64)
!1238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1233, file: !1234, line: 63, size: 64, elements: !1239)
!1239 = !{!1240, !1241, !1254}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1238, file: !1234, line: 65, baseType: !51, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !1238, file: !1234, line: 66, baseType: !1242, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !1244, line: 169, size: 192, elements: !1245)
!1244 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!1245 = !{!1246, !1247, !1248}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1243, file: !1244, line: 170, baseType: !1242, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1243, file: !1244, line: 171, baseType: !762, size: 64, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !1243, file: !1244, line: 172, baseType: !1249, size: 64, offset: 128)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1234, line: 32, size: 64, elements: !1251)
!1251 = !{!1252, !1253}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1250, file: !1234, line: 33, baseType: !828, size: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1250, file: !1234, line: 34, baseType: !828, size: 32, offset: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !1238, file: !1234, line: 67, baseType: !1249, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !1216, file: !361, line: 36, baseType: !32, size: 64, offset: 256)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !1216, file: !361, line: 37, baseType: !32, size: 64, offset: 320)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !1216, file: !361, line: 38, baseType: !32, size: 64, offset: 384)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !1216, file: !361, line: 39, baseType: !923, size: 64, offset: 448)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !1216, file: !361, line: 40, baseType: !1260, size: 64, offset: 512)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{null}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !1216, file: !361, line: 41, baseType: !359, size: 64, offset: 576)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1167, file: !320, line: 380, baseType: !1265, size: 256, offset: 256)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !320, line: 148, size: 256, elements: !1266)
!1266 = !{!1267, !1268, !1269}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1265, file: !320, line: 149, baseType: !1072, size: 128)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1265, file: !320, line: 150, baseType: !34, size: 32, offset: 128)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !1265, file: !320, line: 151, baseType: !1270, size: 64, offset: 192)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !320, line: 141, size: 256, elements: !1272)
!1272 = !{!1273, !1349, !1350, !1351}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !1271, file: !320, line: 142, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !320, line: 138, baseType: !1275)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!330, !1278, !34, !1348}
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !320, line: 93, size: 67776, elements: !1280)
!1280 = !{!1281, !1284, !1287, !1290, !1291, !1292, !1293, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1321, !1331, !1332, !1333, !1341, !1342, !1343, !1344, !1345, !1346, !1347}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !1279, file: !320, line: 94, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !320, line: 13, flags: DIFlagFwdDecl)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !1279, file: !320, line: 95, baseType: !1285, size: 64, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !320, line: 15, flags: DIFlagFwdDecl)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !1279, file: !320, line: 96, baseType: !1288, size: 64, offset: 128)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !320, line: 14, flags: DIFlagFwdDecl)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1279, file: !320, line: 97, baseType: !32, size: 64, offset: 192)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !1279, file: !320, line: 98, baseType: !34, size: 32, offset: 256)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1279, file: !320, line: 99, baseType: !832, size: 256, offset: 320)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !1279, file: !320, line: 100, baseType: !1294, size: 64, offset: 576)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !1297, line: 10, flags: DIFlagFwdDecl)
!1297 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !1279, file: !320, line: 101, baseType: !51, size: 64, offset: 640)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !1279, file: !320, line: 102, baseType: !32, size: 64, offset: 704)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !1279, file: !320, line: 103, baseType: !7, size: 32, offset: 768)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !1279, file: !320, line: 104, baseType: !506, size: 64, offset: 832)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !1279, file: !320, line: 105, baseType: !7, size: 32, offset: 896)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !1279, file: !320, line: 106, baseType: !541, size: 64, offset: 960)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !1279, file: !320, line: 109, baseType: !1305, size: 33088, offset: 1024)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !1306, line: 14, size: 33088, elements: !1307)
!1306 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!1307 = !{!1308, !1312, !1319, !1320}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1305, file: !1306, line: 15, baseType: !1309, size: 32768)
!1309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32768, elements: !1310)
!1310 = !{!1311}
!1311 = !DISubrange(count: 4096)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1305, file: !1306, line: 16, baseType: !1313, size: 192, offset: 32768)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !1314, line: 18, size: 192, elements: !1315)
!1314 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!1315 = !{!1316, !1317, !1318}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1313, file: !1314, line: 19, baseType: !506, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1313, file: !1314, line: 20, baseType: !47, size: 64, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1313, file: !1314, line: 21, baseType: !47, size: 64, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !1305, file: !1306, line: 17, baseType: !47, size: 64, offset: 32960)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !1305, file: !1306, line: 18, baseType: !34, size: 32, offset: 33024)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !1279, file: !320, line: 111, baseType: !1322, size: 64, offset: 34112)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1323, line: 913, baseType: !1324)
!1323 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1325, size: 64, elements: !1329)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1323, line: 19, size: 64, elements: !1326)
!1326 = !{!1327}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1325, file: !1323, line: 19, baseType: !1328, size: 64)
!1328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 64, elements: !1329)
!1329 = !{!1330}
!1330 = !DISubrange(count: 1)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !1279, file: !320, line: 114, baseType: !459, size: 8, offset: 34176)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1279, file: !320, line: 117, baseType: !1305, size: 33088, offset: 34240)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !1279, file: !320, line: 118, baseType: !1334, size: 64, offset: 67328)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !320, line: 79, size: 64, elements: !1336)
!1336 = !{!1337, !1338, !1339, !1340}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1335, file: !320, line: 80, baseType: !38, size: 16)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1335, file: !320, line: 81, baseType: !99, size: 8, offset: 16)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !1335, file: !320, line: 82, baseType: !99, size: 8, offset: 24)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1335, file: !320, line: 83, baseType: !34, size: 32, offset: 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !1279, file: !320, line: 119, baseType: !51, size: 64, offset: 67392)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !1279, file: !320, line: 120, baseType: !34, size: 32, offset: 67456)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !1279, file: !320, line: 121, baseType: !34, size: 32, offset: 67488)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1279, file: !320, line: 122, baseType: !34, size: 32, offset: 67520)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !1279, file: !320, line: 123, baseType: !378, size: 64, offset: 67584)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1279, file: !320, line: 125, baseType: !53, size: 64, offset: 67648)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !1279, file: !320, line: 126, baseType: !541, size: 64, offset: 67712)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !1271, file: !320, line: 143, baseType: !1274, size: 64, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !1271, file: !320, line: 144, baseType: !1274, size: 64, offset: 128)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !1271, file: !320, line: 145, baseType: !1274, size: 64, offset: 192)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !1167, file: !320, line: 381, baseType: !506, size: 64, offset: 512)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1167, file: !320, line: 382, baseType: !1354, size: 64, offset: 576)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !290, line: 821, flags: DIFlagFwdDecl)
!1356 = !DIDerivedType(tag: DW_TAG_member, scope: !1167, file: !320, line: 387, baseType: !1357, size: 64, offset: 640)
!1357 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1167, file: !320, line: 387, size: 64, elements: !1358)
!1358 = !{!1359, !1360}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !1357, file: !320, line: 388, baseType: !32, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1357, file: !320, line: 389, baseType: !61, size: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1167, file: !320, line: 391, baseType: !32, size: 64, offset: 704)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1167, file: !320, line: 394, baseType: !34, size: 32, offset: 768)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !1167, file: !320, line: 397, baseType: !34, size: 32, offset: 800)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !1167, file: !320, line: 398, baseType: !1365, size: 64, offset: 832)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !37, line: 194, size: 64, elements: !1367)
!1367 = !{!1368}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1366, file: !37, line: 195, baseType: !1075, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !1167, file: !320, line: 399, baseType: !1370, size: 64, offset: 896)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !320, line: 399, flags: DIFlagFwdDecl)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !1167, file: !320, line: 401, baseType: !1373, size: 64, offset: 960)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!34, !1166, !1376}
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !290, line: 671, size: 8512, elements: !1378)
!1378 = !{!1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !4277, !4278, !4279, !4280, !4286, !4287, !4288, !4289, !4290, !4374, !4375, !4376, !4377, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4497, !4498, !4499, !4500, !4501, !4502, !4517, !4518, !4519, !4520, !4521, !4527, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4544, !4663, !4664, !4665, !4666, !4679, !4680, !4681}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !1377, file: !290, line: 678, baseType: !109, size: 128)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !1377, file: !290, line: 684, baseType: !109, size: 128, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !1377, file: !290, line: 685, baseType: !109, size: 128, offset: 256)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1377, file: !290, line: 689, baseType: !942, size: 192, align: 64, offset: 384)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !1377, file: !290, line: 690, baseType: !378, size: 64, offset: 576)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !1377, file: !290, line: 696, baseType: !109, size: 128, offset: 640)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !1377, file: !290, line: 698, baseType: !1072, size: 128, offset: 768)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !1377, file: !290, line: 699, baseType: !109, size: 128, offset: 896)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !1377, file: !290, line: 700, baseType: !34, size: 32, offset: 1024)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !1377, file: !290, line: 703, baseType: !34, size: 32, offset: 1056)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !1377, file: !290, line: 705, baseType: !34, size: 32, offset: 1088)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !1377, file: !290, line: 707, baseType: !7, size: 32, offset: 1120)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1377, file: !290, line: 708, baseType: !1376, size: 64, offset: 1152)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !1377, file: !290, line: 714, baseType: !1393, size: 64, offset: 1216)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !290, line: 302, size: 2432, elements: !1395)
!1395 = !{!1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !4187, !4188, !4189, !4190, !4191, !4195, !4196, !4200, !4204, !4205, !4209, !4213, !4214, !4215, !4219, !4223, !4227, !4228, !4229, !4233, !4234, !4238, !4242, !4243, !4263, !4267, !4268, !4269, !4273}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1394, file: !290, line: 303, baseType: !109, size: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !1394, file: !290, line: 305, baseType: !762, size: 64, offset: 128)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1394, file: !290, line: 306, baseType: !461, size: 64, offset: 192)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1394, file: !290, line: 307, baseType: !461, size: 64, offset: 256)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !1394, file: !290, line: 308, baseType: !552, size: 64, offset: 320)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !1394, file: !290, line: 309, baseType: !552, size: 64, offset: 384)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1394, file: !290, line: 310, baseType: !28, size: 64, offset: 448)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1394, file: !290, line: 311, baseType: !34, size: 32, offset: 512)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !1394, file: !290, line: 316, baseType: !34, size: 32, offset: 544)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !1394, file: !290, line: 318, baseType: !440, size: 64, offset: 576)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !1394, file: !290, line: 319, baseType: !1407, size: 64, offset: 640)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !290, line: 977, size: 1856, elements: !1409)
!1409 = !{!1410, !4177, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !1408, file: !290, line: 978, baseType: !1411, size: 896)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !290, line: 873, size: 896, elements: !1412)
!1412 = !{!1413, !1414, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !1411, file: !290, line: 874, baseType: !1393, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1411, file: !290, line: 875, baseType: !1415, size: 64, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !290, line: 912, size: 1792, elements: !1417)
!1417 = !{!1418, !1419, !1420, !1421, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1444, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1416, file: !290, line: 917, baseType: !393, size: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1416, file: !290, line: 923, baseType: !832, size: 256, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !1416, file: !290, line: 925, baseType: !109, size: 128, offset: 320)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !1416, file: !290, line: 926, baseType: !1422, size: 128, offset: 448)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !290, line: 901, size: 128, elements: !1423)
!1423 = !{!1424, !1428}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !1422, file: !290, line: 902, baseType: !1425, size: 64)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !943, line: 12, size: 64, elements: !1426)
!1426 = !{!1427}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1425, file: !943, line: 13, baseType: !947, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1422, file: !290, line: 903, baseType: !378, size: 64, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !1416, file: !290, line: 927, baseType: !1422, size: 128, offset: 576)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !1416, file: !290, line: 928, baseType: !109, size: 128, offset: 704)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1416, file: !290, line: 930, baseType: !34, size: 32, offset: 832)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !1416, file: !290, line: 931, baseType: !34, size: 32, offset: 864)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !1416, file: !290, line: 932, baseType: !34, size: 32, offset: 896)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !1416, file: !290, line: 934, baseType: !34, size: 32, offset: 928)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !1416, file: !290, line: 935, baseType: !34, size: 32, offset: 960)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !1416, file: !290, line: 936, baseType: !34, size: 32, offset: 992)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !1416, file: !290, line: 937, baseType: !34, size: 32, offset: 1024)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1416, file: !290, line: 939, baseType: !1439, size: 32, offset: 1056)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1440, line: 113, baseType: !1441)
!1440 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1440, line: 111, size: 32, elements: !1442)
!1442 = !{!1443}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1441, file: !1440, line: 112, baseType: !61, size: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1416, file: !290, line: 940, baseType: !1445, size: 64, offset: 1088)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1447, line: 746, size: 58368, elements: !1448)
!1447 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1448 = !{!1449, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1534, !1545, !1637, !1641, !1644, !1675, !1676, !1677, !1678, !1682, !1684, !1685, !1686, !1687, !1688, !1689, !1700, !1701, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1718, !1719, !1726, !1727, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2904, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2952, !2958, !2959, !2960, !2961, !2962, !2964, !2967, !2974, !2979, !2982, !2985, !2988, !3362, !3561, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3599, !3600, !3601, !3610, !3618, !3619, !3620, !3621, !3622, !3627, !3628, !3629, !3632, !3633, !3636, !3639, !3642, !3650, !3653, !3654, !3740, !3741, !3742, !3743, !3744, !3750, !3751, !3752, !3753, !3754, !3755, !3758, !3761, !3762, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3805, !3806, !3812, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3824, !3896, !3898, !3899, !3900, !3901, !3902, !3903, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3933, !3934, !3935}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1446, file: !1447, line: 752, baseType: !1450, size: 192)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1451, line: 56, size: 192, elements: !1452)
!1451 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1452 = !{!1453, !1454, !1455, !1456}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1450, file: !1451, line: 57, baseType: !51, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1450, file: !1451, line: 58, baseType: !51, size: 64, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1450, file: !1451, line: 59, baseType: !390, size: 32, offset: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1450, file: !1451, line: 61, baseType: !390, size: 32, offset: 160)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1446, file: !1447, line: 754, baseType: !7, size: 32, offset: 192)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1446, file: !1447, line: 767, baseType: !32, size: 64, offset: 256)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1446, file: !1447, line: 768, baseType: !1439, size: 32, offset: 320)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1446, file: !1447, line: 770, baseType: !7, size: 32, offset: 352)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1446, file: !1447, line: 771, baseType: !7, size: 32, offset: 384)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1446, file: !1447, line: 774, baseType: !34, size: 32, offset: 416)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1446, file: !1447, line: 775, baseType: !1464, size: 128, offset: 448)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1465, line: 58, size: 128, elements: !1466)
!1465 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1466 = !{!1467, !1473, !1478, !1479}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1464, file: !1465, line: 59, baseType: !1468, size: 64)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1469, line: 60, size: 64, elements: !1470)
!1469 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1470 = !{!1471}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1468, file: !1469, line: 61, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, scope: !1464, file: !1465, line: 60, baseType: !1474, size: 32, offset: 64)
!1474 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1464, file: !1465, line: 60, size: 32, elements: !1475)
!1475 = !{!1476, !1477}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1474, file: !1465, line: 61, baseType: !7, size: 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1474, file: !1465, line: 62, baseType: !61, size: 32)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1464, file: !1465, line: 65, baseType: !105, size: 16, offset: 96)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1464, file: !1465, line: 65, baseType: !105, size: 16, offset: 112)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1446, file: !1447, line: 776, baseType: !7, size: 32, offset: 576)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1446, file: !1447, line: 777, baseType: !51, size: 64, offset: 640)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1446, file: !1447, line: 778, baseType: !1445, size: 64, offset: 704)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1446, file: !1447, line: 787, baseType: !34, size: 32, offset: 768)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1446, file: !1447, line: 788, baseType: !34, size: 32, offset: 800)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1446, file: !1447, line: 790, baseType: !34, size: 32, offset: 832)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1446, file: !1447, line: 792, baseType: !34, size: 32, offset: 864)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1446, file: !1447, line: 793, baseType: !34, size: 32, offset: 896)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1446, file: !1447, line: 794, baseType: !34, size: 32, offset: 928)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1446, file: !1447, line: 795, baseType: !7, size: 32, offset: 960)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1446, file: !1447, line: 797, baseType: !1491, size: 2048, offset: 1024)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1447, line: 551, size: 2048, elements: !1492)
!1492 = !{!1493, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1513, !1516, !1517, !1518}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1491, file: !1447, line: 553, baseType: !1494, size: 128)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1447, line: 411, size: 128, elements: !1495)
!1495 = !{!1496, !1497}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1494, file: !1447, line: 412, baseType: !51, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1494, file: !1447, line: 413, baseType: !390, size: 32, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1491, file: !1447, line: 554, baseType: !942, size: 192, align: 64, offset: 128)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1491, file: !1447, line: 555, baseType: !378, size: 64, offset: 320)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1491, file: !1447, line: 556, baseType: !378, size: 64, offset: 384)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1491, file: !1447, line: 558, baseType: !109, size: 128, offset: 448)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1491, file: !1447, line: 559, baseType: !7, size: 32, offset: 576)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1491, file: !1447, line: 561, baseType: !378, size: 64, offset: 640)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1491, file: !1447, line: 562, baseType: !378, size: 64, offset: 704)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1491, file: !1447, line: 563, baseType: !378, size: 64, offset: 768)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1491, file: !1447, line: 564, baseType: !378, size: 64, offset: 832)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1491, file: !1447, line: 565, baseType: !842, size: 64, offset: 896)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1491, file: !1447, line: 566, baseType: !378, size: 64, offset: 960)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1491, file: !1447, line: 568, baseType: !378, size: 64, offset: 1024)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1491, file: !1447, line: 571, baseType: !34, size: 32, offset: 1088)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1491, file: !1447, line: 572, baseType: !1512, size: 64, offset: 1152)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1491, file: !1447, line: 574, baseType: !1514, size: 64, offset: 1216)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1447, line: 49, flags: DIFlagFwdDecl)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1491, file: !1447, line: 576, baseType: !1514, size: 64, offset: 1280)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1491, file: !1447, line: 578, baseType: !51, size: 64, offset: 1344)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1491, file: !1447, line: 588, baseType: !1519, size: 512, align: 512, offset: 1536)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1447, line: 497, size: 512, align: 512, elements: !1520)
!1520 = !{!1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1519, file: !1447, line: 498, baseType: !378, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1519, file: !1447, line: 499, baseType: !378, size: 64, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1519, file: !1447, line: 500, baseType: !378, size: 64, offset: 128)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1519, file: !1447, line: 501, baseType: !390, size: 32, offset: 192)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1519, file: !1447, line: 502, baseType: !390, size: 32, offset: 224)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1519, file: !1447, line: 503, baseType: !51, size: 64, offset: 256)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1519, file: !1447, line: 504, baseType: !51, size: 64, offset: 320)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1519, file: !1447, line: 505, baseType: !51, size: 64, offset: 384)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1519, file: !1447, line: 506, baseType: !1530, size: 64, align: 64, offset: 448)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1447, line: 445, size: 64, align: 64, elements: !1531)
!1531 = !{!1532, !1533}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1530, file: !1447, line: 446, baseType: !7, size: 32)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1530, file: !1447, line: 447, baseType: !7, size: 32, offset: 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1446, file: !1447, line: 798, baseType: !1535, size: 384, offset: 3072)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1447, line: 592, size: 384, elements: !1536)
!1536 = !{!1537, !1538, !1539, !1540, !1541, !1542, !1543}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1535, file: !1447, line: 593, baseType: !109, size: 128)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1535, file: !1447, line: 594, baseType: !51, size: 64, offset: 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1535, file: !1447, line: 595, baseType: !51, size: 64, offset: 192)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1535, file: !1447, line: 596, baseType: !7, size: 32, offset: 256)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1535, file: !1447, line: 597, baseType: !38, size: 16, offset: 288)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1535, file: !1447, line: 598, baseType: !38, size: 16, offset: 304)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1535, file: !1447, line: 600, baseType: !1544, size: 64, offset: 320)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1446, file: !1447, line: 799, baseType: !1546, size: 1792, offset: 3456)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1447, line: 610, size: 1792, elements: !1547)
!1547 = !{!1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1634, !1635}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1546, file: !1447, line: 611, baseType: !942, size: 192, align: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1546, file: !1447, line: 618, baseType: !378, size: 64, offset: 192)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1546, file: !1447, line: 619, baseType: !378, size: 64, offset: 256)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1546, file: !1447, line: 620, baseType: !378, size: 64, offset: 320)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1546, file: !1447, line: 621, baseType: !378, size: 64, offset: 384)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1546, file: !1447, line: 622, baseType: !378, size: 64, offset: 448)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1546, file: !1447, line: 629, baseType: !842, size: 64, offset: 512)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1546, file: !1447, line: 630, baseType: !378, size: 64, offset: 576)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1546, file: !1447, line: 631, baseType: !7, size: 32, offset: 640)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1546, file: !1447, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1546, file: !1447, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1546, file: !1447, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1546, file: !1447, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1546, file: !1447, line: 662, baseType: !1562, size: 512, offset: 704)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !19, line: 118, size: 512, elements: !1563)
!1563 = !{!1564, !1572, !1573, !1578, !1630, !1631, !1632, !1633}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1562, file: !19, line: 119, baseType: !1565, size: 256)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1566, line: 9, size: 256, elements: !1567)
!1566 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1567 = !{!1568, !1569}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1565, file: !1566, line: 10, baseType: !942, size: 192, align: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1565, file: !1566, line: 11, baseType: !1570, size: 64, offset: 192)
!1570 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1571, line: 29, baseType: !842)
!1571 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1562, file: !19, line: 120, baseType: !1570, size: 64, offset: 256)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1562, file: !19, line: 121, baseType: !1574, size: 64, offset: 320)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!18, !1577}
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1562, file: !19, line: 122, baseType: !1579, size: 64, offset: 384)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !19, line: 159, size: 512, align: 512, elements: !1581)
!1581 = !{!1582, !1607, !1608, !1611, !1616, !1617, !1625, !1629}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1580, file: !19, line: 160, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !19, line: 215, size: 4608, align: 512, elements: !1585)
!1585 = !{!1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1584, file: !19, line: 216, baseType: !393, size: 32)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1584, file: !19, line: 217, baseType: !7, size: 32, offset: 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1584, file: !19, line: 218, baseType: !7, size: 32, offset: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1584, file: !19, line: 219, baseType: !7, size: 32, offset: 96)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1584, file: !19, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1584, file: !19, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1584, file: !19, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1584, file: !19, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1584, file: !19, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1584, file: !19, line: 226, baseType: !7, size: 32, offset: 160)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1584, file: !19, line: 227, baseType: !38, size: 16, offset: 192)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1584, file: !19, line: 228, baseType: !38, size: 16, offset: 208)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1584, file: !19, line: 229, baseType: !7, size: 32, offset: 224)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1584, file: !19, line: 235, baseType: !1570, size: 64, offset: 256)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1584, file: !19, line: 236, baseType: !1577, size: 64, offset: 320)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1584, file: !19, line: 237, baseType: !1570, size: 64, offset: 384)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1584, file: !19, line: 238, baseType: !1577, size: 64, offset: 448)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1584, file: !19, line: 239, baseType: !1604, size: 4096, align: 512, offset: 512)
!1604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1580, size: 4096, align: 512, elements: !1605)
!1605 = !{!1606}
!1606 = !DISubrange(count: 8)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1580, file: !19, line: 161, baseType: !7, size: 32, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1580, file: !19, line: 162, baseType: !1609, size: 32, offset: 96)
!1609 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !37, line: 32, baseType: !1610)
!1610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !49, line: 96, baseType: !34)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1580, file: !19, line: 163, baseType: !1612, size: 32, offset: 128)
!1612 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !622, line: 274, baseType: !1613)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !622, line: 274, size: 32, elements: !1614)
!1614 = !{!1615}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1613, file: !622, line: 274, baseType: !626, size: 32)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1580, file: !19, line: 164, baseType: !1577, size: 64, offset: 192)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1580, file: !19, line: 165, baseType: !1618, size: 128, offset: 256)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1566, line: 14, size: 128, elements: !1619)
!1619 = !{!1620}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1618, file: !1566, line: 15, baseType: !1621, size: 128)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !943, line: 26, size: 128, elements: !1622)
!1622 = !{!1623, !1624}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1621, file: !943, line: 27, baseType: !1425, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1621, file: !943, line: 28, baseType: !947, size: 64, offset: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1580, file: !19, line: 166, baseType: !1626, size: 64, offset: 384)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!1570}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1580, file: !19, line: 167, baseType: !1570, size: 64, offset: 448)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1562, file: !19, line: 123, baseType: !95, size: 8, offset: 448)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1562, file: !19, line: 124, baseType: !95, size: 8, offset: 456)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1562, file: !19, line: 125, baseType: !95, size: 8, offset: 464)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1562, file: !19, line: 126, baseType: !95, size: 8, offset: 472)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1546, file: !1447, line: 671, baseType: !1562, size: 512, offset: 1216)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1546, file: !1447, line: 679, baseType: !1636, size: 64, offset: 1728)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1446, file: !1447, line: 800, baseType: !1638, size: 64, offset: 5248)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1640)
!1640 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1447, line: 800, flags: DIFlagFwdDecl)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1446, file: !1447, line: 809, baseType: !1642, size: 64, offset: 5312)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1447, line: 70, flags: DIFlagFwdDecl)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1446, file: !1447, line: 825, baseType: !1645, size: 2048, align: 512, offset: 5632)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1447, line: 509, size: 2048, align: 512, elements: !1646)
!1646 = !{!1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1645, file: !1447, line: 511, baseType: !378, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1645, file: !1447, line: 512, baseType: !378, size: 64, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1645, file: !1447, line: 513, baseType: !378, size: 64, offset: 128)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1645, file: !1447, line: 514, baseType: !378, size: 64, offset: 192)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1645, file: !1447, line: 515, baseType: !378, size: 64, offset: 256)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1645, file: !1447, line: 516, baseType: !378, size: 64, offset: 320)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1645, file: !1447, line: 518, baseType: !378, size: 64, offset: 384)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1645, file: !1447, line: 519, baseType: !378, size: 64, offset: 448)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1645, file: !1447, line: 520, baseType: !842, size: 64, offset: 512)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1645, file: !1447, line: 522, baseType: !378, size: 64, offset: 576)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1645, file: !1447, line: 523, baseType: !378, size: 64, offset: 640)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1645, file: !1447, line: 524, baseType: !842, size: 64, offset: 704)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1645, file: !1447, line: 526, baseType: !842, size: 64, offset: 768)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1645, file: !1447, line: 527, baseType: !378, size: 64, offset: 832)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1645, file: !1447, line: 529, baseType: !378, size: 64, offset: 896)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1645, file: !1447, line: 530, baseType: !378, size: 64, offset: 960)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1645, file: !1447, line: 531, baseType: !378, size: 64, offset: 1024)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1645, file: !1447, line: 532, baseType: !378, size: 64, offset: 1088)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1645, file: !1447, line: 533, baseType: !378, size: 64, offset: 1152)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1645, file: !1447, line: 535, baseType: !378, size: 64, offset: 1216)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1645, file: !1447, line: 536, baseType: !378, size: 64, offset: 1280)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1645, file: !1447, line: 537, baseType: !378, size: 64, offset: 1344)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1645, file: !1447, line: 538, baseType: !378, size: 64, offset: 1408)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1645, file: !1447, line: 539, baseType: !378, size: 64, offset: 1472)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1645, file: !1447, line: 540, baseType: !378, size: 64, offset: 1536)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1645, file: !1447, line: 541, baseType: !378, size: 64, offset: 1600)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1645, file: !1447, line: 542, baseType: !378, size: 64, offset: 1664)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1645, file: !1447, line: 543, baseType: !378, size: 64, offset: 1728)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1446, file: !1447, line: 833, baseType: !7, size: 32, offset: 7680)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1446, file: !1447, line: 836, baseType: !7, size: 32, offset: 7712)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1446, file: !1447, line: 837, baseType: !34, size: 32, offset: 7744)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1446, file: !1447, line: 838, baseType: !1679, size: 64, offset: 7808)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1681)
!1681 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1323, line: 19, baseType: !1325)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1446, file: !1447, line: 839, baseType: !1683, size: 64, offset: 7872)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1446, file: !1447, line: 840, baseType: !1681, size: 64, offset: 7936)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1446, file: !1447, line: 841, baseType: !32, size: 64, offset: 8000)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1446, file: !1447, line: 843, baseType: !38, size: 16, offset: 8064)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1446, file: !1447, line: 845, baseType: !38, size: 16, offset: 8080)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1446, file: !1447, line: 848, baseType: !34, size: 32, offset: 8096)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1446, file: !1447, line: 849, baseType: !1690, size: 32, offset: 8128)
!1690 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1447, line: 718, size: 32, elements: !1691)
!1691 = !{!1692, !1699}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1690, file: !1447, line: 724, baseType: !1693, size: 32)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1690, file: !1447, line: 719, size: 32, elements: !1694)
!1694 = !{!1695, !1696, !1697, !1698}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1693, file: !1447, line: 720, baseType: !95, size: 8)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1693, file: !1447, line: 721, baseType: !95, size: 8, offset: 8)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1693, file: !1447, line: 722, baseType: !95, size: 8, offset: 16)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1693, file: !1447, line: 723, baseType: !95, size: 8, offset: 24)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1690, file: !1447, line: 725, baseType: !390, size: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1446, file: !1447, line: 850, baseType: !109, size: 128, offset: 8192)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1446, file: !1447, line: 851, baseType: !1702, size: 64, offset: 8320)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1447, line: 60, flags: DIFlagFwdDecl)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1446, file: !1447, line: 855, baseType: !51, size: 64, offset: 8384)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1446, file: !1447, line: 856, baseType: !95, size: 8, offset: 8448)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1446, file: !1447, line: 857, baseType: !95, size: 8, offset: 8456)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1446, file: !1447, line: 858, baseType: !34, size: 32, offset: 8480)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1446, file: !1447, line: 859, baseType: !109, size: 128, offset: 8512)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1446, file: !1447, line: 860, baseType: !34, size: 32, offset: 8640)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1446, file: !1447, line: 861, baseType: !109, size: 128, offset: 8704)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1446, file: !1447, line: 873, baseType: !1712, size: 256, offset: 8832)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1447, line: 376, size: 256, elements: !1713)
!1713 = !{!1714, !1715, !1716, !1717}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1712, file: !1447, line: 381, baseType: !51, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1712, file: !1447, line: 384, baseType: !380, size: 64, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1712, file: !1447, line: 389, baseType: !380, size: 64, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1712, file: !1447, line: 392, baseType: !380, size: 64, offset: 192)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1446, file: !1447, line: 875, baseType: !109, size: 128, offset: 9088)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1446, file: !1447, line: 877, baseType: !1720, size: 320, offset: 9216)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1721, line: 86, size: 320, elements: !1722)
!1721 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1722 = !{!1723, !1724, !1725}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1720, file: !1721, line: 87, baseType: !34, size: 32)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1720, file: !1721, line: 88, baseType: !109, size: 128, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1720, file: !1721, line: 89, baseType: !109, size: 128, offset: 192)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1446, file: !1447, line: 878, baseType: !942, size: 192, align: 64, offset: 9536)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1446, file: !1447, line: 881, baseType: !1728, size: 64, offset: 9728)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !126, line: 733, size: 10240, elements: !1730)
!1730 = !{!1731, !2818}
!1731 = !DIDerivedType(tag: DW_TAG_member, scope: !1729, file: !126, line: 734, baseType: !1732, size: 10240)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1729, file: !126, line: 734, size: 10240, elements: !1733)
!1733 = !{!1734, !1738, !1751, !2695, !2696, !2697, !2698, !2699, !2700, !2707, !2708, !2709, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2748, !2750, !2753, !2798, !2799, !2800, !2803, !2804, !2805, !2808, !2809, !2810, !2816, !2817}
!1734 = !DIDerivedType(tag: DW_TAG_member, scope: !1732, file: !126, line: 739, baseType: !1735, size: 512, align: 512)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1732, file: !126, line: 739, size: 512, align: 512, elements: !1736)
!1736 = !{!1737}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1735, file: !126, line: 747, baseType: !61, size: 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1732, file: !126, line: 750, baseType: !1739, size: 128, offset: 512)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1740, line: 218, size: 128, elements: !1741)
!1740 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1741 = !{!1742, !1749, !1750}
!1742 = !DIDerivedType(tag: DW_TAG_member, scope: !1739, file: !1740, line: 219, baseType: !1743, size: 32)
!1743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1739, file: !1740, line: 219, size: 32, elements: !1744)
!1744 = !{!1745, !1746}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1743, file: !1740, line: 220, baseType: !71, size: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1743, file: !1740, line: 221, baseType: !1747)
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1740, line: 197, baseType: !1748)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1740, line: 197, elements: !1115)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1739, file: !1740, line: 223, baseType: !7, size: 32, offset: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1739, file: !1740, line: 224, baseType: !32, size: 64, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1732, file: !126, line: 752, baseType: !1752, size: 64, offset: 640)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!51, !1755, !51, !51, !51, !51}
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1757)
!1757 = !{!1758, !1764, !1765, !1767, !1768, !1769, !1770, !1771, !2097, !2175, !2184, !2190, !2191, !2686, !2687, !2688, !2689, !2690, !2691, !2694}
!1758 = !DIDerivedType(tag: DW_TAG_member, scope: !1756, file: !14, line: 995, baseType: !1759, size: 128)
!1759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1756, file: !14, line: 995, size: 128, elements: !1760)
!1760 = !{!1761, !1762, !1763}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1759, file: !14, line: 996, baseType: !1468, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1759, file: !14, line: 997, baseType: !1048, size: 128, align: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1759, file: !14, line: 998, baseType: !7, size: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1756, file: !14, line: 1005, baseType: !71, size: 32, offset: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1756, file: !14, line: 1006, baseType: !1766, size: 32, offset: 160)
!1766 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !37, line: 156, baseType: !7)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1756, file: !14, line: 1007, baseType: !836, size: 64, offset: 192)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1756, file: !14, line: 1008, baseType: !832, size: 256, offset: 256)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1756, file: !14, line: 1009, baseType: !53, size: 64, offset: 512)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1756, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1756, file: !14, line: 1011, baseType: !1772, size: 256, offset: 640)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1773)
!1773 = !{!1774, !1795, !2093, !2094, !2095, !2096}
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
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1785, file: !1781, line: 15, baseType: !61, size: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, scope: !1785, file: !1781, line: 16, baseType: !1789, size: 32)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1785, file: !1781, line: 16, size: 32, elements: !1790)
!1790 = !{!1791, !1792}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1789, file: !1781, line: 18, baseType: !95, size: 8)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1789, file: !1781, line: 19, baseType: !1793, size: 24, offset: 8)
!1793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 24, elements: !507)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1782, file: !1781, line: 26, baseType: !83, size: 32, offset: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1772, file: !14, line: 950, baseType: !1796, size: 64, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !299, line: 59, size: 768, elements: !1798)
!1798 = !{!1799, !1800, !1801, !1802, !1804, !1805, !1806, !1807}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1797, file: !299, line: 61, baseType: !1439, size: 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1797, file: !299, line: 62, baseType: !7, size: 32, offset: 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1797, file: !299, line: 63, baseType: !71, size: 32, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1797, file: !299, line: 65, baseType: !1803, size: 256, offset: 128)
!1803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1366, size: 256, elements: !387)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1797, file: !299, line: 66, baseType: !1366, size: 64, offset: 384)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1797, file: !299, line: 68, baseType: !66, size: 192, offset: 448)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1797, file: !299, line: 69, baseType: !1048, size: 128, align: 64, offset: 640)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1797, file: !299, line: 70, baseType: !1808, offset: 768)
!1808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1809, elements: !2091)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !299, line: 54, size: 128, elements: !1810)
!1810 = !{!1811, !1812}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1809, file: !299, line: 55, baseType: !34, size: 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1809, file: !299, line: 56, baseType: !1813, size: 64, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1815, line: 26, size: 1152, elements: !1816)
!1815 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!1816 = !{!1817, !1831, !1832, !1833, !1834, !1838, !1839, !1840, !1843, !2087, !2088, !2089, !2090}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1814, file: !1815, line: 27, baseType: !1818, size: 192)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1819, line: 19, size: 192, elements: !1820)
!1819 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!1820 = !{!1821, !1829, !1830}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1818, file: !1819, line: 20, baseType: !1822, size: 128)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1823, line: 296, size: 128, elements: !1824)
!1823 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1824 = !{!1825, !1826, !1828}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1822, file: !1823, line: 297, baseType: !71, size: 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1822, file: !1823, line: 299, baseType: !1827, size: 32, offset: 32)
!1827 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !37, line: 154, baseType: !7)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1822, file: !1823, line: 300, baseType: !32, size: 64, offset: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1818, file: !1819, line: 21, baseType: !7, size: 32, offset: 128)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1818, file: !1819, line: 22, baseType: !7, size: 32, offset: 160)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1814, file: !1815, line: 28, baseType: !1048, size: 128, align: 64, offset: 192)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1814, file: !1815, line: 29, baseType: !7, size: 32, offset: 320)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1814, file: !1815, line: 30, baseType: !1445, size: 64, offset: 384)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1814, file: !1815, line: 31, baseType: !1835, size: 64, offset: 448)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1837, line: 11, flags: DIFlagFwdDecl)
!1837 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1814, file: !1815, line: 32, baseType: !7, size: 32, offset: 512)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1814, file: !1815, line: 33, baseType: !1813, size: 64, offset: 576)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !1814, file: !1815, line: 35, baseType: !1841, size: 64, offset: 640)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !1815, line: 17, flags: DIFlagFwdDecl)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1814, file: !1815, line: 37, baseType: !1844, size: 64, offset: 704)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1846, line: 68, size: 4800, elements: !1847)
!1846 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1847 = !{!1848, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1887, !1888, !1889, !1890, !2008, !2009, !2010, !2069, !2070, !2084, !2086}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1845, file: !1846, line: 69, baseType: !1849, size: 576)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1846, line: 23, size: 576, elements: !1850)
!1850 = !{!1851, !1852}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1849, file: !1846, line: 24, baseType: !390, size: 32)
!1852 = !DIDerivedType(tag: DW_TAG_member, scope: !1849, file: !1846, line: 25, baseType: !1853, size: 512, offset: 64)
!1853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1849, file: !1846, line: 25, size: 512, elements: !1854)
!1854 = !{!1855, !1864}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1853, file: !1846, line: 26, baseType: !1856, size: 480)
!1856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1857, size: 480, elements: !1862)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1846, line: 17, size: 96, elements: !1858)
!1858 = !{!1859, !1860, !1861}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1857, file: !1846, line: 18, baseType: !390, size: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1857, file: !1846, line: 19, baseType: !390, size: 32, offset: 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1857, file: !1846, line: 20, baseType: !390, size: 32, offset: 64)
!1862 = !{!1863}
!1863 = !DISubrange(count: 5)
!1864 = !DIDerivedType(tag: DW_TAG_member, scope: !1853, file: !1846, line: 27, baseType: !1865, size: 128)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1853, file: !1846, line: 27, size: 128, elements: !1866)
!1866 = !{!1867, !1869}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1865, file: !1846, line: 28, baseType: !1868, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1865, file: !1846, line: 29, baseType: !1868, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1845, file: !1846, line: 70, baseType: !1849, size: 576, offset: 576)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1845, file: !1846, line: 71, baseType: !1849, size: 576, offset: 1152)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1845, file: !1846, line: 72, baseType: !1844, size: 64, offset: 1728)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1845, file: !1846, line: 73, baseType: !34, size: 32, offset: 1792)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1845, file: !1846, line: 74, baseType: !586, size: 32, offset: 1824)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1845, file: !1846, line: 75, baseType: !595, size: 32, offset: 1856)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1845, file: !1846, line: 76, baseType: !1877, size: 192, offset: 1920)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1878, line: 9, size: 192, elements: !1879)
!1878 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1879 = !{!1880, !1881, !1885, !1886}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1877, file: !1878, line: 10, baseType: !836, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1877, file: !1878, line: 11, baseType: !1882, size: 64, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1884)
!1884 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1878, line: 7, flags: DIFlagFwdDecl)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1877, file: !1878, line: 12, baseType: !7, size: 32, offset: 128)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1877, file: !1878, line: 13, baseType: !1439, size: 32, offset: 160)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1845, file: !1846, line: 77, baseType: !51, size: 64, offset: 2112)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1845, file: !1846, line: 80, baseType: !459, size: 8, offset: 2176)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1845, file: !1846, line: 88, baseType: !109, size: 128, offset: 2240)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1845, file: !1846, line: 89, baseType: !1891, size: 64, offset: 2368)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1893, line: 195, size: 1728, elements: !1894)
!1893 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1894 = !{!1895, !1896, !1899, !1904, !1913, !1916, !1917, !1924, !1925, !1926, !1927, !1930, !1931, !1932, !1933, !1934, !1972, !1993}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1892, file: !1893, line: 196, baseType: !1439, size: 32)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1892, file: !1893, line: 197, baseType: !1897, size: 32, offset: 32)
!1897 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1893, line: 28, baseType: !1898)
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !37, line: 104, baseType: !828)
!1899 = !DIDerivedType(tag: DW_TAG_member, scope: !1892, file: !1893, line: 198, baseType: !1900, size: 192, offset: 64)
!1900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1892, file: !1893, line: 198, size: 192, elements: !1901)
!1901 = !{!1902, !1903}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1900, file: !1893, line: 199, baseType: !109, size: 128)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1900, file: !1893, line: 200, baseType: !942, size: 192, align: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1892, file: !1893, line: 205, baseType: !1905, size: 320, offset: 256)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1906, line: 48, size: 320, elements: !1907)
!1906 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1907 = !{!1908, !1909, !1910, !1911, !1912}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1905, file: !1906, line: 49, baseType: !836, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1905, file: !1906, line: 55, baseType: !836, size: 64, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1905, file: !1906, line: 57, baseType: !846, size: 32, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1905, file: !1906, line: 59, baseType: !393, size: 32, offset: 160)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1905, file: !1906, line: 60, baseType: !109, size: 128, offset: 192)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1892, file: !1893, line: 206, baseType: !1914, size: 64, offset: 576)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1893, line: 206, flags: DIFlagFwdDecl)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1892, file: !1893, line: 207, baseType: !32, size: 64, offset: 640)
!1917 = !DIDerivedType(tag: DW_TAG_member, scope: !1892, file: !1893, line: 208, baseType: !1918, size: 64, offset: 704)
!1918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1892, file: !1893, line: 208, size: 64, elements: !1919)
!1919 = !{!1920, !1923}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1918, file: !1893, line: 209, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1922, line: 8, baseType: !843)
!1922 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1918, file: !1893, line: 210, baseType: !1921, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1892, file: !1893, line: 212, baseType: !1921, size: 64, offset: 768)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1892, file: !1893, line: 213, baseType: !586, size: 32, offset: 832)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1892, file: !1893, line: 214, baseType: !595, size: 32, offset: 864)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1892, file: !1893, line: 215, baseType: !1928, size: 32, offset: 896)
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1893, line: 31, baseType: !1929)
!1929 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !37, line: 110, baseType: !390)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1892, file: !1893, line: 216, baseType: !38, size: 16, offset: 928)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1892, file: !1893, line: 217, baseType: !38, size: 16, offset: 944)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1892, file: !1893, line: 221, baseType: !967, size: 16, offset: 960)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1892, file: !1893, line: 228, baseType: !51, size: 64, offset: 1024)
!1934 = !DIDerivedType(tag: DW_TAG_member, scope: !1892, file: !1893, line: 245, baseType: !1935, size: 320, offset: 1088)
!1935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1892, file: !1893, line: 245, size: 320, elements: !1936)
!1936 = !{!1937, !1964}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1935, file: !1893, line: 246, baseType: !1938, size: 320)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1893, line: 114, size: 320, elements: !1939)
!1939 = !{!1940, !1941, !1953, !1956, !1963}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1938, file: !1893, line: 116, baseType: !51, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, scope: !1938, file: !1893, line: 117, baseType: !1942, size: 64, offset: 64)
!1942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1938, file: !1893, line: 117, size: 64, elements: !1943)
!1943 = !{!1944, !1952}
!1944 = !DIDerivedType(tag: DW_TAG_member, scope: !1942, file: !1893, line: 118, baseType: !1945, size: 64)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1942, file: !1893, line: 118, size: 64, elements: !1946)
!1946 = !{!1947, !1948}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1945, file: !1893, line: 120, baseType: !105, size: 16)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1945, file: !1893, line: 121, baseType: !1949, size: 48, offset: 16)
!1949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 48, elements: !1950)
!1950 = !{!1951}
!1951 = !DISubrange(count: 6)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1942, file: !1893, line: 127, baseType: !51, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1938, file: !1893, line: 129, baseType: !1954, size: 64, offset: 128)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1893, line: 102, flags: DIFlagFwdDecl)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1938, file: !1893, line: 130, baseType: !1957, size: 64, offset: 192)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1893, line: 108, size: 192, elements: !1959)
!1959 = !{!1960, !1961, !1962}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1958, file: !1893, line: 109, baseType: !1048, size: 128, align: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1958, file: !1893, line: 110, baseType: !1439, size: 32, offset: 128)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1958, file: !1893, line: 111, baseType: !459, size: 8, offset: 160)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1938, file: !1893, line: 131, baseType: !28, size: 64, offset: 256)
!1964 = !DIDerivedType(tag: DW_TAG_member, scope: !1935, file: !1893, line: 247, baseType: !1965, size: 320)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1935, file: !1893, line: 247, size: 320, elements: !1966)
!1966 = !{!1967, !1968, !1969, !1970, !1971}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1965, file: !1893, line: 248, baseType: !51, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1965, file: !1893, line: 249, baseType: !51, size: 64, offset: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1965, file: !1893, line: 250, baseType: !1954, size: 64, offset: 128)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1965, file: !1893, line: 251, baseType: !1957, size: 64, offset: 192)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1965, file: !1893, line: 252, baseType: !506, size: 64, offset: 256)
!1972 = !DIDerivedType(tag: DW_TAG_member, scope: !1892, file: !1893, line: 260, baseType: !1973, size: 256, offset: 1408)
!1973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1892, file: !1893, line: 260, size: 256, elements: !1974)
!1974 = !{!1975, !1981}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1973, file: !1893, line: 261, baseType: !1976, size: 256)
!1976 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1893, line: 134, size: 256, elements: !1977)
!1977 = !{!1978, !1979}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1976, file: !1893, line: 135, baseType: !32, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1976, file: !1893, line: 136, baseType: !1980, size: 256)
!1980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 256, elements: !387)
!1981 = !DIDerivedType(tag: DW_TAG_member, scope: !1973, file: !1893, line: 262, baseType: !1982, size: 256)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1973, file: !1893, line: 262, size: 256, elements: !1983)
!1983 = !{!1984, !1985}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1982, file: !1893, line: 264, baseType: !109, size: 128)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1982, file: !1893, line: 265, baseType: !1986, size: 128, offset: 128)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1987, line: 22, size: 128, elements: !1988)
!1987 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1988 = !{!1989, !1992}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1986, file: !1987, line: 23, baseType: !1990, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1987, line: 23, flags: DIFlagFwdDecl)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1986, file: !1987, line: 24, baseType: !51, size: 64, offset: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1892, file: !1893, line: 280, baseType: !1994, size: 64, offset: 1664)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1893, line: 176, size: 192, elements: !1996)
!1996 = !{!1997, !2006, !2007}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1995, file: !1893, line: 177, baseType: !1998, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1893, line: 171, baseType: !1999)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!34, !1891, !2002, !2004, !1891}
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1955)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1976)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1995, file: !1893, line: 178, baseType: !1891, size: 64, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1995, file: !1893, line: 179, baseType: !1954, size: 64, offset: 128)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1845, file: !1846, line: 90, baseType: !1905, size: 320, offset: 2432)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1845, file: !1846, line: 97, baseType: !1086, size: 256, offset: 2752)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1845, file: !1846, line: 99, baseType: !2011, size: 768, offset: 3008)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !24, line: 199, size: 768, elements: !2012)
!2012 = !{!2013, !2018}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !2011, file: !24, line: 200, baseType: !2014, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!34, !2017}
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2011, file: !24, line: 201, baseType: !2019, size: 704, offset: 64)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !24, line: 193, size: 704, elements: !2020)
!2020 = !{!2021, !2068}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2019, file: !24, line: 195, baseType: !2022, size: 640)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !24, line: 173, size: 640, elements: !2023)
!2023 = !{!2024, !2036, !2037, !2038, !2058, !2059, !2061, !2067}
!2024 = !DIDerivedType(tag: DW_TAG_member, scope: !2022, file: !24, line: 174, baseType: !2025, size: 192)
!2025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2022, file: !24, line: 174, size: 192, elements: !2026)
!2026 = !{!2027, !2035}
!2027 = !DIDerivedType(tag: DW_TAG_member, scope: !2025, file: !24, line: 175, baseType: !2028, size: 192)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2025, file: !24, line: 175, size: 192, elements: !2029)
!2029 = !{!2030, !2031, !2032, !2033, !2034}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !2028, file: !24, line: 176, baseType: !45, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !2028, file: !24, line: 177, baseType: !34, size: 32, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !2028, file: !24, line: 178, baseType: !34, size: 32, offset: 96)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2028, file: !24, line: 179, baseType: !34, size: 32, offset: 128)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !2028, file: !24, line: 180, baseType: !34, size: 32, offset: 160)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2025, file: !24, line: 182, baseType: !1048, size: 128, align: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !2022, file: !24, line: 184, baseType: !781, size: 64, offset: 192)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !2022, file: !24, line: 185, baseType: !45, size: 64, offset: 256)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2022, file: !24, line: 186, baseType: !2039, size: 64, offset: 320)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !24, line: 204, size: 960, elements: !2041)
!2041 = !{!2042, !2043, !2047, !2054}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !2040, file: !24, line: 205, baseType: !2011, size: 768)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !2040, file: !24, line: 206, baseType: !2044, size: 64, offset: 768)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!2017, !2039}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !2040, file: !24, line: 207, baseType: !2048, size: 64, offset: 832)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{null, !2051, !2052, !2053}
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !2040, file: !24, line: 209, baseType: !2055, size: 64, offset: 896)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!34, !2051, !45}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2022, file: !24, line: 187, baseType: !2017, size: 64, offset: 384)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2022, file: !24, line: 188, baseType: !2060, size: 64, offset: 448)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2022, file: !24, line: 189, baseType: !2062, size: 64, offset: 512)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !24, line: 157, size: 256, elements: !2064)
!2064 = !{!2065, !2066}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2063, file: !24, line: 158, baseType: !942, size: 192, align: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2063, file: !24, line: 159, baseType: !2051, size: 64, offset: 192)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2022, file: !24, line: 190, baseType: !1366, size: 64, offset: 576)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2019, file: !24, line: 196, baseType: !1425, size: 64, offset: 640)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1845, file: !1846, line: 100, baseType: !2051, size: 64, offset: 3776)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1845, file: !1846, line: 102, baseType: !2071, size: 64, offset: 3840)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1846, line: 107, size: 1152, elements: !2073)
!2073 = !{!2074, !2075, !2076, !2077, !2078, !2082}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2072, file: !1846, line: 108, baseType: !1072, size: 128)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2072, file: !1846, line: 109, baseType: !1844, size: 64, offset: 128)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2072, file: !1846, line: 110, baseType: !586, size: 32, offset: 192)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2072, file: !1846, line: 111, baseType: !61, size: 32, offset: 224)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !2072, file: !1846, line: 112, baseType: !2079, size: 640, offset: 256)
!2079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !836, size: 640, elements: !2080)
!2080 = !{!2081}
!2081 = !DISubrange(count: 10)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !2072, file: !1846, line: 113, baseType: !2083, size: 256, offset: 896)
!2083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !836, size: 256, elements: !387)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1845, file: !1846, line: 103, baseType: !2085, size: 640, offset: 3904)
!2085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, size: 640, elements: !2080)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1845, file: !1846, line: 104, baseType: !1062, size: 256, offset: 4544)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1814, file: !1815, line: 38, baseType: !2071, size: 64, offset: 768)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1814, file: !1815, line: 39, baseType: !34, size: 32, offset: 832)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1814, file: !1815, line: 40, baseType: !1877, size: 192, offset: 896)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !1814, file: !1815, line: 42, baseType: !34, size: 32, offset: 1088)
!2091 = !{!2092}
!2092 = !DISubrange(count: -1)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1772, file: !14, line: 951, baseType: !298, size: 32, offset: 128)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1772, file: !14, line: 952, baseType: !586, size: 32, offset: 160)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1772, file: !14, line: 952, baseType: !586, size: 32, offset: 192)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1772, file: !14, line: 953, baseType: !34, size: 32, offset: 224)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1756, file: !14, line: 1012, baseType: !2098, size: 64, offset: 896)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2100)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2101, line: 110, size: 1472, elements: !2102)
!2101 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!2102 = !{!2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2160, !2161, !2162, !2170}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2100, file: !2101, line: 111, baseType: !836, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2100, file: !2101, line: 112, baseType: !586, size: 32, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2100, file: !2101, line: 113, baseType: !595, size: 32, offset: 96)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2100, file: !2101, line: 114, baseType: !586, size: 32, offset: 128)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2100, file: !2101, line: 115, baseType: !595, size: 32, offset: 160)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2100, file: !2101, line: 116, baseType: !586, size: 32, offset: 192)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2100, file: !2101, line: 117, baseType: !595, size: 32, offset: 224)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2100, file: !2101, line: 118, baseType: !586, size: 32, offset: 256)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2100, file: !2101, line: 119, baseType: !595, size: 32, offset: 288)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2100, file: !2101, line: 120, baseType: !7, size: 32, offset: 320)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2100, file: !2101, line: 121, baseType: !2114, size: 64, offset: 384)
!2114 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2115, line: 24, baseType: !2116)
!2115 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2115, line: 24, size: 64, elements: !2117)
!2117 = !{!2118}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2116, file: !2115, line: 24, baseType: !378, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2100, file: !2101, line: 122, baseType: !2114, size: 64, offset: 448)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2100, file: !2101, line: 123, baseType: !2114, size: 64, offset: 512)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2100, file: !2101, line: 124, baseType: !2114, size: 64, offset: 576)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2100, file: !2101, line: 125, baseType: !2114, size: 64, offset: 640)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2100, file: !2101, line: 127, baseType: !99, size: 8, offset: 704)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2100, file: !2101, line: 129, baseType: !1891, size: 64, offset: 768)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2100, file: !2101, line: 130, baseType: !1891, size: 64, offset: 832)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2100, file: !2101, line: 131, baseType: !1891, size: 64, offset: 896)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2100, file: !2101, line: 132, baseType: !1891, size: 64, offset: 960)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2100, file: !2101, line: 135, baseType: !32, size: 64, offset: 1024)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2100, file: !2101, line: 137, baseType: !2130, size: 64, offset: 1088)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2132, line: 14, size: 1088, elements: !2133)
!2132 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2133 = !{!2134, !2135, !2144, !2145, !2146, !2147, !2148, !2149}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2131, file: !2132, line: 15, baseType: !1439, size: 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2131, file: !2132, line: 17, baseType: !2136, size: 320, offset: 64)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !2137, line: 22, size: 320, elements: !2138)
!2137 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!2138 = !{!2139, !2140, !2141, !2142}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2136, file: !2137, line: 23, baseType: !393, size: 32)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2136, file: !2137, line: 24, baseType: !842, size: 64, offset: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2136, file: !2137, line: 26, baseType: !109, size: 128, offset: 128)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2136, file: !2137, line: 28, baseType: !2143, size: 64, offset: 256)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2131, file: !2132, line: 19, baseType: !51, size: 64, offset: 384)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2131, file: !2132, line: 20, baseType: !836, size: 64, offset: 448)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2131, file: !2132, line: 23, baseType: !1072, size: 128, offset: 512)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2131, file: !2132, line: 24, baseType: !586, size: 32, offset: 640)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2131, file: !2132, line: 29, baseType: !836, size: 64, offset: 704)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2131, file: !2132, line: 36, baseType: !2150, size: 320, offset: 768)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2151, line: 15, size: 320, elements: !2152)
!2151 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2152 = !{!2153, !2154, !2155, !2156, !2157, !2158, !2159}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2150, file: !2151, line: 16, baseType: !393, size: 32)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2150, file: !2151, line: 18, baseType: !34, size: 32, offset: 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2150, file: !2151, line: 19, baseType: !34, size: 32, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2150, file: !2151, line: 20, baseType: !34, size: 32, offset: 96)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2150, file: !2151, line: 21, baseType: !34, size: 32, offset: 128)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2150, file: !2151, line: 22, baseType: !51, size: 64, offset: 192)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2150, file: !2151, line: 23, baseType: !51, size: 64, offset: 256)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2100, file: !2101, line: 138, baseType: !1844, size: 64, offset: 1152)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2100, file: !2101, line: 139, baseType: !2071, size: 64, offset: 1216)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2100, file: !2101, line: 140, baseType: !2163, size: 64, offset: 1280)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2101, line: 25, size: 64, elements: !2165)
!2165 = !{!2166, !2167, !2168}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2164, file: !2101, line: 26, baseType: !61, size: 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2164, file: !2101, line: 27, baseType: !34, size: 32, offset: 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2164, file: !2101, line: 28, baseType: !2169, offset: 64)
!2169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !595, elements: !2091)
!2170 = !DIDerivedType(tag: DW_TAG_member, scope: !2100, file: !2101, line: 142, baseType: !2171, size: 128, offset: 1344)
!2171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2100, file: !2101, line: 142, size: 128, elements: !2172)
!2172 = !{!2173, !2174}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2171, file: !2101, line: 143, baseType: !34, size: 32)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2171, file: !2101, line: 144, baseType: !1048, size: 128, align: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1756, file: !14, line: 1013, baseType: !2176, size: 256, offset: 960)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !2177)
!2177 = !{!2178, !2179, !2180, !2181, !2182, !2183}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2176, file: !14, line: 971, baseType: !51, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2176, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2176, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2176, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2176, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2176, file: !14, line: 976, baseType: !53, size: 64, offset: 192)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1756, file: !14, line: 1014, baseType: !2185, size: 128, offset: 1216)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !2186, line: 8, size: 128, elements: !2187)
!2186 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!2187 = !{!2188, !2189}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !2185, file: !2186, line: 9, baseType: !720, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !2185, file: !2186, line: 10, baseType: !615, size: 64, offset: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1756, file: !14, line: 1015, baseType: !580, size: 64, offset: 1344)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1756, file: !14, line: 1016, baseType: !2192, size: 64, offset: 1408)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2194)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !2195)
!2195 = !{!2196, !2197, !2201, !2205, !2209, !2237, !2238, !2244, !2257, !2274, !2278, !2279, !2570, !2571, !2575, !2580, !2581, !2585, !2589, !2595, !2596, !2600, !2601, !2607, !2611, !2615, !2621, !2625, !2667, !2671, !2675, !2676, !2682}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2194, file: !14, line: 1915, baseType: !762, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2194, file: !14, line: 1916, baseType: !2198, size: 64, offset: 64)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!53, !1755, !53, !34}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2194, file: !14, line: 1917, baseType: !2202, size: 64, offset: 128)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!538, !1755, !506, !47, !52}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2194, file: !14, line: 1918, baseType: !2206, size: 64, offset: 192)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!538, !1755, !28, !47, !52}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2194, file: !14, line: 1919, baseType: !2210, size: 64, offset: 256)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!538, !2213, !2235}
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !2215)
!2215 = !{!2216, !2217, !2218, !2222, !2223, !2224, !2225}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2214, file: !14, line: 374, baseType: !1755, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2214, file: !14, line: 375, baseType: !53, size: 64, offset: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2214, file: !14, line: 376, baseType: !2219, size: 64, offset: 128)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{null, !2213, !541}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2214, file: !14, line: 377, baseType: !32, size: 64, offset: 192)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2214, file: !14, line: 378, baseType: !34, size: 32, offset: 256)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2214, file: !14, line: 379, baseType: !105, size: 16, offset: 288)
!2225 = !DIDerivedType(tag: DW_TAG_member, scope: !2214, file: !14, line: 380, baseType: !2226, size: 64, offset: 320)
!2226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2214, file: !14, line: 380, size: 64, elements: !2227)
!2227 = !{!2228, !2231}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2226, file: !14, line: 386, baseType: !2229, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2226, file: !14, line: 395, baseType: !2232, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!538, !32}
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2194, file: !14, line: 1920, baseType: !2210, size: 64, offset: 320)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2194, file: !14, line: 1921, baseType: !2239, size: 64, offset: 384)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!34, !2213, !2242, !7}
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2194, file: !14, line: 1923, baseType: !2245, size: 64, offset: 448)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!34, !1755, !2248}
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2250)
!2250 = !{!2251, !2256}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2249, file: !14, line: 1859, baseType: !2252, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2253)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!459, !2248, !28, !34, !53, !378, !7}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2249, file: !14, line: 1860, baseType: !53, size: 64, offset: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2194, file: !14, line: 1924, baseType: !2258, size: 64, offset: 512)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!2261, !1755, !2263}
!2261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2262, line: 59, baseType: !7)
!2262 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2265, line: 37, size: 128, elements: !2266)
!2265 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2266 = !{!2267, !2273}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2264, file: !2265, line: 38, baseType: !2268, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2265, line: 31, baseType: !2269)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{null, !1755, !2272, !2263}
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2264, file: !2265, line: 39, baseType: !2261, size: 32, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2194, file: !14, line: 1925, baseType: !2275, size: 64, offset: 576)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!541, !1755, !7, !51}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2194, file: !14, line: 1926, baseType: !2275, size: 64, offset: 640)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2194, file: !14, line: 1927, baseType: !2280, size: 64, offset: 704)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!34, !1755, !2283}
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !126, line: 625, size: 1344, elements: !2285)
!2285 = !{!2286, !2295, !2296, !2304, !2311, !2312, !2317, !2318, !2323, !2324, !2327, !2563, !2564, !2565, !2566, !2567, !2568}
!2286 = !DIDerivedType(tag: DW_TAG_member, scope: !2284, file: !126, line: 628, baseType: !2287, size: 128)
!2287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2284, file: !126, line: 628, size: 128, elements: !2288)
!2288 = !{!2289, !2294}
!2289 = !DIDerivedType(tag: DW_TAG_member, scope: !2287, file: !126, line: 629, baseType: !2290, size: 128)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2287, file: !126, line: 629, size: 128, elements: !2291)
!2291 = !{!2292, !2293}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2290, file: !126, line: 631, baseType: !51, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2290, file: !126, line: 632, baseType: !51, size: 64, offset: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2287, file: !126, line: 635, baseType: !1048, size: 128, align: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2284, file: !126, line: 639, baseType: !1728, size: 64, offset: 128)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2284, file: !126, line: 640, baseType: !2297, size: 64, offset: 192)
!2297 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2298, line: 297, baseType: !2299)
!2298 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2298, line: 297, size: 64, elements: !2300)
!2300 = !{!2301}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2299, file: !2298, line: 297, baseType: !2302, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2303, line: 19, baseType: !51)
!2303 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2304 = !DIDerivedType(tag: DW_TAG_member, scope: !2284, file: !126, line: 646, baseType: !2305, size: 64, offset: 256)
!2305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2284, file: !126, line: 646, size: 64, elements: !2306)
!2306 = !{!2307, !2310}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2305, file: !126, line: 647, baseType: !2308, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2309)
!2309 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !126, line: 542, baseType: !51)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2305, file: !126, line: 648, baseType: !2309, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2284, file: !126, line: 666, baseType: !34, size: 32, offset: 320)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2284, file: !126, line: 667, baseType: !2313, size: 64, offset: 384)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !126, line: 579, size: 320, elements: !2315)
!2315 = !{!2316}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2314, file: !126, line: 580, baseType: !1905, size: 320)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2284, file: !126, line: 670, baseType: !459, size: 8, offset: 448)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2284, file: !126, line: 681, baseType: !2319, size: 256, offset: 512)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2284, file: !126, line: 678, size: 256, elements: !2320)
!2320 = !{!2321, !2322}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2319, file: !126, line: 679, baseType: !942, size: 192, align: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2319, file: !126, line: 680, baseType: !51, size: 64, offset: 192)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2284, file: !126, line: 689, baseType: !109, size: 128, offset: 768)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2284, file: !126, line: 691, baseType: !2325, size: 64, offset: 896)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !126, line: 691, flags: DIFlagFwdDecl)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2284, file: !126, line: 694, baseType: !2328, size: 64, offset: 960)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2330)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2331, line: 563, size: 1024, elements: !2332)
!2331 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2332 = !{!2333, !2337, !2338, !2342, !2346, !2350, !2527, !2531, !2535, !2539, !2540, !2541, !2545, !2549, !2555, !2559}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2330, file: !2331, line: 564, baseType: !2334, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{null, !2283}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2330, file: !2331, line: 569, baseType: !2334, size: 64, offset: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2330, file: !2331, line: 571, baseType: !2339, size: 64, offset: 128)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!34, !2283, !51}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2330, file: !2331, line: 572, baseType: !2343, size: 64, offset: 192)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!34, !2283}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2330, file: !2331, line: 578, baseType: !2347, size: 64, offset: 256)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!34, !2283, !51, !51, !51}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2330, file: !2331, line: 580, baseType: !2351, size: 64, offset: 320)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!2354, !2355}
!2354 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !126, line: 1184, baseType: !7)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2331, line: 512, size: 896, elements: !2357)
!2357 = !{!2358, !2366, !2367, !2374, !2381, !2391, !2520, !2521, !2523, !2525}
!2358 = !DIDerivedType(tag: DW_TAG_member, scope: !2356, file: !2331, line: 513, baseType: !2359, size: 320)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2356, file: !2331, line: 513, size: 320, elements: !2360)
!2360 = !{!2361, !2362, !2363, !2364, !2365}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2359, file: !2331, line: 514, baseType: !2283, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2359, file: !2331, line: 515, baseType: !1827, size: 32, offset: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2359, file: !2331, line: 516, baseType: !51, size: 64, offset: 128)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2359, file: !2331, line: 517, baseType: !51, size: 64, offset: 192)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2359, file: !2331, line: 518, baseType: !51, size: 64, offset: 256)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2356, file: !2331, line: 520, baseType: !125, size: 32, offset: 320)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2356, file: !2331, line: 522, baseType: !2368, size: 64, offset: 384)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2303, line: 22, baseType: !2370)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2303, line: 22, size: 64, elements: !2371)
!2371 = !{!2372}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2370, file: !2303, line: 22, baseType: !2373, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2303, line: 15, baseType: !51)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2356, file: !2331, line: 524, baseType: !2375, size: 64, offset: 448)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2298, line: 372, baseType: !2377)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2298, line: 372, size: 64, elements: !2378)
!2378 = !{!2379}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2377, file: !2298, line: 372, baseType: !2380, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2303, line: 16, baseType: !51)
!2381 = !DIDerivedType(tag: DW_TAG_member, scope: !2356, file: !2331, line: 527, baseType: !2382, size: 64, offset: 512)
!2382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2356, file: !2331, line: 527, size: 64, elements: !2383)
!2383 = !{!2384, !2390}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2382, file: !2331, line: 528, baseType: !2385, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2303, line: 21, baseType: !2386)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2303, line: 21, size: 64, elements: !2387)
!2387 = !{!2388}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2386, file: !2303, line: 21, baseType: !2389, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2303, line: 14, baseType: !51)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2382, file: !2331, line: 529, baseType: !2369, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2356, file: !2331, line: 534, baseType: !2392, size: 64, offset: 576)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !126, line: 74, size: 512, align: 128, elements: !2394)
!2394 = !{!2395, !2396, !2514, !2519}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2393, file: !126, line: 75, baseType: !51, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, scope: !2393, file: !126, line: 83, baseType: !2397, size: 320, offset: 64)
!2397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2393, file: !126, line: 83, size: 320, elements: !2398)
!2398 = !{!2399, !2420, !2434, !2438, !2513}
!2399 = !DIDerivedType(tag: DW_TAG_member, scope: !2397, file: !126, line: 84, baseType: !2400, size: 320)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2397, file: !126, line: 84, size: 320, elements: !2401)
!2401 = !{!2402, !2413, !2414, !2419}
!2402 = !DIDerivedType(tag: DW_TAG_member, scope: !2400, file: !126, line: 90, baseType: !2403, size: 128)
!2403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2400, file: !126, line: 90, size: 128, elements: !2404)
!2404 = !{!2405, !2406, !2411, !2412}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2403, file: !126, line: 91, baseType: !109, size: 128)
!2406 = !DIDerivedType(tag: DW_TAG_member, scope: !2403, file: !126, line: 94, baseType: !2407, size: 128)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2403, file: !126, line: 94, size: 128, elements: !2408)
!2408 = !{!2409, !2410}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2407, file: !126, line: 96, baseType: !32, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2407, file: !126, line: 98, baseType: !7, size: 32, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2403, file: !126, line: 102, baseType: !109, size: 128)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2403, file: !126, line: 103, baseType: !109, size: 128)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2400, file: !126, line: 106, baseType: !576, size: 64, offset: 128)
!2414 = !DIDerivedType(tag: DW_TAG_member, scope: !2400, file: !126, line: 107, baseType: !2415, size: 64, offset: 192)
!2415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2400, file: !126, line: 107, size: 64, elements: !2416)
!2416 = !{!2417, !2418}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2415, file: !126, line: 108, baseType: !51, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2415, file: !126, line: 109, baseType: !51, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2400, file: !126, line: 117, baseType: !51, size: 64, offset: 256)
!2420 = !DIDerivedType(tag: DW_TAG_member, scope: !2397, file: !126, line: 119, baseType: !2421, size: 320)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2397, file: !126, line: 119, size: 320, elements: !2422)
!2422 = !{!2423, !2424, !2427, !2428, !2429}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2421, file: !126, line: 124, baseType: !51, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2421, file: !126, line: 125, baseType: !2425, size: 64, offset: 64)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !126, line: 125, flags: DIFlagFwdDecl)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2421, file: !126, line: 126, baseType: !51, size: 64, offset: 128)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2421, file: !126, line: 127, baseType: !51, size: 64, offset: 192)
!2429 = !DIDerivedType(tag: DW_TAG_member, scope: !2421, file: !126, line: 128, baseType: !2430, size: 64, offset: 256)
!2430 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2421, file: !126, line: 128, size: 64, elements: !2431)
!2431 = !{!2432, !2433}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2430, file: !126, line: 133, baseType: !51, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2430, file: !126, line: 138, baseType: !836, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, scope: !2397, file: !126, line: 141, baseType: !2435, size: 64)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2397, file: !126, line: 141, size: 64, elements: !2436)
!2436 = !{!2437}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2435, file: !126, line: 142, baseType: !51, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, scope: !2397, file: !126, line: 144, baseType: !2439, size: 128)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2397, file: !126, line: 144, size: 128, elements: !2440)
!2440 = !{!2441, !2512}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2439, file: !126, line: 146, baseType: !2442, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !142, line: 126, size: 1216, elements: !2444)
!2444 = !{!2445, !2455, !2476, !2477, !2478, !2479, !2480, !2494, !2495, !2496}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2443, file: !142, line: 127, baseType: !2446, size: 384)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !142, line: 21, size: 384, elements: !2447)
!2447 = !{!2448, !2449, !2451, !2452, !2453, !2454}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2446, file: !142, line: 22, baseType: !51, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2446, file: !142, line: 23, baseType: !2450, size: 64, offset: 64)
!2450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2446, file: !142, line: 24, baseType: !2450, size: 64, offset: 128)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2446, file: !142, line: 25, baseType: !51, size: 64, offset: 192)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2446, file: !142, line: 26, baseType: !51, size: 64, offset: 256)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2446, file: !142, line: 27, baseType: !51, size: 64, offset: 320)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2443, file: !142, line: 128, baseType: !2456, size: 128, offset: 384)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2457, line: 105, size: 128, elements: !2458)
!2457 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2458 = !{!2459, !2460}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2456, file: !2457, line: 110, baseType: !51, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2456, file: !2457, line: 118, baseType: !2461, size: 64, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2457, line: 95, size: 448, elements: !2463)
!2463 = !{!2464, !2465, !2471, !2472, !2473, !2474, !2475}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2462, file: !2457, line: 96, baseType: !836, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2462, file: !2457, line: 97, baseType: !2466, size: 64, offset: 64)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2457, line: 60, baseType: !2468)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{null, !2470}
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2462, file: !2457, line: 98, baseType: !2466, size: 64, offset: 128)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2462, file: !2457, line: 99, baseType: !459, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2462, file: !2457, line: 100, baseType: !459, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2462, file: !2457, line: 101, baseType: !1048, size: 128, align: 64, offset: 256)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2462, file: !2457, line: 102, baseType: !2470, size: 64, offset: 384)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2443, file: !142, line: 129, baseType: !782, size: 256, offset: 512)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2443, file: !142, line: 130, baseType: !141, size: 32, offset: 768)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2443, file: !142, line: 131, baseType: !7, size: 32, offset: 800)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2443, file: !142, line: 132, baseType: !51, size: 64, offset: 832)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2443, file: !142, line: 133, baseType: !2481, size: 64, offset: 896)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2483)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !142, line: 77, size: 192, elements: !2484)
!2484 = !{!2485, !2489, !2490}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2483, file: !142, line: 83, baseType: !2486, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{null, !2392}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2483, file: !142, line: 89, baseType: !2351, size: 64, offset: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2483, file: !142, line: 100, baseType: !2491, size: 64, offset: 128)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!34, !2442, !51, !51, !34}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2443, file: !142, line: 134, baseType: !32, size: 64, offset: 960)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2443, file: !142, line: 135, baseType: !34, size: 32, offset: 1024)
!2496 = !DIDerivedType(tag: DW_TAG_member, scope: !2443, file: !142, line: 136, baseType: !2497, size: 128, offset: 1088)
!2497 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2443, file: !142, line: 136, size: 128, elements: !2498)
!2498 = !{!2499, !2505}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2497, file: !142, line: 137, baseType: !2500, size: 128)
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2501, line: 6, size: 128, elements: !2502)
!2501 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2502 = !{!2503, !2504}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2500, file: !2501, line: 7, baseType: !378, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2500, file: !2501, line: 8, baseType: !378, size: 64, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, scope: !2497, file: !142, line: 138, baseType: !2506)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2497, file: !142, line: 138, elements: !2507)
!2507 = !{!2508, !2510}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2506, file: !142, line: 138, baseType: !2509)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2506, file: !142, line: 138, elements: !1115)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2506, file: !142, line: 138, baseType: !2511)
!2511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2500, elements: !2091)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2439, file: !126, line: 147, baseType: !32, size: 64, offset: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2397, file: !126, line: 161, baseType: !1048, size: 128, align: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, scope: !2393, file: !126, line: 164, baseType: !2515, size: 32, offset: 384)
!2515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2393, file: !126, line: 164, size: 32, elements: !2516)
!2516 = !{!2517, !2518}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2515, file: !126, line: 169, baseType: !61, size: 32)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2515, file: !126, line: 177, baseType: !7, size: 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2393, file: !126, line: 181, baseType: !61, size: 32, offset: 416)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2356, file: !2331, line: 535, baseType: !2392, size: 64, offset: 640)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2356, file: !2331, line: 541, baseType: !2522, size: 64, offset: 704)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2356, file: !2331, line: 545, baseType: !2524, size: 64, offset: 768)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2356, file: !2331, line: 549, baseType: !2526, size: 64, offset: 832)
!2526 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2298, line: 520, baseType: !2392)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2330, file: !2331, line: 581, baseType: !2528, size: 64, offset: 384)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!2354, !2355, !7}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2330, file: !2331, line: 582, baseType: !2532, size: 64, offset: 448)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!2354, !2355, !51, !51}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2330, file: !2331, line: 584, baseType: !2536, size: 64, offset: 512)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!51, !2283}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2330, file: !2331, line: 588, baseType: !2351, size: 64, offset: 576)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2330, file: !2331, line: 591, baseType: !2351, size: 64, offset: 640)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2330, file: !2331, line: 597, baseType: !2542, size: 64, offset: 704)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!34, !2283, !51, !32, !34, !34}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2330, file: !2331, line: 603, baseType: !2546, size: 64, offset: 768)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!28, !2283}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2330, file: !2331, line: 613, baseType: !2550, size: 64, offset: 832)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!34, !2283, !2553}
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1447, line: 54, flags: DIFlagFwdDecl)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2330, file: !2331, line: 625, baseType: !2556, size: 64, offset: 896)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!2553, !2283, !51}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2330, file: !2331, line: 633, baseType: !2560, size: 64, offset: 960)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!2392, !2283, !51}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2284, file: !126, line: 697, baseType: !51, size: 64, offset: 1024)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2284, file: !126, line: 699, baseType: !1755, size: 64, offset: 1088)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2284, file: !126, line: 700, baseType: !32, size: 64, offset: 1152)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2284, file: !126, line: 711, baseType: !836, size: 64, offset: 1216)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2284, file: !126, line: 717, baseType: !2553, size: 64, offset: 1280)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2284, file: !126, line: 722, baseType: !2569, offset: 1344)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !126, line: 570, elements: !1115)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2194, file: !14, line: 1928, baseType: !51, size: 64, offset: 768)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2194, file: !14, line: 1929, baseType: !2572, size: 64, offset: 832)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!34, !580, !1755}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2194, file: !14, line: 1930, baseType: !2576, size: 64, offset: 896)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!34, !1755, !2579}
!2579 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !32)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2194, file: !14, line: 1931, baseType: !2572, size: 64, offset: 960)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2194, file: !14, line: 1932, baseType: !2582, size: 64, offset: 1024)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!34, !1755, !53, !53, !34}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2194, file: !14, line: 1933, baseType: !2586, size: 64, offset: 1088)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!34, !34, !1755, !34}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2194, file: !14, line: 1934, baseType: !2590, size: 64, offset: 1152)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!34, !1755, !34, !2593}
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2194, file: !14, line: 1935, baseType: !1752, size: 64, offset: 1216)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2194, file: !14, line: 1936, baseType: !2597, size: 64, offset: 1280)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!34, !34}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2194, file: !14, line: 1937, baseType: !2590, size: 64, offset: 1344)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2194, file: !14, line: 1938, baseType: !2602, size: 64, offset: 1408)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!538, !2605, !1755, !52, !47, !7}
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1447, line: 59, flags: DIFlagFwdDecl)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2194, file: !14, line: 1939, baseType: !2608, size: 64, offset: 1472)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!538, !1755, !52, !2605, !47, !7}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2194, file: !14, line: 1940, baseType: !2612, size: 64, offset: 1536)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{null, !1755}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2194, file: !14, line: 1941, baseType: !2616, size: 64, offset: 1600)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!34, !1755, !34, !2619, !2620}
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2194, file: !14, line: 1942, baseType: !2622, size: 64, offset: 1664)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!541, !1755, !34, !53, !53}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2194, file: !14, line: 1944, baseType: !2626, size: 64, offset: 1728)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{null, !2629, !1755}
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2631, line: 17, size: 960, elements: !2632)
!2631 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2632 = !{!2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2662, !2663, !2666}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2630, file: !2631, line: 18, baseType: !506, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2630, file: !2631, line: 19, baseType: !47, size: 64, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2630, file: !2631, line: 20, baseType: !47, size: 64, offset: 128)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2630, file: !2631, line: 21, baseType: !47, size: 64, offset: 192)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2630, file: !2631, line: 22, baseType: !47, size: 64, offset: 256)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2630, file: !2631, line: 23, baseType: !53, size: 64, offset: 320)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2630, file: !2631, line: 24, baseType: !53, size: 64, offset: 384)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2630, file: !2631, line: 25, baseType: !832, size: 256, offset: 448)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2630, file: !2631, line: 26, baseType: !2642, size: 64, offset: 704)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2644)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2631, line: 32, size: 256, elements: !2645)
!2645 = !{!2646, !2650, !2654, !2658}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2644, file: !2631, line: 33, baseType: !2647, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!32, !2629, !52}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2644, file: !2631, line: 34, baseType: !2651, size: 64, offset: 64)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{null, !2629, !32}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2644, file: !2631, line: 35, baseType: !2655, size: 64, offset: 128)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!32, !2629, !32, !52}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2644, file: !2631, line: 36, baseType: !2659, size: 64, offset: 192)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!34, !2629, !32}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2630, file: !2631, line: 27, baseType: !34, size: 32, offset: 768)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2630, file: !2631, line: 28, baseType: !2664, size: 64, offset: 832)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1756)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2630, file: !2631, line: 29, baseType: !32, size: 64, offset: 896)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2194, file: !14, line: 1948, baseType: !2668, size: 64, offset: 1792)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!538, !1755, !53, !1755, !53, !47, !7}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2194, file: !14, line: 1950, baseType: !2672, size: 64, offset: 1856)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!53, !1755, !53, !1755, !53, !53, !7}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2194, file: !14, line: 1953, baseType: !2582, size: 64, offset: 1920)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2194, file: !14, line: 1954, baseType: !2677, size: 64, offset: 1984)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!34, !2680, !7}
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2194, file: !14, line: 1955, baseType: !2683, size: 64, offset: 2048)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!34, !2680, !2242, !7}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1756, file: !14, line: 1018, baseType: !378, size: 64, offset: 1472)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1756, file: !14, line: 1020, baseType: !32, size: 64, offset: 1536)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1756, file: !14, line: 1023, baseType: !32, size: 64, offset: 1600)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1756, file: !14, line: 1027, baseType: !1365, size: 64, offset: 1664)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1756, file: !14, line: 1029, baseType: !576, size: 64, offset: 1728)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1756, file: !14, line: 1030, baseType: !2692, size: 32, offset: 1792)
!2692 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2693, line: 8, baseType: !390)
!2693 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1756, file: !14, line: 1031, baseType: !2692, size: 32, offset: 1824)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1732, file: !126, line: 756, baseType: !51, size: 64, offset: 704)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1732, file: !126, line: 757, baseType: !51, size: 64, offset: 768)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1732, file: !126, line: 760, baseType: !51, size: 64, offset: 832)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1732, file: !126, line: 761, baseType: !51, size: 64, offset: 896)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1732, file: !126, line: 763, baseType: !51, size: 64, offset: 960)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1732, file: !126, line: 764, baseType: !2701, size: 64, offset: 1024)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2298, line: 299, baseType: !2703)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2298, line: 299, size: 64, elements: !2704)
!2704 = !{!2705}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2703, file: !2298, line: 299, baseType: !2706, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2303, line: 18, baseType: !51)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1732, file: !126, line: 773, baseType: !61, size: 32, offset: 1088)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1732, file: !126, line: 785, baseType: !61, size: 32, offset: 1120)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1732, file: !126, line: 795, baseType: !2710, size: 64, offset: 1152)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !126, line: 726, size: 128, elements: !2712)
!2712 = !{!2713, !2714}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2711, file: !126, line: 727, baseType: !378, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2711, file: !126, line: 728, baseType: !34, size: 32, offset: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1732, file: !126, line: 801, baseType: !51, size: 64, offset: 1216)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1732, file: !126, line: 804, baseType: !836, size: 64, offset: 1280)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1732, file: !126, line: 806, baseType: !34, size: 32, offset: 1344)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1732, file: !126, line: 808, baseType: !71, size: 32, offset: 1376)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1732, file: !126, line: 823, baseType: !1905, size: 320, offset: 1408)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1732, file: !126, line: 825, baseType: !109, size: 128, offset: 1728)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1732, file: !126, line: 845, baseType: !34, size: 32, offset: 1856)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1732, file: !126, line: 849, baseType: !51, size: 64, offset: 1920)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1732, file: !126, line: 850, baseType: !51, size: 64, offset: 1984)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1732, file: !126, line: 852, baseType: !51, size: 64, offset: 2048)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1732, file: !126, line: 853, baseType: !51, size: 64, offset: 2112)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1732, file: !126, line: 854, baseType: !838, size: 64, offset: 2176)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1732, file: !126, line: 855, baseType: !51, size: 64, offset: 2240)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1732, file: !126, line: 856, baseType: !51, size: 64, offset: 2304)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1732, file: !126, line: 857, baseType: !51, size: 64, offset: 2368)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1732, file: !126, line: 858, baseType: !51, size: 64, offset: 2432)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1732, file: !126, line: 865, baseType: !626, size: 32, offset: 2496)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1732, file: !126, line: 867, baseType: !71, size: 32, offset: 2528)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1732, file: !126, line: 869, baseType: !51, size: 64, offset: 2560)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1732, file: !126, line: 869, baseType: !51, size: 64, offset: 2624)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1732, file: !126, line: 869, baseType: !51, size: 64, offset: 2688)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1732, file: !126, line: 869, baseType: !51, size: 64, offset: 2752)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1732, file: !126, line: 870, baseType: !51, size: 64, offset: 2816)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1732, file: !126, line: 870, baseType: !51, size: 64, offset: 2880)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1732, file: !126, line: 870, baseType: !51, size: 64, offset: 2944)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1732, file: !126, line: 871, baseType: !51, size: 64, offset: 3008)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1732, file: !126, line: 871, baseType: !51, size: 64, offset: 3072)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1732, file: !126, line: 871, baseType: !51, size: 64, offset: 3136)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1732, file: !126, line: 871, baseType: !51, size: 64, offset: 3200)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1732, file: !126, line: 873, baseType: !2745, size: 3328, offset: 3264)
!2745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 3328, elements: !2746)
!2746 = !{!2747}
!2747 = !DISubrange(count: 52)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1732, file: !126, line: 875, baseType: !2749, size: 1280, offset: 6592)
!2749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2136, size: 1280, elements: !387)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1732, file: !126, line: 877, baseType: !2751, size: 64, offset: 7872)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !126, line: 877, flags: DIFlagFwdDecl)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1732, file: !126, line: 880, baseType: !2754, size: 1088, offset: 7936)
!2754 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2755, line: 72, baseType: !2756)
!2755 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2755, line: 23, size: 1088, elements: !2757)
!2757 = !{!2758, !2759, !2760, !2761, !2762, !2765, !2766, !2767, !2768, !2795, !2796, !2797}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2756, file: !2755, line: 28, baseType: !378, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2756, file: !2755, line: 38, baseType: !838, size: 64, offset: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2756, file: !2755, line: 40, baseType: !51, size: 64, offset: 128)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2756, file: !2755, line: 43, baseType: !1905, size: 320, offset: 192)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2756, file: !2755, line: 44, baseType: !2763, size: 64, offset: 512)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2755, line: 44, flags: DIFlagFwdDecl)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2756, file: !2755, line: 48, baseType: !51, size: 64, offset: 576)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2756, file: !2755, line: 59, baseType: !832, size: 256, offset: 640)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2756, file: !2755, line: 60, baseType: !32, size: 64, offset: 896)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2756, file: !2755, line: 61, baseType: !2769, size: 64, offset: 960)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2771)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2772, line: 13, size: 1216, elements: !2773)
!2772 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2773 = !{!2774, !2775, !2776, !2777, !2778, !2779, !2780, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2771, file: !2772, line: 14, baseType: !32, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2771, file: !2772, line: 15, baseType: !51, size: 64, offset: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2771, file: !2772, line: 17, baseType: !51, size: 64, offset: 128)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2771, file: !2772, line: 17, baseType: !51, size: 64, offset: 192)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2771, file: !2772, line: 18, baseType: !51, size: 64, offset: 256)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2771, file: !2772, line: 18, baseType: !51, size: 64, offset: 320)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2771, file: !2772, line: 19, baseType: !2781, size: 64, offset: 384)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2771, file: !2772, line: 21, baseType: !541, size: 64, offset: 448)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2771, file: !2772, line: 23, baseType: !541, size: 64, offset: 512)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2771, file: !2772, line: 24, baseType: !541, size: 64, offset: 576)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2771, file: !2772, line: 25, baseType: !541, size: 64, offset: 640)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2771, file: !2772, line: 26, baseType: !541, size: 64, offset: 704)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2771, file: !2772, line: 27, baseType: !541, size: 64, offset: 768)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2771, file: !2772, line: 28, baseType: !541, size: 64, offset: 832)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2771, file: !2772, line: 29, baseType: !541, size: 64, offset: 896)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2771, file: !2772, line: 30, baseType: !541, size: 64, offset: 960)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2771, file: !2772, line: 31, baseType: !541, size: 64, offset: 1024)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2771, file: !2772, line: 32, baseType: !541, size: 64, offset: 1088)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2771, file: !2772, line: 33, baseType: !541, size: 64, offset: 1152)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2756, file: !2755, line: 63, baseType: !61, size: 32, offset: 1024)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2756, file: !2755, line: 69, baseType: !105, size: 16, offset: 1056)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2756, file: !2755, line: 70, baseType: !965, size: 16, offset: 1072)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1732, file: !126, line: 882, baseType: !51, size: 64, offset: 9024)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1732, file: !126, line: 885, baseType: !71, size: 32, offset: 9088)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1732, file: !126, line: 886, baseType: !2801, size: 64, offset: 9152)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !126, line: 732, flags: DIFlagFwdDecl)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1732, file: !126, line: 901, baseType: !1844, size: 64, offset: 9216)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1732, file: !126, line: 904, baseType: !1755, size: 64, offset: 9280)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1732, file: !126, line: 906, baseType: !2806, size: 64, offset: 9344)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !126, line: 906, flags: DIFlagFwdDecl)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1732, file: !126, line: 930, baseType: !61, size: 32, offset: 9408)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1732, file: !126, line: 933, baseType: !61, size: 32, offset: 9440)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1732, file: !126, line: 935, baseType: !2811, size: 64, offset: 9472)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !150, line: 103, size: 64, elements: !2812)
!2812 = !{!2813}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2811, file: !150, line: 104, baseType: !2814, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !150, line: 101, flags: DIFlagFwdDecl)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1732, file: !126, line: 940, baseType: !836, size: 64, offset: 9536)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1732, file: !126, line: 942, baseType: !1086, size: 256, offset: 9600)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1729, file: !126, line: 986, baseType: !2819, offset: 10240)
!2819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, elements: !2091)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1446, file: !1447, line: 882, baseType: !1728, size: 64, offset: 9792)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1446, file: !1447, line: 884, baseType: !34, size: 32, offset: 9856)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1446, file: !1447, line: 885, baseType: !34, size: 32, offset: 9888)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1446, file: !1447, line: 886, baseType: !34, size: 32, offset: 9920)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1446, file: !1447, line: 888, baseType: !34, size: 32, offset: 9952)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1446, file: !1447, line: 890, baseType: !51, size: 64, offset: 9984)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1446, file: !1447, line: 893, baseType: !7, size: 32, offset: 10048)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1446, file: !1447, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1446, file: !1447, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1446, file: !1447, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1446, file: !1447, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1446, file: !1447, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1446, file: !1447, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1446, file: !1447, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1446, file: !1447, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1446, file: !1447, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1446, file: !1447, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1446, file: !1447, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1446, file: !1447, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1446, file: !1447, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1446, file: !1447, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1446, file: !1447, line: 969, baseType: !51, size: 64, offset: 10176)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1446, file: !1447, line: 971, baseType: !2843, size: 448, offset: 10240)
!2843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !120, line: 25, size: 448, elements: !2844)
!2844 = !{!2845, !2846, !2851}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2843, file: !120, line: 26, baseType: !51, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2843, file: !120, line: 27, baseType: !2847, size: 64, offset: 64)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!541, !2850}
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, scope: !2843, file: !120, line: 28, baseType: !2852, size: 320, offset: 128)
!2852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2843, file: !120, line: 28, size: 320, elements: !2853)
!2853 = !{!2854, !2864, !2889}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2852, file: !120, line: 37, baseType: !2855, size: 320)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2852, file: !120, line: 30, size: 320, elements: !2856)
!2856 = !{!2857, !2859, !2860, !2861, !2862, !2863}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2855, file: !120, line: 31, baseType: !2858, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2855, file: !120, line: 32, baseType: !390, size: 32, offset: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2855, file: !120, line: 33, baseType: !390, size: 32, offset: 96)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2855, file: !120, line: 34, baseType: !390, size: 32, offset: 128)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2855, file: !120, line: 35, baseType: !378, size: 64, offset: 192)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2855, file: !120, line: 36, baseType: !2858, size: 64, offset: 256)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2852, file: !120, line: 47, baseType: !2865, size: 192)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2852, file: !120, line: 39, size: 192, elements: !2866)
!2866 = !{!2867, !2868, !2869, !2888}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2865, file: !120, line: 40, baseType: !1609, size: 32)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2865, file: !120, line: 41, baseType: !119, size: 32, offset: 32)
!2869 = !DIDerivedType(tag: DW_TAG_member, scope: !2865, file: !120, line: 42, baseType: !2870, size: 64, offset: 64)
!2870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2865, file: !120, line: 42, size: 64, elements: !2871)
!2871 = !{!2872, !2880}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2870, file: !120, line: 43, baseType: !2873, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2875, line: 7, size: 128, elements: !2876)
!2875 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2876 = !{!2877, !2879}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2874, file: !2875, line: 8, baseType: !2878, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !49, line: 93, baseType: !55)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2874, file: !2875, line: 9, baseType: !55, size: 64, offset: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2870, file: !120, line: 44, baseType: !2881, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2883, line: 7, size: 64, elements: !2884)
!2883 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2884 = !{!2885, !2887}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2882, file: !2883, line: 8, baseType: !2886, size: 32)
!2886 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2883, line: 5, baseType: !828)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2882, file: !2883, line: 9, baseType: !828, size: 32, offset: 32)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2865, file: !120, line: 46, baseType: !378, size: 64, offset: 128)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2852, file: !120, line: 55, baseType: !2890, size: 256)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2852, file: !120, line: 49, size: 256, elements: !2891)
!2891 = !{!2892, !2900, !2901, !2902, !2903}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2890, file: !120, line: 50, baseType: !2893, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2895, line: 36, size: 64, elements: !2896)
!2895 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!2896 = !{!2897, !2898, !2899}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2894, file: !2895, line: 37, baseType: !34, size: 32)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2894, file: !2895, line: 38, baseType: !967, size: 16, offset: 32)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2894, file: !2895, line: 39, baseType: !967, size: 16, offset: 48)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2890, file: !120, line: 51, baseType: !34, size: 32, offset: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2890, file: !120, line: 52, baseType: !34, size: 32, offset: 96)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2890, file: !120, line: 53, baseType: !51, size: 64, offset: 128)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2890, file: !120, line: 54, baseType: !51, size: 64, offset: 192)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1446, file: !1447, line: 973, baseType: !2905, size: 32, offset: 10688)
!2905 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !37, line: 27, baseType: !2906)
!2906 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !49, line: 28, baseType: !34)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1446, file: !1447, line: 974, baseType: !2905, size: 32, offset: 10720)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1446, file: !1447, line: 978, baseType: !51, size: 64, offset: 10752)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1446, file: !1447, line: 987, baseType: !1445, size: 64, offset: 10816)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1446, file: !1447, line: 990, baseType: !1445, size: 64, offset: 10880)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1446, file: !1447, line: 995, baseType: !109, size: 128, offset: 10944)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1446, file: !1447, line: 996, baseType: !109, size: 128, offset: 11072)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1446, file: !1447, line: 997, baseType: !1445, size: 64, offset: 11200)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1446, file: !1447, line: 1005, baseType: !109, size: 128, offset: 11264)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1446, file: !1447, line: 1006, baseType: !109, size: 128, offset: 11392)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1446, file: !1447, line: 1009, baseType: !1796, size: 64, offset: 11520)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1446, file: !1447, line: 1010, baseType: !2918, size: 512, offset: 11584)
!2918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1072, size: 512, elements: !387)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1446, file: !1447, line: 1011, baseType: !109, size: 128, offset: 12096)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1446, file: !1447, line: 1012, baseType: !109, size: 128, offset: 12224)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1446, file: !1447, line: 1014, baseType: !781, size: 64, offset: 12352)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1446, file: !1447, line: 1017, baseType: !440, size: 64, offset: 12416)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1446, file: !1447, line: 1020, baseType: !440, size: 64, offset: 12480)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1446, file: !1447, line: 1023, baseType: !32, size: 64, offset: 12544)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1446, file: !1447, line: 1025, baseType: !378, size: 64, offset: 12608)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1446, file: !1447, line: 1026, baseType: !378, size: 64, offset: 12672)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1446, file: !1447, line: 1031, baseType: !378, size: 64, offset: 12736)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1446, file: !1447, line: 1032, baseType: !2929, size: 192, offset: 12800)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1447, line: 324, size: 192, elements: !2930)
!2930 = !{!2931, !2932, !2933}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2929, file: !1447, line: 326, baseType: !378, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2929, file: !1447, line: 327, baseType: !378, size: 64, offset: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2929, file: !1447, line: 328, baseType: !393, size: 32, offset: 128)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1446, file: !1447, line: 1041, baseType: !51, size: 64, offset: 12992)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1446, file: !1447, line: 1042, baseType: !51, size: 64, offset: 13056)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1446, file: !1447, line: 1045, baseType: !378, size: 64, offset: 13120)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1446, file: !1447, line: 1048, baseType: !378, size: 64, offset: 13184)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1446, file: !1447, line: 1051, baseType: !51, size: 64, offset: 13248)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1446, file: !1447, line: 1052, baseType: !51, size: 64, offset: 13312)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1446, file: !1447, line: 1055, baseType: !2941, size: 640, offset: 13376)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2942, line: 132, size: 640, elements: !2943)
!2942 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2943 = !{!2944, !2950, !2951}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2941, file: !2942, line: 133, baseType: !2945, size: 576)
!2945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2946, size: 576, elements: !507)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2942, line: 117, size: 192, elements: !2947)
!2947 = !{!2948, !2949}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2946, file: !2942, line: 118, baseType: !378, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2946, file: !2942, line: 119, baseType: !1618, size: 128, offset: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2941, file: !2942, line: 134, baseType: !7, size: 32, offset: 576)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2941, file: !2942, line: 135, baseType: !7, size: 32, offset: 608)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1446, file: !1447, line: 1058, baseType: !2953, size: 448, offset: 14016)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2942, line: 144, size: 448, elements: !2954)
!2954 = !{!2955, !2956, !2957}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2953, file: !2942, line: 145, baseType: !1048, size: 128, align: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2953, file: !2942, line: 146, baseType: !832, size: 256, offset: 128)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2953, file: !2942, line: 147, baseType: !7, size: 32, offset: 384)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1446, file: !1447, line: 1064, baseType: !2098, size: 64, offset: 14464)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1446, file: !1447, line: 1067, baseType: !2098, size: 64, offset: 14528)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1446, file: !1447, line: 1070, baseType: !2098, size: 64, offset: 14592)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1446, file: !1447, line: 1074, baseType: !1891, size: 64, offset: 14656)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1446, file: !1447, line: 1084, baseType: !2963, size: 128, offset: 14720)
!2963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 128, elements: !431)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1446, file: !1447, line: 1086, baseType: !2965, size: 64, offset: 14848)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1447, line: 55, flags: DIFlagFwdDecl)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1446, file: !1447, line: 1089, baseType: !2968, size: 64, offset: 14912)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2969, line: 12, size: 64, elements: !2970)
!2969 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2970 = !{!2971}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2968, file: !2969, line: 13, baseType: !2972, size: 64)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2969, line: 8, flags: DIFlagFwdDecl)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1446, file: !1447, line: 1090, baseType: !2975, size: 128, offset: 14976)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2976, line: 13, size: 128, elements: !2977)
!2976 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2977 = !{!2978}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2975, file: !2976, line: 14, baseType: !109, size: 128)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1446, file: !1447, line: 1097, baseType: !2980, size: 64, offset: 15104)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1447, line: 50, flags: DIFlagFwdDecl)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1446, file: !1447, line: 1100, baseType: !2983, size: 64, offset: 15168)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1447, line: 1100, flags: DIFlagFwdDecl)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1446, file: !1447, line: 1103, baseType: !2986, size: 64, offset: 15232)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1447, line: 53, flags: DIFlagFwdDecl)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1446, file: !1447, line: 1107, baseType: !2989, size: 64, offset: 15296)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2991, line: 31, size: 576, elements: !2992)
!2991 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2992 = !{!2993, !2994, !2997, !3000, !3003, !3004, !3007, !3010, !3011}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2990, file: !2991, line: 32, baseType: !1439, size: 32)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2990, file: !2991, line: 33, baseType: !2995, size: 64, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2991, line: 9, flags: DIFlagFwdDecl)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2990, file: !2991, line: 34, baseType: !2998, size: 64, offset: 128)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2991, line: 10, flags: DIFlagFwdDecl)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2990, file: !2991, line: 35, baseType: !3001, size: 64, offset: 192)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2991, line: 8, flags: DIFlagFwdDecl)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2990, file: !2991, line: 36, baseType: !1813, size: 64, offset: 256)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2990, file: !2991, line: 37, baseType: !3005, size: 64, offset: 320)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1893, line: 34, flags: DIFlagFwdDecl)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2990, file: !2991, line: 38, baseType: !3008, size: 64, offset: 384)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2991, line: 38, flags: DIFlagFwdDecl)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2990, file: !2991, line: 39, baseType: !3008, size: 64, offset: 448)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2990, file: !2991, line: 40, baseType: !3012, size: 64, offset: 512)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3014, line: 771, size: 384, elements: !3015)
!3014 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!3015 = !{!3016, !3017, !3018, !3019}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3013, file: !3014, line: 772, baseType: !1877, size: 192)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !3013, file: !3014, line: 773, baseType: !1844, size: 64, offset: 192)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !3013, file: !3014, line: 774, baseType: !2071, size: 64, offset: 256)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !3013, file: !3014, line: 775, baseType: !3020, size: 64, offset: 320)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3022, line: 209, size: 4736, elements: !3023)
!3022 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3023 = !{!3024, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3021, file: !3022, line: 215, baseType: !3025, size: 896)
!3025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3026, size: 896, elements: !3171)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3022, line: 152, size: 1600, elements: !3028)
!3028 = !{!3029, !3222, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3340}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3027, file: !3022, line: 154, baseType: !3030, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3022, line: 389, size: 7872, elements: !3032)
!3032 = !{!3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3136, !3142, !3143, !3147, !3148, !3149, !3150, !3151, !3152, !3168, !3169, !3173, !3174, !3175, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3209, !3212, !3213, !3220}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3031, file: !3022, line: 391, baseType: !3027, size: 1600)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3031, file: !3022, line: 393, baseType: !51, size: 64, offset: 1600)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3031, file: !3022, line: 401, baseType: !34, size: 32, offset: 1664)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3031, file: !3022, line: 404, baseType: !34, size: 32, offset: 1696)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3031, file: !3022, line: 417, baseType: !34, size: 32, offset: 1728)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3031, file: !3022, line: 418, baseType: !34, size: 32, offset: 1760)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3031, file: !3022, line: 419, baseType: !34, size: 32, offset: 1792)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3031, file: !3022, line: 432, baseType: !34, size: 32, offset: 1824)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3031, file: !3022, line: 433, baseType: !34, size: 32, offset: 1856)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3031, file: !3022, line: 434, baseType: !34, size: 32, offset: 1888)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3031, file: !3022, line: 436, baseType: !34, size: 32, offset: 1920)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3031, file: !3022, line: 439, baseType: !7, size: 32, offset: 1952)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3031, file: !3022, line: 441, baseType: !3046, size: 64, offset: 1984)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !748, line: 190, size: 1152, elements: !3048)
!3048 = !{!3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3128, !3129, !3130, !3131, !3132, !3135}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3047, file: !748, line: 191, baseType: !61, size: 32)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3047, file: !748, line: 192, baseType: !61, size: 32, offset: 32)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3047, file: !748, line: 202, baseType: !3046, size: 64, offset: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3047, file: !748, line: 203, baseType: !28, size: 64, offset: 128)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3047, file: !748, line: 205, baseType: !942, size: 192, align: 64, offset: 192)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3047, file: !748, line: 207, baseType: !2781, size: 64, offset: 384)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3047, file: !748, line: 208, baseType: !7, size: 32, offset: 448)
!3056 = !DIDerivedType(tag: DW_TAG_member, scope: !3047, file: !748, line: 209, baseType: !3057, size: 256, offset: 512)
!3057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3047, file: !748, line: 209, size: 256, elements: !3058)
!3058 = !{!3059, !3068, !3072}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3057, file: !748, line: 210, baseType: !3060, size: 256)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !748, line: 153, size: 256, elements: !3061)
!3061 = !{!3062, !3063, !3064, !3067}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3060, file: !748, line: 154, baseType: !51, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3060, file: !748, line: 156, baseType: !1425, size: 64, offset: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3060, file: !748, line: 162, baseType: !3065, size: 64, offset: 128)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !748, line: 162, flags: DIFlagFwdDecl)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3060, file: !748, line: 167, baseType: !51, size: 64, offset: 192)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3057, file: !748, line: 211, baseType: !3069, size: 64)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !748, line: 170, size: 64, elements: !3070)
!3070 = !{!3071}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3069, file: !748, line: 171, baseType: !3046, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3057, file: !748, line: 212, baseType: !3073, size: 256)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !748, line: 174, size: 256, elements: !3074)
!3074 = !{!3075, !3123, !3126, !3127}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3073, file: !748, line: 175, baseType: !3076, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3078)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !748, line: 271, size: 768, elements: !3079)
!3079 = !{!3080, !3100, !3104, !3105, !3106, !3107, !3108, !3112, !3113, !3114, !3115, !3119}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3078, file: !748, line: 276, baseType: !3081, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!34, !3084}
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !748, line: 251, size: 1216, elements: !3086)
!3086 = !{!3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3085, file: !748, line: 253, baseType: !3046, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3085, file: !748, line: 254, baseType: !1755, size: 64, offset: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3085, file: !748, line: 255, baseType: !2629, size: 64, offset: 128)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3085, file: !748, line: 256, baseType: !32, size: 64, offset: 192)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3085, file: !748, line: 259, baseType: !832, size: 256, offset: 256)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3085, file: !748, line: 260, baseType: !832, size: 256, offset: 512)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3085, file: !748, line: 261, baseType: !34, size: 32, offset: 768)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3085, file: !748, line: 262, baseType: !109, size: 128, offset: 832)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3085, file: !748, line: 263, baseType: !506, size: 64, offset: 960)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3085, file: !748, line: 265, baseType: !47, size: 64, offset: 1024)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3085, file: !748, line: 266, baseType: !459, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3085, file: !748, line: 267, baseType: !459, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3085, file: !748, line: 268, baseType: !2328, size: 64, offset: 1152)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3078, file: !748, line: 277, baseType: !3101, size: 64, offset: 64)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{null, !3084}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3078, file: !748, line: 290, baseType: !2659, size: 64, offset: 128)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3078, file: !748, line: 292, baseType: !2647, size: 64, offset: 192)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3078, file: !748, line: 293, baseType: !2655, size: 64, offset: 256)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3078, file: !748, line: 294, baseType: !2651, size: 64, offset: 320)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3078, file: !748, line: 296, baseType: !3109, size: 64, offset: 384)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!538, !3084, !506, !47, !53}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3078, file: !748, line: 306, baseType: !47, size: 64, offset: 448)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3078, file: !748, line: 313, baseType: !459, size: 8, offset: 512)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3078, file: !748, line: 314, baseType: !3109, size: 64, offset: 576)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3078, file: !748, line: 317, baseType: !3116, size: 64, offset: 640)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!2261, !3084, !2263}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3078, file: !748, line: 320, baseType: !3120, size: 64, offset: 704)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!34, !3084, !2283}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3073, file: !748, line: 176, baseType: !3124, size: 64, offset: 64)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !748, line: 35, flags: DIFlagFwdDecl)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3073, file: !748, line: 177, baseType: !53, size: 64, offset: 128)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3073, file: !748, line: 178, baseType: !3046, size: 64, offset: 192)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3047, file: !748, line: 215, baseType: !32, size: 64, offset: 768)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3047, file: !748, line: 221, baseType: !378, size: 64, offset: 832)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3047, file: !748, line: 223, baseType: !38, size: 16, offset: 896)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3047, file: !748, line: 224, baseType: !36, size: 16, offset: 912)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3047, file: !748, line: 225, baseType: !3133, size: 64, offset: 960)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !748, line: 36, flags: DIFlagFwdDecl)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3047, file: !748, line: 227, baseType: !1048, size: 128, align: 64, offset: 1024)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3031, file: !3022, line: 442, baseType: !3137, size: 448, offset: 2048)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3022, line: 138, size: 448, elements: !3138)
!3138 = !{!3139, !3140, !3141}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3137, file: !3022, line: 140, baseType: !3046, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3137, file: !3022, line: 141, baseType: !51, size: 64, offset: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3137, file: !3022, line: 142, baseType: !1068, size: 320, offset: 128)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3031, file: !3022, line: 443, baseType: !3137, size: 448, offset: 2496)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3031, file: !3022, line: 446, baseType: !3144, offset: 2944)
!3144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3137, elements: !3145)
!3145 = !{!3146}
!3146 = !DISubrange(count: 0)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3031, file: !3022, line: 455, baseType: !105, size: 16, offset: 2944)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3031, file: !3022, line: 456, baseType: !105, size: 16, offset: 2960)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3031, file: !3022, line: 457, baseType: !105, size: 16, offset: 2976)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3031, file: !3022, line: 458, baseType: !105, size: 16, offset: 2992)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3031, file: !3022, line: 461, baseType: !3025, size: 896, offset: 3008)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3031, file: !3022, line: 463, baseType: !3153, size: 64, offset: 3904)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3022, line: 537, size: 41664, elements: !3155)
!3155 = !{!3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3154, file: !3022, line: 538, baseType: !3065, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3154, file: !3022, line: 541, baseType: !7, size: 32, offset: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3154, file: !3022, line: 544, baseType: !34, size: 32, offset: 96)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3154, file: !3022, line: 547, baseType: !109, size: 128, offset: 128)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3154, file: !3022, line: 548, baseType: !1048, size: 128, align: 64, offset: 256)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3154, file: !3022, line: 555, baseType: !3031, size: 7872, offset: 384)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3154, file: !3022, line: 558, baseType: !3030, size: 64, offset: 8256)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3154, file: !3022, line: 561, baseType: !61, size: 32, offset: 8320)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3154, file: !3022, line: 564, baseType: !7, size: 32, offset: 8352)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3154, file: !3022, line: 567, baseType: !1309, size: 32768, offset: 8384)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3154, file: !3022, line: 570, baseType: !3167, size: 512, offset: 41152)
!3167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 512, elements: !511)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3031, file: !3022, line: 469, baseType: !109, size: 128, offset: 3968)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3031, file: !3022, line: 478, baseType: !3170, size: 1792, offset: 4096)
!3170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 1792, elements: !3171)
!3171 = !{!3172}
!3172 = !DISubrange(count: 14)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3031, file: !3022, line: 487, baseType: !3030, size: 64, offset: 5888)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3031, file: !3022, line: 488, baseType: !3030, size: 64, offset: 5952)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3031, file: !3022, line: 491, baseType: !3176, size: 64, offset: 6016)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3022, line: 327, size: 896, elements: !3178)
!3178 = !{!3179, !3182, !3192, !3193, !3194, !3195, !3196}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3177, file: !3022, line: 332, baseType: !3180)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3181, line: 64, elements: !1115)
!3181 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3177, file: !3022, line: 333, baseType: !3183, size: 192)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3022, line: 299, size: 192, elements: !3184)
!3184 = !{!3185}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3183, file: !3022, line: 300, baseType: !3186, size: 192)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3187, line: 17, size: 192, elements: !3188)
!3187 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3188 = !{!3189, !3190, !3191}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3186, file: !3187, line: 18, baseType: !378, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3186, file: !3187, line: 19, baseType: !378, size: 64, offset: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3186, file: !3187, line: 20, baseType: !380, size: 64, offset: 128)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3177, file: !3022, line: 339, baseType: !3183, size: 192, offset: 192)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3177, file: !3022, line: 347, baseType: !3183, size: 192, offset: 384)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3177, file: !3022, line: 353, baseType: !3183, size: 192, offset: 576)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3177, file: !3022, line: 366, baseType: !3030, size: 64, offset: 768)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3177, file: !3022, line: 367, baseType: !3030, size: 64, offset: 832)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3031, file: !3022, line: 492, baseType: !109, size: 128, offset: 6080)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3031, file: !3022, line: 495, baseType: !3183, size: 192, offset: 6208)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3031, file: !3022, line: 496, baseType: !3183, size: 192, offset: 6400)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3031, file: !3022, line: 497, baseType: !2929, size: 192, offset: 6592)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3031, file: !3022, line: 503, baseType: !109, size: 128, offset: 6784)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3031, file: !3022, line: 504, baseType: !832, size: 256, offset: 6912)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3031, file: !3022, line: 507, baseType: !66, size: 192, offset: 7168)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3031, file: !3022, line: 510, baseType: !1086, size: 256, offset: 7360)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3031, file: !3022, line: 513, baseType: !3206, size: 64, offset: 7616)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3208, line: 214, elements: !1115)
!3208 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3031, file: !3022, line: 516, baseType: !3210, offset: 7680)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3211, line: 76, elements: !1115)
!3211 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3031, file: !3022, line: 519, baseType: !61, size: 32, offset: 7680)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3031, file: !3022, line: 522, baseType: !3214, size: 128, offset: 7712)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3022, line: 370, size: 128, elements: !3215)
!3215 = !{!3216, !3217, !3218, !3219}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3214, file: !3022, line: 372, baseType: !459, size: 8)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3214, file: !3022, line: 375, baseType: !34, size: 32, offset: 32)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3214, file: !3022, line: 380, baseType: !34, size: 32, offset: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3214, file: !3022, line: 386, baseType: !34, size: 32, offset: 96)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3031, file: !3022, line: 529, baseType: !3221, offset: 7872)
!3221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3030, elements: !2091)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3027, file: !3022, line: 157, baseType: !3223, size: 64, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3022, line: 669, size: 1984, elements: !3225)
!3225 = !{!3226, !3230, !3234, !3238, !3239, !3240, !3241, !3245, !3249, !3250, !3256, !3260, !3261, !3262, !3266, !3270, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3323, !3324}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3224, file: !3022, line: 670, baseType: !3227, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!3026, !3026}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3224, file: !3022, line: 671, baseType: !3231, size: 64, offset: 64)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!34, !3026}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3224, file: !3022, line: 672, baseType: !3235, size: 64, offset: 128)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{null, !3026}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3224, file: !3022, line: 673, baseType: !3235, size: 64, offset: 192)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3224, file: !3022, line: 674, baseType: !3235, size: 64, offset: 256)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3224, file: !3022, line: 675, baseType: !3235, size: 64, offset: 320)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3224, file: !3022, line: 676, baseType: !3242, size: 64, offset: 384)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{null, !3026, !34}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3224, file: !3022, line: 677, baseType: !3246, size: 64, offset: 448)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!34, !2629, !3026}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3224, file: !3022, line: 679, baseType: !3246, size: 64, offset: 512)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3224, file: !3022, line: 682, baseType: !3251, size: 64, offset: 576)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!34, !3254}
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3022, line: 30, flags: DIFlagFwdDecl)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3224, file: !3022, line: 683, baseType: !3257, size: 64, offset: 640)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{null, !3254}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3224, file: !3022, line: 684, baseType: !3257, size: 64, offset: 704)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3224, file: !3022, line: 685, baseType: !1260, size: 64, offset: 768)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3224, file: !3022, line: 686, baseType: !3263, size: 64, offset: 832)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!34, !1445, !3020}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3224, file: !3022, line: 688, baseType: !3267, size: 64, offset: 896)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{null, !1445, !3020}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3224, file: !3022, line: 689, baseType: !3271, size: 64, offset: 960)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{null, !1445}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3224, file: !3022, line: 690, baseType: !3271, size: 64, offset: 1024)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3224, file: !3022, line: 691, baseType: !3271, size: 64, offset: 1088)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3224, file: !3022, line: 692, baseType: !3235, size: 64, offset: 1152)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3224, file: !3022, line: 694, baseType: !459, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3224, file: !3022, line: 707, baseType: !459, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3224, file: !3022, line: 719, baseType: !459, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3224, file: !3022, line: 722, baseType: !34, size: 32, offset: 1248)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3224, file: !3022, line: 723, baseType: !28, size: 64, offset: 1280)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3224, file: !3022, line: 726, baseType: !28, size: 64, offset: 1344)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3224, file: !3022, line: 729, baseType: !3153, size: 64, offset: 1408)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3224, file: !3022, line: 732, baseType: !1818, size: 192, offset: 1472)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3224, file: !3022, line: 738, baseType: !109, size: 128, offset: 1664)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3224, file: !3022, line: 744, baseType: !3287, size: 64, offset: 1792)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3022, line: 580, size: 1728, elements: !3289)
!3289 = !{!3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3299, !3300, !3301, !3305, !3309, !3310, !3311, !3312, !3313, !3317, !3321, !3322}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3288, file: !3022, line: 586, baseType: !3167, size: 512)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3288, file: !3022, line: 587, baseType: !51, size: 64, offset: 512)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !3288, file: !3022, line: 593, baseType: !47, size: 64, offset: 576)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3288, file: !3022, line: 596, baseType: !7, size: 32, offset: 640)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !3288, file: !3022, line: 604, baseType: !7, size: 32, offset: 672)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3288, file: !3022, line: 610, baseType: !3223, size: 64, offset: 704)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3288, file: !3022, line: 611, baseType: !109, size: 128, offset: 768)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !3288, file: !3022, line: 612, baseType: !3298, size: 64, offset: 896)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3288, file: !3022, line: 614, baseType: !3081, size: 64, offset: 960)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3288, file: !3022, line: 615, baseType: !3101, size: 64, offset: 1024)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !3288, file: !3022, line: 621, baseType: !3302, size: 64, offset: 1088)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!378, !3026, !3287}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !3288, file: !3022, line: 625, baseType: !3306, size: 64, offset: 1152)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!842, !3026, !3287}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3288, file: !3022, line: 628, baseType: !2659, size: 64, offset: 1216)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3288, file: !3022, line: 631, baseType: !2647, size: 64, offset: 1280)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3288, file: !3022, line: 632, baseType: !2655, size: 64, offset: 1344)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3288, file: !3022, line: 633, baseType: !2651, size: 64, offset: 1408)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !3288, file: !3022, line: 640, baseType: !3314, size: 64, offset: 1472)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!34, !3026, !3287, !378}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !3288, file: !3022, line: 645, baseType: !3318, size: 64, offset: 1536)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!34, !3026, !3287, !842}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3288, file: !3022, line: 654, baseType: !3109, size: 64, offset: 1600)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3288, file: !3022, line: 657, baseType: !3116, size: 64, offset: 1664)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3224, file: !3022, line: 745, baseType: !3287, size: 64, offset: 1856)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3224, file: !3022, line: 754, baseType: !7, size: 32, offset: 1920)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3027, file: !3022, line: 160, baseType: !2456, size: 128, offset: 128)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3027, file: !3022, line: 163, baseType: !109, size: 128, offset: 256)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3027, file: !3022, line: 164, baseType: !109, size: 128, offset: 384)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3027, file: !3022, line: 167, baseType: !109, size: 128, offset: 512)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3027, file: !3022, line: 173, baseType: !34, size: 32, offset: 640)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3027, file: !3022, line: 175, baseType: !7, size: 32, offset: 672)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3027, file: !3022, line: 183, baseType: !378, size: 64, offset: 704)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3027, file: !3022, line: 189, baseType: !61, size: 32, offset: 768)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3027, file: !3022, line: 192, baseType: !1086, size: 256, offset: 832)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3027, file: !3022, line: 193, baseType: !3335, size: 448, offset: 1088)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1087, line: 120, size: 448, elements: !3336)
!3336 = !{!3337, !3338, !3339}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3335, file: !1087, line: 121, baseType: !1086, size: 256)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3335, file: !1087, line: 122, baseType: !1048, size: 128, align: 64, offset: 256)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3335, file: !1087, line: 125, baseType: !1148, size: 64, offset: 384)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3027, file: !3022, line: 199, baseType: !3026, size: 64, offset: 1536)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3021, file: !3022, line: 218, baseType: !1439, size: 32, offset: 896)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !3021, file: !3022, line: 226, baseType: !3020, size: 64, offset: 960)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !3021, file: !3022, line: 229, baseType: !3030, size: 64, offset: 1024)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3021, file: !3022, line: 232, baseType: !34, size: 32, offset: 1088)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3021, file: !3022, line: 241, baseType: !109, size: 128, offset: 1152)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !3021, file: !3022, line: 242, baseType: !109, size: 128, offset: 1280)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !3021, file: !3022, line: 243, baseType: !109, size: 128, offset: 1408)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !3021, file: !3022, line: 246, baseType: !109, size: 128, offset: 1536)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !3021, file: !3022, line: 255, baseType: !3170, size: 1792, offset: 1664)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !3021, file: !3022, line: 258, baseType: !109, size: 128, offset: 3456)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !3021, file: !3022, line: 259, baseType: !109, size: 128, offset: 3584)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !3021, file: !3022, line: 265, baseType: !1072, size: 128, offset: 3712)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !3021, file: !3022, line: 271, baseType: !109, size: 128, offset: 3840)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !3021, file: !3022, line: 277, baseType: !109, size: 128, offset: 3968)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !3021, file: !3022, line: 278, baseType: !109, size: 128, offset: 4096)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !3021, file: !3022, line: 279, baseType: !109, size: 128, offset: 4224)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !3021, file: !3022, line: 288, baseType: !3030, size: 64, offset: 4352)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !3021, file: !3022, line: 289, baseType: !3030, size: 64, offset: 4416)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !3021, file: !3022, line: 290, baseType: !3020, size: 64, offset: 4480)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !3021, file: !3022, line: 293, baseType: !459, size: 8, offset: 4544)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3021, file: !3022, line: 296, baseType: !1048, size: 128, align: 64, offset: 4608)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1446, file: !1447, line: 1110, baseType: !3363, size: 64, offset: 15360)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3365, line: 93, size: 8768, elements: !3366)
!3365 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3366 = !{!3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3415, !3424, !3425, !3427, !3428, !3429, !3432, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3470, !3471, !3478, !3488, !3551, !3552, !3555, !3556, !3557, !3558, !3559, !3560}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3364, file: !3365, line: 94, baseType: !1439, size: 32)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3364, file: !3365, line: 95, baseType: !61, size: 32, offset: 32)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3364, file: !3365, line: 96, baseType: !34, size: 32, offset: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3364, file: !3365, line: 97, baseType: !34, size: 32, offset: 96)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3364, file: !3365, line: 98, baseType: !109, size: 128, offset: 128)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3364, file: !3365, line: 100, baseType: !66, size: 192, offset: 256)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3364, file: !3365, line: 103, baseType: !1445, size: 64, offset: 448)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3364, file: !3365, line: 106, baseType: !3375, size: 192, offset: 512)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3376, line: 32, size: 192, elements: !3377)
!3376 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!3377 = !{!3378, !3379}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3375, file: !3376, line: 33, baseType: !109, size: 128)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3375, file: !3376, line: 34, baseType: !3380, size: 64, offset: 128)
!3380 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3381, line: 25, baseType: !3382)
!3381 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3381, line: 23, size: 64, elements: !3383)
!3383 = !{!3384}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3382, file: !3381, line: 24, baseType: !1328, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3364, file: !3365, line: 109, baseType: !1366, size: 64, offset: 704)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3364, file: !3365, line: 112, baseType: !34, size: 32, offset: 768)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3364, file: !3365, line: 114, baseType: !34, size: 32, offset: 800)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3364, file: !3365, line: 115, baseType: !1445, size: 64, offset: 832)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3364, file: !3365, line: 118, baseType: !34, size: 32, offset: 896)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3364, file: !3365, line: 119, baseType: !7, size: 32, offset: 928)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3364, file: !3365, line: 121, baseType: !3392, size: 64, offset: 960)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3365, line: 80, size: 448, elements: !3394)
!3394 = !{!3395, !3396, !3402}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3393, file: !3365, line: 81, baseType: !61, size: 32)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3393, file: !3365, line: 82, baseType: !3397, size: 128, offset: 64)
!3397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3365, line: 75, size: 128, elements: !3398)
!3398 = !{!3399, !3400}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3397, file: !3365, line: 76, baseType: !1445, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3397, file: !3365, line: 77, baseType: !3401, size: 64, offset: 64)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3393, file: !3365, line: 83, baseType: !782, size: 256, offset: 192)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3364, file: !3365, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3364, file: !3365, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3364, file: !3365, line: 138, baseType: !7, size: 32, offset: 1056)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3364, file: !3365, line: 139, baseType: !109, size: 128, offset: 1088)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3364, file: !3365, line: 142, baseType: !1562, size: 512, offset: 1216)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3364, file: !3365, line: 143, baseType: !1570, size: 64, offset: 1728)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3364, file: !3365, line: 150, baseType: !3410, size: 256, offset: 1792)
!3410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3411, size: 256, elements: !949)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3365, line: 38, size: 128, elements: !3412)
!3412 = !{!3413, !3414}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3411, file: !3365, line: 39, baseType: !378, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3411, file: !3365, line: 40, baseType: !378, size: 64, offset: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3364, file: !3365, line: 156, baseType: !3416, size: 192, offset: 2048)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3365, line: 66, size: 192, elements: !3417)
!3417 = !{!3418}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3416, file: !3365, line: 67, baseType: !3419, size: 192)
!3419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3365, line: 47, size: 192, elements: !3420)
!3420 = !{!3421, !3422, !3423}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3419, file: !3365, line: 48, baseType: !838, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3419, file: !3365, line: 49, baseType: !838, size: 64, offset: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3419, file: !3365, line: 50, baseType: !838, size: 64, offset: 128)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3364, file: !3365, line: 160, baseType: !2941, size: 640, offset: 2240)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3364, file: !3365, line: 163, baseType: !3426, size: 256, offset: 2880)
!3426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1796, size: 256, elements: !387)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3364, file: !3365, line: 169, baseType: !1796, size: 64, offset: 3136)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3364, file: !3365, line: 172, baseType: !34, size: 32, offset: 3200)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3364, file: !3365, line: 174, baseType: !3430, size: 64, offset: 3264)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3365, line: 174, flags: DIFlagFwdDecl)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3364, file: !3365, line: 185, baseType: !3433, size: 64, offset: 3328)
!3433 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !622, line: 860, baseType: !3434)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !622, line: 853, size: 64, elements: !3435)
!3435 = !{!3436, !3437}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3434, file: !622, line: 858, baseType: !621, size: 32)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3434, file: !622, line: 859, baseType: !71, size: 32, offset: 32)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3364, file: !3365, line: 186, baseType: !378, size: 64, offset: 3392)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3364, file: !3365, line: 186, baseType: !378, size: 64, offset: 3456)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3364, file: !3365, line: 186, baseType: !378, size: 64, offset: 3520)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3364, file: !3365, line: 186, baseType: !378, size: 64, offset: 3584)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3364, file: !3365, line: 187, baseType: !378, size: 64, offset: 3648)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3364, file: !3365, line: 188, baseType: !378, size: 64, offset: 3712)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3364, file: !3365, line: 189, baseType: !2929, size: 192, offset: 3776)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3364, file: !3365, line: 190, baseType: !51, size: 64, offset: 3968)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3364, file: !3365, line: 190, baseType: !51, size: 64, offset: 4032)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3364, file: !3365, line: 190, baseType: !51, size: 64, offset: 4096)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3364, file: !3365, line: 190, baseType: !51, size: 64, offset: 4160)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3364, file: !3365, line: 191, baseType: !51, size: 64, offset: 4224)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3364, file: !3365, line: 191, baseType: !51, size: 64, offset: 4288)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3364, file: !3365, line: 191, baseType: !51, size: 64, offset: 4352)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3364, file: !3365, line: 191, baseType: !51, size: 64, offset: 4416)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3364, file: !3365, line: 192, baseType: !51, size: 64, offset: 4480)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3364, file: !3365, line: 192, baseType: !51, size: 64, offset: 4544)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3364, file: !3365, line: 192, baseType: !51, size: 64, offset: 4608)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3364, file: !3365, line: 192, baseType: !51, size: 64, offset: 4672)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3364, file: !3365, line: 193, baseType: !51, size: 64, offset: 4736)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3364, file: !3365, line: 193, baseType: !51, size: 64, offset: 4800)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3364, file: !3365, line: 194, baseType: !3460, size: 448, offset: 4864)
!3460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3461, line: 12, size: 448, elements: !3462)
!3461 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3462 = !{!3463, !3464, !3465, !3466, !3467, !3468, !3469}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3460, file: !3461, line: 15, baseType: !378, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3460, file: !3461, line: 17, baseType: !378, size: 64, offset: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3460, file: !3461, line: 19, baseType: !378, size: 64, offset: 128)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3460, file: !3461, line: 21, baseType: !378, size: 64, offset: 192)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3460, file: !3461, line: 29, baseType: !378, size: 64, offset: 256)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3460, file: !3461, line: 35, baseType: !378, size: 64, offset: 320)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3460, file: !3461, line: 44, baseType: !378, size: 64, offset: 384)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3364, file: !3365, line: 202, baseType: !380, size: 64, offset: 5312)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3364, file: !3365, line: 213, baseType: !3472, size: 2048, offset: 5376)
!3472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3473, size: 2048, elements: !431)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3474, line: 43, size: 128, elements: !3475)
!3474 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3475 = !{!3476, !3477}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3473, file: !3474, line: 44, baseType: !50, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3473, file: !3474, line: 45, baseType: !50, size: 64, offset: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3364, file: !3365, line: 216, baseType: !3479, size: 448, offset: 7424)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3365, line: 30, size: 448, elements: !3480)
!3480 = !{!3481, !3482, !3483, !3484, !3485, !3486, !3487}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3479, file: !3365, line: 31, baseType: !34, size: 32)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3479, file: !3365, line: 32, baseType: !541, size: 64, offset: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3479, file: !3365, line: 33, baseType: !51, size: 64, offset: 128)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3479, file: !3365, line: 34, baseType: !378, size: 64, offset: 192)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3479, file: !3365, line: 34, baseType: !378, size: 64, offset: 256)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3479, file: !3365, line: 35, baseType: !51, size: 64, offset: 320)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3479, file: !3365, line: 35, baseType: !51, size: 64, offset: 384)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3364, file: !3365, line: 219, baseType: !3489, size: 64, offset: 7872)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3491, line: 41, size: 3456, elements: !3492)
!3491 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!3492 = !{!3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3507, !3508, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3490, file: !3491, line: 47, baseType: !106, size: 16)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3490, file: !3491, line: 48, baseType: !391, size: 32, offset: 32)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3490, file: !3491, line: 54, baseType: !97, size: 8, offset: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !3490, file: !3491, line: 55, baseType: !97, size: 8, offset: 72)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !3490, file: !3491, line: 73, baseType: !379, size: 64, align: 64, offset: 128)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !3490, file: !3491, line: 74, baseType: !379, size: 64, offset: 192)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !3490, file: !3491, line: 81, baseType: !379, size: 64, offset: 256)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !3490, file: !3491, line: 82, baseType: !379, size: 64, offset: 320)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !3490, file: !3491, line: 85, baseType: !379, size: 64, offset: 384)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !3490, file: !3491, line: 86, baseType: !379, size: 64, offset: 448)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !3490, file: !3491, line: 94, baseType: !379, size: 64, offset: 512)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !3490, file: !3491, line: 102, baseType: !379, size: 64, offset: 576)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !3490, file: !3491, line: 107, baseType: !3506, size: 256, offset: 640)
!3506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 256, elements: !657)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !3490, file: !3491, line: 108, baseType: !97, size: 8, align: 64, offset: 896)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !3490, file: !3491, line: 110, baseType: !3509, size: 24, offset: 904)
!3509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 24, elements: !507)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !3490, file: !3491, line: 111, baseType: !391, size: 32, align: 64, offset: 960)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !3490, file: !3491, line: 113, baseType: !391, size: 32, offset: 992)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !3490, file: !3491, line: 114, baseType: !391, size: 32, offset: 1024)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !3490, file: !3491, line: 115, baseType: !391, size: 32, offset: 1056)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !3490, file: !3491, line: 117, baseType: !391, size: 32, offset: 1088)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !3490, file: !3491, line: 118, baseType: !379, size: 64, align: 64, offset: 1152)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3490, file: !3491, line: 120, baseType: !379, size: 64, offset: 1216)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3490, file: !3491, line: 121, baseType: !379, size: 64, offset: 1280)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3490, file: !3491, line: 122, baseType: !379, size: 64, offset: 1344)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3490, file: !3491, line: 123, baseType: !379, size: 64, offset: 1408)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !3490, file: !3491, line: 133, baseType: !379, size: 64, offset: 1472)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !3490, file: !3491, line: 137, baseType: !379, size: 64, offset: 1536)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !3490, file: !3491, line: 142, baseType: !379, size: 64, offset: 1600)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !3490, file: !3491, line: 143, baseType: !379, size: 64, offset: 1664)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !3490, file: !3491, line: 146, baseType: !379, size: 64, offset: 1728)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !3490, file: !3491, line: 147, baseType: !379, size: 64, offset: 1792)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !3490, file: !3491, line: 148, baseType: !379, size: 64, offset: 1856)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !3490, file: !3491, line: 149, baseType: !379, size: 64, offset: 1920)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3490, file: !3491, line: 154, baseType: !379, size: 64, offset: 1984)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3490, file: !3491, line: 155, baseType: !379, size: 64, offset: 2048)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3490, file: !3491, line: 156, baseType: !379, size: 64, offset: 2112)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3490, file: !3491, line: 158, baseType: !379, size: 64, offset: 2176)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3490, file: !3491, line: 159, baseType: !379, size: 64, offset: 2240)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !3490, file: !3491, line: 162, baseType: !379, size: 64, offset: 2304)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !3490, file: !3491, line: 163, baseType: !379, size: 64, offset: 2368)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !3490, file: !3491, line: 164, baseType: !379, size: 64, offset: 2432)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !3490, file: !3491, line: 167, baseType: !379, size: 64, offset: 2496)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !3490, file: !3491, line: 168, baseType: !379, size: 64, offset: 2560)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !3490, file: !3491, line: 171, baseType: !379, size: 64, offset: 2624)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !3490, file: !3491, line: 172, baseType: !379, size: 64, offset: 2688)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !3490, file: !3491, line: 175, baseType: !379, size: 64, offset: 2752)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !3490, file: !3491, line: 178, baseType: !379, size: 64, offset: 2816)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !3490, file: !3491, line: 179, baseType: !379, size: 64, offset: 2880)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !3490, file: !3491, line: 182, baseType: !391, size: 32, offset: 2944)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !3490, file: !3491, line: 186, baseType: !379, size: 64, align: 64, offset: 3008)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !3490, file: !3491, line: 194, baseType: !379, size: 64, offset: 3072)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !3490, file: !3491, line: 195, baseType: !379, size: 64, offset: 3136)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !3490, file: !3491, line: 199, baseType: !379, size: 64, offset: 3200)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !3490, file: !3491, line: 200, baseType: !379, size: 64, offset: 3264)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !3490, file: !3491, line: 203, baseType: !379, size: 64, offset: 3328)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !3490, file: !3491, line: 204, baseType: !379, size: 64, offset: 3392)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3364, file: !3365, line: 222, baseType: !7, size: 32, offset: 7936)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3364, file: !3365, line: 223, baseType: !3553, size: 64, offset: 8000)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3365, line: 223, flags: DIFlagFwdDecl)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3364, file: !3365, line: 230, baseType: !459, size: 8, offset: 8064)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3364, file: !3365, line: 231, baseType: !967, size: 16, offset: 8080)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3364, file: !3365, line: 232, baseType: !967, size: 16, offset: 8096)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3364, file: !3365, line: 234, baseType: !1728, size: 64, offset: 8128)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3364, file: !3365, line: 237, baseType: !832, size: 256, offset: 8192)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3364, file: !3365, line: 243, baseType: !1905, size: 320, offset: 8448)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1446, file: !1447, line: 1111, baseType: !3562, size: 64, offset: 15424)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3365, line: 20, size: 16640, elements: !3564)
!3564 = !{!3565, !3566, !3567, !3568}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3563, file: !3365, line: 21, baseType: !71, size: 32)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3563, file: !3365, line: 22, baseType: !1439, size: 32, offset: 32)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3563, file: !3365, line: 23, baseType: !66, size: 192, offset: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3563, file: !3365, line: 24, baseType: !3569, size: 16384, offset: 256)
!3569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3570, size: 16384, elements: !511)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3376, line: 51, size: 256, elements: !3571)
!3571 = !{!3572}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3570, file: !3376, line: 52, baseType: !3573, size: 256)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3376, line: 37, size: 256, elements: !3574)
!3574 = !{!3575, !3582, !3583, !3587}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3573, file: !3376, line: 39, baseType: !3576, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3577, line: 83, baseType: !3578)
!3577 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3577, line: 82, baseType: !3580)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{null, !34}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3573, file: !3376, line: 40, baseType: !51, size: 64, offset: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3573, file: !3376, line: 46, baseType: !3584, size: 64, offset: 128)
!3584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3577, line: 86, baseType: !3585)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3577, line: 85, baseType: !1261)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3573, file: !3376, line: 48, baseType: !3380, size: 64, offset: 192)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1446, file: !1447, line: 1112, baseType: !3380, size: 64, offset: 15488)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1446, file: !1447, line: 1113, baseType: !3380, size: 64, offset: 15552)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1446, file: !1447, line: 1115, baseType: !3380, size: 64, offset: 15616)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1446, file: !1447, line: 1116, baseType: !3375, size: 192, offset: 15680)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1446, file: !1447, line: 1117, baseType: !51, size: 64, offset: 15872)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1446, file: !1447, line: 1118, baseType: !47, size: 64, offset: 15936)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1446, file: !1447, line: 1119, baseType: !7, size: 32, offset: 16000)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1446, file: !1447, line: 1121, baseType: !1047, size: 64, offset: 16064)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1446, file: !1447, line: 1125, baseType: !3597, size: 64, offset: 16128)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1447, line: 43, flags: DIFlagFwdDecl)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1446, file: !1447, line: 1127, baseType: !586, size: 32, offset: 16192)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1446, file: !1447, line: 1128, baseType: !7, size: 32, offset: 16224)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1446, file: !1447, line: 1130, baseType: !3602, size: 128, offset: 16256)
!3602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3603, line: 37, size: 128, elements: !3604)
!3603 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3604 = !{!3605, !3606, !3607}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3602, file: !3603, line: 38, baseType: !34, size: 32)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3602, file: !3603, line: 39, baseType: !61, size: 32, offset: 32)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3602, file: !3603, line: 40, baseType: !3608, size: 64, offset: 64)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3603, line: 24, flags: DIFlagFwdDecl)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1446, file: !1447, line: 1131, baseType: !3611, size: 256, offset: 16384)
!3611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3612, line: 12, size: 256, elements: !3613)
!3612 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3613 = !{!3614, !3615, !3616, !3617}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3611, file: !3612, line: 13, baseType: !506, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3611, file: !3612, line: 14, baseType: !51, size: 64, offset: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3611, file: !3612, line: 15, baseType: !51, size: 64, offset: 128)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3611, file: !3612, line: 16, baseType: !459, size: 8, offset: 192)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1446, file: !1447, line: 1134, baseType: !378, size: 64, offset: 16640)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1446, file: !1447, line: 1135, baseType: !378, size: 64, offset: 16704)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1446, file: !1447, line: 1138, baseType: !71, size: 32, offset: 16768)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1446, file: !1447, line: 1141, baseType: !393, size: 32, offset: 16800)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1446, file: !1447, line: 1143, baseType: !3623, size: 64, offset: 16832)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1447, line: 735, size: 64, elements: !3624)
!3624 = !{!3625}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3623, file: !1447, line: 736, baseType: !3626, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1446, file: !1447, line: 1147, baseType: !1621, size: 128, offset: 16896)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1446, file: !1447, line: 1149, baseType: !1445, size: 64, offset: 17024)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1446, file: !1447, line: 1151, baseType: !3630, size: 64, offset: 17088)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1447, line: 1151, flags: DIFlagFwdDecl)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1446, file: !1447, line: 1188, baseType: !32, size: 64, offset: 17152)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1446, file: !1447, line: 1191, baseType: !3634, size: 64, offset: 17216)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1447, line: 44, flags: DIFlagFwdDecl)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1446, file: !1447, line: 1194, baseType: !3637, size: 64, offset: 17280)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1447, line: 45, flags: DIFlagFwdDecl)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1446, file: !1447, line: 1197, baseType: !3640, size: 64, offset: 17344)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1447, line: 61, flags: DIFlagFwdDecl)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1446, file: !1447, line: 1199, baseType: !3643, size: 64, offset: 17408)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3645, line: 99, size: 128, elements: !3646)
!3645 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3646 = !{!3647, !3648, !3649}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3644, file: !3645, line: 100, baseType: !836, size: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3644, file: !3645, line: 101, baseType: !61, size: 32, offset: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3644, file: !3645, line: 103, baseType: !38, size: 16, offset: 96)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1446, file: !1447, line: 1202, baseType: !3651, size: 64, offset: 17472)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1447, line: 48, flags: DIFlagFwdDecl)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1446, file: !1447, line: 1205, baseType: !51, size: 64, offset: 17536)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1446, file: !1447, line: 1206, baseType: !3655, size: 64, offset: 17600)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3376, line: 14, baseType: !3657)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3376, line: 12, size: 384, elements: !3658)
!3658 = !{!3659}
!3659 = !DIDerivedType(tag: DW_TAG_member, scope: !3657, file: !3376, line: 13, baseType: !3660, size: 384)
!3660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3657, file: !3376, line: 13, size: 384, elements: !3661)
!3661 = !{!3662, !3663, !3664, !3665}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3660, file: !3376, line: 13, baseType: !34, size: 32)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3660, file: !3376, line: 13, baseType: !34, size: 32, offset: 32)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3660, file: !3376, line: 13, baseType: !34, size: 32, offset: 64)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3660, file: !3376, line: 13, baseType: !3666, size: 256, offset: 128)
!3666 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3667, line: 37, size: 256, elements: !3668)
!3667 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3668 = !{!3669, !3674, !3687, !3693, !3702, !3729, !3734}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3666, file: !3667, line: 42, baseType: !3670, size: 64)
!3670 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3666, file: !3667, line: 39, size: 64, elements: !3671)
!3671 = !{!3672, !3673}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3670, file: !3667, line: 40, baseType: !2906, size: 32)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3670, file: !3667, line: 41, baseType: !592, size: 32, offset: 32)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3666, file: !3667, line: 50, baseType: !3675, size: 192)
!3675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3666, file: !3667, line: 45, size: 192, elements: !3676)
!3676 = !{!3677, !3679, !3680, !3686}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3675, file: !3667, line: 46, baseType: !3678, size: 32)
!3678 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !49, line: 95, baseType: !34)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3675, file: !3667, line: 47, baseType: !34, size: 32, offset: 32)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3675, file: !3667, line: 48, baseType: !3681, size: 64, offset: 64)
!3681 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3667, line: 11, baseType: !3682)
!3682 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3667, line: 8, size: 64, elements: !3683)
!3683 = !{!3684, !3685}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3682, file: !3667, line: 9, baseType: !34, size: 32)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3682, file: !3667, line: 10, baseType: !32, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3675, file: !3667, line: 49, baseType: !34, size: 32, offset: 128)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3666, file: !3667, line: 57, baseType: !3688, size: 128)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3666, file: !3667, line: 53, size: 128, elements: !3689)
!3689 = !{!3690, !3691, !3692}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3688, file: !3667, line: 54, baseType: !2906, size: 32)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3688, file: !3667, line: 55, baseType: !592, size: 32, offset: 32)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3688, file: !3667, line: 56, baseType: !3681, size: 64, offset: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3666, file: !3667, line: 66, baseType: !3694, size: 256)
!3694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3666, file: !3667, line: 60, size: 256, elements: !3695)
!3695 = !{!3696, !3697, !3698, !3699, !3701}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3694, file: !3667, line: 61, baseType: !2906, size: 32)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3694, file: !3667, line: 62, baseType: !592, size: 32, offset: 32)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3694, file: !3667, line: 63, baseType: !34, size: 32, offset: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3694, file: !3667, line: 64, baseType: !3700, size: 64, offset: 128)
!3700 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !49, line: 94, baseType: !540)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3694, file: !3667, line: 65, baseType: !3700, size: 64, offset: 192)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3666, file: !3667, line: 105, baseType: !3703, size: 256)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3666, file: !3667, line: 69, size: 256, elements: !3704)
!3704 = !{!3705, !3706}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3703, file: !3667, line: 70, baseType: !32, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_member, scope: !3703, file: !3667, line: 79, baseType: !3707, size: 192, offset: 64)
!3707 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3703, file: !3667, line: 79, size: 192, elements: !3708)
!3708 = !{!3709, !3710, !3711, !3718, !3723}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3707, file: !3667, line: 81, baseType: !34, size: 32)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3707, file: !3667, line: 86, baseType: !967, size: 16)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3707, file: !3667, line: 92, baseType: !3712, size: 192)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3707, file: !3667, line: 88, size: 192, elements: !3713)
!3713 = !{!3714, !3716, !3717}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3712, file: !3667, line: 89, baseType: !3715, size: 64)
!3715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 64, elements: !1605)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3712, file: !3667, line: 90, baseType: !32, size: 64, offset: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3712, file: !3667, line: 91, baseType: !32, size: 64, offset: 128)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3707, file: !3667, line: 97, baseType: !3719, size: 96)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3707, file: !3667, line: 94, size: 96, elements: !3720)
!3720 = !{!3721, !3722}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3719, file: !3667, line: 95, baseType: !3715, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3719, file: !3667, line: 96, baseType: !391, size: 32, offset: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3707, file: !3667, line: 103, baseType: !3724, size: 128)
!3724 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3707, file: !3667, line: 99, size: 128, elements: !3725)
!3725 = !{!3726, !3727, !3728}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3724, file: !3667, line: 100, baseType: !51, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3724, file: !3667, line: 101, baseType: !391, size: 32, offset: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3724, file: !3667, line: 102, baseType: !391, size: 32, offset: 96)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3666, file: !3667, line: 111, baseType: !3730, size: 128)
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3666, file: !3667, line: 108, size: 128, elements: !3731)
!3731 = !{!3732, !3733}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3730, file: !3667, line: 109, baseType: !541, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3730, file: !3667, line: 110, baseType: !34, size: 32, offset: 64)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3666, file: !3667, line: 118, baseType: !3735, size: 128)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3666, file: !3667, line: 114, size: 128, elements: !3736)
!3736 = !{!3737, !3738, !3739}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3735, file: !3667, line: 115, baseType: !32, size: 64)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3735, file: !3667, line: 116, baseType: !34, size: 32, offset: 64)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3735, file: !3667, line: 117, baseType: !7, size: 32, offset: 96)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1446, file: !1447, line: 1208, baseType: !3460, size: 448, offset: 17664)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1446, file: !1447, line: 1215, baseType: !378, size: 64, offset: 18112)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1446, file: !1447, line: 1217, baseType: !378, size: 64, offset: 18176)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1446, file: !1447, line: 1219, baseType: !378, size: 64, offset: 18240)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1446, file: !1447, line: 1223, baseType: !3745, size: 64, offset: 18304)
!3745 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3746, line: 99, baseType: !3747)
!3746 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3747 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3746, line: 99, size: 64, elements: !3748)
!3748 = !{!3749}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3747, file: !3746, line: 99, baseType: !1328, size: 64)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1446, file: !1447, line: 1225, baseType: !621, size: 32, offset: 18368)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1446, file: !1447, line: 1226, baseType: !34, size: 32, offset: 18400)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1446, file: !1447, line: 1227, baseType: !34, size: 32, offset: 18432)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1446, file: !1447, line: 1231, baseType: !3020, size: 64, offset: 18496)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1446, file: !1447, line: 1233, baseType: !109, size: 128, offset: 18560)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1446, file: !1447, line: 1240, baseType: !3756, size: 64, offset: 18688)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1447, line: 62, flags: DIFlagFwdDecl)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1446, file: !1447, line: 1242, baseType: !3759, size: 64, offset: 18752)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1447, line: 1242, flags: DIFlagFwdDecl)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1446, file: !1447, line: 1244, baseType: !109, size: 128, offset: 18816)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1446, file: !1447, line: 1245, baseType: !3763, size: 64, offset: 18944)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1447, line: 51, flags: DIFlagFwdDecl)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1446, file: !1447, line: 1246, baseType: !832, size: 256, offset: 19008)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1446, file: !1447, line: 1247, baseType: !7, size: 32, offset: 19264)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1446, file: !1447, line: 1250, baseType: !1415, size: 64, offset: 19328)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1446, file: !1447, line: 1251, baseType: !832, size: 256, offset: 19392)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1446, file: !1447, line: 1252, baseType: !109, size: 128, offset: 19648)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1446, file: !1447, line: 1259, baseType: !2553, size: 64, offset: 19776)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1446, file: !1447, line: 1260, baseType: !967, size: 16, offset: 19840)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1446, file: !1447, line: 1261, baseType: !967, size: 16, offset: 19856)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1446, file: !1447, line: 1314, baseType: !3774, size: 64, offset: 19904)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3776, line: 62, size: 256, align: 256, elements: !3777)
!3776 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3777 = !{!3778, !3779, !3780, !3781, !3782, !3783, !3784}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3775, file: !3776, line: 75, baseType: !391, size: 32)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3775, file: !3776, line: 90, baseType: !391, size: 32, offset: 32)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3775, file: !3776, line: 112, baseType: !379, size: 64, offset: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3775, file: !3776, line: 132, baseType: !391, size: 32, offset: 128)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3775, file: !3776, line: 140, baseType: !391, size: 32, offset: 160)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3775, file: !3776, line: 149, baseType: !391, size: 32, offset: 192)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3775, file: !3776, line: 154, baseType: !3785, offset: 224)
!3785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, elements: !2091)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1446, file: !1447, line: 1315, baseType: !390, size: 32, offset: 19968)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1446, file: !1447, line: 1316, baseType: !390, size: 32, offset: 20000)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1446, file: !1447, line: 1321, baseType: !51, size: 64, offset: 20032)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1446, file: !1447, line: 1325, baseType: !34, size: 32, offset: 20096)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1446, file: !1447, line: 1326, baseType: !34, size: 32, offset: 20128)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1446, file: !1447, line: 1327, baseType: !34, size: 32, offset: 20160)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1446, file: !1447, line: 1328, baseType: !34, size: 32, offset: 20192)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1446, file: !1447, line: 1329, baseType: !1048, size: 128, align: 64, offset: 20224)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1446, file: !1447, line: 1332, baseType: !3795, size: 128, offset: 20352)
!3795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3796, line: 51, size: 128, elements: !3797)
!3796 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3797 = !{!3798, !3803, !3804}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3795, file: !3796, line: 60, baseType: !3799, size: 64)
!3799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3800, line: 7, size: 64, elements: !3801)
!3800 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3801 = !{!3802}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3799, file: !3800, line: 12, baseType: !1325, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3795, file: !3796, line: 63, baseType: !459, size: 8, offset: 64)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3795, file: !3796, line: 70, baseType: !459, size: 8, offset: 72)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1446, file: !1447, line: 1335, baseType: !2605, size: 64, offset: 20480)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1446, file: !1447, line: 1337, baseType: !3807, size: 128, offset: 20544)
!3807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3796, line: 39, size: 128, elements: !3808)
!3808 = !{!3809, !3810, !3811}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3807, file: !3796, line: 40, baseType: !2392, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3807, file: !3796, line: 42, baseType: !391, size: 32, offset: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3807, file: !3796, line: 43, baseType: !391, size: 32, offset: 96)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1446, file: !1447, line: 1340, baseType: !3813, size: 64, offset: 20672)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1447, line: 69, flags: DIFlagFwdDecl)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1446, file: !1447, line: 1351, baseType: !34, size: 32, offset: 20736)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1446, file: !1447, line: 1352, baseType: !34, size: 32, offset: 20768)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1446, file: !1447, line: 1354, baseType: !51, size: 64, offset: 20800)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1446, file: !1447, line: 1364, baseType: !378, size: 64, offset: 20864)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1446, file: !1447, line: 1365, baseType: !378, size: 64, offset: 20928)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1446, file: !1447, line: 1412, baseType: !51, size: 64, offset: 20992)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1446, file: !1447, line: 1453, baseType: !3822, size: 64, offset: 21056)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1447, line: 1453, flags: DIFlagFwdDecl)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1446, file: !1447, line: 1457, baseType: !3825, size: 64, offset: 21120)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !150, line: 61, size: 576, elements: !3827)
!3827 = !{!3828, !3829, !3848, !3851, !3852, !3885, !3895}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3826, file: !150, line: 62, baseType: !149, size: 32)
!3829 = !DIDerivedType(tag: DW_TAG_member, scope: !3826, file: !150, line: 64, baseType: !3830, size: 192, offset: 64)
!3830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3826, file: !150, line: 64, size: 192, elements: !3831)
!3831 = !{!3832, !3843}
!3832 = !DIDerivedType(tag: DW_TAG_member, scope: !3830, file: !150, line: 65, baseType: !3833, size: 192)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3830, file: !150, line: 65, size: 192, elements: !3834)
!3834 = !{!3835, !3842}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3833, file: !150, line: 66, baseType: !3836, size: 128)
!3836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3837, line: 50, size: 128, elements: !3838)
!3837 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3838 = !{!3839, !3840, !3841}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3836, file: !3837, line: 52, baseType: !51, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3836, file: !3837, line: 54, baseType: !7, size: 32, offset: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3836, file: !3837, line: 55, baseType: !7, size: 32, offset: 96)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3833, file: !150, line: 67, baseType: !51, size: 64, offset: 128)
!3843 = !DIDerivedType(tag: DW_TAG_member, scope: !3830, file: !150, line: 70, baseType: !3844, size: 192)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3830, file: !150, line: 70, size: 192, elements: !3845)
!3845 = !{!3846, !3847}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3844, file: !150, line: 71, baseType: !1048, size: 128, align: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3844, file: !150, line: 72, baseType: !51, size: 64, offset: 128)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3826, file: !150, line: 76, baseType: !3849, size: 64, offset: 256)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !150, line: 76, flags: DIFlagFwdDecl)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3826, file: !150, line: 77, baseType: !51, size: 64, offset: 320)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3826, file: !150, line: 79, baseType: !3853, size: 64, offset: 384)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3837, line: 25, size: 256, elements: !3855)
!3855 = !{!3856, !3862, !3866}
!3856 = !DIDerivedType(tag: DW_TAG_member, scope: !3854, file: !3837, line: 26, baseType: !3857, size: 128)
!3857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3854, file: !3837, line: 26, size: 128, elements: !3858)
!3858 = !{!3859, !3861}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3857, file: !3837, line: 27, baseType: !3860, size: 128)
!3860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 128, elements: !431)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3857, file: !3837, line: 28, baseType: !3860, size: 128)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3854, file: !3837, line: 31, baseType: !3863, size: 64, offset: 128)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3865)
!3865 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3837, line: 23, flags: DIFlagFwdDecl)
!3866 = !DIDerivedType(tag: DW_TAG_member, scope: !3854, file: !3837, line: 33, baseType: !3867, size: 64, offset: 192)
!3867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3854, file: !3837, line: 33, size: 64, elements: !3868)
!3868 = !{!3869, !3875, !3880}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3867, file: !3837, line: 38, baseType: !3870, size: 64)
!3870 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3867, file: !3837, line: 34, size: 64, elements: !3871)
!3871 = !{!3872, !3873, !3874}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3870, file: !3837, line: 35, baseType: !828, size: 32)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3870, file: !3837, line: 36, baseType: !95, size: 8, offset: 32)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3870, file: !3837, line: 37, baseType: !95, size: 8, offset: 40)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3867, file: !3837, line: 42, baseType: !3876, size: 16)
!3876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3867, file: !3837, line: 39, size: 16, elements: !3877)
!3877 = !{!3878, !3879}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3876, file: !3837, line: 40, baseType: !95, size: 8)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3876, file: !3837, line: 41, baseType: !95, size: 8, offset: 8)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3867, file: !3837, line: 46, baseType: !3881, size: 16)
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3867, file: !3837, line: 43, size: 16, elements: !3882)
!3882 = !{!3883, !3884}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3881, file: !3837, line: 44, baseType: !95, size: 8)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3881, file: !3837, line: 45, baseType: !95, size: 8, offset: 8)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3826, file: !150, line: 81, baseType: !3886, size: 64, offset: 448)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !150, line: 85, size: 384, elements: !3888)
!3888 = !{!3889, !3890, !3891, !3892, !3893, !3894}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3887, file: !150, line: 86, baseType: !3849, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3887, file: !150, line: 87, baseType: !51, size: 64, offset: 64)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3887, file: !150, line: 88, baseType: !51, size: 64, offset: 128)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3887, file: !150, line: 89, baseType: !51, size: 64, offset: 192)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3887, file: !150, line: 90, baseType: !459, size: 8, offset: 256)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3887, file: !150, line: 92, baseType: !3886, size: 64, offset: 320)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3826, file: !150, line: 82, baseType: !7, size: 32, offset: 512)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1446, file: !1447, line: 1463, baseType: !3897, offset: 21184)
!3897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1447, line: 739, elements: !1115)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1446, file: !1447, line: 1470, baseType: !1048, size: 128, align: 64, offset: 21184)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1446, file: !1447, line: 1471, baseType: !1439, size: 32, offset: 21312)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1446, file: !1447, line: 1472, baseType: !34, size: 32, offset: 21344)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1446, file: !1447, line: 1474, baseType: !1445, size: 64, offset: 21376)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1446, file: !1447, line: 1475, baseType: !1068, size: 320, offset: 21440)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1446, file: !1447, line: 1478, baseType: !3904, size: 64, offset: 21760)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3906, line: 49, size: 512, elements: !3907)
!3906 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3907 = !{!3908, !3909, !3910, !3911, !3912, !3914, !3915, !3916, !3918}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3905, file: !3906, line: 50, baseType: !3904, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3905, file: !3906, line: 51, baseType: !32, size: 64, offset: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3905, file: !3906, line: 52, baseType: !51, size: 64, offset: 128)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3905, file: !3906, line: 53, baseType: !51, size: 64, offset: 192)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3905, file: !3906, line: 54, baseType: !3913, size: 64, offset: 256)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3905, file: !3906, line: 56, baseType: !7, size: 32, offset: 320)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3905, file: !3906, line: 58, baseType: !7, size: 32, offset: 352)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3905, file: !3906, line: 59, baseType: !3917, size: 64, offset: 384)
!3917 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !37, line: 159, baseType: !378)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3905, file: !3906, line: 60, baseType: !2781, size: 64, offset: 448)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1446, file: !1447, line: 1482, baseType: !1439, size: 32, offset: 21824)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1446, file: !1447, line: 1489, baseType: !32, size: 64, offset: 21888)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1446, file: !1447, line: 1504, baseType: !32, size: 64, offset: 21952)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1446, file: !1447, line: 1505, baseType: !379, size: 64, offset: 22016)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1446, file: !1447, line: 1506, baseType: !378, size: 64, offset: 22080)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1446, file: !1447, line: 1507, baseType: !379, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1446, file: !1447, line: 1508, baseType: !379, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1446, file: !1447, line: 1509, baseType: !379, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1446, file: !1447, line: 1510, baseType: !1048, size: 128, align: 64, offset: 22208)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1446, file: !1447, line: 1511, baseType: !34, size: 32, offset: 22336)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1446, file: !1447, line: 1515, baseType: !3930, size: 64, offset: 22400)
!3930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1469, line: 56, size: 64, elements: !3931)
!3931 = !{!3932}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3930, file: !1469, line: 57, baseType: !1472, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1446, file: !1447, line: 1518, baseType: !3930, size: 64, offset: 22464)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1446, file: !1447, line: 1528, baseType: !1048, size: 128, align: 64, offset: 22528)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1446, file: !1447, line: 1552, baseType: !3936, size: 35328, offset: 23040)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3937, line: 430, size: 35328, elements: !3938)
!3937 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3938 = !{!3939, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3966, !3967, !3968, !3969, !3970, !3971, !3974, !3975, !3976, !3977}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3936, file: !3937, line: 432, baseType: !3940, size: 192)
!3940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3941, size: 192, elements: !507)
!3941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3942, line: 16, size: 64, elements: !3943)
!3942 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3943 = !{!3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3941, file: !3942, line: 17, baseType: !105, size: 16)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3941, file: !3942, line: 18, baseType: !105, size: 16, offset: 16)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3941, file: !3942, line: 19, baseType: !105, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3941, file: !3942, line: 19, baseType: !105, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3941, file: !3942, line: 19, baseType: !105, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3941, file: !3942, line: 19, baseType: !105, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3941, file: !3942, line: 19, baseType: !105, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3941, file: !3942, line: 20, baseType: !105, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3941, file: !3942, line: 20, baseType: !105, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3941, file: !3942, line: 20, baseType: !105, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3941, file: !3942, line: 20, baseType: !105, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3941, file: !3942, line: 20, baseType: !105, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3941, file: !3942, line: 20, baseType: !105, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3936, file: !3937, line: 436, baseType: !51, size: 64, offset: 192)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3936, file: !3937, line: 440, baseType: !38, size: 16, offset: 256)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3936, file: !3937, line: 441, baseType: !38, size: 16, offset: 272)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3936, file: !3937, line: 442, baseType: !38, size: 16, offset: 288)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3936, file: !3937, line: 443, baseType: !38, size: 16, offset: 304)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3936, file: !3937, line: 447, baseType: !51, size: 64, offset: 320)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3936, file: !3937, line: 448, baseType: !51, size: 64, offset: 384)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3936, file: !3937, line: 459, baseType: !3965, size: 256, offset: 448)
!3965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1376, size: 256, elements: !387)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3936, file: !3937, line: 461, baseType: !51, size: 64, offset: 704)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3936, file: !3937, line: 463, baseType: !51, size: 64, offset: 768)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3936, file: !3937, line: 465, baseType: !51, size: 64, offset: 832)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3936, file: !3937, line: 466, baseType: !51, size: 64, offset: 896)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3936, file: !3937, line: 467, baseType: !51, size: 64, offset: 960)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3936, file: !3937, line: 473, baseType: !3972, size: 64, offset: 1024)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3937, line: 10, flags: DIFlagFwdDecl)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3936, file: !3937, line: 480, baseType: !51, size: 64, offset: 1088)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3936, file: !3937, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3936, file: !3937, line: 491, baseType: !390, size: 32, offset: 1184)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3936, file: !3937, line: 501, baseType: !3978, size: 33792, offset: 1536)
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3979, line: 448, size: 33792, elements: !3980)
!3979 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3980 = !{!3981, !3982, !3983, !4143, !4144, !4150, !4151}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3978, file: !3979, line: 461, baseType: !7, size: 32)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3978, file: !3979, line: 468, baseType: !51, size: 64, offset: 64)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3978, file: !3979, line: 476, baseType: !3984, size: 64, offset: 128)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3979, line: 356, size: 33280, align: 512, elements: !3986)
!3986 = !{!3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3985, file: !3979, line: 358, baseType: !7, size: 32)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3985, file: !3979, line: 361, baseType: !7, size: 32, offset: 32)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3985, file: !3979, line: 364, baseType: !378, size: 64, offset: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3985, file: !3979, line: 367, baseType: !378, size: 64, offset: 128)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3985, file: !3979, line: 370, baseType: !378, size: 64, offset: 192)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3985, file: !3979, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3985, file: !3979, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3985, file: !3979, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3985, file: !3979, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3985, file: !3979, line: 397, baseType: !3997, size: 32768, offset: 512)
!3997 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3979, line: 348, size: 32768, elements: !3998)
!3998 = !{!3999, !4014, !4051, !4128, !4141}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3997, file: !3979, line: 349, baseType: !4000, size: 896)
!4000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3979, line: 12, size: 896, elements: !4001)
!4001 = !{!4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4013}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4000, file: !3979, line: 13, baseType: !390, size: 32)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4000, file: !3979, line: 14, baseType: !390, size: 32, offset: 32)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4000, file: !3979, line: 15, baseType: !390, size: 32, offset: 64)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4000, file: !3979, line: 16, baseType: !390, size: 32, offset: 96)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4000, file: !3979, line: 17, baseType: !390, size: 32, offset: 128)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4000, file: !3979, line: 18, baseType: !390, size: 32, offset: 160)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4000, file: !3979, line: 19, baseType: !390, size: 32, offset: 192)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4000, file: !3979, line: 22, baseType: !4010, size: 640, offset: 224)
!4010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 640, elements: !4011)
!4011 = !{!4012}
!4012 = !DISubrange(count: 20)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4000, file: !3979, line: 25, baseType: !390, size: 32, offset: 864)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3997, file: !3979, line: 350, baseType: !4015, size: 4096, align: 128)
!4015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3979, line: 34, size: 4096, align: 128, elements: !4016)
!4016 = !{!4017, !4018, !4019, !4020, !4021, !4036, !4037, !4038, !4040, !4042, !4046}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4015, file: !3979, line: 35, baseType: !105, size: 16)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4015, file: !3979, line: 36, baseType: !105, size: 16, offset: 16)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4015, file: !3979, line: 37, baseType: !105, size: 16, offset: 32)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4015, file: !3979, line: 38, baseType: !105, size: 16, offset: 48)
!4021 = !DIDerivedType(tag: DW_TAG_member, scope: !4015, file: !3979, line: 39, baseType: !4022, size: 128, offset: 64)
!4022 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4015, file: !3979, line: 39, size: 128, elements: !4023)
!4023 = !{!4024, !4029}
!4024 = !DIDerivedType(tag: DW_TAG_member, scope: !4022, file: !3979, line: 40, baseType: !4025, size: 128)
!4025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4022, file: !3979, line: 40, size: 128, elements: !4026)
!4026 = !{!4027, !4028}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4025, file: !3979, line: 41, baseType: !378, size: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4025, file: !3979, line: 42, baseType: !378, size: 64, offset: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, scope: !4022, file: !3979, line: 44, baseType: !4030, size: 128)
!4030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4022, file: !3979, line: 44, size: 128, elements: !4031)
!4031 = !{!4032, !4033, !4034, !4035}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4030, file: !3979, line: 45, baseType: !390, size: 32)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4030, file: !3979, line: 46, baseType: !390, size: 32, offset: 32)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4030, file: !3979, line: 47, baseType: !390, size: 32, offset: 64)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4030, file: !3979, line: 48, baseType: !390, size: 32, offset: 96)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4015, file: !3979, line: 51, baseType: !390, size: 32, offset: 192)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4015, file: !3979, line: 52, baseType: !390, size: 32, offset: 224)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4015, file: !3979, line: 55, baseType: !4039, size: 1024, offset: 256)
!4039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 1024, elements: !657)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4015, file: !3979, line: 58, baseType: !4041, size: 2048, offset: 1280)
!4041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 2048, elements: !511)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4015, file: !3979, line: 60, baseType: !4043, size: 384, offset: 3328)
!4043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 384, elements: !4044)
!4044 = !{!4045}
!4045 = !DISubrange(count: 12)
!4046 = !DIDerivedType(tag: DW_TAG_member, scope: !4015, file: !3979, line: 62, baseType: !4047, size: 384, offset: 3712)
!4047 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4015, file: !3979, line: 62, size: 384, elements: !4048)
!4048 = !{!4049, !4050}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4047, file: !3979, line: 63, baseType: !4043, size: 384)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4047, file: !3979, line: 64, baseType: !4043, size: 384)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3997, file: !3979, line: 351, baseType: !4052, size: 1088)
!4052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3979, line: 79, size: 1088, elements: !4053)
!4053 = !{!4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4127}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4052, file: !3979, line: 80, baseType: !390, size: 32)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4052, file: !3979, line: 81, baseType: !390, size: 32, offset: 32)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4052, file: !3979, line: 82, baseType: !390, size: 32, offset: 64)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4052, file: !3979, line: 83, baseType: !390, size: 32, offset: 96)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4052, file: !3979, line: 84, baseType: !390, size: 32, offset: 128)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4052, file: !3979, line: 85, baseType: !390, size: 32, offset: 160)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4052, file: !3979, line: 86, baseType: !390, size: 32, offset: 192)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4052, file: !3979, line: 88, baseType: !4010, size: 640, offset: 224)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4052, file: !3979, line: 89, baseType: !95, size: 8, offset: 864)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4052, file: !3979, line: 90, baseType: !95, size: 8, offset: 872)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4052, file: !3979, line: 91, baseType: !95, size: 8, offset: 880)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4052, file: !3979, line: 92, baseType: !95, size: 8, offset: 888)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4052, file: !3979, line: 93, baseType: !95, size: 8, offset: 896)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4052, file: !3979, line: 94, baseType: !95, size: 8, offset: 904)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4052, file: !3979, line: 95, baseType: !4069, size: 64, offset: 960)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4071, line: 11, size: 128, elements: !4072)
!4071 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4072 = !{!4073, !4074}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4070, file: !4071, line: 12, baseType: !541, size: 64)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4070, file: !4071, line: 13, baseType: !4075, size: 64, offset: 64)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4077, line: 103, size: 1344, elements: !4078)
!4077 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4078 = !{!4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4107, !4108, !4109}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4076, file: !4077, line: 109, baseType: !51, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4076, file: !4077, line: 110, baseType: !51, size: 64, offset: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4076, file: !4077, line: 111, baseType: !51, size: 64, offset: 128)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4076, file: !4077, line: 112, baseType: !51, size: 64, offset: 192)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4076, file: !4077, line: 113, baseType: !51, size: 64, offset: 256)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4076, file: !4077, line: 114, baseType: !51, size: 64, offset: 320)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4076, file: !4077, line: 117, baseType: !51, size: 64, offset: 384)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4076, file: !4077, line: 118, baseType: !51, size: 64, offset: 448)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4076, file: !4077, line: 119, baseType: !51, size: 64, offset: 512)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4076, file: !4077, line: 120, baseType: !51, size: 64, offset: 576)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4076, file: !4077, line: 121, baseType: !51, size: 64, offset: 640)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4076, file: !4077, line: 122, baseType: !51, size: 64, offset: 704)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4076, file: !4077, line: 123, baseType: !51, size: 64, offset: 768)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4076, file: !4077, line: 124, baseType: !51, size: 64, offset: 832)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4076, file: !4077, line: 125, baseType: !51, size: 64, offset: 896)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4076, file: !4077, line: 139, baseType: !51, size: 64, offset: 960)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4076, file: !4077, line: 142, baseType: !51, size: 64, offset: 1024)
!4096 = !DIDerivedType(tag: DW_TAG_member, scope: !4076, file: !4077, line: 144, baseType: !4097, size: 64, offset: 1088)
!4097 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4076, file: !4077, line: 144, size: 64, elements: !4098)
!4098 = !{!4099, !4100, !4101}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4097, file: !4077, line: 146, baseType: !105, size: 16)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4097, file: !4077, line: 148, baseType: !378, size: 64)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4097, file: !4077, line: 150, baseType: !4102, size: 64)
!4102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4077, line: 59, size: 64, elements: !4103)
!4103 = !{!4104, !4105, !4106}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4102, file: !4077, line: 61, baseType: !378, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4102, file: !4077, line: 63, baseType: !378, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4102, file: !4077, line: 65, baseType: !378, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4076, file: !4077, line: 153, baseType: !51, size: 64, offset: 1152)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4076, file: !4077, line: 154, baseType: !51, size: 64, offset: 1216)
!4109 = !DIDerivedType(tag: DW_TAG_member, scope: !4076, file: !4077, line: 156, baseType: !4110, size: 64, offset: 1280)
!4110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4076, file: !4077, line: 156, size: 64, elements: !4111)
!4111 = !{!4112, !4113, !4114}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4110, file: !4077, line: 158, baseType: !105, size: 16)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4110, file: !4077, line: 160, baseType: !378, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4110, file: !4077, line: 162, baseType: !4115, size: 64)
!4115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4077, line: 69, size: 64, elements: !4116)
!4116 = !{!4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4115, file: !4077, line: 71, baseType: !378, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4115, file: !4077, line: 73, baseType: !378, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4115, file: !4077, line: 75, baseType: !378, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4115, file: !4077, line: 77, baseType: !378, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4115, file: !4077, line: 80, baseType: !378, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4115, file: !4077, line: 83, baseType: !378, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4115, file: !4077, line: 86, baseType: !378, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4115, file: !4077, line: 88, baseType: !378, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4115, file: !4077, line: 93, baseType: !378, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4115, file: !4077, line: 100, baseType: !378, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4052, file: !3979, line: 96, baseType: !390, size: 32, offset: 1024)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3997, file: !3979, line: 352, baseType: !4129, size: 4608, align: 512)
!4129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3979, line: 333, size: 4608, align: 512, elements: !4130)
!4130 = !{!4131, !4132, !4139}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4129, file: !3979, line: 334, baseType: !4015, size: 4096, align: 128)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4129, file: !3979, line: 335, baseType: !4133, size: 512, offset: 4096)
!4133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3979, line: 312, size: 512, elements: !4134)
!4134 = !{!4135, !4136, !4137}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4133, file: !3979, line: 313, baseType: !378, size: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4133, file: !3979, line: 314, baseType: !378, size: 64, offset: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4133, file: !3979, line: 315, baseType: !4138, size: 384, offset: 128)
!4138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 384, elements: !1950)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4129, file: !3979, line: 336, baseType: !4140, offset: 4608)
!4140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, elements: !2091)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3997, file: !3979, line: 353, baseType: !4142, size: 32768)
!4142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 32768, elements: !1310)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3978, file: !3979, line: 484, baseType: !3984, size: 64, offset: 192)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3978, file: !3979, line: 491, baseType: !4145, size: 128, offset: 256)
!4145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3979, line: 404, size: 128, elements: !4146)
!4146 = !{!4147, !4148, !4149}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4145, file: !3979, line: 424, baseType: !378, size: 64)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4145, file: !3979, line: 432, baseType: !7, size: 32, offset: 64)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4145, file: !3979, line: 440, baseType: !7, size: 32, offset: 96)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3978, file: !3979, line: 498, baseType: !4145, size: 128, offset: 384)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3978, file: !3979, line: 508, baseType: !3985, size: 33280, align: 512, offset: 512)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1416, file: !290, line: 945, baseType: !378, size: 64, offset: 1152)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !1416, file: !290, line: 946, baseType: !378, size: 64, offset: 1216)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !1416, file: !290, line: 947, baseType: !378, size: 64, offset: 1280)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !1416, file: !290, line: 953, baseType: !1415, size: 64, offset: 1344)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !1416, file: !290, line: 954, baseType: !378, size: 64, offset: 1408)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !1416, file: !290, line: 955, baseType: !378, size: 64, offset: 1472)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !1416, file: !290, line: 956, baseType: !34, size: 32, offset: 1536)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !1416, file: !290, line: 958, baseType: !34, size: 32, offset: 1568)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1416, file: !290, line: 960, baseType: !1048, size: 128, align: 64, offset: 1600)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !1416, file: !290, line: 968, baseType: !4162, size: 64, offset: 1728)
!4162 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !4163, line: 12, baseType: !4164)
!4163 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!4164 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4163, line: 10, size: 64, elements: !4165)
!4165 = !{!4166}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !4164, file: !4163, line: 11, baseType: !836, size: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !1411, file: !290, line: 877, baseType: !109, size: 128, offset: 128)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !1411, file: !290, line: 879, baseType: !109, size: 128, offset: 256)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !1411, file: !290, line: 880, baseType: !109, size: 128, offset: 384)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !1411, file: !290, line: 883, baseType: !7, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1411, file: !290, line: 885, baseType: !7, size: 32, offset: 544)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !1411, file: !290, line: 886, baseType: !7, size: 32, offset: 576)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1411, file: !290, line: 888, baseType: !61, size: 32, offset: 608)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1411, file: !290, line: 889, baseType: !1048, size: 128, align: 64, offset: 640)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !1411, file: !290, line: 891, baseType: !32, size: 64, offset: 768)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !1411, file: !290, line: 898, baseType: !34, size: 32, offset: 832)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !1408, file: !290, line: 979, baseType: !4178, size: 64, offset: 896)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !1408, file: !290, line: 981, baseType: !109, size: 128, offset: 960)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !1408, file: !290, line: 982, baseType: !34, size: 32, offset: 1088)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !1408, file: !290, line: 984, baseType: !34, size: 32, offset: 1120)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !1408, file: !290, line: 985, baseType: !34, size: 32, offset: 1152)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !1408, file: !290, line: 987, baseType: !393, size: 32, offset: 1184)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !1408, file: !290, line: 988, baseType: !1562, size: 512, offset: 1216)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !1408, file: !290, line: 989, baseType: !1570, size: 64, offset: 1728)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !1408, file: !290, line: 990, baseType: !7, size: 32, offset: 1792)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !1394, file: !290, line: 320, baseType: !61, size: 32, offset: 704)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !1394, file: !290, line: 321, baseType: !34, size: 32, offset: 736)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !1394, file: !290, line: 322, baseType: !34, size: 32, offset: 768)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !1394, file: !290, line: 325, baseType: !7, size: 32, offset: 800)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !1394, file: !290, line: 331, baseType: !4192, size: 64, offset: 832)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{null, !1393}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !1394, file: !290, line: 332, baseType: !4192, size: 64, offset: 896)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !1394, file: !290, line: 350, baseType: !4197, size: 64, offset: 960)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!34, !1376}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !1394, file: !290, line: 356, baseType: !4201, size: 64, offset: 1024)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{null, !1376, !1728}
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !1394, file: !290, line: 357, baseType: !4201, size: 64, offset: 1088)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !1394, file: !290, line: 385, baseType: !4206, size: 64, offset: 1152)
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4207, size: 64)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{!34, !1376, !34}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !1394, file: !290, line: 386, baseType: !4210, size: 64, offset: 1216)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{null, !1376, !34}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1394, file: !290, line: 406, baseType: !4210, size: 64, offset: 1280)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1394, file: !290, line: 407, baseType: !4210, size: 64, offset: 1344)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1394, file: !290, line: 415, baseType: !4216, size: 64, offset: 1408)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{null, !1376}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !1394, file: !290, line: 427, baseType: !4220, size: 64, offset: 1472)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{null, !1393, !7}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !1394, file: !290, line: 436, baseType: !4224, size: 64, offset: 1536)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!34, !1393}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !1394, file: !290, line: 443, baseType: !4192, size: 64, offset: 1600)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !1394, file: !290, line: 450, baseType: !4197, size: 64, offset: 1664)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !1394, file: !290, line: 455, baseType: !4230, size: 64, offset: 1728)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{null, !4178, !459}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !1394, file: !290, line: 461, baseType: !1835, size: 64, offset: 1792)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !1394, file: !290, line: 469, baseType: !4235, size: 64, offset: 1856)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{null, !4178, !4178}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !1394, file: !290, line: 476, baseType: !4239, size: 64, offset: 1920)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{!32, !1376, !2620, !34, !459}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !1394, file: !290, line: 483, baseType: !875, size: 64, offset: 1984)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !1394, file: !290, line: 494, baseType: !4244, size: 64, offset: 2048)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!541, !1376, !4247, !51}
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !290, line: 1014, size: 448, elements: !4249)
!4249 = !{!4250, !4251, !4254, !4255, !4256, !4257, !4262}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4248, file: !290, line: 1015, baseType: !1376, size: 64)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4248, file: !290, line: 1016, baseType: !4252, size: 64, offset: 64)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !290, line: 641, flags: DIFlagFwdDecl)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4248, file: !290, line: 1017, baseType: !51, size: 64, offset: 128)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4248, file: !290, line: 1018, baseType: !51, size: 64, offset: 192)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !4248, file: !290, line: 1019, baseType: !378, size: 64, offset: 256)
!4257 = !DIDerivedType(tag: DW_TAG_member, scope: !4248, file: !290, line: 1020, baseType: !4258, size: 64, offset: 320)
!4258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4248, file: !290, line: 1020, size: 64, elements: !4259)
!4259 = !{!4260, !4261}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4258, file: !290, line: 1021, baseType: !32, size: 64)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4258, file: !290, line: 1022, baseType: !51, size: 64)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4248, file: !290, line: 1024, baseType: !34, size: 32, offset: 384)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !1394, file: !290, line: 506, baseType: !4264, size: 64, offset: 2112)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DISubroutineType(types: !4266)
!4266 = !{!34, !112}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !1394, file: !290, line: 520, baseType: !4216, size: 64, offset: 2176)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !1394, file: !290, line: 530, baseType: !4197, size: 64, offset: 2240)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1394, file: !290, line: 537, baseType: !4270, size: 64, offset: 2304)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!459, !1393, !34}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !1394, file: !290, line: 542, baseType: !4274, size: 64, offset: 2368)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!34, !1376, !378}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !1377, file: !290, line: 715, baseType: !32, size: 64, offset: 1280)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1377, file: !290, line: 717, baseType: !289, size: 32, offset: 1344)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !1377, file: !290, line: 718, baseType: !7, size: 32, offset: 1376)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1377, file: !290, line: 719, baseType: !4281, size: 64, offset: 1408)
!4281 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !4282, line: 26, baseType: !4283)
!4282 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!4283 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4282, line: 24, size: 64, elements: !4284)
!4284 = !{!4285}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !4283, file: !4282, line: 25, baseType: !4162, size: 64)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1377, file: !290, line: 720, baseType: !838, size: 64, offset: 1472)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !1377, file: !290, line: 728, baseType: !378, size: 64, offset: 1536)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !1377, file: !290, line: 729, baseType: !378, size: 64, offset: 1600)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !1377, file: !290, line: 730, baseType: !378, size: 64, offset: 1664)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1377, file: !290, line: 732, baseType: !4291, size: 1088, offset: 1728)
!4291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !4292, line: 385, size: 1088, elements: !4293)
!4292 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!4293 = !{!4294, !4295, !4296, !4297, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4347, !4348, !4355, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4291, file: !4292, line: 390, baseType: !391, size: 32)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4291, file: !4292, line: 395, baseType: !391, size: 32, offset: 32)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4291, file: !4292, line: 400, baseType: !379, size: 64, offset: 64)
!4297 = !DIDerivedType(tag: DW_TAG_member, scope: !4291, file: !4292, line: 402, baseType: !4298, size: 64, offset: 128)
!4298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4291, file: !4292, line: 402, size: 64, elements: !4299)
!4299 = !{!4300, !4301}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !4298, file: !4292, line: 403, baseType: !379, size: 64)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !4298, file: !4292, line: 404, baseType: !379, size: 64)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !4291, file: !4292, line: 407, baseType: !379, size: 64, offset: 192)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !4291, file: !4292, line: 408, baseType: !379, size: 64, offset: 256)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !4291, file: !4292, line: 410, baseType: !379, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !4291, file: !4292, line: 411, baseType: !379, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !4291, file: !4292, line: 412, baseType: !379, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !4291, file: !4292, line: 413, baseType: !379, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !4291, file: !4292, line: 414, baseType: !379, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !4291, file: !4292, line: 415, baseType: !379, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !4291, file: !4292, line: 416, baseType: !379, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !4291, file: !4292, line: 417, baseType: !379, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4291, file: !4292, line: 418, baseType: !379, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !4291, file: !4292, line: 419, baseType: !379, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !4291, file: !4292, line: 420, baseType: !379, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !4291, file: !4292, line: 421, baseType: !379, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !4291, file: !4292, line: 422, baseType: !379, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4291, file: !4292, line: 423, baseType: !379, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !4291, file: !4292, line: 424, baseType: !379, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !4291, file: !4292, line: 435, baseType: !379, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !4291, file: !4292, line: 436, baseType: !379, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !4291, file: !4292, line: 437, baseType: !379, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !4291, file: !4292, line: 439, baseType: !379, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !4291, file: !4292, line: 440, baseType: !379, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !4291, file: !4292, line: 442, baseType: !379, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !4291, file: !4292, line: 443, baseType: !379, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !4291, file: !4292, line: 444, baseType: !379, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !4291, file: !4292, line: 445, baseType: !379, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !4291, file: !4292, line: 446, baseType: !379, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !4291, file: !4292, line: 447, baseType: !379, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !4291, file: !4292, line: 448, baseType: !379, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !4291, file: !4292, line: 449, baseType: !379, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !4291, file: !4292, line: 450, baseType: !379, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !4291, file: !4292, line: 451, baseType: !379, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !4291, file: !4292, line: 452, baseType: !379, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !4291, file: !4292, line: 453, baseType: !379, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !4291, file: !4292, line: 454, baseType: !379, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !4291, file: !4292, line: 455, baseType: !379, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !4291, file: !4292, line: 456, baseType: !379, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !4291, file: !4292, line: 457, baseType: !379, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !4291, file: !4292, line: 458, baseType: !379, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !4291, file: !4292, line: 459, baseType: !379, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!4342 = !DIDerivedType(tag: DW_TAG_member, scope: !4291, file: !4292, line: 461, baseType: !4343, size: 32, offset: 384)
!4343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4291, file: !4292, line: 461, size: 32, elements: !4344)
!4344 = !{!4345, !4346}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !4343, file: !4292, line: 462, baseType: !391, size: 32)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !4343, file: !4292, line: 463, baseType: !391, size: 32)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !4291, file: !4292, line: 466, baseType: !391, size: 32, offset: 416)
!4348 = !DIDerivedType(tag: DW_TAG_member, scope: !4291, file: !4292, line: 467, baseType: !4349, size: 64, offset: 448)
!4349 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4291, file: !4292, line: 467, size: 64, elements: !4350)
!4350 = !{!4351, !4352, !4353, !4354}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !4349, file: !4292, line: 468, baseType: !379, size: 64)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !4349, file: !4292, line: 469, baseType: !379, size: 64)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !4349, file: !4292, line: 470, baseType: !379, size: 64)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !4349, file: !4292, line: 471, baseType: !379, size: 64)
!4355 = !DIDerivedType(tag: DW_TAG_member, scope: !4291, file: !4292, line: 473, baseType: !4356, size: 64, offset: 512)
!4356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4291, file: !4292, line: 473, size: 64, elements: !4357)
!4357 = !{!4358, !4359, !4360, !4361}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !4356, file: !4292, line: 474, baseType: !379, size: 64)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !4356, file: !4292, line: 475, baseType: !379, size: 64)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !4356, file: !4292, line: 476, baseType: !379, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !4356, file: !4292, line: 477, baseType: !379, size: 64)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !4291, file: !4292, line: 479, baseType: !379, size: 64, offset: 576)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !4291, file: !4292, line: 485, baseType: !379, size: 64, offset: 640)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !4291, file: !4292, line: 490, baseType: !391, size: 32, offset: 704)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !4291, file: !4292, line: 492, baseType: !829, size: 32, offset: 736)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !4291, file: !4292, line: 501, baseType: !379, size: 64, offset: 768)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !4291, file: !4292, line: 506, baseType: !391, size: 32, offset: 832)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !4291, file: !4292, line: 507, baseType: !106, size: 16, offset: 864)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !4291, file: !4292, line: 508, baseType: !106, size: 16, offset: 880)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !4291, file: !4292, line: 509, baseType: !391, size: 32, offset: 896)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !4291, file: !4292, line: 510, baseType: !391, size: 32, offset: 928)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !4291, file: !4292, line: 518, baseType: !379, size: 64, offset: 960)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !4291, file: !4292, line: 520, baseType: !379, size: 64, offset: 1024)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !1377, file: !290, line: 733, baseType: !105, size: 16, offset: 2816)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !1377, file: !290, line: 734, baseType: !105, size: 16, offset: 2832)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !1377, file: !290, line: 735, baseType: !105, size: 16, offset: 2848)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !1377, file: !290, line: 736, baseType: !4378, size: 1536, offset: 2880)
!4378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !290, line: 155, size: 1536, elements: !4379)
!4379 = !{!4380, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4464, !4465, !4466, !4467}
!4380 = !DIDerivedType(tag: DW_TAG_member, scope: !4378, file: !290, line: 157, baseType: !4381, size: 768)
!4381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4378, file: !290, line: 157, size: 768, elements: !4382)
!4382 = !{!4383, !4402, !4406, !4410, !4415, !4437}
!4383 = !DIDerivedType(tag: DW_TAG_member, scope: !4381, file: !290, line: 158, baseType: !4384, size: 768)
!4384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4381, file: !290, line: 158, size: 768, elements: !4385)
!4385 = !{!4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4401}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4384, file: !290, line: 159, baseType: !378, size: 64)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !4384, file: !290, line: 160, baseType: !378, size: 64, offset: 64)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !4384, file: !290, line: 161, baseType: !51, size: 64, offset: 128)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !4384, file: !290, line: 162, baseType: !51, size: 64, offset: 192)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !4384, file: !290, line: 163, baseType: !34, size: 32, offset: 256)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !4384, file: !290, line: 164, baseType: !34, size: 32, offset: 288)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4384, file: !290, line: 165, baseType: !34, size: 32, offset: 320)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4384, file: !290, line: 166, baseType: !34, size: 32, offset: 352)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !4384, file: !290, line: 168, baseType: !4395, size: 192, offset: 384)
!4395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !290, line: 134, size: 192, elements: !4396)
!4396 = !{!4397, !4398, !4399, !4400}
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4395, file: !290, line: 135, baseType: !378, size: 64)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !4395, file: !290, line: 136, baseType: !7, size: 32, offset: 64)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4395, file: !290, line: 137, baseType: !34, size: 32, offset: 96)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !4395, file: !290, line: 138, baseType: !34, size: 32, offset: 128)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !4384, file: !290, line: 169, baseType: !4395, size: 192, offset: 576)
!4402 = !DIDerivedType(tag: DW_TAG_member, scope: !4381, file: !290, line: 171, baseType: !4403, size: 512)
!4403 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4381, file: !290, line: 171, size: 512, elements: !4404)
!4404 = !{!4405}
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !4403, file: !290, line: 172, baseType: !1562, size: 512)
!4406 = !DIDerivedType(tag: DW_TAG_member, scope: !4381, file: !290, line: 174, baseType: !4407, size: 128)
!4407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4381, file: !290, line: 174, size: 128, elements: !4408)
!4408 = !{!4409}
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !4407, file: !290, line: 176, baseType: !109, size: 128)
!4410 = !DIDerivedType(tag: DW_TAG_member, scope: !4381, file: !290, line: 178, baseType: !4411, size: 128)
!4411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4381, file: !290, line: 178, size: 128, elements: !4412)
!4412 = !{!4413, !4414}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !4411, file: !290, line: 179, baseType: !378, size: 64)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !4411, file: !290, line: 180, baseType: !378, size: 64, offset: 64)
!4415 = !DIDerivedType(tag: DW_TAG_member, scope: !4381, file: !290, line: 183, baseType: !4416, size: 320)
!4416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4381, file: !290, line: 183, size: 320, elements: !4417)
!4417 = !{!4418, !4426}
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4416, file: !290, line: 189, baseType: !4419, size: 192)
!4419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !4420, line: 14, size: 192, elements: !4421)
!4420 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!4421 = !{!4422, !4423, !4424, !4425}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !4419, file: !4420, line: 15, baseType: !51, size: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4419, file: !4420, line: 16, baseType: !51, size: 64, offset: 64)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4419, file: !4420, line: 17, baseType: !95, size: 8, offset: 128)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4419, file: !4420, line: 18, baseType: !95, size: 8, offset: 136)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !4416, file: !290, line: 190, baseType: !4427, size: 128, offset: 192)
!4427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !4428, line: 21, size: 128, elements: !4429)
!4428 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!4429 = !{!4430, !4435}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !4427, file: !4428, line: 22, baseType: !4431, size: 64)
!4431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !4428, line: 17, size: 64, elements: !4432)
!4432 = !{!4433}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4431, file: !4428, line: 18, baseType: !4434, size: 64)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4427, file: !4428, line: 23, baseType: !4436, size: 64, offset: 64)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4437 = !DIDerivedType(tag: DW_TAG_member, scope: !4381, file: !290, line: 193, baseType: !4438, size: 192)
!4438 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4381, file: !290, line: 193, size: 192, elements: !4439)
!4439 = !{!4440, !4441, !4442, !4443, !4444}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !4438, file: !290, line: 194, baseType: !95, size: 8)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !4438, file: !290, line: 195, baseType: !95, size: 8, offset: 8)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4438, file: !290, line: 196, baseType: !105, size: 16, offset: 16)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !4438, file: !290, line: 197, baseType: !378, size: 64, offset: 64)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !4438, file: !290, line: 198, baseType: !378, size: 64, offset: 128)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4378, file: !290, line: 205, baseType: !1445, size: 64, offset: 768)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !4378, file: !290, line: 211, baseType: !32, size: 64, offset: 832)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !4378, file: !290, line: 214, baseType: !51, size: 64, offset: 896)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4378, file: !290, line: 223, baseType: !34, size: 32, offset: 960)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !4378, file: !290, line: 229, baseType: !4281, size: 64, offset: 1024)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !4378, file: !290, line: 234, baseType: !378, size: 64, offset: 1088)
!4451 = !DIDerivedType(tag: DW_TAG_member, scope: !4378, file: !290, line: 236, baseType: !4452, size: 128, offset: 1152)
!4452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4378, file: !290, line: 236, size: 128, elements: !4453)
!4453 = !{!4454, !4459}
!4454 = !DIDerivedType(tag: DW_TAG_member, scope: !4452, file: !290, line: 237, baseType: !4455, size: 128)
!4455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4452, file: !290, line: 237, size: 128, elements: !4456)
!4456 = !{!4457, !4458}
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !4455, file: !290, line: 241, baseType: !378, size: 64)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !4455, file: !290, line: 249, baseType: !4281, size: 64, offset: 64)
!4459 = !DIDerivedType(tag: DW_TAG_member, scope: !4452, file: !290, line: 251, baseType: !4460, size: 128)
!4460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4452, file: !290, line: 251, size: 128, elements: !4461)
!4461 = !{!4462, !4463}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !4460, file: !290, line: 252, baseType: !378, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !4460, file: !290, line: 253, baseType: !378, size: 64, offset: 64)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !4378, file: !290, line: 261, baseType: !378, size: 64, offset: 1280)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !4378, file: !290, line: 262, baseType: !378, size: 64, offset: 1344)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !4378, file: !290, line: 268, baseType: !378, size: 64, offset: 1408)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !4378, file: !290, line: 269, baseType: !378, size: 64, offset: 1472)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1377, file: !290, line: 738, baseType: !1415, size: 64, offset: 4416)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !1377, file: !290, line: 744, baseType: !4178, size: 64, offset: 4480)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1377, file: !290, line: 745, baseType: !836, size: 64, offset: 4544)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !1377, file: !290, line: 751, baseType: !838, size: 64, offset: 4608)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !1377, file: !290, line: 752, baseType: !838, size: 64, offset: 4672)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !1377, file: !290, line: 757, baseType: !832, size: 256, offset: 4736)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !1377, file: !290, line: 758, baseType: !109, size: 128, offset: 4992)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1377, file: !290, line: 759, baseType: !1376, size: 64, offset: 5120)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !1377, file: !290, line: 761, baseType: !34, size: 32, offset: 5184)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1377, file: !290, line: 762, baseType: !34, size: 32, offset: 5216)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !1377, file: !290, line: 764, baseType: !109, size: 128, offset: 5248)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1377, file: !290, line: 765, baseType: !1445, size: 64, offset: 5376)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !1377, file: !290, line: 768, baseType: !832, size: 256, offset: 5440)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !1377, file: !290, line: 769, baseType: !61, size: 32, offset: 5696)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1377, file: !290, line: 771, baseType: !4252, size: 64, offset: 5760)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !1377, file: !290, line: 772, baseType: !109, size: 128, offset: 5824)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !1377, file: !290, line: 773, baseType: !51, size: 64, offset: 5952)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !1377, file: !290, line: 774, baseType: !34, size: 32, offset: 6016)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !1377, file: !290, line: 777, baseType: !66, size: 192, offset: 6080)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1377, file: !290, line: 778, baseType: !4488, size: 64, offset: 6272)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !14, line: 1083, size: 384, elements: !4490)
!4490 = !{!4491, !4492, !4493, !4494, !4495, !4496}
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4489, file: !14, line: 1084, baseType: !1775, size: 64)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4489, file: !14, line: 1085, baseType: !34, size: 32, offset: 64)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4489, file: !14, line: 1086, baseType: !34, size: 32, offset: 96)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4489, file: !14, line: 1087, baseType: !4488, size: 64, offset: 128)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4489, file: !14, line: 1088, baseType: !1755, size: 64, offset: 192)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4489, file: !14, line: 1089, baseType: !1048, size: 128, align: 64, offset: 256)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !1377, file: !290, line: 781, baseType: !7, size: 32, offset: 6336)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !1377, file: !290, line: 782, baseType: !7, size: 32, offset: 6368)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !1377, file: !290, line: 783, baseType: !7, size: 32, offset: 6400)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !1377, file: !290, line: 784, baseType: !7, size: 32, offset: 6432)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !1377, file: !290, line: 785, baseType: !51, size: 64, offset: 6464)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !1377, file: !290, line: 786, baseType: !4503, size: 256, offset: 6528)
!4503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !4504, line: 17, size: 256, elements: !4505)
!4504 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!4505 = !{!4506, !4507, !4512}
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4503, file: !4504, line: 18, baseType: !1464, size: 128)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4503, file: !4504, line: 19, baseType: !4508, size: 64, offset: 128)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = !DISubroutineType(types: !4510)
!4510 = !{null, !4511}
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !4503, file: !4504, line: 20, baseType: !4513, size: 64, offset: 192)
!4513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !4514, line: 16, size: 64, elements: !4515)
!4514 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!4515 = !{!4516}
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4513, file: !4514, line: 17, baseType: !1445, size: 64)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !1377, file: !290, line: 787, baseType: !1048, size: 128, align: 64, offset: 6784)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !1377, file: !290, line: 788, baseType: !7, size: 32, offset: 6912)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !1377, file: !290, line: 789, baseType: !4513, size: 64, offset: 6976)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !1377, file: !290, line: 791, baseType: !61, size: 32, offset: 7040)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !1377, file: !290, line: 794, baseType: !4522, size: 192, offset: 7104)
!4522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !290, line: 579, size: 192, elements: !4523)
!4523 = !{!4524, !4525, !4526}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4522, file: !290, line: 580, baseType: !109, size: 128)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4522, file: !290, line: 581, baseType: !393, size: 32, offset: 128)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !4522, file: !290, line: 582, baseType: !7, size: 32, offset: 160)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !1377, file: !290, line: 796, baseType: !4528, size: 64, offset: 7296)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !290, line: 585, size: 128, elements: !4530)
!4530 = !{!4531, !4532}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4529, file: !290, line: 586, baseType: !51, size: 64)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4529, file: !290, line: 587, baseType: !51, size: 64, offset: 64)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !1377, file: !290, line: 797, baseType: !51, size: 64, offset: 7360)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !1377, file: !290, line: 800, baseType: !1376, size: 64, offset: 7424)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !1377, file: !290, line: 802, baseType: !4216, size: 64, offset: 7488)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1377, file: !290, line: 803, baseType: !1048, size: 128, align: 64, offset: 7552)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1377, file: !290, line: 805, baseType: !1813, size: 64, offset: 7680)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1377, file: !290, line: 806, baseType: !378, size: 64, offset: 7744)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !1377, file: !290, line: 808, baseType: !838, size: 64, offset: 7808)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !1377, file: !290, line: 810, baseType: !4541, size: 64, offset: 7872)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = !DISubroutineType(types: !4543)
!4543 = !{!378}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !1377, file: !290, line: 811, baseType: !4545, size: 64, offset: 7936)
!4545 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !290, line: 605, baseType: !4546)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = !DISubroutineType(types: !4548)
!4548 = !{null, !1376, !4549, !4075}
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !290, line: 1148, size: 2048, align: 512, elements: !4551)
!4551 = !{!4552, !4553, !4554, !4555, !4556, !4561, !4562, !4563, !4568, !4569, !4576, !4597, !4619, !4629, !4647, !4648, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !4550, file: !290, line: 1153, baseType: !378, size: 64)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4550, file: !290, line: 1154, baseType: !378, size: 64, offset: 64)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !4550, file: !290, line: 1155, baseType: !378, size: 64, offset: 128)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4550, file: !290, line: 1161, baseType: !378, size: 64, offset: 192)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !4550, file: !290, line: 1165, baseType: !4557, size: 64, offset: 256)
!4557 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4550, file: !290, line: 1162, size: 64, elements: !4558)
!4558 = !{!4559, !4560}
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4557, file: !290, line: 1163, baseType: !390, size: 32)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !4557, file: !290, line: 1164, baseType: !390, size: 32, offset: 32)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4550, file: !290, line: 1166, baseType: !378, size: 64, offset: 320)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4550, file: !290, line: 1167, baseType: !378, size: 64, offset: 384)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !4550, file: !290, line: 1171, baseType: !4564, size: 64, offset: 448)
!4564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4550, file: !290, line: 1168, size: 64, elements: !4565)
!4565 = !{!4566, !4567}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4564, file: !290, line: 1169, baseType: !390, size: 32)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4564, file: !290, line: 1170, baseType: !390, size: 32, offset: 32)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4550, file: !290, line: 1177, baseType: !378, size: 64, offset: 512)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !4550, file: !290, line: 1178, baseType: !4570, size: 64, offset: 576)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !290, line: 67, size: 64, elements: !4572)
!4572 = !{!4573, !4574}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4571, file: !290, line: 68, baseType: !379, size: 64)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4571, file: !290, line: 69, baseType: !4575, offset: 64)
!4575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, elements: !2091)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !4550, file: !290, line: 1179, baseType: !4577, size: 64, offset: 640)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !290, line: 93, size: 256, elements: !4579)
!4579 = !{!4580, !4596}
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !4578, file: !290, line: 94, baseType: !4581, size: 224)
!4581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !290, line: 83, size: 224, elements: !4582)
!4582 = !{!4583, !4589, !4594, !4595}
!4583 = !DIDerivedType(tag: DW_TAG_member, scope: !4581, file: !290, line: 84, baseType: !4584, size: 64)
!4584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4581, file: !290, line: 84, size: 64, elements: !4585)
!4585 = !{!4586, !4588}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4584, file: !290, line: 85, baseType: !4587, size: 64)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !4584, file: !290, line: 86, baseType: !51, size: 64)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !4581, file: !290, line: 88, baseType: !4590, size: 64, offset: 64)
!4590 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !290, line: 80, baseType: !4591)
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = !DISubroutineType(types: !4593)
!4593 = !{!51, !32, !2781, !51, !51}
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4581, file: !290, line: 89, baseType: !32, size: 64, offset: 128)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4581, file: !290, line: 90, baseType: !390, size: 32, offset: 192)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4578, file: !290, line: 95, baseType: !390, size: 32, offset: 224)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !4550, file: !290, line: 1180, baseType: !4598, size: 64, offset: 704)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !290, line: 123, size: 128, elements: !4600)
!4600 = !{!4601, !4602, !4603}
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4599, file: !290, line: 124, baseType: !379, size: 64)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !4599, file: !290, line: 125, baseType: !379, size: 64, offset: 64)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !4599, file: !290, line: 126, baseType: !4604, offset: 128)
!4604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4605, elements: !2091)
!4605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !4292, line: 1415, size: 192, elements: !4606)
!4606 = !{!4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618}
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !4605, file: !4292, line: 1416, baseType: !379, size: 64)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !4605, file: !4292, line: 1417, baseType: !379, size: 64, offset: 64)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !4605, file: !4292, line: 1418, baseType: !379, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !4605, file: !4292, line: 1419, baseType: !379, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !4605, file: !4292, line: 1420, baseType: !379, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !4605, file: !4292, line: 1421, baseType: !379, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !4605, file: !4292, line: 1422, baseType: !379, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4605, file: !4292, line: 1423, baseType: !379, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !4605, file: !4292, line: 1424, baseType: !379, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !4605, file: !4292, line: 1425, baseType: !379, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4605, file: !4292, line: 1426, baseType: !379, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4605, file: !4292, line: 1427, baseType: !379, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !4550, file: !290, line: 1181, baseType: !4620, size: 64, offset: 768)
!4620 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !4292, line: 1430, size: 64, elements: !4621)
!4621 = !{!4622, !4623}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !4620, file: !4292, line: 1431, baseType: !379, size: 64)
!4623 = !DIDerivedType(tag: DW_TAG_member, scope: !4620, file: !4292, line: 1433, baseType: !4624, size: 64)
!4624 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4620, file: !4292, line: 1433, size: 64, elements: !4625)
!4625 = !{!4626, !4627, !4628}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !4624, file: !4292, line: 1434, baseType: !391, size: 32)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !4624, file: !4292, line: 1435, baseType: !106, size: 16, offset: 32)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !4624, file: !4292, line: 1436, baseType: !106, size: 16, offset: 48)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !4550, file: !290, line: 1182, baseType: !4630, size: 64, offset: 832)
!4630 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !4292, line: 1267, size: 64, elements: !4631)
!4631 = !{!4632, !4633}
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4630, file: !4292, line: 1268, baseType: !379, size: 64)
!4633 = !DIDerivedType(tag: DW_TAG_member, scope: !4630, file: !4292, line: 1269, baseType: !4634, size: 64)
!4634 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4630, file: !4292, line: 1269, size: 64, elements: !4635)
!4635 = !{!4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646}
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !4634, file: !4292, line: 1270, baseType: !379, size: 5, flags: DIFlagBitField, extraData: i64 0)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !4634, file: !4292, line: 1271, baseType: !379, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !4634, file: !4292, line: 1272, baseType: !379, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !4634, file: !4292, line: 1273, baseType: !379, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !4634, file: !4292, line: 1274, baseType: !379, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !4634, file: !4292, line: 1275, baseType: !379, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !4634, file: !4292, line: 1276, baseType: !379, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !4634, file: !4292, line: 1277, baseType: !379, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !4634, file: !4292, line: 1278, baseType: !379, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !4634, file: !4292, line: 1279, baseType: !379, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !4634, file: !4292, line: 1280, baseType: !379, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !4550, file: !290, line: 1183, baseType: !378, size: 64, offset: 896)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !4550, file: !290, line: 1185, baseType: !4649, size: 128, offset: 960)
!4649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !4650, line: 7, size: 128, elements: !4651)
!4650 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!4651 = !{!4652, !4653}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !4649, file: !4650, line: 8, baseType: !379, size: 64)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4649, file: !4650, line: 9, baseType: !4075, size: 64, offset: 64)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !4550, file: !290, line: 1186, baseType: !4649, size: 128, offset: 1088)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !4550, file: !290, line: 1187, baseType: !378, size: 64, offset: 1216)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4550, file: !290, line: 1189, baseType: !378, size: 64, offset: 1280)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !4550, file: !290, line: 1190, baseType: !378, size: 64, offset: 1344)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4550, file: !290, line: 1191, baseType: !378, size: 64, offset: 1408)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4550, file: !290, line: 1192, baseType: !378, size: 64, offset: 1472)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !4550, file: !290, line: 1193, baseType: !378, size: 64, offset: 1536)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !4550, file: !290, line: 1194, baseType: !378, size: 64, offset: 1600)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !4550, file: !290, line: 1195, baseType: !378, size: 64, offset: 1664)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !1377, file: !290, line: 812, baseType: !32, size: 64, offset: 8000)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !1377, file: !290, line: 820, baseType: !1166, size: 64, offset: 8064)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1377, file: !290, line: 821, baseType: !1354, size: 64, offset: 8128)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !1377, file: !290, line: 828, baseType: !4667, size: 64, offset: 8192)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !290, line: 1046, size: 1664, elements: !4669)
!4669 = !{!4670, !4671}
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !4668, file: !290, line: 1047, baseType: !3027, size: 1600)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4668, file: !290, line: 1048, baseType: !4672, size: 64, offset: 1600)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !290, line: 1039, size: 256, elements: !4674)
!4674 = !{!4675, !4676, !4677, !4678}
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4673, file: !290, line: 1040, baseType: !378, size: 64)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4673, file: !290, line: 1041, baseType: !378, size: 64, offset: 64)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !4673, file: !290, line: 1042, baseType: !378, size: 64, offset: 128)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4673, file: !290, line: 1043, baseType: !34, size: 32, offset: 192)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1377, file: !290, line: 832, baseType: !32, size: 64, offset: 8256)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !1377, file: !290, line: 834, baseType: !109, size: 128, offset: 8320)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !1377, file: !290, line: 842, baseType: !391, size: 32, offset: 8448)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !763, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !763, file: !6, line: 525, baseType: !4684, size: 64, offset: 8384)
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4685, size: 64)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !4687, line: 28, size: 192, elements: !4688)
!4687 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!4688 = !{!4689, !4690, !4691}
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4686, file: !4687, line: 29, baseType: !28, size: 64)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !4686, file: !4687, line: 30, baseType: !28, size: 64, offset: 64)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !4686, file: !4687, line: 31, baseType: !51, size: 64, offset: 128)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !763, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !763, file: !6, line: 533, baseType: !32, size: 64, offset: 8512)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !763, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !763, file: !6, line: 535, baseType: !406, size: 64, offset: 8640)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !763, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !763, file: !6, line: 539, baseType: !34, size: 32, offset: 8736)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !763, file: !6, line: 540, baseType: !1249, size: 64, offset: 8768)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !763, file: !6, line: 563, baseType: !109, size: 128, offset: 8832)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !763, file: !6, line: 565, baseType: !109, size: 128, offset: 8960)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !763, file: !6, line: 568, baseType: !1260, size: 64, offset: 9088)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !763, file: !6, line: 570, baseType: !61, size: 32, offset: 9152)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !738, file: !14, line: 2382, baseType: !737, size: 64, offset: 448)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !738, file: !14, line: 2383, baseType: !1366, size: 64, offset: 512)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !738, file: !14, line: 2385, baseType: !4706, offset: 576)
!4706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1114, line: 206, elements: !1115)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !738, file: !14, line: 2386, baseType: !4706, offset: 576)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !738, file: !14, line: 2387, baseType: !4706, offset: 576)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !738, file: !14, line: 2388, baseType: !4710, offset: 576)
!4710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4706, elements: !507)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !738, file: !14, line: 2390, baseType: !4706, offset: 576)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !738, file: !14, line: 2391, baseType: !4706, offset: 576)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !738, file: !14, line: 2392, baseType: !4706, offset: 576)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !738, file: !14, line: 2393, baseType: !4706, offset: 576)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !727, file: !14, line: 1197, baseType: !4716, size: 64, offset: 384)
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4718)
!4718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !4719)
!4719 = !{!4720, !4724, !4728, !4729, !4733, !4739, !4743, !4744, !4745, !4749, !4753, !4757, !4758, !4759, !4765, !4769, !4770, !4774, !4775, !4776, !4777, !4781, !4785, !4832, !4847, !4848}
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !4718, file: !14, line: 2058, baseType: !4721, size: 64)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = !DISubroutineType(types: !4723)
!4723 = !{!580, !726}
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !4718, file: !14, line: 2059, baseType: !4725, size: 64, offset: 64)
!4725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4726, size: 64)
!4726 = !DISubroutineType(types: !4727)
!4727 = !{null, !580}
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4718, file: !14, line: 2060, baseType: !4725, size: 64, offset: 128)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !4718, file: !14, line: 2062, baseType: !4730, size: 64, offset: 192)
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4731, size: 64)
!4731 = !DISubroutineType(types: !4732)
!4732 = !{null, !580, !34}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !4718, file: !14, line: 2063, baseType: !4734, size: 64, offset: 256)
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = !DISubroutineType(types: !4736)
!4736 = !{!34, !580, !4737}
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !4718, file: !14, line: 2064, baseType: !4740, size: 64, offset: 320)
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4741, size: 64)
!4741 = !DISubroutineType(types: !4742)
!4742 = !{!34, !580}
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !4718, file: !14, line: 2065, baseType: !4725, size: 64, offset: 384)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !4718, file: !14, line: 2066, baseType: !758, size: 64, offset: 448)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !4718, file: !14, line: 2067, baseType: !4746, size: 64, offset: 512)
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4747 = !DISubroutineType(types: !4748)
!4748 = !{!34, !726, !34}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !4718, file: !14, line: 2068, baseType: !4750, size: 64, offset: 576)
!4750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4751, size: 64)
!4751 = !DISubroutineType(types: !4752)
!4752 = !{!34, !726, !13}
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !4718, file: !14, line: 2069, baseType: !4754, size: 64, offset: 640)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!4755 = !DISubroutineType(types: !4756)
!4756 = !{!34, !726}
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !4718, file: !14, line: 2070, baseType: !4750, size: 64, offset: 704)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !4718, file: !14, line: 2071, baseType: !4754, size: 64, offset: 768)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !4718, file: !14, line: 2072, baseType: !4760, size: 64, offset: 832)
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = !DISubroutineType(types: !4762)
!4762 = !{!34, !615, !4763}
!4763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4764, size: 64)
!4764 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !4718, file: !14, line: 2073, baseType: !4766, size: 64, offset: 896)
!4766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4767, size: 64)
!4767 = !DISubroutineType(types: !4768)
!4768 = !{!34, !726, !440, !506}
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !4718, file: !14, line: 2074, baseType: !758, size: 64, offset: 960)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4718, file: !14, line: 2076, baseType: !4771, size: 64, offset: 1024)
!4771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4772, size: 64)
!4772 = !DISubroutineType(types: !4773)
!4773 = !{!34, !2629, !615}
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !4718, file: !14, line: 2077, baseType: !4771, size: 64, offset: 1088)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4718, file: !14, line: 2078, baseType: !4771, size: 64, offset: 1152)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !4718, file: !14, line: 2079, baseType: !4771, size: 64, offset: 1216)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !4718, file: !14, line: 2081, baseType: !4778, size: 64, offset: 1280)
!4778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4779, size: 64)
!4779 = !DISubroutineType(types: !4780)
!4780 = !{!538, !726, !34, !506, !47, !53}
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !4718, file: !14, line: 2082, baseType: !4782, size: 64, offset: 1344)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = !DISubroutineType(types: !4784)
!4784 = !{!538, !726, !34, !28, !47, !53}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !4718, file: !14, line: 2083, baseType: !4786, size: 64, offset: 1408)
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4787, size: 64)
!4787 = !DISubroutineType(types: !4788)
!4788 = !{!4789, !580}
!4789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4790, size: 64)
!4790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4791, size: 64)
!4791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !307, line: 296, size: 1664, elements: !4792)
!4792 = !{!4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4817, !4818, !4819}
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4791, file: !307, line: 297, baseType: !1072, size: 128)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4791, file: !307, line: 298, baseType: !109, size: 128, offset: 128)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4791, file: !307, line: 299, baseType: !109, size: 128, offset: 256)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4791, file: !307, line: 300, baseType: !109, size: 128, offset: 384)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4791, file: !307, line: 301, baseType: !832, size: 256, offset: 512)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4791, file: !307, line: 302, baseType: !71, size: 32, offset: 768)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4791, file: !307, line: 303, baseType: !61, size: 32, offset: 800)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4791, file: !307, line: 304, baseType: !726, size: 64, offset: 832)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4791, file: !307, line: 305, baseType: !4802, size: 64, offset: 896)
!4802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !307, line: 68, size: 64, elements: !4803)
!4803 = !{!4804, !4816}
!4804 = !DIDerivedType(tag: DW_TAG_member, scope: !4802, file: !307, line: 69, baseType: !4805, size: 32)
!4805 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4802, file: !307, line: 69, size: 32, elements: !4806)
!4806 = !{!4807, !4808, !4809}
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4805, file: !307, line: 70, baseType: !586, size: 32)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4805, file: !307, line: 71, baseType: !595, size: 32)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4805, file: !307, line: 72, baseType: !4810, size: 32)
!4810 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4811, line: 24, baseType: !4812)
!4811 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4812 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4811, line: 22, size: 32, elements: !4813)
!4813 = !{!4814}
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4812, file: !4811, line: 23, baseType: !4815, size: 32)
!4815 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4811, line: 20, baseType: !592)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4802, file: !307, line: 74, baseType: !306, size: 32, offset: 32)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4791, file: !307, line: 306, baseType: !53, size: 64, offset: 960)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4791, file: !307, line: 307, baseType: !51, size: 64, offset: 1024)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4791, file: !307, line: 308, baseType: !4820, size: 576, offset: 1088)
!4820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !307, line: 205, size: 576, elements: !4821)
!4821 = !{!4822, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831}
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4820, file: !307, line: 206, baseType: !4823, size: 64)
!4823 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !307, line: 66, baseType: !55)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4820, file: !307, line: 207, baseType: !4823, size: 64, offset: 64)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4820, file: !307, line: 208, baseType: !4823, size: 64, offset: 128)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4820, file: !307, line: 209, baseType: !4823, size: 64, offset: 192)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4820, file: !307, line: 210, baseType: !4823, size: 64, offset: 256)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4820, file: !307, line: 211, baseType: !4823, size: 64, offset: 320)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4820, file: !307, line: 212, baseType: !4823, size: 64, offset: 384)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4820, file: !307, line: 213, baseType: !1921, size: 64, offset: 448)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4820, file: !307, line: 214, baseType: !1921, size: 64, offset: 512)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !4718, file: !14, line: 2085, baseType: !4833, size: 64, offset: 1472)
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64)
!4834 = !DISubroutineType(types: !4835)
!4835 = !{!541, !726, !4836}
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4837, size: 64)
!4837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4838, line: 15, size: 256, elements: !4839)
!4838 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4839 = !{!4840, !4841, !4842, !4843, !4844}
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4837, file: !4838, line: 16, baseType: !1827, size: 32)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4837, file: !4838, line: 19, baseType: !34, size: 32, offset: 32)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4837, file: !4838, line: 26, baseType: !51, size: 64, offset: 64)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4837, file: !4838, line: 33, baseType: !51, size: 64, offset: 128)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4837, file: !4838, line: 36, baseType: !4845, size: 64, offset: 192)
!4845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4846, size: 64)
!4846 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !126, line: 33, flags: DIFlagFwdDecl)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !4718, file: !14, line: 2087, baseType: !4833, size: 64, offset: 1536)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4718, file: !14, line: 2089, baseType: !758, size: 64, offset: 1600)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !727, file: !14, line: 1198, baseType: !4850, size: 64, offset: 448)
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4851, size: 64)
!4851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4852)
!4852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !307, line: 324, size: 704, elements: !4853)
!4853 = !{!4854, !4858, !4862, !4866, !4867, !4868, !4869, !4870, !4875, !4880, !4884}
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4852, file: !307, line: 325, baseType: !4855, size: 64)
!4855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4856, size: 64)
!4856 = !DISubroutineType(types: !4857)
!4857 = !{!34, !4790}
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4852, file: !307, line: 326, baseType: !4859, size: 64, offset: 64)
!4859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4860, size: 64)
!4860 = !DISubroutineType(types: !4861)
!4861 = !{!4790, !726, !34}
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4852, file: !307, line: 327, baseType: !4863, size: 64, offset: 128)
!4863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4864, size: 64)
!4864 = !DISubroutineType(types: !4865)
!4865 = !{null, !4790}
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4852, file: !307, line: 328, baseType: !4855, size: 64, offset: 192)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4852, file: !307, line: 329, baseType: !4855, size: 64, offset: 256)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4852, file: !307, line: 330, baseType: !4855, size: 64, offset: 320)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4852, file: !307, line: 331, baseType: !4746, size: 64, offset: 384)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4852, file: !307, line: 334, baseType: !4871, size: 64, offset: 448)
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4872, size: 64)
!4872 = !DISubroutineType(types: !4873)
!4873 = !{!4874, !580}
!4874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 64)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4852, file: !307, line: 335, baseType: !4876, size: 64, offset: 512)
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = !DISubroutineType(types: !4878)
!4878 = !{!34, !580, !4879}
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4852, file: !307, line: 337, baseType: !4881, size: 64, offset: 576)
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = !DISubroutineType(types: !4883)
!4883 = !{!34, !580, !4874}
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4852, file: !307, line: 339, baseType: !4885, size: 64, offset: 640)
!4885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4886, size: 64)
!4886 = !DISubroutineType(types: !4887)
!4887 = !{!34, !726, !4888}
!4888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !727, file: !14, line: 1199, baseType: !4890, size: 64, offset: 512)
!4890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4891, size: 64)
!4891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4892)
!4892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !307, line: 430, size: 704, elements: !4893)
!4893 = !{!4894, !4900, !4901, !4905, !4906, !4907, !4922, !4945, !4949, !4950, !4973}
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4892, file: !307, line: 431, baseType: !4895, size: 64)
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4896, size: 64)
!4896 = !DISubroutineType(types: !4897)
!4897 = !{!34, !726, !34, !34, !4898}
!4898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4899, size: 64)
!4899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2185)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4892, file: !307, line: 432, baseType: !4746, size: 64, offset: 64)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4892, file: !307, line: 433, baseType: !4902, size: 64, offset: 128)
!4902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4903, size: 64)
!4903 = !DISubroutineType(types: !4904)
!4904 = !{!34, !726, !7}
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4892, file: !307, line: 434, baseType: !4902, size: 64, offset: 192)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4892, file: !307, line: 435, baseType: !4746, size: 64, offset: 256)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4892, file: !307, line: 436, baseType: !4908, size: 64, offset: 320)
!4908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4909, size: 64)
!4909 = !DISubroutineType(types: !4910)
!4910 = !{!34, !726, !34, !4911}
!4911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4912, size: 64)
!4912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !307, line: 417, size: 256, elements: !4913)
!4913 = !{!4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921}
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4912, file: !307, line: 418, baseType: !34, size: 32)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4912, file: !307, line: 419, baseType: !7, size: 32, offset: 32)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4912, file: !307, line: 420, baseType: !7, size: 32, offset: 64)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4912, file: !307, line: 422, baseType: !7, size: 32, offset: 96)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4912, file: !307, line: 423, baseType: !7, size: 32, offset: 128)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4912, file: !307, line: 424, baseType: !7, size: 32, offset: 160)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4912, file: !307, line: 425, baseType: !7, size: 32, offset: 192)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4912, file: !307, line: 426, baseType: !7, size: 32, offset: 224)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4892, file: !307, line: 437, baseType: !4923, size: 64, offset: 384)
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4924, size: 64)
!4924 = !DISubroutineType(types: !4925)
!4925 = !{!34, !726, !4802, !4926}
!4926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4927, size: 64)
!4927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !307, line: 345, size: 960, elements: !4928)
!4928 = !{!4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4942, !4943, !4944}
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4927, file: !307, line: 346, baseType: !34, size: 32)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4927, file: !307, line: 347, baseType: !378, size: 64, offset: 64)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4927, file: !307, line: 348, baseType: !378, size: 64, offset: 128)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4927, file: !307, line: 349, baseType: !378, size: 64, offset: 192)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4927, file: !307, line: 350, baseType: !378, size: 64, offset: 256)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4927, file: !307, line: 351, baseType: !378, size: 64, offset: 320)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4927, file: !307, line: 352, baseType: !378, size: 64, offset: 384)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4927, file: !307, line: 353, baseType: !842, size: 64, offset: 448)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4927, file: !307, line: 355, baseType: !842, size: 64, offset: 512)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4927, file: !307, line: 356, baseType: !34, size: 32, offset: 576)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4927, file: !307, line: 357, baseType: !34, size: 32, offset: 608)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4927, file: !307, line: 358, baseType: !378, size: 64, offset: 640)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4927, file: !307, line: 359, baseType: !378, size: 64, offset: 704)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4927, file: !307, line: 360, baseType: !378, size: 64, offset: 768)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4927, file: !307, line: 361, baseType: !842, size: 64, offset: 832)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4927, file: !307, line: 362, baseType: !34, size: 32, offset: 896)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4892, file: !307, line: 438, baseType: !4946, size: 64, offset: 448)
!4946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4947, size: 64)
!4947 = !DISubroutineType(types: !4948)
!4948 = !{!34, !726, !4888, !4926}
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4892, file: !307, line: 440, baseType: !4923, size: 64, offset: 512)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4892, file: !307, line: 441, baseType: !4951, size: 64, offset: 576)
!4951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4952, size: 64)
!4952 = !DISubroutineType(types: !4953)
!4953 = !{!34, !726, !4954}
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4955, size: 64)
!4955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !307, line: 411, size: 1408, elements: !4956)
!4956 = !{!4957, !4958}
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4955, file: !307, line: 412, baseType: !7, size: 32)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4955, file: !307, line: 413, baseType: !4959, size: 1344, offset: 64)
!4959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4960, size: 1344, elements: !507)
!4960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !307, line: 397, size: 448, elements: !4961)
!4961 = !{!4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4972}
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4960, file: !307, line: 398, baseType: !7, size: 32)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4960, file: !307, line: 399, baseType: !7, size: 32, offset: 32)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4960, file: !307, line: 401, baseType: !7, size: 32, offset: 64)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4960, file: !307, line: 402, baseType: !7, size: 32, offset: 96)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4960, file: !307, line: 403, baseType: !7, size: 32, offset: 128)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4960, file: !307, line: 404, baseType: !7, size: 32, offset: 160)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4960, file: !307, line: 405, baseType: !7, size: 32, offset: 192)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4960, file: !307, line: 406, baseType: !380, size: 64, offset: 256)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4960, file: !307, line: 407, baseType: !4971, size: 64, offset: 320)
!4971 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !37, line: 132, baseType: !378)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4960, file: !307, line: 408, baseType: !4971, size: 64, offset: 384)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4892, file: !307, line: 442, baseType: !4902, size: 64, offset: 640)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !727, file: !14, line: 1200, baseType: !4975, size: 64, offset: 576)
!4975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4976, size: 64)
!4976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4977)
!4977 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !727, file: !14, line: 1201, baseType: !51, size: 64, offset: 640)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !727, file: !14, line: 1202, baseType: !51, size: 64, offset: 704)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !727, file: !14, line: 1203, baseType: !51, size: 64, offset: 768)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !727, file: !14, line: 1204, baseType: !615, size: 64, offset: 832)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !727, file: !14, line: 1205, baseType: !1905, size: 320, offset: 896)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !727, file: !14, line: 1206, baseType: !34, size: 32, offset: 1216)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !727, file: !14, line: 1207, baseType: !61, size: 32, offset: 1248)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !727, file: !14, line: 1209, baseType: !32, size: 64, offset: 1280)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !727, file: !14, line: 1211, baseType: !4987, size: 64, offset: 1344)
!4987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4988, size: 64)
!4988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4989, size: 64)
!4989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4990)
!4990 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !727, file: !14, line: 1223, baseType: !4992, size: 64, offset: 1408)
!4992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !632, line: 34, size: 64, elements: !4993)
!4993 = !{!4994}
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4992, file: !632, line: 35, baseType: !635, size: 64)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !727, file: !14, line: 1224, baseType: !109, size: 128, offset: 1472)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !727, file: !14, line: 1225, baseType: !4997, size: 64, offset: 1600)
!4997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4998, size: 64)
!4998 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !727, file: !14, line: 1226, baseType: !5000, size: 64, offset: 1664)
!5000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5001, size: 64)
!5001 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !727, file: !14, line: 1227, baseType: !5003, size: 64, offset: 1728)
!5003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5004, size: 64)
!5004 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !727, file: !14, line: 1228, baseType: !5006, size: 64, offset: 1792)
!5006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5007, size: 64)
!5007 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !727, file: !14, line: 1229, baseType: !1072, size: 128, offset: 1856)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !727, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !727, file: !14, line: 1231, baseType: !5011, size: 2496, offset: 2048)
!5011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !307, line: 521, size: 2496, elements: !5012)
!5012 = !{!5013, !5014, !5015, !5017, !5049}
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5011, file: !307, line: 522, baseType: !7, size: 32)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !5011, file: !307, line: 523, baseType: !1905, size: 320, offset: 64)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !5011, file: !307, line: 524, baseType: !5016, size: 192, offset: 384)
!5016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !580, size: 192, elements: !507)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5011, file: !307, line: 525, baseType: !5018, size: 1728, offset: 576)
!5018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5019, size: 1728, elements: !507)
!5019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !307, line: 222, size: 576, elements: !5020)
!5020 = !{!5021, !5041, !5042, !5043, !5044, !5045, !5046, !5047, !5048}
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !5019, file: !307, line: 223, baseType: !5022, size: 64)
!5022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5023, size: 64)
!5023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !307, line: 445, size: 256, elements: !5024)
!5024 = !{!5025, !5026, !5039, !5040}
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !5023, file: !307, line: 446, baseType: !34, size: 32)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !5023, file: !307, line: 447, baseType: !5027, size: 64, offset: 64)
!5027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5028, size: 64)
!5028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5029)
!5029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !307, line: 312, size: 512, elements: !5030)
!5030 = !{!5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038}
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !5029, file: !307, line: 313, baseType: !4746, size: 64)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !5029, file: !307, line: 314, baseType: !4746, size: 64, offset: 64)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !5029, file: !307, line: 315, baseType: !4746, size: 64, offset: 128)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !5029, file: !307, line: 316, baseType: !4746, size: 64, offset: 192)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !5029, file: !307, line: 317, baseType: !4855, size: 64, offset: 256)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !5029, file: !307, line: 318, baseType: !4855, size: 64, offset: 320)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !5029, file: !307, line: 319, baseType: !4855, size: 64, offset: 384)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !5029, file: !307, line: 320, baseType: !4885, size: 64, offset: 448)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !5023, file: !307, line: 448, baseType: !762, size: 64, offset: 128)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !5023, file: !307, line: 449, baseType: !5022, size: 64, offset: 192)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !5019, file: !307, line: 224, baseType: !34, size: 32, offset: 64)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !5019, file: !307, line: 226, baseType: !109, size: 128, offset: 128)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !5019, file: !307, line: 227, baseType: !51, size: 64, offset: 256)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !5019, file: !307, line: 228, baseType: !7, size: 32, offset: 320)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !5019, file: !307, line: 229, baseType: !7, size: 32, offset: 352)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !5019, file: !307, line: 230, baseType: !4823, size: 64, offset: 384)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !5019, file: !307, line: 231, baseType: !4823, size: 64, offset: 448)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !5019, file: !307, line: 232, baseType: !32, size: 64, offset: 512)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5011, file: !307, line: 526, baseType: !5050, size: 192, offset: 2304)
!5050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5027, size: 192, elements: !507)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !727, file: !14, line: 1233, baseType: !5052, size: 2368, offset: 4544)
!5052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !5053)
!5053 = !{!5054, !5055, !5056}
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !5052, file: !14, line: 1185, baseType: !38, size: 16)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !5052, file: !14, line: 1186, baseType: !38, size: 16, offset: 16)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !5052, file: !14, line: 1187, baseType: !5057, size: 2304, offset: 64)
!5057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5058, size: 2304, elements: !507)
!5058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !5059, line: 12, size: 768, elements: !5060)
!5059 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!5060 = !{!5061, !5069, !5070, !5071, !5072}
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !5058, file: !5059, line: 13, baseType: !5062, size: 384)
!5062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !5063, line: 17, size: 384, elements: !5064)
!5063 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!5064 = !{!5065, !5066, !5067, !5068}
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !5062, file: !5063, line: 18, baseType: !34, size: 32)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !5062, file: !5063, line: 19, baseType: !34, size: 32, offset: 32)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !5062, file: !5063, line: 20, baseType: !66, size: 192, offset: 64)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !5062, file: !5063, line: 22, baseType: !1048, size: 128, align: 64, offset: 256)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !5058, file: !5059, line: 14, baseType: !904, size: 64, offset: 384)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !5058, file: !5059, line: 15, baseType: !4513, size: 64, offset: 448)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !5058, file: !5059, line: 16, baseType: !66, size: 192, offset: 512)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !5058, file: !5059, line: 17, baseType: !61, size: 32, offset: 704)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !727, file: !14, line: 1240, baseType: !32, size: 64, offset: 6912)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !727, file: !14, line: 1243, baseType: !390, size: 32, offset: 6976)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !727, file: !14, line: 1245, baseType: !1921, size: 64, offset: 7040)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !727, file: !14, line: 1246, baseType: !1921, size: 64, offset: 7104)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !727, file: !14, line: 1248, baseType: !391, size: 32, offset: 7168)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !727, file: !14, line: 1249, baseType: !5079, size: 64, offset: 7232)
!5079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5080, size: 64)
!5080 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !727, file: !14, line: 1252, baseType: !3506, size: 256, offset: 7296)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !727, file: !14, line: 1253, baseType: !5083, size: 128, offset: 7552)
!5083 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !5084, line: 21, baseType: !5085)
!5084 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!5085 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5084, line: 19, size: 128, elements: !5086)
!5086 = !{!5087}
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !5085, file: !5084, line: 20, baseType: !5088, size: 128)
!5088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 128, elements: !431)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !727, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !727, file: !14, line: 1261, baseType: !832, size: 256, offset: 7744)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !727, file: !14, line: 1267, baseType: !28, size: 64, offset: 8000)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !727, file: !14, line: 1269, baseType: !673, size: 64, offset: 8064)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !727, file: !14, line: 1271, baseType: !5094, size: 448, offset: 8128)
!5094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4838, line: 63, size: 448, elements: !5095)
!5095 = !{!5096, !5101, !5102, !5103, !5104, !5105, !5106}
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !5094, file: !4838, line: 64, baseType: !5097, size: 64)
!5097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5098, size: 64)
!5098 = !DISubroutineType(types: !5099)
!5099 = !{!51, !5100, !4836}
!5100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5094, size: 64)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !5094, file: !4838, line: 66, baseType: !5097, size: 64, offset: 64)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !5094, file: !4838, line: 69, baseType: !541, size: 64, offset: 128)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !5094, file: !4838, line: 70, baseType: !34, size: 32, offset: 192)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5094, file: !4838, line: 71, baseType: !7, size: 32, offset: 224)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5094, file: !4838, line: 74, baseType: !109, size: 128, offset: 256)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !5094, file: !4838, line: 85, baseType: !5107, size: 64, offset: 384)
!5107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !727, file: !14, line: 1274, baseType: !836, size: 64, offset: 8576)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !727, file: !14, line: 1280, baseType: !836, size: 64, offset: 8640)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !727, file: !14, line: 1283, baseType: !34, size: 32, offset: 8704)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !727, file: !14, line: 1286, baseType: !2692, size: 32, offset: 8736)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !727, file: !14, line: 1289, baseType: !1148, size: 64, offset: 8768)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !727, file: !14, line: 1290, baseType: !1366, size: 64, offset: 8832)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !727, file: !14, line: 1297, baseType: !1844, size: 64, offset: 8896)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !727, file: !14, line: 1304, baseType: !5116, size: 64, offset: 8960)
!5116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !5117, line: 49, size: 64, elements: !5118)
!5117 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!5118 = !{!5119}
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5116, file: !5117, line: 50, baseType: !5120, size: 64)
!5120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5121, size: 64)
!5121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !5117, line: 41, size: 512, align: 512, elements: !5122)
!5122 = !{!5123, !5124, !5129}
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5121, file: !5117, line: 43, baseType: !71, size: 32)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5121, file: !5117, line: 45, baseType: !5125, size: 192, offset: 64)
!5125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !5117, line: 29, size: 192, elements: !5126)
!5126 = !{!5127, !5128}
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5125, file: !5117, line: 30, baseType: !109, size: 128)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !5125, file: !5117, line: 32, baseType: !541, size: 64, offset: 128)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !5121, file: !5117, line: 46, baseType: !541, size: 64, offset: 256)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !727, file: !14, line: 1305, baseType: !5116, size: 64, offset: 9024)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !727, file: !14, line: 1306, baseType: !1048, size: 128, align: 64, offset: 9088)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !727, file: !14, line: 1307, baseType: !1086, size: 256, offset: 9216)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !727, file: !14, line: 1309, baseType: !832, size: 256, offset: 9472)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !727, file: !14, line: 1314, baseType: !34, size: 32, offset: 9728)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !727, file: !14, line: 1317, baseType: !71, size: 32, align: 512, offset: 10240)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !727, file: !14, line: 1318, baseType: !109, size: 128, offset: 10304)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !727, file: !14, line: 1320, baseType: !71, size: 32, offset: 10432)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !727, file: !14, line: 1321, baseType: !109, size: 128, offset: 10496)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !721, file: !722, line: 73, baseType: !34, size: 32, offset: 128)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !721, file: !722, line: 74, baseType: !5141, size: 64, offset: 192)
!5141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5142, size: 64)
!5142 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !2115, line: 42, flags: DIFlagFwdDecl)
!5143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !675, file: !617, line: 141, baseType: !5145, size: 64, offset: 704)
!5145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5146, size: 64)
!5146 = !DISubroutineType(types: !5147)
!5147 = !{!34, !4898, !459}
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !675, file: !617, line: 142, baseType: !5149, size: 64, offset: 768)
!5149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5150, size: 64)
!5150 = !DISubroutineType(types: !5151)
!5151 = !{!615, !615, !5152}
!5152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5153, size: 64)
!5153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !581)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !616, file: !617, line: 96, baseType: !726, size: 64, offset: 832)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !616, file: !617, line: 97, baseType: !51, size: 64, offset: 896)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !616, file: !617, line: 98, baseType: !32, size: 64, offset: 960)
!5157 = !DIDerivedType(tag: DW_TAG_member, scope: !616, file: !617, line: 100, baseType: !5158, size: 128, offset: 1024)
!5158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !616, file: !617, line: 100, size: 128, elements: !5159)
!5159 = !{!5160, !5161}
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !5158, file: !617, line: 101, baseType: !109, size: 128)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !5158, file: !617, line: 102, baseType: !2272, size: 64)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !616, file: !617, line: 104, baseType: !109, size: 128, offset: 1152)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !616, file: !617, line: 105, baseType: !109, size: 128, offset: 1280)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !616, file: !617, line: 113, baseType: !5165, size: 128, offset: 1408)
!5165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !616, file: !617, line: 109, size: 128, elements: !5166)
!5166 = !{!5167, !5168, !5169}
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !5165, file: !617, line: 110, baseType: !1072, size: 128)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !5165, file: !617, line: 111, baseType: !631, size: 128)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !5165, file: !617, line: 112, baseType: !1048, size: 128, align: 64)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !609, file: !14, line: 1968, baseType: !5171, size: 64, offset: 64)
!5171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5172, size: 64)
!5172 = !DISubroutineType(types: !5173)
!5173 = !{!28, !615, !580, !5174}
!5174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5175, size: 64)
!5175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !5176, line: 10, size: 128, elements: !5177)
!5176 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!5177 = !{!5178, !5179}
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !5175, file: !5176, line: 11, baseType: !875, size: 64)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5175, file: !5176, line: 12, baseType: !32, size: 64, offset: 64)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !609, file: !14, line: 1969, baseType: !5181, size: 64, offset: 128)
!5181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5182, size: 64)
!5182 = !DISubroutineType(types: !5183)
!5183 = !{!34, !5141, !580, !34}
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !609, file: !14, line: 1970, baseType: !5185, size: 64, offset: 192)
!5185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5186, size: 64)
!5186 = !DISubroutineType(types: !5187)
!5187 = !{!603, !580, !34, !459}
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !609, file: !14, line: 1972, baseType: !5189, size: 64, offset: 256)
!5189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5190, size: 64)
!5190 = !DISubroutineType(types: !5191)
!5191 = !{!34, !615, !506, !34}
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !609, file: !14, line: 1974, baseType: !5193, size: 64, offset: 320)
!5193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5194, size: 64)
!5194 = !DISubroutineType(types: !5195)
!5195 = !{!34, !5141, !580, !615, !36, !459}
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !609, file: !14, line: 1976, baseType: !5197, size: 64, offset: 384)
!5197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5198, size: 64)
!5198 = !DISubroutineType(types: !5199)
!5199 = !{!34, !615, !580, !615}
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !609, file: !14, line: 1977, baseType: !5201, size: 64, offset: 448)
!5201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5202, size: 64)
!5202 = !DISubroutineType(types: !5203)
!5203 = !{!34, !580, !615}
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !609, file: !14, line: 1978, baseType: !5205, size: 64, offset: 512)
!5205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5206, size: 64)
!5206 = !DISubroutineType(types: !5207)
!5207 = !{!34, !5141, !580, !615, !28}
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !609, file: !14, line: 1980, baseType: !5209, size: 64, offset: 576)
!5209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5210, size: 64)
!5210 = !DISubroutineType(types: !5211)
!5211 = !{!34, !5141, !580, !615, !36}
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !609, file: !14, line: 1982, baseType: !5201, size: 64, offset: 640)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !609, file: !14, line: 1983, baseType: !5214, size: 64, offset: 704)
!5214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5215, size: 64)
!5215 = !DISubroutineType(types: !5216)
!5216 = !{!34, !5141, !580, !615, !36, !731}
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !609, file: !14, line: 1985, baseType: !5218, size: 64, offset: 768)
!5218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5219, size: 64)
!5219 = !DISubroutineType(types: !5220)
!5220 = !{!34, !5141, !580, !615, !580, !615, !7}
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !609, file: !14, line: 1987, baseType: !5222, size: 64, offset: 832)
!5222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5223, size: 64)
!5223 = !DISubroutineType(types: !5224)
!5224 = !{!34, !5141, !615, !5225}
!5225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5226, size: 64)
!5226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !5227)
!5227 = !{!5228, !5229, !5230, !5240, !5249, !5250, !5255, !5256, !5257}
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !5226, file: !14, line: 227, baseType: !7, size: 32)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !5226, file: !14, line: 228, baseType: !36, size: 16, offset: 32)
!5230 = !DIDerivedType(tag: DW_TAG_member, scope: !5226, file: !14, line: 241, baseType: !5231, size: 32, offset: 64)
!5231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5226, file: !14, line: 241, size: 32, elements: !5232)
!5232 = !{!5233, !5234}
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !5231, file: !14, line: 242, baseType: !586, size: 32)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !5231, file: !14, line: 243, baseType: !5235, size: 32)
!5235 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !5236, line: 16, baseType: !5237)
!5236 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!5237 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5236, line: 14, size: 32, elements: !5238)
!5238 = !{!5239}
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5237, file: !5236, line: 15, baseType: !591, size: 32)
!5240 = !DIDerivedType(tag: DW_TAG_member, scope: !5226, file: !14, line: 245, baseType: !5241, size: 32, offset: 96)
!5241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5226, file: !14, line: 245, size: 32, elements: !5242)
!5242 = !{!5243, !5244}
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !5241, file: !14, line: 246, baseType: !595, size: 32)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !5241, file: !14, line: 247, baseType: !5245, size: 32)
!5245 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !5236, line: 20, baseType: !5246)
!5246 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5236, line: 18, size: 32, elements: !5247)
!5247 = !{!5248}
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5246, file: !5236, line: 19, baseType: !599, size: 32)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !5226, file: !14, line: 249, baseType: !53, size: 64, offset: 128)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !5226, file: !14, line: 250, baseType: !5251, size: 128, offset: 192)
!5251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1922, line: 13, size: 128, elements: !5252)
!5252 = !{!5253, !5254}
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5251, file: !1922, line: 14, baseType: !1921, size: 64)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5251, file: !1922, line: 15, baseType: !541, size: 64, offset: 64)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !5226, file: !14, line: 251, baseType: !5251, size: 128, offset: 320)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !5226, file: !14, line: 252, baseType: !5251, size: 128, offset: 448)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !5226, file: !14, line: 259, baseType: !1755, size: 64, offset: 576)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !609, file: !14, line: 1988, baseType: !5259, size: 64, offset: 896)
!5259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5260, size: 64)
!5260 = !DISubroutineType(types: !5261)
!5261 = !{!34, !5141, !4898, !5262, !390, !7}
!5262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5263, size: 64)
!5263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !5264, line: 22, size: 1280, elements: !5265)
!5264 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!5265 = !{!5266, !5267, !5268, !5269, !5270, !5271, !5272, !5273, !5274, !5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5283, !5284, !5285, !5286}
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !5263, file: !5264, line: 23, baseType: !390, size: 32)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5263, file: !5264, line: 24, baseType: !36, size: 16, offset: 32)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !5263, file: !5264, line: 25, baseType: !7, size: 32, offset: 64)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !5263, file: !5264, line: 26, baseType: !1929, size: 32, offset: 96)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !5263, file: !5264, line: 27, baseType: !378, size: 64, offset: 128)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !5263, file: !5264, line: 28, baseType: !378, size: 64, offset: 192)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !5263, file: !5264, line: 41, baseType: !378, size: 64, offset: 256)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5263, file: !5264, line: 42, baseType: !731, size: 32, offset: 320)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !5263, file: !5264, line: 43, baseType: !731, size: 32, offset: 352)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5263, file: !5264, line: 44, baseType: !586, size: 32, offset: 384)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !5263, file: !5264, line: 45, baseType: !595, size: 32, offset: 416)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5263, file: !5264, line: 46, baseType: !53, size: 64, offset: 448)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !5263, file: !5264, line: 47, baseType: !5251, size: 128, offset: 512)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !5263, file: !5264, line: 48, baseType: !5251, size: 128, offset: 640)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !5263, file: !5264, line: 49, baseType: !5251, size: 128, offset: 768)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !5263, file: !5264, line: 50, baseType: !5251, size: 128, offset: 896)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !5263, file: !5264, line: 51, baseType: !378, size: 64, offset: 1024)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !5263, file: !5264, line: 52, baseType: !378, size: 64, offset: 1088)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !5263, file: !5264, line: 53, baseType: !390, size: 32, offset: 1152)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !5263, file: !5264, line: 54, baseType: !390, size: 32, offset: 1184)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !5263, file: !5264, line: 55, baseType: !378, size: 64, offset: 1216)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !609, file: !14, line: 1990, baseType: !5288, size: 64, offset: 960)
!5288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5289, size: 64)
!5289 = !DISubroutineType(types: !5290)
!5290 = !{!538, !615, !506, !47}
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !609, file: !14, line: 1991, baseType: !5292, size: 64, offset: 1024)
!5292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5293, size: 64)
!5293 = !DISubroutineType(types: !5294)
!5294 = !{!34, !580, !5295, !378, !378}
!5295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5296, size: 64)
!5296 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !609, file: !14, line: 1993, baseType: !5298, size: 64, offset: 1088)
!5298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5299, size: 64)
!5299 = !DISubroutineType(types: !5300)
!5300 = !{!34, !580, !34}
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !609, file: !14, line: 1994, baseType: !5302, size: 64, offset: 1152)
!5302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5303, size: 64)
!5303 = !DISubroutineType(types: !5304)
!5304 = !{!34, !580, !615, !1755, !7, !36}
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !609, file: !14, line: 1997, baseType: !5306, size: 64, offset: 1216)
!5306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5307, size: 64)
!5307 = !DISubroutineType(types: !5308)
!5308 = !{!34, !5141, !580, !1755, !36}
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !609, file: !14, line: 1999, baseType: !5310, size: 64, offset: 1280)
!5310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5311, size: 64)
!5311 = !DISubroutineType(types: !5312)
!5312 = !{!603, !5141, !615, !34}
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !609, file: !14, line: 2001, baseType: !5314, size: 64, offset: 1344)
!5314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5315, size: 64)
!5315 = !DISubroutineType(types: !5316)
!5316 = !{!34, !5141, !615, !603, !34}
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !609, file: !14, line: 2003, baseType: !5318, size: 64, offset: 1408)
!5318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5319, size: 64)
!5319 = !DISubroutineType(types: !5320)
!5320 = !{!34, !5141, !615, !5321}
!5321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5322, size: 64)
!5322 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !609, file: !14, line: 2005, baseType: !5324, size: 64, offset: 1472)
!5324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5325, size: 64)
!5325 = !DISubroutineType(types: !5326)
!5326 = !{!34, !615, !5321}
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !609, file: !14, line: 2006, baseType: !5328, size: 64, offset: 1536)
!5328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5329, size: 64)
!5329 = !DISubroutineType(types: !5330)
!5330 = !{!5331, !580}
!5331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5332, size: 64)
!5332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !5333)
!5333 = !{!5334, !5335}
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5332, file: !14, line: 3193, baseType: !1822, size: 128)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !5332, file: !14, line: 3194, baseType: !390, size: 32, offset: 128)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !581, file: !14, line: 655, baseType: !726, size: 64, offset: 448)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !581, file: !14, line: 656, baseType: !576, size: 64, offset: 512)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !581, file: !14, line: 659, baseType: !32, size: 64, offset: 576)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !581, file: !14, line: 663, baseType: !51, size: 64, offset: 640)
!5340 = !DIDerivedType(tag: DW_TAG_member, scope: !581, file: !14, line: 671, baseType: !5341, size: 32, offset: 704)
!5341 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !581, file: !14, line: 671, size: 32, elements: !5342)
!5342 = !{!5343, !5344}
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !5341, file: !14, line: 672, baseType: !1196, size: 32)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !5341, file: !14, line: 673, baseType: !7, size: 32)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !581, file: !14, line: 675, baseType: !731, size: 32, offset: 736)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !581, file: !14, line: 676, baseType: !53, size: 64, offset: 768)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !581, file: !14, line: 677, baseType: !5251, size: 128, offset: 832)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !581, file: !14, line: 678, baseType: !5251, size: 128, offset: 960)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !581, file: !14, line: 679, baseType: !5251, size: 128, offset: 1088)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !581, file: !14, line: 680, baseType: !71, size: 32, offset: 1216)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !581, file: !14, line: 681, baseType: !38, size: 16, offset: 1248)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !581, file: !14, line: 682, baseType: !95, size: 8, offset: 1264)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !581, file: !14, line: 683, baseType: !95, size: 8, offset: 1272)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !581, file: !14, line: 684, baseType: !4971, size: 64, offset: 1280)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !581, file: !14, line: 691, baseType: !51, size: 64, offset: 1344)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !581, file: !14, line: 692, baseType: !1905, size: 320, offset: 1408)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !581, file: !14, line: 694, baseType: !51, size: 64, offset: 1728)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !581, file: !14, line: 695, baseType: !51, size: 64, offset: 1792)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !581, file: !14, line: 697, baseType: !1072, size: 128, offset: 1856)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !581, file: !14, line: 698, baseType: !109, size: 128, offset: 1984)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !581, file: !14, line: 707, baseType: !109, size: 128, offset: 2112)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !581, file: !14, line: 708, baseType: !109, size: 128, offset: 2240)
!5363 = !DIDerivedType(tag: DW_TAG_member, scope: !581, file: !14, line: 709, baseType: !5364, size: 128, offset: 2368)
!5364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !581, file: !14, line: 709, size: 128, elements: !5365)
!5365 = !{!5366, !5367}
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5364, file: !14, line: 710, baseType: !1366, size: 64)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5364, file: !14, line: 711, baseType: !1048, size: 128, align: 64)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !581, file: !14, line: 713, baseType: !838, size: 64, offset: 2496)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !581, file: !14, line: 714, baseType: !838, size: 64, offset: 2560)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !581, file: !14, line: 715, baseType: !61, size: 32, offset: 2624)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !581, file: !14, line: 716, baseType: !61, size: 32, offset: 2656)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !581, file: !14, line: 717, baseType: !61, size: 32, offset: 2688)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !581, file: !14, line: 719, baseType: !61, size: 32, offset: 2720)
!5374 = !DIDerivedType(tag: DW_TAG_member, scope: !581, file: !14, line: 721, baseType: !5375, size: 64, offset: 2752)
!5375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !581, file: !14, line: 721, size: 64, elements: !5376)
!5376 = !{!5377, !5378}
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5375, file: !14, line: 722, baseType: !2192, size: 64)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5375, file: !14, line: 723, baseType: !4725, size: 64)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !581, file: !14, line: 725, baseType: !5380, size: 64, offset: 2816)
!5380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5381, size: 64)
!5381 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !581, file: !14, line: 726, baseType: !577, size: 1536, align: 64, offset: 2880)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !581, file: !14, line: 727, baseType: !109, size: 128, offset: 4416)
!5384 = !DIDerivedType(tag: DW_TAG_member, scope: !581, file: !14, line: 728, baseType: !5385, size: 64, offset: 4544)
!5385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !581, file: !14, line: 728, size: 64, elements: !5386)
!5386 = !{!5387, !5388, !5391, !5392}
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5385, file: !14, line: 729, baseType: !2605, size: 64)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5385, file: !14, line: 730, baseType: !5389, size: 64)
!5389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5390, size: 64)
!5390 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5385, file: !14, line: 731, baseType: !506, size: 64)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5385, file: !14, line: 732, baseType: !7, size: 32)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !581, file: !14, line: 735, baseType: !391, size: 32, offset: 4608)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !581, file: !14, line: 738, baseType: !391, size: 32, offset: 4640)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !581, file: !14, line: 739, baseType: !5079, size: 64, offset: 4672)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !581, file: !14, line: 750, baseType: !32, size: 64, offset: 4736)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !577, file: !14, line: 474, baseType: !1822, size: 128, offset: 64)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !577, file: !14, line: 475, baseType: !1905, size: 320, offset: 192)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !577, file: !14, line: 476, baseType: !1827, size: 32, offset: 512)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !577, file: !14, line: 477, baseType: !61, size: 32, offset: 544)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !577, file: !14, line: 482, baseType: !1621, size: 128, offset: 576)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !577, file: !14, line: 483, baseType: !51, size: 64, offset: 704)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !577, file: !14, line: 484, baseType: !51, size: 64, offset: 768)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !577, file: !14, line: 485, baseType: !5405, size: 64, offset: 832)
!5405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5406, size: 64)
!5406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5407)
!5407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !5408)
!5408 = !{!5409, !5413, !5483, !5487, !5491, !5497, !5501, !5505, !5510, !5514, !5518, !5522, !5523, !5527, !5531, !5535, !5540, !5544, !5551, !5552}
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !5407, file: !14, line: 405, baseType: !5410, size: 64)
!5410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5411, size: 64)
!5411 = !DISubroutineType(types: !5412)
!5412 = !{!34, !2392, !4737}
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !5407, file: !14, line: 406, baseType: !5414, size: 64, offset: 64)
!5414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5415, size: 64)
!5415 = !DISubroutineType(types: !5416)
!5416 = !{!34, !1755, !5417}
!5417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5418, size: 64)
!5418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !126, line: 293, size: 1536, elements: !5419)
!5419 = !{!5420, !5450, !5464}
!5420 = !DIDerivedType(tag: DW_TAG_member, scope: !5418, file: !126, line: 295, baseType: !5421, size: 512)
!5421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5418, file: !126, line: 295, size: 512, elements: !5422)
!5422 = !{!5423, !5449}
!5423 = !DIDerivedType(tag: DW_TAG_member, scope: !5421, file: !126, line: 296, baseType: !5424, size: 448)
!5424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5421, file: !126, line: 296, size: 448, elements: !5425)
!5425 = !{!5426, !5427, !5436, !5437, !5438, !5447, !5448}
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5424, file: !126, line: 298, baseType: !51, size: 64)
!5427 = !DIDerivedType(tag: DW_TAG_member, scope: !5424, file: !126, line: 299, baseType: !5428, size: 128, offset: 64)
!5428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5424, file: !126, line: 299, size: 128, elements: !5429)
!5429 = !{!5430, !5431}
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5428, file: !126, line: 300, baseType: !109, size: 128)
!5431 = !DIDerivedType(tag: DW_TAG_member, scope: !5428, file: !126, line: 302, baseType: !5432, size: 128)
!5432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5428, file: !126, line: 302, size: 128, elements: !5433)
!5433 = !{!5434, !5435}
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !5432, file: !126, line: 303, baseType: !32, size: 64)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !5432, file: !126, line: 305, baseType: !7, size: 32, offset: 64)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !5424, file: !126, line: 310, baseType: !576, size: 64, offset: 192)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5424, file: !126, line: 311, baseType: !51, size: 64, offset: 256)
!5438 = !DIDerivedType(tag: DW_TAG_member, scope: !5424, file: !126, line: 312, baseType: !5439, size: 64, offset: 320)
!5439 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5424, file: !126, line: 312, size: 64, elements: !5440)
!5440 = !{!5441, !5442}
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5439, file: !126, line: 313, baseType: !32, size: 64)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !5439, file: !126, line: 314, baseType: !5443, size: 64)
!5443 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !126, line: 257, baseType: !5444)
!5444 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 255, size: 64, elements: !5445)
!5445 = !{!5446}
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5444, file: !126, line: 256, baseType: !51, size: 64)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !5424, file: !126, line: 316, baseType: !61, size: 32, offset: 384)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !5424, file: !126, line: 317, baseType: !61, size: 32, offset: 416)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5421, file: !126, line: 323, baseType: !2393, size: 512, align: 128)
!5450 = !DIDerivedType(tag: DW_TAG_member, scope: !5418, file: !126, line: 325, baseType: !5451, size: 512, offset: 512)
!5451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5418, file: !126, line: 325, size: 512, elements: !5452)
!5452 = !{!5453, !5463}
!5453 = !DIDerivedType(tag: DW_TAG_member, scope: !5451, file: !126, line: 326, baseType: !5454, size: 320)
!5454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5451, file: !126, line: 326, size: 320, elements: !5455)
!5455 = !{!5456, !5457, !5458, !5459, !5460, !5461, !5462}
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !5454, file: !126, line: 327, baseType: !51, size: 64)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !5454, file: !126, line: 328, baseType: !51, size: 64, offset: 64)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !5454, file: !126, line: 329, baseType: !51, size: 64, offset: 128)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !5454, file: !126, line: 331, baseType: !61, size: 32, offset: 192)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !5454, file: !126, line: 332, baseType: !61, size: 32, offset: 224)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !5454, file: !126, line: 333, baseType: !61, size: 32, offset: 256)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !5454, file: !126, line: 335, baseType: !7, size: 32, offset: 288)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !5451, file: !126, line: 339, baseType: !2393, size: 512, align: 128)
!5464 = !DIDerivedType(tag: DW_TAG_member, scope: !5418, file: !126, line: 341, baseType: !5465, size: 512, offset: 1024)
!5465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5418, file: !126, line: 341, size: 512, elements: !5466)
!5466 = !{!5467, !5476, !5482}
!5467 = !DIDerivedType(tag: DW_TAG_member, scope: !5465, file: !126, line: 342, baseType: !5468, size: 384)
!5468 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5465, file: !126, line: 342, size: 384, elements: !5469)
!5469 = !{!5470, !5471, !5472, !5473, !5474, !5475}
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !5468, file: !126, line: 343, baseType: !51, size: 64)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !5468, file: !126, line: 344, baseType: !51, size: 64, offset: 64)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !5468, file: !126, line: 346, baseType: !32, size: 64, offset: 128)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !5468, file: !126, line: 347, baseType: !32, size: 64, offset: 192)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !5468, file: !126, line: 348, baseType: !32, size: 64, offset: 256)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !5468, file: !126, line: 349, baseType: !32, size: 64, offset: 320)
!5476 = !DIDerivedType(tag: DW_TAG_member, scope: !5465, file: !126, line: 352, baseType: !5477, size: 256)
!5477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5465, file: !126, line: 352, size: 256, elements: !5478)
!5478 = !{!5479, !5480, !5481}
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !5477, file: !126, line: 353, baseType: !51, size: 64)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !5477, file: !126, line: 354, baseType: !51, size: 64, offset: 64)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !5477, file: !126, line: 356, baseType: !109, size: 128, offset: 128)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !5465, file: !126, line: 359, baseType: !2393, size: 512, align: 128)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !5407, file: !14, line: 409, baseType: !5484, size: 64, offset: 128)
!5484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5485, size: 64)
!5485 = !DISubroutineType(types: !5486)
!5486 = !{!34, !576, !4737}
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !5407, file: !14, line: 412, baseType: !5488, size: 64, offset: 192)
!5488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5489, size: 64)
!5489 = !DISubroutineType(types: !5490)
!5490 = !{!459, !576, !5417}
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !5407, file: !14, line: 414, baseType: !5492, size: 64, offset: 256)
!5492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5493, size: 64)
!5493 = !DISubroutineType(types: !5494)
!5494 = !{null, !5495}
!5495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5496, size: 64)
!5496 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !5407, file: !14, line: 416, baseType: !5498, size: 64, offset: 320)
!5498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5499, size: 64)
!5499 = !DISubroutineType(types: !5500)
!5500 = !{!34, !1755, !576, !53, !7, !3913, !2620}
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !5407, file: !14, line: 419, baseType: !5502, size: 64, offset: 384)
!5502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5503, size: 64)
!5503 = !DISubroutineType(types: !5504)
!5504 = !{!34, !1755, !576, !53, !7, !7, !2392, !32}
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !5407, file: !14, line: 424, baseType: !5506, size: 64, offset: 448)
!5506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5507, size: 64)
!5507 = !DISubroutineType(types: !5508)
!5508 = !{!5509, !576, !5509}
!5509 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !37, line: 131, baseType: !378)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !5407, file: !14, line: 425, baseType: !5511, size: 64, offset: 512)
!5511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5512, size: 64)
!5512 = !DISubroutineType(types: !5513)
!5513 = !{null, !5417, !47, !47}
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !5407, file: !14, line: 426, baseType: !5515, size: 64, offset: 576)
!5515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5516, size: 64)
!5516 = !DISubroutineType(types: !5517)
!5517 = !{!459, !5417, !1827}
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !5407, file: !14, line: 427, baseType: !5519, size: 64, offset: 640)
!5519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5520, size: 64)
!5520 = !DISubroutineType(types: !5521)
!5521 = !{null, !5417}
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !5407, file: !14, line: 428, baseType: !2210, size: 64, offset: 704)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !5407, file: !14, line: 433, baseType: !5524, size: 64, offset: 768)
!5524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5525, size: 64)
!5525 = !DISubroutineType(types: !5526)
!5526 = !{!34, !576, !5417, !5417, !312}
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !5407, file: !14, line: 435, baseType: !5528, size: 64, offset: 832)
!5528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5529, size: 64)
!5529 = !DISubroutineType(types: !5530)
!5530 = !{!34, !5417}
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !5407, file: !14, line: 436, baseType: !5532, size: 64, offset: 896)
!5532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5533, size: 64)
!5533 = !DISubroutineType(types: !5534)
!5534 = !{!459, !5417, !47, !47}
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !5407, file: !14, line: 438, baseType: !5536, size: 64, offset: 960)
!5536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5537, size: 64)
!5537 = !DISubroutineType(types: !5538)
!5538 = !{null, !5417, !5539, !5539}
!5539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !5407, file: !14, line: 439, baseType: !5541, size: 64, offset: 1024)
!5541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5542, size: 64)
!5542 = !DISubroutineType(types: !5543)
!5543 = !{!34, !576, !2392}
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !5407, file: !14, line: 442, baseType: !5545, size: 64, offset: 1088)
!5545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5546, size: 64)
!5546 = !DISubroutineType(types: !5547)
!5547 = !{!34, !5548, !1755, !5550}
!5548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5549, size: 64)
!5549 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!5550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5509, size: 64)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !5407, file: !14, line: 444, baseType: !2612, size: 64, offset: 1152)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !5407, file: !14, line: 445, baseType: !5553, size: 64, offset: 1216)
!5553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5554, size: 64)
!5554 = !DISubroutineType(types: !5555)
!5555 = !{!34, !2213, !2235}
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !577, file: !14, line: 486, baseType: !51, size: 64, offset: 896)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !577, file: !14, line: 487, baseType: !1905, size: 320, offset: 960)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !577, file: !14, line: 488, baseType: !2692, size: 32, offset: 1280)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !577, file: !14, line: 489, baseType: !71, size: 32, offset: 1312)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !577, file: !14, line: 490, baseType: !109, size: 128, offset: 1344)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !577, file: !14, line: 491, baseType: !32, size: 64, offset: 1472)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !567, file: !532, line: 180, baseType: !5563, size: 64, offset: 320)
!5563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5564, size: 64)
!5564 = !DISubroutineType(types: !5565)
!5565 = !{!538, !1755, !471, !566, !506, !53, !47}
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !567, file: !532, line: 182, baseType: !5563, size: 64, offset: 384)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !567, file: !532, line: 184, baseType: !5568, size: 64, offset: 448)
!5568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5569, size: 64)
!5569 = !DISubroutineType(types: !5570)
!5570 = !{!34, !1755, !471, !566, !2283}
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !555, file: !532, line: 90, baseType: !5572, size: 64, offset: 192)
!5572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !555, file: !532, line: 91, baseType: !5574, size: 64, offset: 256)
!5574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !522, file: !466, line: 120, baseType: !5576, size: 64, offset: 192)
!5576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5577, size: 64)
!5577 = !DISubroutineType(types: !5578)
!5578 = !{!5579, !489}
!5579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5580, size: 64)
!5580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5581)
!5581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !259, line: 39, size: 384, elements: !5582)
!5582 = !{!5583, !5584, !5588, !5592, !5598, !5602}
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5581, file: !259, line: 40, baseType: !258, size: 32)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !5581, file: !259, line: 41, baseType: !5585, size: 64, offset: 64)
!5585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5586, size: 64)
!5586 = !DISubroutineType(types: !5587)
!5587 = !{!459}
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !5581, file: !259, line: 42, baseType: !5589, size: 64, offset: 128)
!5589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5590, size: 64)
!5590 = !DISubroutineType(types: !5591)
!5591 = !{!32}
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !5581, file: !259, line: 43, baseType: !5593, size: 64, offset: 192)
!5593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5594, size: 64)
!5594 = !DISubroutineType(types: !5595)
!5595 = !{!2781, !5596}
!5596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5597, size: 64)
!5597 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !259, line: 19, flags: DIFlagFwdDecl)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !5581, file: !259, line: 44, baseType: !5599, size: 64, offset: 256)
!5599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5600, size: 64)
!5600 = !DISubroutineType(types: !5601)
!5601 = !{!2781}
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !5581, file: !259, line: 45, baseType: !875, size: 64, offset: 320)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !522, file: !466, line: 121, baseType: !5604, size: 64, offset: 256)
!5604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5605, size: 64)
!5605 = !DISubroutineType(types: !5606)
!5606 = !{!2781, !489}
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !522, file: !466, line: 122, baseType: !5608, size: 64, offset: 320)
!5608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5609, size: 64)
!5609 = !DISubroutineType(types: !5610)
!5610 = !{null, !489, !2052, !2053}
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !465, file: !466, line: 70, baseType: !3046, size: 64, offset: 384)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !465, file: !466, line: 71, baseType: !5613, size: 32, offset: 448)
!5613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !5614, line: 19, size: 32, elements: !5615)
!5614 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!5615 = !{!5616}
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5613, file: !5614, line: 20, baseType: !1439, size: 32)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !465, file: !466, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !465, file: !466, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !465, file: !466, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !465, file: !466, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !465, file: !466, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !462, file: !187, line: 707, baseType: !461, size: 64, offset: 512)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !462, file: !187, line: 709, baseType: !5624, size: 64, offset: 576)
!5624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5625, size: 64)
!5625 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !187, line: 37, flags: DIFlagFwdDecl)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !462, file: !187, line: 711, baseType: !28, size: 64, offset: 640)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !462, file: !187, line: 712, baseType: !5628, size: 64, offset: 704)
!5628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5629, size: 64)
!5629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5630)
!5630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !187, line: 89, size: 384, elements: !5631)
!5631 = !{!5632, !5633, !5634, !5640, !5645, !5649}
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5630, file: !187, line: 90, baseType: !28, size: 64)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !5630, file: !187, line: 91, baseType: !552, size: 64, offset: 64)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !5630, file: !187, line: 92, baseType: !5635, size: 64, offset: 128)
!5635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5636, size: 64)
!5636 = !DISubroutineType(types: !5637)
!5637 = !{!34, !5638, !501}
!5638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5639, size: 64)
!5639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !462)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !5630, file: !187, line: 93, baseType: !5641, size: 64, offset: 192)
!5641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5642, size: 64)
!5642 = !DISubroutineType(types: !5643)
!5643 = !{!506, !5638, !5644, !2052, !2053}
!5644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5630, file: !187, line: 95, baseType: !5646, size: 64, offset: 256)
!5646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5647, size: 64)
!5647 = !DISubroutineType(types: !5648)
!5648 = !{null, !461}
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5630, file: !187, line: 97, baseType: !5650, size: 64, offset: 320)
!5650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5651, size: 64)
!5651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5652)
!5652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !194, line: 286, size: 1472, elements: !5653)
!5653 = !{!5654, !5658, !5659, !5660, !5661, !5662, !5663, !5664, !5665, !5666, !5667, !5668, !5669, !5670, !5671, !5672, !5673, !5674, !5675, !5676, !5677, !5678, !5679}
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !5652, file: !194, line: 287, baseType: !5655, size: 64)
!5655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5656, size: 64)
!5656 = !DISubroutineType(types: !5657)
!5657 = !{!34, !461}
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !5652, file: !194, line: 288, baseType: !5646, size: 64, offset: 64)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5652, file: !194, line: 289, baseType: !5655, size: 64, offset: 128)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5652, file: !194, line: 290, baseType: !5655, size: 64, offset: 192)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !5652, file: !194, line: 291, baseType: !5655, size: 64, offset: 256)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !5652, file: !194, line: 292, baseType: !5655, size: 64, offset: 320)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !5652, file: !194, line: 293, baseType: !5655, size: 64, offset: 384)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !5652, file: !194, line: 294, baseType: !5655, size: 64, offset: 448)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !5652, file: !194, line: 295, baseType: !5655, size: 64, offset: 512)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !5652, file: !194, line: 296, baseType: !5655, size: 64, offset: 576)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !5652, file: !194, line: 297, baseType: !5655, size: 64, offset: 640)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !5652, file: !194, line: 298, baseType: !5655, size: 64, offset: 704)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !5652, file: !194, line: 299, baseType: !5655, size: 64, offset: 768)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !5652, file: !194, line: 300, baseType: !5655, size: 64, offset: 832)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !5652, file: !194, line: 301, baseType: !5655, size: 64, offset: 896)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !5652, file: !194, line: 302, baseType: !5655, size: 64, offset: 960)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !5652, file: !194, line: 303, baseType: !5655, size: 64, offset: 1024)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !5652, file: !194, line: 304, baseType: !5655, size: 64, offset: 1088)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !5652, file: !194, line: 305, baseType: !5655, size: 64, offset: 1152)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !5652, file: !194, line: 306, baseType: !5655, size: 64, offset: 1216)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !5652, file: !194, line: 307, baseType: !5655, size: 64, offset: 1280)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !5652, file: !194, line: 308, baseType: !5655, size: 64, offset: 1344)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !5652, file: !194, line: 309, baseType: !5655, size: 64, offset: 1408)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !462, file: !187, line: 714, baseType: !5681, size: 64, offset: 768)
!5681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5682, size: 64)
!5682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5683)
!5683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !5684, line: 80, size: 1344, elements: !5685)
!5684 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!5685 = !{!5686, !5687, !5688, !5689, !5690, !5691, !5747, !5748, !5749, !5750, !5751, !5752, !5753, !5754, !5755, !5756, !5757, !5758, !5759, !5760, !5761}
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5683, file: !5684, line: 81, baseType: !28, size: 64)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !5683, file: !5684, line: 82, baseType: !28, size: 64, offset: 64)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !5683, file: !5684, line: 83, baseType: !552, size: 64, offset: 128)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5683, file: !5684, line: 84, baseType: !552, size: 64, offset: 192)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !5683, file: !5684, line: 85, baseType: !552, size: 64, offset: 256)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !5683, file: !5684, line: 87, baseType: !5692, size: 64, offset: 320)
!5692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5693, size: 64)
!5693 = !DISubroutineType(types: !5694)
!5694 = !{!34, !461, !5695}
!5695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5696, size: 64)
!5696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !157, line: 96, size: 1152, elements: !5697)
!5697 = !{!5698, !5699, !5700, !5701, !5702, !5703, !5704, !5717, !5727, !5728, !5729, !5730, !5731, !5739, !5740, !5741, !5742, !5743, !5744}
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5696, file: !157, line: 97, baseType: !28, size: 64)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5696, file: !157, line: 98, baseType: !5681, size: 64, offset: 64)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5696, file: !157, line: 100, baseType: !762, size: 64, offset: 128)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !5696, file: !157, line: 101, baseType: !28, size: 64, offset: 192)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !5696, file: !157, line: 103, baseType: !459, size: 8, offset: 256)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !5696, file: !157, line: 104, baseType: !156, size: 32, offset: 288)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !5696, file: !157, line: 106, baseType: !5705, size: 64, offset: 320)
!5705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5706, size: 64)
!5706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5707)
!5707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !5708, line: 282, size: 1600, elements: !5709)
!5708 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!5709 = !{!5710, !5711, !5712, !5716}
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5707, file: !5708, line: 283, baseType: !3506, size: 256)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5707, file: !5708, line: 284, baseType: !3506, size: 256, offset: 256)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !5707, file: !5708, line: 285, baseType: !5713, size: 1024, offset: 512)
!5713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 1024, elements: !5714)
!5714 = !{!5715}
!5715 = !DISubrange(count: 128)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5707, file: !5708, line: 286, baseType: !2781, size: 64, offset: 1536)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !5696, file: !157, line: 107, baseType: !5718, size: 64, offset: 384)
!5718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5719, size: 64)
!5719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5720)
!5720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !5708, line: 217, size: 256, elements: !5721)
!5721 = !{!5722, !5723, !5725, !5726}
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5720, file: !5708, line: 218, baseType: !5088, size: 128)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5720, file: !5708, line: 219, baseType: !5724, size: 64, offset: 128)
!5724 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !5708, line: 15, baseType: !51)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !5720, file: !5708, line: 220, baseType: !391, size: 32, offset: 192)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !5720, file: !5708, line: 221, baseType: !391, size: 32, offset: 224)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !5696, file: !157, line: 109, baseType: !5655, size: 64, offset: 448)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !5696, file: !157, line: 110, baseType: !5646, size: 64, offset: 512)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5696, file: !157, line: 111, baseType: !5655, size: 64, offset: 576)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5696, file: !157, line: 112, baseType: !5646, size: 64, offset: 640)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5696, file: !157, line: 113, baseType: !5732, size: 64, offset: 704)
!5732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5733, size: 64)
!5733 = !DISubroutineType(types: !5734)
!5734 = !{!34, !461, !5735}
!5735 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !194, line: 60, baseType: !5736)
!5736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !194, line: 58, size: 32, elements: !5737)
!5737 = !{!5738}
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5736, file: !194, line: 59, baseType: !34, size: 32)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5696, file: !157, line: 114, baseType: !5655, size: 64, offset: 768)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !5696, file: !157, line: 115, baseType: !552, size: 64, offset: 832)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5696, file: !157, line: 116, baseType: !552, size: 64, offset: 896)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5696, file: !157, line: 118, baseType: !5650, size: 64, offset: 960)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !5696, file: !157, line: 119, baseType: !5646, size: 64, offset: 1024)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5696, file: !157, line: 121, baseType: !5745, size: 64, offset: 1088)
!5745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5746, size: 64)
!5746 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !157, line: 121, flags: DIFlagFwdDecl)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !5683, file: !5684, line: 88, baseType: !5635, size: 64, offset: 384)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !5683, file: !5684, line: 89, baseType: !5655, size: 64, offset: 448)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !5683, file: !5684, line: 90, baseType: !5646, size: 64, offset: 512)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5683, file: !5684, line: 91, baseType: !5646, size: 64, offset: 576)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5683, file: !5684, line: 92, baseType: !5646, size: 64, offset: 640)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !5683, file: !5684, line: 94, baseType: !5655, size: 64, offset: 704)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !5683, file: !5684, line: 95, baseType: !5655, size: 64, offset: 768)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5683, file: !5684, line: 97, baseType: !5732, size: 64, offset: 832)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5683, file: !5684, line: 98, baseType: !5655, size: 64, offset: 896)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !5683, file: !5684, line: 100, baseType: !5655, size: 64, offset: 960)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !5683, file: !5684, line: 102, baseType: !5655, size: 64, offset: 1024)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !5683, file: !5684, line: 103, baseType: !5646, size: 64, offset: 1088)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5683, file: !5684, line: 105, baseType: !5650, size: 64, offset: 1152)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !5683, file: !5684, line: 107, baseType: !451, size: 64, offset: 1216)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !5683, file: !5684, line: 109, baseType: !459, size: 8, offset: 1280)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !462, file: !187, line: 715, baseType: !5695, size: 64, offset: 832)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !462, file: !187, line: 717, baseType: !32, size: 64, offset: 896)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !462, file: !187, line: 719, baseType: !32, size: 64, offset: 960)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !462, file: !187, line: 721, baseType: !832, size: 256, offset: 1024)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !462, file: !187, line: 725, baseType: !5767, size: 448, offset: 1280)
!5767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !187, line: 517, size: 448, elements: !5768)
!5768 = !{!5769, !5770, !5771, !5772}
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !5767, file: !187, line: 518, baseType: !109, size: 128)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !5767, file: !187, line: 519, baseType: !109, size: 128, offset: 128)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !5767, file: !187, line: 520, baseType: !109, size: 128, offset: 256)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5767, file: !187, line: 521, baseType: !186, size: 32, offset: 384)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !462, file: !187, line: 726, baseType: !5774, size: 2496, offset: 1728)
!5774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !194, line: 663, size: 2496, elements: !5775)
!5775 = !{!5776, !5777, !5778, !5779, !5780, !5781, !5782, !5783, !5784, !5785, !5786, !5787, !5788, !5789, !5790, !5791, !5818, !5819, !5820, !5821, !5822, !5823, !5824, !5825, !5826, !5827, !5828, !5829, !5830, !5831, !5832, !5833, !5834, !5835, !5836, !5837, !5838, !5839, !5840, !5841, !5842, !5843, !5844, !5845, !5846, !5847, !5848, !5849, !5850, !5851, !5852, !5858, !5862}
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !5774, file: !194, line: 664, baseType: !5735, size: 32)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !5774, file: !194, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !5774, file: !194, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !5774, file: !194, line: 667, baseType: !459, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !5774, file: !194, line: 668, baseType: !459, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !5774, file: !194, line: 669, baseType: !459, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !5774, file: !194, line: 670, baseType: !459, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !5774, file: !194, line: 671, baseType: !459, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !5774, file: !194, line: 672, baseType: !459, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !5774, file: !194, line: 673, baseType: !459, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !5774, file: !194, line: 674, baseType: !459, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !5774, file: !194, line: 675, baseType: !390, size: 32, offset: 64)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5774, file: !194, line: 676, baseType: !71, size: 32, offset: 96)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5774, file: !194, line: 678, baseType: !109, size: 128, offset: 128)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !5774, file: !194, line: 679, baseType: !782, size: 256, offset: 256)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !5774, file: !194, line: 680, baseType: !5792, size: 64, offset: 512)
!5792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5793, size: 64)
!5793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !5794, line: 43, size: 1536, elements: !5795)
!5794 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!5795 = !{!5796, !5797, !5798, !5799, !5800, !5803, !5804, !5805, !5806, !5807, !5808, !5809, !5810, !5811, !5812, !5813, !5814, !5815, !5816, !5817}
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5793, file: !5794, line: 44, baseType: !28, size: 64)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5793, file: !5794, line: 45, baseType: !34, size: 32, offset: 64)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5793, file: !5794, line: 46, baseType: !109, size: 128, offset: 128)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5793, file: !5794, line: 47, baseType: !71, size: 32, offset: 256)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !5793, file: !5794, line: 48, baseType: !5801, size: 64, offset: 320)
!5801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5802, size: 64)
!5802 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !194, line: 629, flags: DIFlagFwdDecl)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !5793, file: !5794, line: 49, baseType: !1068, size: 320, offset: 384)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !5793, file: !5794, line: 50, baseType: !51, size: 64, offset: 704)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !5793, file: !5794, line: 51, baseType: !1570, size: 64, offset: 768)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !5793, file: !5794, line: 52, baseType: !1570, size: 64, offset: 832)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !5793, file: !5794, line: 53, baseType: !1570, size: 64, offset: 896)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !5793, file: !5794, line: 54, baseType: !1570, size: 64, offset: 960)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !5793, file: !5794, line: 55, baseType: !1570, size: 64, offset: 1024)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !5793, file: !5794, line: 56, baseType: !51, size: 64, offset: 1088)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !5793, file: !5794, line: 57, baseType: !51, size: 64, offset: 1152)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !5793, file: !5794, line: 58, baseType: !51, size: 64, offset: 1216)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !5793, file: !5794, line: 59, baseType: !51, size: 64, offset: 1280)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !5793, file: !5794, line: 60, baseType: !51, size: 64, offset: 1344)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5793, file: !5794, line: 61, baseType: !461, size: 64, offset: 1408)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5793, file: !5794, line: 62, baseType: !459, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !5793, file: !5794, line: 63, baseType: !459, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !5774, file: !194, line: 681, baseType: !459, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !5774, file: !194, line: 682, baseType: !459, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !5774, file: !194, line: 683, baseType: !459, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !5774, file: !194, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !5774, file: !194, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !5774, file: !194, line: 690, baseType: !1562, size: 512, offset: 640)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !5774, file: !194, line: 691, baseType: !378, size: 64, offset: 1152)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5774, file: !194, line: 692, baseType: !1086, size: 256, offset: 1216)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !5774, file: !194, line: 693, baseType: !66, size: 192, offset: 1472)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !5774, file: !194, line: 694, baseType: !5801, size: 64, offset: 1664)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !5774, file: !194, line: 695, baseType: !61, size: 32, offset: 1728)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !5774, file: !194, line: 696, baseType: !61, size: 32, offset: 1760)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !5774, file: !194, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !5774, file: !194, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !5774, file: !194, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !5774, file: !194, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !5774, file: !194, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !5774, file: !194, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !5774, file: !194, line: 703, baseType: !459, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !5774, file: !194, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !5774, file: !194, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !5774, file: !194, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !5774, file: !194, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !5774, file: !194, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !5774, file: !194, line: 709, baseType: !7, size: 32, offset: 1824)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !5774, file: !194, line: 710, baseType: !193, size: 32, offset: 1856)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !5774, file: !194, line: 711, baseType: !201, size: 32, offset: 1888)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !5774, file: !194, line: 712, baseType: !201, size: 32, offset: 1920)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !5774, file: !194, line: 713, baseType: !34, size: 32, offset: 1952)
!5847 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !5774, file: !194, line: 714, baseType: !34, size: 32, offset: 1984)
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !5774, file: !194, line: 715, baseType: !378, size: 64, offset: 2048)
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !5774, file: !194, line: 716, baseType: !378, size: 64, offset: 2112)
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !5774, file: !194, line: 717, baseType: !378, size: 64, offset: 2176)
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !5774, file: !194, line: 718, baseType: !378, size: 64, offset: 2240)
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !5774, file: !194, line: 720, baseType: !5853, size: 64, offset: 2304)
!5853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5854, size: 64)
!5854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !194, line: 632, size: 64, elements: !5855)
!5855 = !{!5856, !5857}
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5854, file: !194, line: 633, baseType: !71, size: 32)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5854, file: !194, line: 634, baseType: !7, size: 32, offset: 32)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !5774, file: !194, line: 721, baseType: !5859, size: 64, offset: 2368)
!5859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5860, size: 64)
!5860 = !DISubroutineType(types: !5861)
!5861 = !{null, !461, !828}
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !5774, file: !194, line: 722, baseType: !5863, size: 64, offset: 2432)
!5863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5864, size: 64)
!5864 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !194, line: 722, flags: DIFlagFwdDecl)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !462, file: !187, line: 727, baseType: !5866, size: 64, offset: 4224)
!5866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5867, size: 64)
!5867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !194, line: 742, size: 1792, elements: !5868)
!5868 = !{!5869, !5870, !5871, !5875, !5876, !5877}
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5867, file: !194, line: 743, baseType: !5652, size: 1472)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5867, file: !194, line: 744, baseType: !5655, size: 64, offset: 1472)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !5867, file: !194, line: 745, baseType: !5872, size: 64, offset: 1536)
!5872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5873, size: 64)
!5873 = !DISubroutineType(types: !5874)
!5874 = !{null, !461, !459}
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !5867, file: !194, line: 746, baseType: !5655, size: 64, offset: 1600)
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !5867, file: !194, line: 747, baseType: !5646, size: 64, offset: 1664)
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !5867, file: !194, line: 748, baseType: !5646, size: 64, offset: 1728)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !462, file: !187, line: 736, baseType: !5879, size: 128, offset: 4288)
!5879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !187, line: 529, size: 128, elements: !5880)
!5880 = !{!5881, !6551}
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !5879, file: !187, line: 531, baseType: !5882, size: 64)
!5882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5883, size: 64)
!5883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !5884, line: 150, size: 1408, elements: !5885)
!5884 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cd3b6d3aac1ec0f42f0ed0e1454dc51c")
!5885 = !{!5886, !5887, !5888, !6302, !6303, !6304, !6305, !6306, !6307, !6308, !6309, !6454, !6455, !6456, !6457, !6546, !6547, !6548, !6549}
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !5883, file: !5884, line: 151, baseType: !109, size: 128)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5883, file: !5884, line: 152, baseType: !28, size: 64, offset: 128)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5883, file: !5884, line: 153, baseType: !5889, size: 64, offset: 192)
!5889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5890, size: 64)
!5890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5891)
!5891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !5884, line: 88, size: 640, elements: !5892)
!5892 = !{!5893, !6022, !6033, !6038, !6042, !6048, !6052, !6056, !6294, !6298}
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !5891, file: !5884, line: 89, baseType: !5894, size: 64)
!5894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5895, size: 64)
!5895 = !DISubroutineType(types: !5896)
!5896 = !{!34, !5882, !5897, !208}
!5897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5898, size: 64)
!5898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !5899, line: 48, size: 1152, elements: !5900)
!5899 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!5900 = !{!5901, !5902, !5904, !5905, !6008, !6016, !6017, !6018, !6019, !6020, !6021}
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5898, file: !5899, line: 49, baseType: !28, size: 64)
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !5898, file: !5899, line: 50, baseType: !5903, size: 32, offset: 64)
!5903 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !5899, line: 25, baseType: !390)
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !5898, file: !5899, line: 51, baseType: !28, size: 64, offset: 128)
!5905 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5898, file: !5899, line: 52, baseType: !5906, size: 512, offset: 192)
!5906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !5907, line: 41, size: 512, elements: !5908)
!5907 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!5908 = !{!5909, !5911, !6004, !6005, !6006, !6007}
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !5906, file: !5907, line: 42, baseType: !5910, size: 64)
!5910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5906, size: 64)
!5911 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5906, file: !5907, line: 43, baseType: !5912, size: 64, offset: 64)
!5912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5913, size: 64)
!5913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5914)
!5914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !5907, line: 125, size: 1408, elements: !5915)
!5915 = !{!5916, !5920, !5924, !5930, !5934, !5935, !5939, !5943, !5947, !5951, !5955, !5956, !5960, !5964, !5968, !5979, !5980, !5981, !5982, !5992, !5996, !6000}
!5916 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !5914, file: !5907, line: 126, baseType: !5917, size: 64)
!5917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5918, size: 64)
!5918 = !DISubroutineType(types: !5919)
!5919 = !{!5910, !5910}
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !5914, file: !5907, line: 127, baseType: !5921, size: 64, offset: 64)
!5921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5922, size: 64)
!5922 = !DISubroutineType(types: !5923)
!5923 = !{null, !5910}
!5924 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !5914, file: !5907, line: 128, baseType: !5925, size: 64, offset: 128)
!5925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5926, size: 64)
!5926 = !DISubroutineType(types: !5927)
!5927 = !{!459, !5928}
!5928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5929, size: 64)
!5929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5906)
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !5914, file: !5907, line: 129, baseType: !5931, size: 64, offset: 192)
!5931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5932, size: 64)
!5932 = !DISubroutineType(types: !5933)
!5933 = !{!2781, !5928, !5638}
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !5914, file: !5907, line: 131, baseType: !5925, size: 64, offset: 256)
!5935 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !5914, file: !5907, line: 133, baseType: !5936, size: 64, offset: 320)
!5936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5937, size: 64)
!5937 = !DISubroutineType(types: !5938)
!5938 = !{!176, !5928}
!5939 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !5914, file: !5907, line: 134, baseType: !5940, size: 64, offset: 384)
!5940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5941, size: 64)
!5941 = !DISubroutineType(types: !5942)
!5942 = !{!459, !5928, !28}
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !5914, file: !5907, line: 136, baseType: !5944, size: 64, offset: 448)
!5944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5945, size: 64)
!5945 = !DISubroutineType(types: !5946)
!5946 = !{!34, !5928, !28, !7, !32, !47}
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !5914, file: !5907, line: 141, baseType: !5948, size: 64, offset: 512)
!5948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5949, size: 64)
!5949 = !DISubroutineType(types: !5950)
!5950 = !{!34, !5928, !28, !1163, !47}
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !5914, file: !5907, line: 144, baseType: !5952, size: 64, offset: 576)
!5952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5953, size: 64)
!5953 = !DISubroutineType(types: !5954)
!5954 = !{!28, !5928}
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !5914, file: !5907, line: 145, baseType: !5952, size: 64, offset: 640)
!5956 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !5914, file: !5907, line: 146, baseType: !5957, size: 64, offset: 704)
!5957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5958, size: 64)
!5958 = !DISubroutineType(types: !5959)
!5959 = !{!5910, !5928}
!5960 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !5914, file: !5907, line: 148, baseType: !5961, size: 64, offset: 768)
!5961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5962, size: 64)
!5962 = !DISubroutineType(types: !5963)
!5963 = !{!5910, !5928, !5910}
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !5914, file: !5907, line: 151, baseType: !5965, size: 64, offset: 832)
!5965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5966, size: 64)
!5966 = !DISubroutineType(types: !5967)
!5967 = !{!5910, !5928, !28}
!5968 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !5914, file: !5907, line: 153, baseType: !5969, size: 64, offset: 896)
!5969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5970, size: 64)
!5970 = !DISubroutineType(types: !5971)
!5971 = !{!34, !5928, !28, !28, !7, !7, !5972}
!5972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5973, size: 64)
!5973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !5907, line: 94, size: 640, elements: !5974)
!5974 = !{!5975, !5976, !5977}
!5975 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5973, file: !5907, line: 95, baseType: !5910, size: 64)
!5976 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !5973, file: !5907, line: 96, baseType: !7, size: 32, offset: 64)
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !5973, file: !5907, line: 97, baseType: !5978, size: 512, offset: 128)
!5978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 512, elements: !1605)
!5979 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !5914, file: !5907, line: 158, baseType: !5961, size: 64, offset: 960)
!5980 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !5914, file: !5907, line: 161, baseType: !5957, size: 64, offset: 1024)
!5981 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !5914, file: !5907, line: 163, baseType: !5917, size: 64, offset: 1088)
!5982 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !5914, file: !5907, line: 164, baseType: !5983, size: 64, offset: 1152)
!5983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5984, size: 64)
!5984 = !DISubroutineType(types: !5985)
!5985 = !{!34, !5928, !5986}
!5986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5987, size: 64)
!5987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !5907, line: 73, size: 128, elements: !5988)
!5988 = !{!5989, !5990, !5991}
!5989 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5987, file: !5907, line: 74, baseType: !7, size: 32)
!5990 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5987, file: !5907, line: 75, baseType: !7, size: 32, offset: 32)
!5991 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !5987, file: !5907, line: 76, baseType: !5928, size: 64, offset: 64)
!5992 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !5914, file: !5907, line: 166, baseType: !5993, size: 64, offset: 1216)
!5993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5994, size: 64)
!5994 = !DISubroutineType(types: !5995)
!5995 = !{!32, !5910, !34}
!5996 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !5914, file: !5907, line: 167, baseType: !5997, size: 64, offset: 1280)
!5997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5998, size: 64)
!5998 = !DISubroutineType(types: !5999)
!5999 = !{!34, !5928, !7}
!6000 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !5914, file: !5907, line: 168, baseType: !6001, size: 64, offset: 1344)
!6001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6002, size: 64)
!6002 = !DISubroutineType(types: !6003)
!6003 = !{!34, !5910}
!6004 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5906, file: !5907, line: 44, baseType: !461, size: 64, offset: 128)
!6005 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !5906, file: !5907, line: 45, baseType: !109, size: 128, offset: 192)
!6006 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !5906, file: !5907, line: 46, baseType: !109, size: 128, offset: 320)
!6007 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5906, file: !5907, line: 47, baseType: !95, size: 8, offset: 448)
!6008 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5898, file: !5899, line: 54, baseType: !6009, size: 64, offset: 704)
!6009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6010, size: 64)
!6010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !5899, line: 28, size: 256, elements: !6011)
!6011 = !{!6012, !6013, !6014, !6015}
!6012 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6010, file: !5899, line: 29, baseType: !506, size: 64)
!6013 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !6010, file: !5899, line: 30, baseType: !34, size: 32, offset: 64)
!6014 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !6010, file: !5899, line: 31, baseType: !32, size: 64, offset: 128)
!6015 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6010, file: !5899, line: 32, baseType: !6009, size: 64, offset: 192)
!6016 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !5898, file: !5899, line: 55, baseType: !6009, size: 64, offset: 768)
!6017 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5898, file: !5899, line: 56, baseType: !5897, size: 64, offset: 832)
!6018 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !5898, file: !5899, line: 57, baseType: !5897, size: 64, offset: 896)
!6019 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !5898, file: !5899, line: 58, baseType: !5897, size: 64, offset: 960)
!6020 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5898, file: !5899, line: 62, baseType: !51, size: 64, offset: 1024)
!6021 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5898, file: !5899, line: 63, baseType: !32, size: 64, offset: 1088)
!6022 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !5891, file: !5884, line: 91, baseType: !6023, size: 64, offset: 64)
!6023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6024, size: 64)
!6024 = !DISubroutineType(types: !6025)
!6025 = !{!34, !5882, !6026, !208}
!6026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6027, size: 64)
!6027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !5884, line: 63, size: 640, elements: !6028)
!6028 = !{!6029, !6030, !6031}
!6029 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !6027, file: !5884, line: 64, baseType: !5910, size: 64)
!6030 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !6027, file: !5884, line: 65, baseType: !34, size: 32, offset: 64)
!6031 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !6027, file: !5884, line: 66, baseType: !6032, size: 512, offset: 96)
!6032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 512, elements: !431)
!6033 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !5891, file: !5884, line: 93, baseType: !6034, size: 64, offset: 128)
!6034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6035, size: 64)
!6035 = !DISubroutineType(types: !6036)
!6036 = !{!34, !5882, !7, !6037}
!6037 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !37, line: 170, baseType: !51)
!6038 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !5891, file: !5884, line: 94, baseType: !6039, size: 64, offset: 192)
!6039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6040, size: 64)
!6040 = !DISubroutineType(types: !6041)
!6041 = !{null, !5882, !7}
!6042 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !5891, file: !5884, line: 95, baseType: !6043, size: 64, offset: 256)
!6043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6044, size: 64)
!6044 = !DISubroutineType(types: !6045)
!6045 = !{!34, !5882, !5897, !6046, !7, !406, !904}
!6046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6047, size: 64)
!6047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!6048 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !5891, file: !5884, line: 100, baseType: !6049, size: 64, offset: 320)
!6049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6050, size: 64)
!6050 = !DISubroutineType(types: !6051)
!6051 = !{!34, !5882, !7, !7, !32}
!6052 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5891, file: !5884, line: 102, baseType: !6053, size: 64, offset: 384)
!6053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6054, size: 64)
!6054 = !DISubroutineType(types: !6055)
!6055 = !{null, !5882, !7, !7}
!6056 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !5891, file: !5884, line: 104, baseType: !6057, size: 64, offset: 448)
!6057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6058, size: 64)
!6058 = !DISubroutineType(types: !6059)
!6059 = !{!34, !5882, !6060, !459}
!6060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6061, size: 64)
!6061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !235, line: 179, size: 448, elements: !6062)
!6062 = !{!6063, !6064, !6065, !6066, !6215, !6291, !6292, !6293}
!6063 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !6061, file: !235, line: 180, baseType: !390, size: 32)
!6064 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !6061, file: !235, line: 181, baseType: !7, size: 32, offset: 32)
!6065 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !6061, file: !235, line: 182, baseType: !51, size: 64, offset: 64)
!6066 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !6061, file: !235, line: 183, baseType: !6067, size: 64, offset: 128)
!6067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6068, size: 64)
!6068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !235, line: 147, size: 320, elements: !6069)
!6069 = !{!6070, !6071, !6072, !6073, !6213, !6214}
!6070 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !6068, file: !235, line: 148, baseType: !7, size: 32)
!6071 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !6068, file: !235, line: 150, baseType: !7, size: 32, offset: 32)
!6072 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !6068, file: !235, line: 152, baseType: !32, size: 64, offset: 64)
!6073 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !6068, file: !235, line: 153, baseType: !6074, size: 64, offset: 128)
!6074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6075, size: 64)
!6075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !6076, line: 184, size: 832, elements: !6077)
!6076 = !DIFile(filename: "./include/linux/msi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4852ae4344fcd499a416b3c5d20e2abd")
!6077 = !{!6078, !6079, !6080, !6081, !6146, !6152, !6153, !6166, !6170, !6171, !6172}
!6078 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !6075, file: !6076, line: 186, baseType: !7, size: 32)
!6079 = !DIDerivedType(tag: DW_TAG_member, name: "nvec_used", scope: !6075, file: !6076, line: 187, baseType: !7, size: 32, offset: 32)
!6080 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !6075, file: !6076, line: 188, baseType: !461, size: 64, offset: 64)
!6081 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !6075, file: !6076, line: 189, baseType: !6082, size: 96, offset: 128)
!6082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !6076, line: 65, size: 96, elements: !6083)
!6083 = !{!6084, !6115, !6125}
!6084 = !DIDerivedType(tag: DW_TAG_member, scope: !6082, file: !6076, line: 66, baseType: !6085, size: 32)
!6085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6082, file: !6076, line: 66, size: 32, elements: !6086)
!6086 = !{!6087, !6088}
!6087 = !DIDerivedType(tag: DW_TAG_member, name: "address_lo", scope: !6085, file: !6076, line: 67, baseType: !390, size: 32)
!6088 = !DIDerivedType(tag: DW_TAG_member, name: "arch_addr_lo", scope: !6085, file: !6076, line: 68, baseType: !6089, size: 32)
!6089 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_msi_msg_addr_lo_t", file: !6090, line: 49, baseType: !6091)
!6090 = !DIFile(filename: "./arch/x86/include/asm/msi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18fb5c3a6ec98b3248a11eb70711a164")
!6091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_msi_addr_lo", file: !6090, line: 29, size: 32, elements: !6092)
!6092 = !{!6093}
!6093 = !DIDerivedType(tag: DW_TAG_member, scope: !6091, file: !6090, line: 30, baseType: !6094, size: 32)
!6094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6091, file: !6090, line: 30, size: 32, elements: !6095)
!6095 = !{!6096, !6106}
!6096 = !DIDerivedType(tag: DW_TAG_member, scope: !6094, file: !6090, line: 31, baseType: !6097, size: 32)
!6097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6094, file: !6090, line: 31, size: 32, elements: !6098)
!6098 = !{!6099, !6100, !6101, !6102, !6103, !6104, !6105}
!6099 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_0", scope: !6097, file: !6090, line: 32, baseType: !390, size: 2, flags: DIFlagBitField, extraData: i64 0)
!6100 = !DIDerivedType(tag: DW_TAG_member, name: "dest_mode_logical", scope: !6097, file: !6090, line: 33, baseType: !390, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!6101 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_hint", scope: !6097, file: !6090, line: 34, baseType: !390, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!6102 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_1", scope: !6097, file: !6090, line: 35, baseType: !390, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!6103 = !DIDerivedType(tag: DW_TAG_member, name: "virt_destid_8_14", scope: !6097, file: !6090, line: 36, baseType: !390, size: 7, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!6104 = !DIDerivedType(tag: DW_TAG_member, name: "destid_0_7", scope: !6097, file: !6090, line: 37, baseType: !390, size: 8, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!6105 = !DIDerivedType(tag: DW_TAG_member, name: "base_address", scope: !6097, file: !6090, line: 38, baseType: !390, size: 12, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!6106 = !DIDerivedType(tag: DW_TAG_member, scope: !6094, file: !6090, line: 40, baseType: !6107, size: 32)
!6107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6094, file: !6090, line: 40, size: 32, elements: !6108)
!6108 = !{!6109, !6110, !6111, !6112, !6113, !6114}
!6109 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_reserved_0", scope: !6107, file: !6090, line: 41, baseType: !390, size: 2, flags: DIFlagBitField, extraData: i64 0)
!6110 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_index_15", scope: !6107, file: !6090, line: 42, baseType: !390, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!6111 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_subhandle_valid", scope: !6107, file: !6090, line: 43, baseType: !390, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!6112 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_format", scope: !6107, file: !6090, line: 44, baseType: !390, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!6113 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_index_0_14", scope: !6107, file: !6090, line: 45, baseType: !390, size: 15, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!6114 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_base_address", scope: !6107, file: !6090, line: 46, baseType: !390, size: 12, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!6115 = !DIDerivedType(tag: DW_TAG_member, scope: !6082, file: !6076, line: 70, baseType: !6116, size: 32, offset: 32)
!6116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6082, file: !6076, line: 70, size: 32, elements: !6117)
!6117 = !{!6118, !6119}
!6118 = !DIDerivedType(tag: DW_TAG_member, name: "address_hi", scope: !6116, file: !6076, line: 71, baseType: !390, size: 32)
!6119 = !DIDerivedType(tag: DW_TAG_member, name: "arch_addr_hi", scope: !6116, file: !6076, line: 72, baseType: !6120, size: 32)
!6120 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_msi_msg_addr_hi_t", file: !6090, line: 57, baseType: !6121)
!6121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_msi_addr_hi", file: !6090, line: 54, size: 32, elements: !6122)
!6122 = !{!6123, !6124}
!6123 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6121, file: !6090, line: 55, baseType: !390, size: 8, flags: DIFlagBitField, extraData: i64 0)
!6124 = !DIDerivedType(tag: DW_TAG_member, name: "destid_8_31", scope: !6121, file: !6090, line: 56, baseType: !390, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!6125 = !DIDerivedType(tag: DW_TAG_member, scope: !6082, file: !6076, line: 74, baseType: !6126, size: 32, offset: 64)
!6126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6082, file: !6076, line: 74, size: 32, elements: !6127)
!6127 = !{!6128, !6129}
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !6126, file: !6076, line: 75, baseType: !390, size: 32)
!6129 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !6126, file: !6076, line: 76, baseType: !6130, size: 32)
!6130 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_msi_msg_data_t", file: !6090, line: 26, baseType: !6131)
!6131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_msi_data", file: !6090, line: 14, size: 32, elements: !6132)
!6132 = !{!6133}
!6133 = !DIDerivedType(tag: DW_TAG_member, scope: !6131, file: !6090, line: 15, baseType: !6134, size: 32)
!6134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6131, file: !6090, line: 15, size: 32, elements: !6135)
!6135 = !{!6136, !6145}
!6136 = !DIDerivedType(tag: DW_TAG_member, scope: !6134, file: !6090, line: 16, baseType: !6137, size: 32)
!6137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6134, file: !6090, line: 16, size: 32, elements: !6138)
!6138 = !{!6139, !6140, !6141, !6142, !6143, !6144}
!6139 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !6137, file: !6090, line: 17, baseType: !390, size: 8, flags: DIFlagBitField, extraData: i64 0)
!6140 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_mode", scope: !6137, file: !6090, line: 18, baseType: !390, size: 3, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!6141 = !DIDerivedType(tag: DW_TAG_member, name: "dest_mode_logical", scope: !6137, file: !6090, line: 19, baseType: !390, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!6142 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6137, file: !6090, line: 20, baseType: !390, size: 2, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!6143 = !DIDerivedType(tag: DW_TAG_member, name: "active_low", scope: !6137, file: !6090, line: 21, baseType: !390, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!6144 = !DIDerivedType(tag: DW_TAG_member, name: "is_level", scope: !6137, file: !6090, line: 22, baseType: !390, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!6145 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_subhandle", scope: !6134, file: !6090, line: 24, baseType: !390, size: 32)
!6146 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !6075, file: !6076, line: 190, baseType: !6147, size: 64, offset: 256)
!6147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6148, size: 64)
!6148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity_desc", file: !228, line: 299, size: 128, elements: !6149)
!6149 = !{!6150, !6151}
!6150 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !6148, file: !228, line: 300, baseType: !1325, size: 64)
!6151 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !6148, file: !228, line: 301, baseType: !7, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!6152 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cookie", scope: !6075, file: !6076, line: 192, baseType: !2781, size: 64, offset: 320)
!6153 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_attrs", scope: !6075, file: !6076, line: 195, baseType: !6154, size: 64, offset: 384)
!6154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6155, size: 64)
!6155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !187, line: 106, size: 256, elements: !6156)
!6156 = !{!6157, !6158, !6162}
!6157 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !6155, file: !187, line: 107, baseType: !543, size: 128)
!6158 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !6155, file: !187, line: 108, baseType: !6159, size: 64, offset: 128)
!6159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6160, size: 64)
!6160 = !DISubroutineType(types: !6161)
!6161 = !{!538, !461, !6154, !506}
!6162 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !6155, file: !187, line: 110, baseType: !6163, size: 64, offset: 192)
!6163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6164, size: 64)
!6164 = !DISubroutineType(types: !6165)
!6165 = !{!538, !461, !6154, !28, !47}
!6166 = !DIDerivedType(tag: DW_TAG_member, name: "write_msi_msg", scope: !6075, file: !6076, line: 198, baseType: !6167, size: 64, offset: 448)
!6167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6168, size: 64)
!6168 = !DISubroutineType(types: !6169)
!6169 = !{null, !6074, !32}
!6170 = !DIDerivedType(tag: DW_TAG_member, name: "write_msi_msg_data", scope: !6075, file: !6076, line: 199, baseType: !32, size: 64, offset: 512)
!6171 = !DIDerivedType(tag: DW_TAG_member, name: "msi_index", scope: !6075, file: !6076, line: 201, baseType: !105, size: 16, offset: 576)
!6172 = !DIDerivedType(tag: DW_TAG_member, scope: !6075, file: !6076, line: 202, baseType: !6173, size: 192, offset: 640)
!6173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6075, file: !6076, line: 202, size: 192, elements: !6174)
!6174 = !{!6175, !6198}
!6175 = !DIDerivedType(tag: DW_TAG_member, name: "pci", scope: !6173, file: !6076, line: 203, baseType: !6176, size: 192)
!6176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_msi_desc", file: !6076, line: 113, size: 192, elements: !6177)
!6177 = !{!6178, !6183, !6193}
!6178 = !DIDerivedType(tag: DW_TAG_member, scope: !6176, file: !6076, line: 114, baseType: !6179, size: 32)
!6179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6176, file: !6076, line: 114, size: 32, elements: !6180)
!6180 = !{!6181, !6182}
!6181 = !DIDerivedType(tag: DW_TAG_member, name: "msi_mask", scope: !6179, file: !6076, line: 115, baseType: !390, size: 32)
!6182 = !DIDerivedType(tag: DW_TAG_member, name: "msix_ctrl", scope: !6179, file: !6076, line: 116, baseType: !390, size: 32)
!6183 = !DIDerivedType(tag: DW_TAG_member, name: "msi_attrib", scope: !6176, file: !6076, line: 126, baseType: !6184, size: 64, offset: 32)
!6184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6176, file: !6076, line: 118, size: 64, elements: !6185)
!6185 = !{!6186, !6187, !6188, !6189, !6190, !6191, !6192}
!6186 = !DIDerivedType(tag: DW_TAG_member, name: "is_msix", scope: !6184, file: !6076, line: 119, baseType: !95, size: 1, flags: DIFlagBitField, extraData: i64 0)
!6187 = !DIDerivedType(tag: DW_TAG_member, name: "multiple", scope: !6184, file: !6076, line: 120, baseType: !95, size: 3, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!6188 = !DIDerivedType(tag: DW_TAG_member, name: "multi_cap", scope: !6184, file: !6076, line: 121, baseType: !95, size: 3, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!6189 = !DIDerivedType(tag: DW_TAG_member, name: "can_mask", scope: !6184, file: !6076, line: 122, baseType: !95, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!6190 = !DIDerivedType(tag: DW_TAG_member, name: "is_64", scope: !6184, file: !6076, line: 123, baseType: !95, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!6191 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtual", scope: !6184, file: !6076, line: 124, baseType: !95, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!6192 = !DIDerivedType(tag: DW_TAG_member, name: "default_irq", scope: !6184, file: !6076, line: 125, baseType: !7, size: 32, offset: 32)
!6193 = !DIDerivedType(tag: DW_TAG_member, scope: !6176, file: !6076, line: 127, baseType: !6194, size: 64, offset: 128)
!6194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6176, file: !6076, line: 127, size: 64, elements: !6195)
!6195 = !{!6196, !6197}
!6196 = !DIDerivedType(tag: DW_TAG_member, name: "mask_pos", scope: !6194, file: !6076, line: 128, baseType: !95, size: 8)
!6197 = !DIDerivedType(tag: DW_TAG_member, name: "mask_base", scope: !6194, file: !6076, line: 129, baseType: !32, size: 64)
!6198 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !6173, file: !6076, line: 204, baseType: !6199, size: 128)
!6199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc_data", file: !6076, line: 160, size: 128, elements: !6200)
!6200 = !{!6201, !6207}
!6201 = !DIDerivedType(tag: DW_TAG_member, name: "dcookie", scope: !6199, file: !6076, line: 161, baseType: !6202, size: 64)
!6202 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "msi_domain_cookie", file: !6076, line: 143, size: 64, elements: !6203)
!6203 = !{!6204, !6205, !6206}
!6204 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !6202, file: !6076, line: 144, baseType: !378, size: 64)
!6205 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !6202, file: !6076, line: 145, baseType: !32, size: 64)
!6206 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !6202, file: !6076, line: 146, baseType: !32, size: 64)
!6207 = !DIDerivedType(tag: DW_TAG_member, name: "icookie", scope: !6199, file: !6076, line: 162, baseType: !6208, size: 64, offset: 64)
!6208 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "msi_instance_cookie", file: !6209, line: 34, size: 64, elements: !6210)
!6209 = !DIFile(filename: "./include/linux/msi_api.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fcac0f5d9a7a05197477b5383eee228")
!6210 = !{!6211, !6212}
!6211 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !6208, file: !6209, line: 35, baseType: !378, size: 64)
!6212 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !6208, file: !6209, line: 36, baseType: !32, size: 64)
!6213 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !6068, file: !235, line: 155, baseType: !1322, size: 64, offset: 192)
!6214 = !DIDerivedType(tag: DW_TAG_member, name: "effective_affinity", scope: !6068, file: !235, line: 158, baseType: !1322, size: 64, offset: 256)
!6215 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !6061, file: !235, line: 184, baseType: !6216, size: 64, offset: 192)
!6216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6217, size: 64)
!6217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !235, line: 501, size: 2112, elements: !6218)
!6218 = !{!6219, !6220, !6224, !6228, !6229, !6230, !6231, !6232, !6233, !6234, !6235, !6241, !6245, !6249, !6250, !6251, !6252, !6253, !6254, !6255, !6256, !6260, !6261, !6262, !6267, !6268, !6272, !6276, !6280, !6284, !6288, !6289, !6290}
!6219 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6217, file: !235, line: 502, baseType: !28, size: 64)
!6220 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !6217, file: !235, line: 503, baseType: !6221, size: 64, offset: 64)
!6221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6222, size: 64)
!6222 = !DISubroutineType(types: !6223)
!6223 = !{!7, !6060}
!6224 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !6217, file: !235, line: 504, baseType: !6225, size: 64, offset: 128)
!6225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6226, size: 64)
!6226 = !DISubroutineType(types: !6227)
!6227 = !{null, !6060}
!6228 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !6217, file: !235, line: 505, baseType: !6225, size: 64, offset: 192)
!6229 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !6217, file: !235, line: 506, baseType: !6225, size: 64, offset: 256)
!6230 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !6217, file: !235, line: 508, baseType: !6225, size: 64, offset: 320)
!6231 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !6217, file: !235, line: 509, baseType: !6225, size: 64, offset: 384)
!6232 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !6217, file: !235, line: 510, baseType: !6225, size: 64, offset: 448)
!6233 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !6217, file: !235, line: 511, baseType: !6225, size: 64, offset: 512)
!6234 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !6217, file: !235, line: 512, baseType: !6225, size: 64, offset: 576)
!6235 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !6217, file: !235, line: 514, baseType: !6236, size: 64, offset: 640)
!6236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6237, size: 64)
!6237 = !DISubroutineType(types: !6238)
!6238 = !{!34, !6060, !6239, !459}
!6239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6240, size: 64)
!6240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1325)
!6241 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !6217, file: !235, line: 515, baseType: !6242, size: 64, offset: 704)
!6242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6243, size: 64)
!6243 = !DISubroutineType(types: !6244)
!6244 = !{!34, !6060}
!6245 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !6217, file: !235, line: 516, baseType: !6246, size: 64, offset: 768)
!6246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6247, size: 64)
!6247 = !DISubroutineType(types: !6248)
!6248 = !{!34, !6060, !7}
!6249 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !6217, file: !235, line: 517, baseType: !6246, size: 64, offset: 832)
!6250 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !6217, file: !235, line: 519, baseType: !6225, size: 64, offset: 896)
!6251 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !6217, file: !235, line: 520, baseType: !6225, size: 64, offset: 960)
!6252 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !6217, file: !235, line: 526, baseType: !6225, size: 64, offset: 1024)
!6253 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !6217, file: !235, line: 527, baseType: !6225, size: 64, offset: 1088)
!6254 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !6217, file: !235, line: 528, baseType: !6225, size: 64, offset: 1152)
!6255 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !6217, file: !235, line: 530, baseType: !6225, size: 64, offset: 1216)
!6256 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !6217, file: !235, line: 532, baseType: !6257, size: 64, offset: 1280)
!6257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6258, size: 64)
!6258 = !DISubroutineType(types: !6259)
!6259 = !{null, !6060, !2629}
!6260 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !6217, file: !235, line: 533, baseType: !6242, size: 64, offset: 1344)
!6261 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !6217, file: !235, line: 534, baseType: !6225, size: 64, offset: 1408)
!6262 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !6217, file: !235, line: 536, baseType: !6263, size: 64, offset: 1472)
!6263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6264, size: 64)
!6264 = !DISubroutineType(types: !6265)
!6265 = !{null, !6060, !6266}
!6266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6082, size: 64)
!6267 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !6217, file: !235, line: 537, baseType: !6263, size: 64, offset: 1536)
!6268 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !6217, file: !235, line: 539, baseType: !6269, size: 64, offset: 1600)
!6269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6270, size: 64)
!6270 = !DISubroutineType(types: !6271)
!6271 = !{!34, !6060, !227, !5539}
!6272 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !6217, file: !235, line: 540, baseType: !6273, size: 64, offset: 1664)
!6273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6274, size: 64)
!6274 = !DISubroutineType(types: !6275)
!6275 = !{!34, !6060, !227, !459}
!6276 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !6217, file: !235, line: 542, baseType: !6277, size: 64, offset: 1728)
!6277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6278, size: 64)
!6278 = !DISubroutineType(types: !6279)
!6279 = !{!34, !6060, !32}
!6280 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !6217, file: !235, line: 544, baseType: !6281, size: 64, offset: 1792)
!6281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6282, size: 64)
!6282 = !DISubroutineType(types: !6283)
!6283 = !{null, !6060, !7}
!6284 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !6217, file: !235, line: 545, baseType: !6285, size: 64, offset: 1856)
!6285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6286, size: 64)
!6286 = !DISubroutineType(types: !6287)
!6287 = !{null, !6060, !6239}
!6288 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !6217, file: !235, line: 547, baseType: !6242, size: 64, offset: 1920)
!6289 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !6217, file: !235, line: 548, baseType: !6225, size: 64, offset: 1984)
!6290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6217, file: !235, line: 550, baseType: !51, size: 64, offset: 2048)
!6291 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !6061, file: !235, line: 185, baseType: !5882, size: 64, offset: 256)
!6292 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !6061, file: !235, line: 187, baseType: !6060, size: 64, offset: 320)
!6293 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !6061, file: !235, line: 189, baseType: !32, size: 64, offset: 384)
!6294 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !5891, file: !5884, line: 105, baseType: !6295, size: 64, offset: 512)
!6295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6296, size: 64)
!6296 = !DISubroutineType(types: !6297)
!6297 = !{null, !5882, !6060}
!6298 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !5891, file: !5884, line: 106, baseType: !6299, size: 64, offset: 576)
!6299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6300, size: 64)
!6300 = !DISubroutineType(types: !6301)
!6301 = !{!34, !5882, !6026, !406, !904}
!6302 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !5883, file: !5884, line: 154, baseType: !32, size: 64, offset: 256)
!6303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5883, file: !5884, line: 155, baseType: !7, size: 32, offset: 320)
!6304 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !5883, file: !5884, line: 156, baseType: !7, size: 32, offset: 352)
!6305 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5883, file: !5884, line: 157, baseType: !832, size: 256, offset: 384)
!6306 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !5883, file: !5884, line: 158, baseType: !5882, size: 64, offset: 640)
!6307 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5883, file: !5884, line: 161, baseType: !5910, size: 64, offset: 704)
!6308 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !5883, file: !5884, line: 162, baseType: !208, size: 32, offset: 768)
!6309 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !5883, file: !5884, line: 163, baseType: !6310, size: 64, offset: 832)
!6310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6311, size: 64)
!6311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !235, line: 1111, size: 192, elements: !6312)
!6312 = !{!6313, !6314, !6315, !6316, !6317, !6318}
!6313 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_per_chip", scope: !6311, file: !235, line: 1112, baseType: !7, size: 32)
!6314 = !DIDerivedType(tag: DW_TAG_member, name: "num_chips", scope: !6311, file: !235, line: 1113, baseType: !7, size: 32, offset: 32)
!6315 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_clear", scope: !6311, file: !235, line: 1114, baseType: !7, size: 32, offset: 64)
!6316 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_set", scope: !6311, file: !235, line: 1115, baseType: !7, size: 32, offset: 96)
!6317 = !DIDerivedType(tag: DW_TAG_member, name: "gc_flags", scope: !6311, file: !235, line: 1116, baseType: !234, size: 32, offset: 128)
!6318 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !6311, file: !235, line: 1117, baseType: !6319, offset: 192)
!6319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6320, elements: !2091)
!6320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6321, size: 64)
!6321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_generic", file: !235, line: 1061, size: 1024, elements: !6322)
!6322 = !{!6323, !6324, !6325, !6329, !6333, !6337, !6338, !6339, !6340, !6341, !6342, !6343, !6344, !6345, !6346, !6347, !6348, !6349, !6350, !6351}
!6323 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6321, file: !235, line: 1062, baseType: !393, size: 32)
!6324 = !DIDerivedType(tag: DW_TAG_member, name: "reg_base", scope: !6321, file: !235, line: 1063, baseType: !32, size: 64, offset: 64)
!6325 = !DIDerivedType(tag: DW_TAG_member, name: "reg_readl", scope: !6321, file: !235, line: 1064, baseType: !6326, size: 64, offset: 128)
!6326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6327, size: 64)
!6327 = !DISubroutineType(types: !6328)
!6328 = !{!390, !32}
!6329 = !DIDerivedType(tag: DW_TAG_member, name: "reg_writel", scope: !6321, file: !235, line: 1065, baseType: !6330, size: 64, offset: 192)
!6330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6331, size: 64)
!6331 = !DISubroutineType(types: !6332)
!6332 = !{null, !390, !32}
!6333 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !6321, file: !235, line: 1066, baseType: !6334, size: 64, offset: 256)
!6334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6335, size: 64)
!6335 = !DISubroutineType(types: !6336)
!6336 = !{null, !6320}
!6337 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !6321, file: !235, line: 1067, baseType: !6334, size: 64, offset: 320)
!6338 = !DIDerivedType(tag: DW_TAG_member, name: "irq_base", scope: !6321, file: !235, line: 1068, baseType: !7, size: 32, offset: 384)
!6339 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cnt", scope: !6321, file: !235, line: 1069, baseType: !7, size: 32, offset: 416)
!6340 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !6321, file: !235, line: 1070, baseType: !390, size: 32, offset: 448)
!6341 = !DIDerivedType(tag: DW_TAG_member, name: "type_cache", scope: !6321, file: !235, line: 1071, baseType: !390, size: 32, offset: 480)
!6342 = !DIDerivedType(tag: DW_TAG_member, name: "polarity_cache", scope: !6321, file: !235, line: 1072, baseType: !390, size: 32, offset: 512)
!6343 = !DIDerivedType(tag: DW_TAG_member, name: "wake_enabled", scope: !6321, file: !235, line: 1073, baseType: !390, size: 32, offset: 544)
!6344 = !DIDerivedType(tag: DW_TAG_member, name: "wake_active", scope: !6321, file: !235, line: 1074, baseType: !390, size: 32, offset: 576)
!6345 = !DIDerivedType(tag: DW_TAG_member, name: "num_ct", scope: !6321, file: !235, line: 1075, baseType: !7, size: 32, offset: 608)
!6346 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !6321, file: !235, line: 1076, baseType: !32, size: 64, offset: 640)
!6347 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !6321, file: !235, line: 1077, baseType: !51, size: 64, offset: 704)
!6348 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !6321, file: !235, line: 1078, baseType: !51, size: 64, offset: 768)
!6349 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !6321, file: !235, line: 1079, baseType: !5882, size: 64, offset: 832)
!6350 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !6321, file: !235, line: 1080, baseType: !109, size: 128, offset: 896)
!6351 = !DIDerivedType(tag: DW_TAG_member, name: "chip_types", scope: !6321, file: !235, line: 1081, baseType: !6352, offset: 1024)
!6352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6353, elements: !2091)
!6353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_type", file: !235, line: 1019, size: 2752, elements: !6354)
!6354 = !{!6355, !6356, !6366, !6451, !6452, !6453}
!6355 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !6353, file: !235, line: 1020, baseType: !6217, size: 2112)
!6356 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !6353, file: !235, line: 1021, baseType: !6357, size: 448, offset: 2112)
!6357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_regs", file: !235, line: 996, size: 448, elements: !6358)
!6358 = !{!6359, !6360, !6361, !6362, !6363, !6364, !6365}
!6359 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !6357, file: !235, line: 997, baseType: !51, size: 64)
!6360 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !6357, file: !235, line: 998, baseType: !51, size: 64, offset: 64)
!6361 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !6357, file: !235, line: 999, baseType: !51, size: 64, offset: 128)
!6362 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !6357, file: !235, line: 1000, baseType: !51, size: 64, offset: 192)
!6363 = !DIDerivedType(tag: DW_TAG_member, name: "eoi", scope: !6357, file: !235, line: 1001, baseType: !51, size: 64, offset: 256)
!6364 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6357, file: !235, line: 1002, baseType: !51, size: 64, offset: 320)
!6365 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !6357, file: !235, line: 1003, baseType: !51, size: 64, offset: 384)
!6366 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !6353, file: !235, line: 1022, baseType: !6367, size: 64, offset: 2560)
!6367 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !6368, line: 12, baseType: !6369)
!6368 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12f502f2f1e55658b1d5aa186ee65843")
!6369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6370, size: 64)
!6370 = !DISubroutineType(types: !6371)
!6371 = !{null, !6372}
!6372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6373, size: 64)
!6373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !6374, line: 55, size: 3584, align: 512, elements: !6375)
!6374 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "435ffcdb49377a4c91932ebe21d66dca")
!6375 = !{!6376, !6377, !6378, !6379, !6380, !6404, !6405, !6406, !6407, !6408, !6409, !6410, !6411, !6412, !6413, !6414, !6415, !6417, !6418, !6419, !6435, !6436, !6437, !6438, !6439, !6440, !6441, !6442, !6443, !6444, !6445, !6446, !6447, !6448, !6449, !6450}
!6376 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !6373, file: !6374, line: 56, baseType: !6068, size: 320)
!6377 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !6373, file: !6374, line: 57, baseType: !6061, size: 448, offset: 320)
!6378 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !6373, file: !6374, line: 58, baseType: !904, size: 64, offset: 768)
!6379 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !6373, file: !6374, line: 59, baseType: !6367, size: 64, offset: 832)
!6380 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !6373, file: !6374, line: 60, baseType: !6381, size: 64, offset: 896)
!6381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6382, size: 64)
!6382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !228, line: 118, size: 1024, align: 512, elements: !6383)
!6383 = !{!6384, !6390, !6391, !6392, !6393, !6394, !6395, !6396, !6397, !6398, !6399, !6400, !6401}
!6384 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !6382, file: !228, line: 119, baseType: !6385, size: 64)
!6385 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !228, line: 100, baseType: !6386)
!6386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6387, size: 64)
!6387 = !DISubroutineType(types: !6388)
!6388 = !{!6389, !34, !32}
!6389 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !243, line: 17, baseType: !242)
!6390 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !6382, file: !228, line: 120, baseType: !32, size: 64, offset: 64)
!6391 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_dev_id", scope: !6382, file: !228, line: 121, baseType: !32, size: 64, offset: 128)
!6392 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6382, file: !228, line: 122, baseType: !6381, size: 64, offset: 192)
!6393 = !DIDerivedType(tag: DW_TAG_member, name: "thread_fn", scope: !6382, file: !228, line: 123, baseType: !6385, size: 64, offset: 256)
!6394 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !6382, file: !228, line: 124, baseType: !1445, size: 64, offset: 320)
!6395 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !6382, file: !228, line: 125, baseType: !6381, size: 64, offset: 384)
!6396 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !6382, file: !228, line: 126, baseType: !7, size: 32, offset: 448)
!6397 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6382, file: !228, line: 127, baseType: !7, size: 32, offset: 480)
!6398 = !DIDerivedType(tag: DW_TAG_member, name: "thread_flags", scope: !6382, file: !228, line: 128, baseType: !51, size: 64, offset: 512)
!6399 = !DIDerivedType(tag: DW_TAG_member, name: "thread_mask", scope: !6382, file: !228, line: 129, baseType: !51, size: 64, offset: 576)
!6400 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6382, file: !228, line: 130, baseType: !28, size: 64, offset: 640)
!6401 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !6382, file: !228, line: 131, baseType: !6402, size: 64, offset: 704)
!6402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6403, size: 64)
!6403 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !6374, line: 14, flags: DIFlagFwdDecl)
!6404 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !6373, file: !6374, line: 61, baseType: !7, size: 32, offset: 960)
!6405 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !6373, file: !6374, line: 62, baseType: !7, size: 32, offset: 992)
!6406 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !6373, file: !6374, line: 63, baseType: !7, size: 32, offset: 1024)
!6407 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !6373, file: !6374, line: 64, baseType: !7, size: 32, offset: 1056)
!6408 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !6373, file: !6374, line: 65, baseType: !7, size: 32, offset: 1088)
!6409 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !6373, file: !6374, line: 66, baseType: !7, size: 32, offset: 1120)
!6410 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !6373, file: !6374, line: 67, baseType: !51, size: 64, offset: 1152)
!6411 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !6373, file: !6374, line: 68, baseType: !7, size: 32, offset: 1216)
!6412 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !6373, file: !6374, line: 69, baseType: !61, size: 32, offset: 1248)
!6413 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !6373, file: !6374, line: 70, baseType: !34, size: 32, offset: 1280)
!6414 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6373, file: !6374, line: 71, baseType: !393, size: 32, offset: 1312)
!6415 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !6373, file: !6374, line: 72, baseType: !6416, size: 64, offset: 1344)
!6416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!6417 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !6373, file: !6374, line: 73, baseType: !6239, size: 64, offset: 1408)
!6418 = !DIDerivedType(tag: DW_TAG_member, name: "affinity_hint", scope: !6373, file: !6374, line: 75, baseType: !6239, size: 64, offset: 1472)
!6419 = !DIDerivedType(tag: DW_TAG_member, name: "affinity_notify", scope: !6373, file: !6374, line: 76, baseType: !6420, size: 64, offset: 1536)
!6420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6421, size: 64)
!6421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity_notify", file: !228, line: 261, size: 448, elements: !6422)
!6422 = !{!6423, !6424, !6425, !6426, !6430}
!6423 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !6421, file: !228, line: 262, baseType: !7, size: 32)
!6424 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !6421, file: !228, line: 263, baseType: !5613, size: 32, offset: 32)
!6425 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !6421, file: !228, line: 264, baseType: !1086, size: 256, offset: 64)
!6426 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !6421, file: !228, line: 265, baseType: !6427, size: 64, offset: 320)
!6427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6428, size: 64)
!6428 = !DISubroutineType(types: !6429)
!6429 = !{null, !6420, !1679}
!6430 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !6421, file: !228, line: 266, baseType: !6431, size: 64, offset: 384)
!6431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6432, size: 64)
!6432 = !DISubroutineType(types: !6433)
!6433 = !{null, !6434}
!6434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5613, size: 64)
!6435 = !DIDerivedType(tag: DW_TAG_member, name: "pending_mask", scope: !6373, file: !6374, line: 78, baseType: !1322, size: 64, offset: 1600)
!6436 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !6373, file: !6374, line: 81, baseType: !51, size: 64, offset: 1664)
!6437 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !6373, file: !6374, line: 82, baseType: !61, size: 32, offset: 1728)
!6438 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !6373, file: !6374, line: 83, baseType: !66, size: 192, offset: 1792)
!6439 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !6373, file: !6374, line: 85, baseType: !7, size: 32, offset: 1984)
!6440 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !6373, file: !6374, line: 86, baseType: !7, size: 32, offset: 2016)
!6441 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !6373, file: !6374, line: 87, baseType: !7, size: 32, offset: 2048)
!6442 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !6373, file: !6374, line: 88, baseType: !7, size: 32, offset: 2080)
!6443 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !6373, file: !6374, line: 91, baseType: !6402, size: 64, offset: 2112)
!6444 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !6373, file: !6374, line: 98, baseType: !1048, size: 128, align: 64, offset: 2176)
!6445 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !6373, file: !6374, line: 99, baseType: !465, size: 512, offset: 2304)
!6446 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !6373, file: !6374, line: 101, baseType: !832, size: 256, offset: 2816)
!6447 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !6373, file: !6374, line: 102, baseType: !34, size: 32, offset: 3072)
!6448 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !6373, file: !6374, line: 103, baseType: !762, size: 64, offset: 3136)
!6449 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6373, file: !6374, line: 104, baseType: !28, size: 64, offset: 3200)
!6450 = !DIDerivedType(tag: DW_TAG_member, name: "resend_node", scope: !6373, file: !6374, line: 106, baseType: !1072, size: 128, offset: 3264)
!6451 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6353, file: !235, line: 1023, baseType: !390, size: 32, offset: 2624)
!6452 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache_priv", scope: !6353, file: !235, line: 1024, baseType: !390, size: 32, offset: 2656)
!6453 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !6353, file: !235, line: 1025, baseType: !2858, size: 64, offset: 2688)
!6454 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5883, file: !5884, line: 164, baseType: !461, size: 64, offset: 896)
!6455 = !DIDerivedType(tag: DW_TAG_member, name: "pm_dev", scope: !5883, file: !5884, line: 165, baseType: !461, size: 64, offset: 960)
!6456 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5883, file: !5884, line: 167, baseType: !5882, size: 64, offset: 1024)
!6457 = !DIDerivedType(tag: DW_TAG_member, name: "msi_parent_ops", scope: !5883, file: !5884, line: 170, baseType: !6458, size: 64, offset: 1088)
!6458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6459, size: 64)
!6459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6460)
!6460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_parent_ops", file: !6076, line: 580, size: 192, elements: !6461)
!6461 = !{!6462, !6463, !6464}
!6462 = !DIDerivedType(tag: DW_TAG_member, name: "supported_flags", scope: !6460, file: !6076, line: 581, baseType: !390, size: 32)
!6463 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !6460, file: !6076, line: 582, baseType: !28, size: 64, offset: 64)
!6464 = !DIDerivedType(tag: DW_TAG_member, name: "init_dev_msi_info", scope: !6460, file: !6076, line: 583, baseType: !6465, size: 64, offset: 128)
!6465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6466, size: 64)
!6466 = !DISubroutineType(types: !6467)
!6467 = !{!459, !461, !5882, !5882, !6468}
!6468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6469, size: 64)
!6469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_domain_info", file: !6076, line: 489, size: 576, elements: !6470)
!6470 = !{!6471, !6472, !6473, !6474, !6540, !6541, !6542, !6543, !6544, !6545}
!6471 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6469, file: !6076, line: 490, baseType: !390, size: 32)
!6472 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !6469, file: !6076, line: 491, baseType: !208, size: 32, offset: 32)
!6473 = !DIDerivedType(tag: DW_TAG_member, name: "hwsize", scope: !6469, file: !6076, line: 492, baseType: !7, size: 32, offset: 64)
!6474 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !6469, file: !6076, line: 493, baseType: !6475, size: 64, offset: 128)
!6475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6476, size: 64)
!6476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_domain_ops", file: !6076, line: 448, size: 576, elements: !6477)
!6477 = !{!6478, !6511, !6515, !6519, !6523, !6527, !6531, !6535, !6539}
!6478 = !DIDerivedType(tag: DW_TAG_member, name: "get_hwirq", scope: !6476, file: !6076, line: 449, baseType: !6479, size: 64)
!6479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6480, size: 64)
!6480 = !DISubroutineType(types: !6481)
!6481 = !{!6037, !6468, !6482}
!6482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6483, size: 64)
!6483 = !DIDerivedType(tag: DW_TAG_typedef, name: "msi_alloc_info_t", file: !6090, line: 7, baseType: !6484)
!6484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_alloc_info", file: !249, line: 75, size: 576, elements: !6485)
!6485 = !{!6486, !6487, !6488, !6489, !6490, !6491, !6492, !6493}
!6486 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6484, file: !249, line: 76, baseType: !248, size: 32)
!6487 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6484, file: !249, line: 77, baseType: !390, size: 32, offset: 32)
!6488 = !DIDerivedType(tag: DW_TAG_member, name: "devid", scope: !6484, file: !249, line: 78, baseType: !390, size: 32, offset: 64)
!6489 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !6484, file: !249, line: 79, baseType: !6037, size: 64, offset: 128)
!6490 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !6484, file: !249, line: 80, baseType: !6239, size: 64, offset: 192)
!6491 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !6484, file: !249, line: 81, baseType: !6074, size: 64, offset: 256)
!6492 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !6484, file: !249, line: 82, baseType: !32, size: 64, offset: 320)
!6493 = !DIDerivedType(tag: DW_TAG_member, scope: !6484, file: !249, line: 84, baseType: !6494, size: 192, offset: 384)
!6494 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6484, file: !249, line: 84, size: 192, elements: !6495)
!6495 = !{!6496, !6504}
!6496 = !DIDerivedType(tag: DW_TAG_member, name: "ioapic", scope: !6494, file: !249, line: 85, baseType: !6497, size: 96)
!6497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ioapic_alloc_info", file: !249, line: 46, size: 96, elements: !6498)
!6498 = !{!6499, !6500, !6501, !6502, !6503}
!6499 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !6497, file: !249, line: 47, baseType: !34, size: 32)
!6500 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !6497, file: !249, line: 48, baseType: !34, size: 32, offset: 32)
!6501 = !DIDerivedType(tag: DW_TAG_member, name: "is_level", scope: !6497, file: !249, line: 49, baseType: !390, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!6502 = !DIDerivedType(tag: DW_TAG_member, name: "active_low", scope: !6497, file: !249, line: 50, baseType: !390, size: 1, offset: 65, flags: DIFlagBitField, extraData: i64 64)
!6503 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !6497, file: !249, line: 51, baseType: !390, size: 1, offset: 66, flags: DIFlagBitField, extraData: i64 64)
!6504 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !6494, file: !249, line: 86, baseType: !6505, size: 192)
!6505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uv_alloc_info", file: !249, line: 54, size: 192, elements: !6506)
!6506 = !{!6507, !6508, !6509, !6510}
!6507 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !6505, file: !249, line: 55, baseType: !34, size: 32)
!6508 = !DIDerivedType(tag: DW_TAG_member, name: "blade", scope: !6505, file: !249, line: 56, baseType: !34, size: 32, offset: 32)
!6509 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !6505, file: !249, line: 57, baseType: !51, size: 64, offset: 64)
!6510 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6505, file: !249, line: 58, baseType: !506, size: 64, offset: 128)
!6511 = !DIDerivedType(tag: DW_TAG_member, name: "msi_init", scope: !6476, file: !6076, line: 451, baseType: !6512, size: 64, offset: 64)
!6512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6513, size: 64)
!6513 = !DISubroutineType(types: !6514)
!6514 = !{!34, !5882, !6468, !7, !6037, !6482}
!6515 = !DIDerivedType(tag: DW_TAG_member, name: "msi_free", scope: !6476, file: !6076, line: 455, baseType: !6516, size: 64, offset: 128)
!6516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6517, size: 64)
!6517 = !DISubroutineType(types: !6518)
!6518 = !{null, !5882, !6468, !7}
!6519 = !DIDerivedType(tag: DW_TAG_member, name: "msi_prepare", scope: !6476, file: !6076, line: 458, baseType: !6520, size: 64, offset: 192)
!6520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6521, size: 64)
!6521 = !DISubroutineType(types: !6522)
!6522 = !{!34, !5882, !461, !34, !6482}
!6523 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_desc", scope: !6476, file: !6076, line: 461, baseType: !6524, size: 64, offset: 256)
!6524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6525, size: 64)
!6525 = !DISubroutineType(types: !6526)
!6526 = !{null, !5882, !6482, !6074}
!6527 = !DIDerivedType(tag: DW_TAG_member, name: "set_desc", scope: !6476, file: !6076, line: 463, baseType: !6528, size: 64, offset: 320)
!6528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6529, size: 64)
!6529 = !DISubroutineType(types: !6530)
!6530 = !{null, !6482, !6074}
!6531 = !DIDerivedType(tag: DW_TAG_member, name: "domain_alloc_irqs", scope: !6476, file: !6076, line: 465, baseType: !6532, size: 64, offset: 384)
!6532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6533, size: 64)
!6533 = !DISubroutineType(types: !6534)
!6534 = !{!34, !5882, !461, !34}
!6535 = !DIDerivedType(tag: DW_TAG_member, name: "domain_free_irqs", scope: !6476, file: !6076, line: 467, baseType: !6536, size: 64, offset: 448)
!6536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6537, size: 64)
!6537 = !DISubroutineType(types: !6538)
!6538 = !{null, !5882, !461}
!6539 = !DIDerivedType(tag: DW_TAG_member, name: "msi_post_free", scope: !6476, file: !6076, line: 469, baseType: !6536, size: 64, offset: 512)
!6540 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !6469, file: !6076, line: 494, baseType: !6216, size: 64, offset: 192)
!6541 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !6469, file: !6076, line: 495, baseType: !32, size: 64, offset: 256)
!6542 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !6469, file: !6076, line: 496, baseType: !6367, size: 64, offset: 320)
!6543 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !6469, file: !6076, line: 497, baseType: !32, size: 64, offset: 384)
!6544 = !DIDerivedType(tag: DW_TAG_member, name: "handler_name", scope: !6469, file: !6076, line: 498, baseType: !28, size: 64, offset: 448)
!6545 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !6469, file: !6076, line: 499, baseType: !32, size: 64, offset: 512)
!6546 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !5883, file: !5884, line: 174, baseType: !6037, size: 64, offset: 1152)
!6547 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !5883, file: !5884, line: 175, baseType: !7, size: 32, offset: 1216)
!6548 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !5883, file: !5884, line: 176, baseType: !1822, size: 128, offset: 1280)
!6549 = !DIDerivedType(tag: DW_TAG_member, name: "revmap", scope: !5883, file: !5884, line: 177, baseType: !6550, offset: 1408)
!6550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6060, elements: !2091)
!6551 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5879, file: !187, line: 532, baseType: !6552, size: 64, offset: 64)
!6552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6553, size: 64)
!6553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !6076, line: 239, size: 832, elements: !6554)
!6554 = !{!6555, !6556, !6559, !6560, !6566}
!6555 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !6553, file: !6076, line: 240, baseType: !51, size: 64)
!6556 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !6553, file: !6076, line: 241, baseType: !6557, size: 64, offset: 64)
!6557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6558, size: 64)
!6558 = !DICompositeType(tag: DW_TAG_structure_type, name: "platform_msi_priv_data", file: !6076, line: 84, flags: DIFlagFwdDecl)
!6559 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !6553, file: !6076, line: 242, baseType: !832, size: 256, offset: 128)
!6560 = !DIDerivedType(tag: DW_TAG_member, name: "__domains", scope: !6553, file: !6076, line: 243, baseType: !6561, size: 384, offset: 384)
!6561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6562, size: 384, elements: !949)
!6562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_dev_domain", file: !6076, line: 226, size: 192, elements: !6563)
!6563 = !{!6564, !6565}
!6564 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !6562, file: !6076, line: 227, baseType: !1822, size: 128)
!6565 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !6562, file: !6076, line: 228, baseType: !5882, size: 64, offset: 128)
!6566 = !DIDerivedType(tag: DW_TAG_member, name: "__iter_idx", scope: !6553, file: !6076, line: 244, baseType: !51, size: 64, offset: 768)
!6567 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !462, file: !187, line: 738, baseType: !6568, size: 64, offset: 4416)
!6568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6569, size: 64)
!6569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6570)
!6570 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !187, line: 738, flags: DIFlagFwdDecl)
!6571 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !462, file: !187, line: 740, baseType: !6572, size: 64, offset: 4480)
!6572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!6573 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !462, file: !187, line: 741, baseType: !378, size: 64, offset: 4544)
!6574 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !462, file: !187, line: 746, baseType: !378, size: 64, offset: 4608)
!6575 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !462, file: !187, line: 747, baseType: !6576, size: 64, offset: 4672)
!6576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6577, size: 64)
!6577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6578)
!6578 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !187, line: 747, flags: DIFlagFwdDecl)
!6579 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !462, file: !187, line: 749, baseType: !6580, size: 64, offset: 4736)
!6580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6581, size: 64)
!6581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !187, line: 428, size: 128, elements: !6582)
!6582 = !{!6583, !6584, !6585}
!6583 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !6581, file: !187, line: 433, baseType: !7, size: 32)
!6584 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !6581, file: !187, line: 434, baseType: !7, size: 32, offset: 32)
!6585 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !6581, file: !187, line: 435, baseType: !51, size: 64, offset: 64)
!6586 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !462, file: !187, line: 751, baseType: !109, size: 128, offset: 4800)
!6587 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !462, file: !187, line: 762, baseType: !6588, size: 64, offset: 4928)
!6588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6589, size: 64)
!6589 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !187, line: 762, flags: DIFlagFwdDecl)
!6590 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !462, file: !187, line: 770, baseType: !6591, offset: 4992)
!6591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !6592, line: 5, elements: !1115)
!6592 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!6593 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !462, file: !187, line: 772, baseType: !5897, size: 64, offset: 4992)
!6594 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !462, file: !187, line: 773, baseType: !5910, size: 64, offset: 5056)
!6595 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !462, file: !187, line: 776, baseType: !34, size: 32, offset: 5120)
!6596 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !462, file: !187, line: 778, baseType: !731, size: 32, offset: 5152)
!6597 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !462, file: !187, line: 779, baseType: !390, size: 32, offset: 5184)
!6598 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !462, file: !187, line: 781, baseType: !71, size: 32, offset: 5216)
!6599 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !462, file: !187, line: 782, baseType: !109, size: 128, offset: 5248)
!6600 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !462, file: !187, line: 784, baseType: !6601, size: 64, offset: 5376)
!6601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6602, size: 64)
!6602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6603)
!6603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !6604, line: 52, size: 768, elements: !6605)
!6604 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!6605 = !{!6606, !6607, !6608, !6609, !6610, !6614, !6618, !6619, !6620, !6621, !6625, !6629}
!6606 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6603, file: !6604, line: 53, baseType: !28, size: 64)
!6607 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !6603, file: !6604, line: 55, baseType: !552, size: 64, offset: 64)
!6608 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !6603, file: !6604, line: 56, baseType: !552, size: 64, offset: 128)
!6609 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !6603, file: !6604, line: 58, baseType: !5635, size: 64, offset: 192)
!6610 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !6603, file: !6604, line: 59, baseType: !6611, size: 64, offset: 256)
!6611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6612, size: 64)
!6612 = !DISubroutineType(types: !6613)
!6613 = !{!506, !5638, !5644}
!6614 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !6603, file: !6604, line: 61, baseType: !6615, size: 64, offset: 320)
!6615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6616, size: 64)
!6616 = !DISubroutineType(types: !6617)
!6617 = !{null, !6601}
!6618 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !6603, file: !6604, line: 62, baseType: !5646, size: 64, offset: 384)
!6619 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !6603, file: !6604, line: 64, baseType: !5655, size: 64, offset: 448)
!6620 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !6603, file: !6604, line: 66, baseType: !5579, size: 64, offset: 512)
!6621 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !6603, file: !6604, line: 67, baseType: !6622, size: 64, offset: 576)
!6622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6623, size: 64)
!6623 = !DISubroutineType(types: !6624)
!6624 = !{!2781, !5638}
!6625 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !6603, file: !6604, line: 69, baseType: !6626, size: 64, offset: 640)
!6626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6627, size: 64)
!6627 = !DISubroutineType(types: !6628)
!6628 = !{null, !5638, !2052, !2053}
!6629 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !6603, file: !6604, line: 71, baseType: !5650, size: 64, offset: 704)
!6630 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !462, file: !187, line: 785, baseType: !552, size: 64, offset: 5440)
!6631 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !462, file: !187, line: 787, baseType: !5646, size: 64, offset: 5504)
!6632 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !462, file: !187, line: 788, baseType: !6633, size: 64, offset: 5568)
!6633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6634, size: 64)
!6634 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !187, line: 46, flags: DIFlagFwdDecl)
!6635 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !462, file: !187, line: 789, baseType: !6636, size: 64, offset: 5632)
!6636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6637, size: 64)
!6637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !163, line: 425, size: 640, elements: !6638)
!6638 = !{!6639, !6640, !6681, !6684, !6694, !6696, !6697, !6698, !6699, !6700}
!6639 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6637, file: !163, line: 426, baseType: !832, size: 256)
!6640 = !DIDerivedType(tag: DW_TAG_member, name: "fault_param", scope: !6637, file: !163, line: 427, baseType: !6641, size: 64, offset: 256)
!6641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6642, size: 64)
!6642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_fault_param", file: !163, line: 402, size: 512, elements: !6643)
!6643 = !{!6644, !6678, !6679, !6680}
!6644 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !6642, file: !163, line: 403, baseType: !6645, size: 64)
!6645 = !DIDerivedType(tag: DW_TAG_typedef, name: "iommu_dev_fault_handler_t", file: !163, line: 51, baseType: !6646)
!6646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6647, size: 64)
!6647 = !DISubroutineType(types: !6648)
!6648 = !{!34, !6649, !32}
!6649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6650, size: 64)
!6650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_fault", file: !171, line: 115, size: 512, elements: !6651)
!6651 = !{!6652, !6653, !6654}
!6652 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6650, file: !171, line: 116, baseType: !391, size: 32)
!6653 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !6650, file: !171, line: 117, baseType: !391, size: 32, offset: 32)
!6654 = !DIDerivedType(tag: DW_TAG_member, scope: !6650, file: !171, line: 118, baseType: !6655, size: 448, offset: 64)
!6655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6650, file: !171, line: 118, size: 448, elements: !6656)
!6656 = !{!6657, !6666, !6676}
!6657 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !6655, file: !171, line: 119, baseType: !6658, size: 256)
!6658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_fault_unrecoverable", file: !171, line: 69, size: 256, elements: !6659)
!6659 = !{!6660, !6661, !6662, !6663, !6664, !6665}
!6660 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !6658, file: !171, line: 70, baseType: !391, size: 32)
!6661 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6658, file: !171, line: 74, baseType: !391, size: 32, offset: 32)
!6662 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !6658, file: !171, line: 75, baseType: !391, size: 32, offset: 64)
!6663 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !6658, file: !171, line: 76, baseType: !391, size: 32, offset: 96)
!6664 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !6658, file: !171, line: 77, baseType: !379, size: 64, offset: 128)
!6665 = !DIDerivedType(tag: DW_TAG_member, name: "fetch_addr", scope: !6658, file: !171, line: 78, baseType: !379, size: 64, offset: 192)
!6666 = !DIDerivedType(tag: DW_TAG_member, name: "prm", scope: !6655, file: !171, line: 120, baseType: !6667, size: 320)
!6667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_fault_page_request", file: !171, line: 94, size: 320, elements: !6668)
!6668 = !{!6669, !6670, !6671, !6672, !6673, !6674}
!6669 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6667, file: !171, line: 99, baseType: !391, size: 32)
!6670 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !6667, file: !171, line: 100, baseType: !391, size: 32, offset: 32)
!6671 = !DIDerivedType(tag: DW_TAG_member, name: "grpid", scope: !6667, file: !171, line: 101, baseType: !391, size: 32, offset: 64)
!6672 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !6667, file: !171, line: 102, baseType: !391, size: 32, offset: 96)
!6673 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !6667, file: !171, line: 103, baseType: !379, size: 64, offset: 128)
!6674 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !6667, file: !171, line: 104, baseType: !6675, size: 128, offset: 192)
!6675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 128, elements: !949)
!6676 = !DIDerivedType(tag: DW_TAG_member, name: "padding2", scope: !6655, file: !171, line: 121, baseType: !6677, size: 448)
!6677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 448, elements: !769)
!6678 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !6642, file: !163, line: 404, baseType: !32, size: 64, offset: 64)
!6679 = !DIDerivedType(tag: DW_TAG_member, name: "faults", scope: !6642, file: !163, line: 405, baseType: !109, size: 128, offset: 128)
!6680 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6642, file: !163, line: 406, baseType: !832, size: 256, offset: 256)
!6681 = !DIDerivedType(tag: DW_TAG_member, name: "iopf_param", scope: !6637, file: !163, line: 428, baseType: !6682, size: 64, offset: 320)
!6682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6683, size: 64)
!6683 = !DICompositeType(tag: DW_TAG_structure_type, name: "iopf_device_param", file: !163, line: 428, flags: DIFlagFwdDecl)
!6684 = !DIDerivedType(tag: DW_TAG_member, name: "fwspec", scope: !6637, file: !163, line: 429, baseType: !6685, size: 64, offset: 384)
!6685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6686, size: 64)
!6686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_fwspec", file: !163, line: 654, size: 192, elements: !6687)
!6687 = !{!6688, !6689, !6690, !6691, !6692}
!6688 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !6686, file: !163, line: 655, baseType: !451, size: 64)
!6689 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_fwnode", scope: !6686, file: !163, line: 656, baseType: !5910, size: 64, offset: 64)
!6690 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6686, file: !163, line: 657, baseType: !390, size: 32, offset: 128)
!6691 = !DIDerivedType(tag: DW_TAG_member, name: "num_ids", scope: !6686, file: !163, line: 658, baseType: !7, size: 32, offset: 160)
!6692 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !6686, file: !163, line: 659, baseType: !6693, offset: 192)
!6693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, elements: !2091)
!6694 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_dev", scope: !6637, file: !163, line: 430, baseType: !6695, size: 64, offset: 448)
!6695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!6696 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !6637, file: !163, line: 431, baseType: !32, size: 64, offset: 512)
!6697 = !DIDerivedType(tag: DW_TAG_member, name: "max_pasids", scope: !6637, file: !163, line: 432, baseType: !390, size: 32, offset: 576)
!6698 = !DIDerivedType(tag: DW_TAG_member, name: "attach_deferred", scope: !6637, file: !163, line: 433, baseType: !390, size: 1, offset: 608, flags: DIFlagBitField, extraData: i64 608)
!6699 = !DIDerivedType(tag: DW_TAG_member, name: "pci_32bit_workaround", scope: !6637, file: !163, line: 434, baseType: !390, size: 1, offset: 609, flags: DIFlagBitField, extraData: i64 608)
!6700 = !DIDerivedType(tag: DW_TAG_member, name: "require_direct", scope: !6637, file: !163, line: 435, baseType: !390, size: 1, offset: 610, flags: DIFlagBitField, extraData: i64 608)
!6701 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !462, file: !187, line: 791, baseType: !6702, size: 64, offset: 5696)
!6702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6703, size: 64)
!6703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !187, line: 597, size: 128, elements: !6704)
!6704 = !{!6705, !6706, !6707, !6708, !6709}
!6705 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !6703, file: !187, line: 598, baseType: !264, size: 32)
!6706 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !6703, file: !187, line: 599, baseType: !273, size: 32, offset: 32)
!6707 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !6703, file: !187, line: 600, baseType: !278, size: 32, offset: 64)
!6708 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !6703, file: !187, line: 601, baseType: !459, size: 8, offset: 96)
!6709 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !6703, file: !187, line: 602, baseType: !459, size: 8, offset: 104)
!6710 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !462, file: !187, line: 793, baseType: !283, size: 32, offset: 5760)
!6711 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !462, file: !187, line: 795, baseType: !459, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!6712 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !462, file: !187, line: 796, baseType: !459, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!6713 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !462, file: !187, line: 797, baseType: !459, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!6714 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !462, file: !187, line: 798, baseType: !459, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!6715 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !462, file: !187, line: 799, baseType: !459, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!6716 = !DIDerivedType(tag: DW_TAG_member, name: "hw_info", scope: !453, file: !163, line: 266, baseType: !6717, size: 64, offset: 64)
!6717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6718, size: 64)
!6718 = !DISubroutineType(types: !6719)
!6719 = !{!32, !461, !2858, !2858}
!6720 = !DIDerivedType(tag: DW_TAG_member, name: "domain_alloc", scope: !453, file: !163, line: 269, baseType: !6721, size: 64, offset: 128)
!6721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6722, size: 64)
!6722 = !DISubroutineType(types: !6723)
!6723 = !{!6724, !7}
!6724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6725, size: 64)
!6725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_domain", file: !163, line: 95, size: 704, elements: !6726)
!6726 = !{!6727, !6728, !6796, !6797, !6803, !6806, !6810, !6811}
!6727 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6725, file: !163, line: 96, baseType: !7, size: 32)
!6728 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !6725, file: !163, line: 97, baseType: !6729, size: 64, offset: 64)
!6729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6730, size: 64)
!6730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6731)
!6731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_domain_ops", file: !163, line: 332, size: 896, elements: !6732)
!6732 = !{!6733, !6737, !6742, !6746, !6750, !6762, !6766, !6770, !6774, !6778, !6783, !6787, !6791, !6795}
!6733 = !DIDerivedType(tag: DW_TAG_member, name: "attach_dev", scope: !6731, file: !163, line: 333, baseType: !6734, size: 64)
!6734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6735, size: 64)
!6735 = !DISubroutineType(types: !6736)
!6736 = !{!34, !6724, !461}
!6737 = !DIDerivedType(tag: DW_TAG_member, name: "set_dev_pasid", scope: !6731, file: !163, line: 334, baseType: !6738, size: 64, offset: 64)
!6738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6739, size: 64)
!6739 = !DISubroutineType(types: !6740)
!6740 = !{!34, !6724, !461, !6741}
!6741 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioasid_t", file: !163, line: 202, baseType: !7)
!6742 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !6731, file: !163, line: 337, baseType: !6743, size: 64, offset: 128)
!6743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6744, size: 64)
!6744 = !DISubroutineType(types: !6745)
!6745 = !{!34, !6724, !51, !3917, !47, !34, !1827}
!6746 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !6731, file: !163, line: 339, baseType: !6747, size: 64, offset: 192)
!6747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6748, size: 64)
!6748 = !DISubroutineType(types: !6749)
!6749 = !{!34, !6724, !51, !3917, !47, !47, !34, !1827, !46}
!6750 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !6731, file: !163, line: 342, baseType: !6751, size: 64, offset: 256)
!6751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6752, size: 64)
!6752 = !DISubroutineType(types: !6753)
!6753 = !{!47, !6724, !51, !47, !6754}
!6754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6755, size: 64)
!6755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_iotlb_gather", file: !163, line: 222, size: 384, elements: !6756)
!6756 = !{!6757, !6758, !6759, !6760, !6761}
!6757 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !6755, file: !163, line: 223, baseType: !51, size: 64)
!6758 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !6755, file: !163, line: 224, baseType: !51, size: 64, offset: 64)
!6759 = !DIDerivedType(tag: DW_TAG_member, name: "pgsize", scope: !6755, file: !163, line: 225, baseType: !47, size: 64, offset: 128)
!6760 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !6755, file: !163, line: 226, baseType: !109, size: 128, offset: 192)
!6761 = !DIDerivedType(tag: DW_TAG_member, name: "queued", scope: !6755, file: !163, line: 227, baseType: !459, size: 8, offset: 320)
!6762 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_pages", scope: !6731, file: !163, line: 344, baseType: !6763, size: 64, offset: 320)
!6763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6764, size: 64)
!6764 = !DISubroutineType(types: !6765)
!6765 = !{!47, !6724, !51, !47, !47, !6754}
!6766 = !DIDerivedType(tag: DW_TAG_member, name: "flush_iotlb_all", scope: !6731, file: !163, line: 348, baseType: !6767, size: 64, offset: 384)
!6767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6768, size: 64)
!6768 = !DISubroutineType(types: !6769)
!6769 = !{null, !6724}
!6770 = !DIDerivedType(tag: DW_TAG_member, name: "iotlb_sync_map", scope: !6731, file: !163, line: 349, baseType: !6771, size: 64, offset: 448)
!6771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6772, size: 64)
!6772 = !DISubroutineType(types: !6773)
!6773 = !{null, !6724, !51, !47}
!6774 = !DIDerivedType(tag: DW_TAG_member, name: "iotlb_sync", scope: !6731, file: !163, line: 351, baseType: !6775, size: 64, offset: 512)
!6775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6776, size: 64)
!6776 = !DISubroutineType(types: !6777)
!6777 = !{null, !6724, !6754}
!6778 = !DIDerivedType(tag: DW_TAG_member, name: "iova_to_phys", scope: !6731, file: !163, line: 354, baseType: !6779, size: 64, offset: 576)
!6779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6780, size: 64)
!6780 = !DISubroutineType(types: !6781)
!6781 = !{!3917, !6724, !6782}
!6782 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !37, line: 149, baseType: !378)
!6783 = !DIDerivedType(tag: DW_TAG_member, name: "enforce_cache_coherency", scope: !6731, file: !163, line: 357, baseType: !6784, size: 64, offset: 640)
!6784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6785, size: 64)
!6785 = !DISubroutineType(types: !6786)
!6786 = !{!459, !6724}
!6787 = !DIDerivedType(tag: DW_TAG_member, name: "enable_nesting", scope: !6731, file: !163, line: 358, baseType: !6788, size: 64, offset: 704)
!6788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6789, size: 64)
!6789 = !DISubroutineType(types: !6790)
!6790 = !{!34, !6724}
!6791 = !DIDerivedType(tag: DW_TAG_member, name: "set_pgtable_quirks", scope: !6731, file: !163, line: 359, baseType: !6792, size: 64, offset: 768)
!6792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6793, size: 64)
!6793 = !DISubroutineType(types: !6794)
!6794 = !{!34, !6724, !51}
!6795 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !6731, file: !163, line: 362, baseType: !6767, size: 64, offset: 832)
!6796 = !DIDerivedType(tag: DW_TAG_member, name: "pgsize_bitmap", scope: !6725, file: !163, line: 98, baseType: !51, size: 64, offset: 128)
!6797 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !6725, file: !163, line: 99, baseType: !6798, size: 192, offset: 192)
!6798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_domain_geometry", file: !163, line: 53, size: 192, elements: !6799)
!6799 = !{!6800, !6801, !6802}
!6800 = !DIDerivedType(tag: DW_TAG_member, name: "aperture_start", scope: !6798, file: !163, line: 54, baseType: !6782, size: 64)
!6801 = !DIDerivedType(tag: DW_TAG_member, name: "aperture_end", scope: !6798, file: !163, line: 55, baseType: !6782, size: 64, offset: 64)
!6802 = !DIDerivedType(tag: DW_TAG_member, name: "force_aperture", scope: !6798, file: !163, line: 56, baseType: !459, size: 8, offset: 128)
!6803 = !DIDerivedType(tag: DW_TAG_member, name: "iova_cookie", scope: !6725, file: !163, line: 100, baseType: !6804, size: 64, offset: 384)
!6804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6805, size: 64)
!6805 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_dma_cookie", file: !163, line: 43, flags: DIFlagFwdDecl)
!6806 = !DIDerivedType(tag: DW_TAG_member, name: "iopf_handler", scope: !6725, file: !163, line: 101, baseType: !6807, size: 64, offset: 448)
!6807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6808, size: 64)
!6808 = !DISubroutineType(types: !6809)
!6809 = !{!170, !6649, !32}
!6810 = !DIDerivedType(tag: DW_TAG_member, name: "fault_data", scope: !6725, file: !163, line: 103, baseType: !32, size: 64, offset: 512)
!6811 = !DIDerivedType(tag: DW_TAG_member, scope: !6725, file: !163, line: 104, baseType: !6812, size: 128, offset: 576)
!6812 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6725, file: !163, line: 104, size: 128, elements: !6813)
!6813 = !{!6814, !6823}
!6814 = !DIDerivedType(tag: DW_TAG_member, scope: !6812, file: !163, line: 105, baseType: !6815, size: 128)
!6815 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6812, file: !163, line: 105, size: 128, elements: !6816)
!6816 = !{!6817, !6822}
!6817 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !6815, file: !163, line: 106, baseType: !6818, size: 64)
!6818 = !DIDerivedType(tag: DW_TAG_typedef, name: "iommu_fault_handler_t", file: !163, line: 49, baseType: !6819)
!6819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6820, size: 64)
!6820 = !DISubroutineType(types: !6821)
!6821 = !{!34, !6724, !461, !51, !34, !32}
!6822 = !DIDerivedType(tag: DW_TAG_member, name: "handler_token", scope: !6815, file: !163, line: 107, baseType: !32, size: 64, offset: 64)
!6823 = !DIDerivedType(tag: DW_TAG_member, scope: !6812, file: !163, line: 109, baseType: !6824, size: 128)
!6824 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6812, file: !163, line: 109, size: 128, elements: !6825)
!6825 = !{!6826, !6827}
!6826 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !6824, file: !163, line: 110, baseType: !1728, size: 64)
!6827 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !6824, file: !163, line: 111, baseType: !34, size: 32, offset: 64)
!6828 = !DIDerivedType(tag: DW_TAG_member, name: "probe_device", scope: !453, file: !163, line: 271, baseType: !6829, size: 64, offset: 192)
!6829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6830, size: 64)
!6830 = !DISubroutineType(types: !6831)
!6831 = !{!6695, !461}
!6832 = !DIDerivedType(tag: DW_TAG_member, name: "release_device", scope: !453, file: !163, line: 272, baseType: !5646, size: 64, offset: 256)
!6833 = !DIDerivedType(tag: DW_TAG_member, name: "probe_finalize", scope: !453, file: !163, line: 273, baseType: !5646, size: 64, offset: 320)
!6834 = !DIDerivedType(tag: DW_TAG_member, name: "set_platform_dma_ops", scope: !453, file: !163, line: 274, baseType: !5646, size: 64, offset: 384)
!6835 = !DIDerivedType(tag: DW_TAG_member, name: "device_group", scope: !453, file: !163, line: 275, baseType: !6836, size: 64, offset: 448)
!6836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6837, size: 64)
!6837 = !DISubroutineType(types: !6838)
!6838 = !{!6633, !461}
!6839 = !DIDerivedType(tag: DW_TAG_member, name: "get_resv_regions", scope: !453, file: !163, line: 278, baseType: !6840, size: 64, offset: 512)
!6840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6841, size: 64)
!6841 = !DISubroutineType(types: !6842)
!6842 = !{null, !461, !112}
!6843 = !DIDerivedType(tag: DW_TAG_member, name: "of_xlate", scope: !453, file: !163, line: 280, baseType: !6844, size: 64, offset: 576)
!6844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6845, size: 64)
!6845 = !DISubroutineType(types: !6846)
!6846 = !{!34, !461, !6847}
!6847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6848, size: 64)
!6848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_phandle_args", file: !5899, line: 71, size: 640, elements: !6849)
!6849 = !{!6850, !6851, !6852}
!6850 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !6848, file: !5899, line: 72, baseType: !5897, size: 64)
!6851 = !DIDerivedType(tag: DW_TAG_member, name: "args_count", scope: !6848, file: !5899, line: 73, baseType: !34, size: 32, offset: 64)
!6852 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !6848, file: !5899, line: 74, baseType: !6853, size: 512, offset: 96)
!6853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1929, size: 512, elements: !431)
!6854 = !DIDerivedType(tag: DW_TAG_member, name: "is_attach_deferred", scope: !453, file: !163, line: 281, baseType: !6855, size: 64, offset: 640)
!6855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6856, size: 64)
!6856 = !DISubroutineType(types: !6857)
!6857 = !{!459, !461}
!6858 = !DIDerivedType(tag: DW_TAG_member, name: "dev_enable_feat", scope: !453, file: !163, line: 284, baseType: !6859, size: 64, offset: 704)
!6859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6860, size: 64)
!6860 = !DISubroutineType(types: !6861)
!6861 = !{!34, !461, !182}
!6862 = !DIDerivedType(tag: DW_TAG_member, name: "dev_disable_feat", scope: !453, file: !163, line: 285, baseType: !6859, size: 64, offset: 768)
!6863 = !DIDerivedType(tag: DW_TAG_member, name: "page_response", scope: !453, file: !163, line: 287, baseType: !6864, size: 64, offset: 832)
!6864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6865, size: 64)
!6865 = !DISubroutineType(types: !6866)
!6866 = !{!34, !461, !6867, !6872}
!6867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6868, size: 64)
!6868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_fault_event", file: !163, line: 390, size: 640, elements: !6869)
!6869 = !{!6870, !6871}
!6870 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !6868, file: !163, line: 391, baseType: !6650, size: 512)
!6871 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !6868, file: !163, line: 392, baseType: !109, size: 128, offset: 512)
!6872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6873, size: 64)
!6873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_page_response", file: !171, line: 150, size: 192, elements: !6874)
!6874 = !{!6875, !6876, !6877, !6878, !6879, !6880}
!6875 = !DIDerivedType(tag: DW_TAG_member, name: "argsz", scope: !6873, file: !171, line: 151, baseType: !391, size: 32)
!6876 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !6873, file: !171, line: 153, baseType: !391, size: 32, offset: 32)
!6877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6873, file: !171, line: 155, baseType: !391, size: 32, offset: 64)
!6878 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !6873, file: !171, line: 156, baseType: !391, size: 32, offset: 96)
!6879 = !DIDerivedType(tag: DW_TAG_member, name: "grpid", scope: !6873, file: !171, line: 157, baseType: !391, size: 32, offset: 128)
!6880 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !6873, file: !171, line: 158, baseType: !391, size: 32, offset: 160)
!6881 = !DIDerivedType(tag: DW_TAG_member, name: "def_domain_type", scope: !453, file: !163, line: 291, baseType: !5655, size: 64, offset: 896)
!6882 = !DIDerivedType(tag: DW_TAG_member, name: "remove_dev_pasid", scope: !453, file: !163, line: 292, baseType: !6883, size: 64, offset: 960)
!6883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6884, size: 64)
!6884 = !DISubroutineType(types: !6885)
!6885 = !{null, !461, !6741}
!6886 = !DIDerivedType(tag: DW_TAG_member, name: "default_domain_ops", scope: !453, file: !163, line: 294, baseType: !6729, size: 64, offset: 1024)
!6887 = !DIDerivedType(tag: DW_TAG_member, name: "pgsize_bitmap", scope: !453, file: !163, line: 295, baseType: !51, size: 64, offset: 1088)
!6888 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !453, file: !163, line: 296, baseType: !762, size: 64, offset: 1152)
!6889 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !447, file: !163, line: 376, baseType: !5910, size: 64, offset: 192)
!6890 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !447, file: !163, line: 377, baseType: !461, size: 64, offset: 256)
!6891 = !DIDerivedType(tag: DW_TAG_member, name: "max_pasids", scope: !447, file: !163, line: 378, baseType: !390, size: 32, offset: 320)
!6892 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !373, file: !374, line: 694, baseType: !34, size: 32, offset: 2176)
!6893 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !373, file: !374, line: 695, baseType: !390, size: 32, offset: 2208)
!6894 = !DIDerivedType(tag: DW_TAG_member, name: "drhd", scope: !373, file: !374, line: 697, baseType: !6895, size: 64, offset: 2240)
!6895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6896, size: 64)
!6896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmar_drhd_unit", file: !6897, line: 38, size: 512, elements: !6898)
!6897 = !DIFile(filename: "./include/linux/dmar.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99ca27b757719a523eb153398222411a")
!6898 = !{!6899, !6900, !6907, !6908, !6909, !6916, !6917, !6918, !6919, !6920, !6921}
!6899 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !6896, file: !6897, line: 39, baseType: !109, size: 128)
!6900 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !6896, file: !6897, line: 40, baseType: !6901, size: 64, offset: 128)
!6901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6902, size: 64)
!6902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_dmar_header", file: !6903, line: 800, size: 32, elements: !6904)
!6903 = !DIFile(filename: "./include/acpi/actbl1.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "82b9176197c6884c1b7affcb8f534260")
!6904 = !{!6905, !6906}
!6905 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6902, file: !6903, line: 801, baseType: !105, size: 16)
!6906 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !6902, file: !6903, line: 802, baseType: !105, size: 16, offset: 16)
!6907 = !DIDerivedType(tag: DW_TAG_member, name: "reg_base_addr", scope: !6896, file: !6897, line: 41, baseType: !378, size: 64, offset: 192)
!6908 = !DIDerivedType(tag: DW_TAG_member, name: "reg_size", scope: !6896, file: !6897, line: 42, baseType: !51, size: 64, offset: 256)
!6909 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !6896, file: !6897, line: 43, baseType: !6910, size: 64, offset: 320)
!6910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6911, size: 64)
!6911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmar_dev_scope", file: !6897, line: 30, size: 128, elements: !6912)
!6912 = !{!6913, !6914, !6915}
!6913 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !6911, file: !6897, line: 31, baseType: !461, size: 64)
!6914 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !6911, file: !6897, line: 32, baseType: !95, size: 8, offset: 64)
!6915 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !6911, file: !6897, line: 33, baseType: !95, size: 8, offset: 72)
!6916 = !DIDerivedType(tag: DW_TAG_member, name: "devices_cnt", scope: !6896, file: !6897, line: 44, baseType: !34, size: 32, offset: 384)
!6917 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !6896, file: !6897, line: 45, baseType: !105, size: 16, offset: 416)
!6918 = !DIDerivedType(tag: DW_TAG_member, name: "ignored", scope: !6896, file: !6897, line: 46, baseType: !95, size: 1, offset: 432, flags: DIFlagBitField, extraData: i64 432)
!6919 = !DIDerivedType(tag: DW_TAG_member, name: "include_all", scope: !6896, file: !6897, line: 47, baseType: !95, size: 1, offset: 433, flags: DIFlagBitField, extraData: i64 432)
!6920 = !DIDerivedType(tag: DW_TAG_member, name: "gfx_dedicated", scope: !6896, file: !6897, line: 48, baseType: !95, size: 1, offset: 434, flags: DIFlagBitField, extraData: i64 432)
!6921 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !6896, file: !6897, line: 49, baseType: !372, size: 64, offset: 448)
!6922 = !DIDerivedType(tag: DW_TAG_member, name: "perf_statistic", scope: !373, file: !374, line: 698, baseType: !32, size: 64, offset: 2304)
!6923 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !373, file: !374, line: 700, baseType: !6924, size: 64, offset: 2368)
!6924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6925, size: 64)
!6925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_pmu", file: !374, line: 627, size: 7552, elements: !6926)
!6926 = !{!6927, !6928, !6929, !6930, !6931, !6932, !6933, !6934, !6935, !6936, !6937, !6938, !6940, !6941, !6942, !6944, !6945, !6946}
!6927 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !6925, file: !374, line: 628, baseType: !372, size: 64)
!6928 = !DIDerivedType(tag: DW_TAG_member, name: "num_cntr", scope: !6925, file: !374, line: 629, baseType: !390, size: 32, offset: 64)
!6929 = !DIDerivedType(tag: DW_TAG_member, name: "num_eg", scope: !6925, file: !374, line: 630, baseType: !390, size: 32, offset: 96)
!6930 = !DIDerivedType(tag: DW_TAG_member, name: "cntr_width", scope: !6925, file: !374, line: 631, baseType: !390, size: 32, offset: 128)
!6931 = !DIDerivedType(tag: DW_TAG_member, name: "cntr_stride", scope: !6925, file: !374, line: 632, baseType: !390, size: 32, offset: 160)
!6932 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !6925, file: !374, line: 633, baseType: !390, size: 32, offset: 192)
!6933 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !6925, file: !374, line: 634, baseType: !32, size: 64, offset: 256)
!6934 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_reg", scope: !6925, file: !374, line: 635, baseType: !32, size: 64, offset: 320)
!6935 = !DIDerivedType(tag: DW_TAG_member, name: "cntr_reg", scope: !6925, file: !374, line: 636, baseType: !32, size: 64, offset: 384)
!6936 = !DIDerivedType(tag: DW_TAG_member, name: "overflow", scope: !6925, file: !374, line: 637, baseType: !32, size: 64, offset: 448)
!6937 = !DIDerivedType(tag: DW_TAG_member, name: "evcap", scope: !6925, file: !374, line: 639, baseType: !6572, size: 64, offset: 512)
!6938 = !DIDerivedType(tag: DW_TAG_member, name: "cntr_evcap", scope: !6925, file: !374, line: 640, baseType: !6939, size: 64, offset: 576)
!6939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!6940 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !6925, file: !374, line: 642, baseType: !1394, size: 2432, offset: 640)
!6941 = !DIDerivedType(tag: DW_TAG_member, name: "used_mask", scope: !6925, file: !374, line: 643, baseType: !1328, size: 64, offset: 3072)
!6942 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !6925, file: !374, line: 644, baseType: !6943, size: 4096, offset: 3136)
!6943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1376, size: 4096, elements: !511)
!6944 = !DIDerivedType(tag: DW_TAG_member, name: "irq_name", scope: !6925, file: !374, line: 645, baseType: !430, size: 128, offset: 7232)
!6945 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_node", scope: !6925, file: !374, line: 646, baseType: !1072, size: 128, offset: 7360)
!6946 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !6925, file: !374, line: 647, baseType: !34, size: 32, offset: 7488)
!6947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6948, size: 64)
!6948 = !DISubroutineType(types: !6949)
!6949 = !{null, !32, !372, !461, !378, !378, !378, !378, !51}
!6950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6951, size: 64)
!6951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_raw_qi_submit", file: !6952, line: 21, size: 384, elements: !6953)
!6952 = !DIFile(filename: "drivers/iommu/intel/trace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c7168dbf180a6d66b8eb59265e5b61e1")
!6953 = !{!6954, !6955, !6956, !6957, !6958, !6959, !6960}
!6954 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !6951, file: !6952, line: 21, baseType: !1335, size: 64)
!6955 = !DIDerivedType(tag: DW_TAG_member, name: "qw0", scope: !6951, file: !6952, line: 21, baseType: !378, size: 64, offset: 64)
!6956 = !DIDerivedType(tag: DW_TAG_member, name: "qw1", scope: !6951, file: !6952, line: 21, baseType: !378, size: 64, offset: 128)
!6957 = !DIDerivedType(tag: DW_TAG_member, name: "qw2", scope: !6951, file: !6952, line: 21, baseType: !378, size: 64, offset: 192)
!6958 = !DIDerivedType(tag: DW_TAG_member, name: "qw3", scope: !6951, file: !6952, line: 21, baseType: !378, size: 64, offset: 256)
!6959 = !DIDerivedType(tag: DW_TAG_member, name: "__data_loc_iommu", scope: !6951, file: !6952, line: 21, baseType: !390, size: 32, offset: 320)
!6960 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !6951, file: !6952, line: 21, baseType: !3785, offset: 352)
!6961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6962, size: 64)
!6962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_raw_prq_report", file: !6952, line: 58, size: 512, elements: !6963)
!6963 = !{!6964, !6965, !6966, !6967, !6968, !6969, !6970, !6971, !6972, !6973}
!6964 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !6962, file: !6952, line: 58, baseType: !1335, size: 64)
!6965 = !DIDerivedType(tag: DW_TAG_member, name: "dw0", scope: !6962, file: !6952, line: 58, baseType: !378, size: 64, offset: 64)
!6966 = !DIDerivedType(tag: DW_TAG_member, name: "dw1", scope: !6962, file: !6952, line: 58, baseType: !378, size: 64, offset: 128)
!6967 = !DIDerivedType(tag: DW_TAG_member, name: "dw2", scope: !6962, file: !6952, line: 58, baseType: !378, size: 64, offset: 192)
!6968 = !DIDerivedType(tag: DW_TAG_member, name: "dw3", scope: !6962, file: !6952, line: 58, baseType: !378, size: 64, offset: 256)
!6969 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !6962, file: !6952, line: 58, baseType: !51, size: 64, offset: 320)
!6970 = !DIDerivedType(tag: DW_TAG_member, name: "__data_loc_iommu", scope: !6962, file: !6952, line: 58, baseType: !390, size: 32, offset: 384)
!6971 = !DIDerivedType(tag: DW_TAG_member, name: "__data_loc_dev", scope: !6962, file: !6952, line: 58, baseType: !390, size: 32, offset: 416)
!6972 = !DIDerivedType(tag: DW_TAG_member, name: "__data_loc_buff", scope: !6962, file: !6952, line: 58, baseType: !390, size: 32, offset: 448)
!6973 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !6962, file: !6952, line: 58, baseType: !3785, offset: 480)
!6974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6975, size: 64)
!6975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6976)
!6976 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1370)
!6977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6978, size: 64)
!6978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6979)
!6979 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1075)
!6980 = !{!6981, !6983, !6985, !6987, !6989, !6991, !6993, !6995, !6997, !6999, !0, !7001, !7006, !7010, !7013, !7016, !7018, !7020, !7022, !7024, !7029, !7031, !7034, !7036, !7041, !7043, !7046, !7049, !7051, !7056, !7058, !7060, !7063, !7065, !7083, !7088, !7090, !7092, !7094, !7096, !7098, !7100, !7102, !7105, !7108, !7110, !7113, !7118, !7123}
!6981 = !DIGlobalVariableExpression(var: !6982, expr: !DIExpression())
!6982 = distinct !DIGlobalVariable(name: "__tracepoint_qi_submit", scope: !2, file: !6952, line: 21, type: !1216, isLocal: false, isDefinition: true)
!6983 = !DIGlobalVariableExpression(var: !6984, expr: !DIExpression())
!6984 = distinct !DIGlobalVariable(name: "__SCK__tp_func_qi_submit", scope: !2, file: !6952, line: 21, type: !1233, isLocal: false, isDefinition: true)
!6985 = !DIGlobalVariableExpression(var: !6986, expr: !DIExpression())
!6986 = distinct !DIGlobalVariable(name: "__tracepoint_prq_report", scope: !2, file: !6952, line: 58, type: !1216, isLocal: false, isDefinition: true)
!6987 = !DIGlobalVariableExpression(var: !6988, expr: !DIExpression())
!6988 = distinct !DIGlobalVariable(name: "__SCK__tp_func_prq_report", scope: !2, file: !6952, line: 58, type: !1233, isLocal: false, isDefinition: true)
!6989 = !DIGlobalVariableExpression(var: !6990, expr: !DIExpression())
!6990 = distinct !DIGlobalVariable(name: "event_class_qi_submit", scope: !2, file: !6952, line: 21, type: !1172, isLocal: true, isDefinition: true)
!6991 = !DIGlobalVariableExpression(var: !6992, expr: !DIExpression())
!6992 = distinct !DIGlobalVariable(name: "event_qi_submit", scope: !2, file: !6952, line: 21, type: !1167, isLocal: true, isDefinition: true, align: 32)
!6993 = !DIGlobalVariableExpression(var: !6994, expr: !DIExpression())
!6994 = distinct !DIGlobalVariable(name: "__event_qi_submit", scope: !2, file: !6952, line: 21, type: !1166, isLocal: true, isDefinition: true)
!6995 = !DIGlobalVariableExpression(var: !6996, expr: !DIExpression())
!6996 = distinct !DIGlobalVariable(name: "event_class_prq_report", scope: !2, file: !6952, line: 58, type: !1172, isLocal: true, isDefinition: true)
!6997 = !DIGlobalVariableExpression(var: !6998, expr: !DIExpression())
!6998 = distinct !DIGlobalVariable(name: "event_prq_report", scope: !2, file: !6952, line: 58, type: !1167, isLocal: true, isDefinition: true, align: 32)
!6999 = !DIGlobalVariableExpression(var: !7000, expr: !DIExpression())
!7000 = distinct !DIGlobalVariable(name: "__event_prq_report", scope: !2, file: !6952, line: 58, type: !1166, isLocal: true, isDefinition: true)
!7001 = !DIGlobalVariableExpression(var: !7002, expr: !DIExpression())
!7002 = distinct !DIGlobalVariable(name: "__tpstrtab_prq_report", scope: !2, file: !6952, line: 58, type: !7003, isLocal: true, isDefinition: true)
!7003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 88, elements: !7004)
!7004 = !{!7005}
!7005 = !DISubrange(count: 11)
!7006 = !DIGlobalVariableExpression(var: !7007, expr: !DIExpression())
!7007 = distinct !DIGlobalVariable(name: "str__intel_iommu__trace_system_name", scope: !2, file: !7008, line: 11, type: !7009, isLocal: true, isDefinition: true)
!7008 = !DIFile(filename: "./include/trace/stages/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b6fe39f4189f752573bd7bb8760fdf7e")
!7009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 96, elements: !4044)
!7010 = !DIGlobalVariableExpression(var: !7011, expr: !DIExpression())
!7011 = distinct !DIGlobalVariable(scope: null, file: !6952, line: 21, type: !7012, isLocal: true, isDefinition: true)
!7012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 56, elements: !951)
!7013 = !DIGlobalVariableExpression(var: !7014, expr: !DIExpression())
!7014 = distinct !DIGlobalVariable(scope: null, file: !6952, line: 21, type: !7015, isLocal: true, isDefinition: true)
!7015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32, elements: !387)
!7016 = !DIGlobalVariableExpression(var: !7017, expr: !DIExpression())
!7017 = distinct !DIGlobalVariable(scope: null, file: !6952, line: 21, type: !7015, isLocal: true, isDefinition: true)
!7018 = !DIGlobalVariableExpression(var: !7019, expr: !DIExpression())
!7019 = distinct !DIGlobalVariable(scope: null, file: !6952, line: 21, type: !7015, isLocal: true, isDefinition: true)
!7020 = !DIGlobalVariableExpression(var: !7021, expr: !DIExpression())
!7021 = distinct !DIGlobalVariable(scope: null, file: !6952, line: 21, type: !7015, isLocal: true, isDefinition: true)
!7022 = !DIGlobalVariableExpression(var: !7023, expr: !DIExpression())
!7023 = distinct !DIGlobalVariable(scope: null, file: !6952, line: 21, type: !7015, isLocal: true, isDefinition: true)
!7024 = !DIGlobalVariableExpression(var: !7025, expr: !DIExpression())
!7025 = distinct !DIGlobalVariable(scope: null, file: !6952, line: 21, type: !7026, isLocal: true, isDefinition: true)
!7026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 144, elements: !7027)
!7027 = !{!7028}
!7028 = !DISubrange(count: 18)
!7029 = !DIGlobalVariableExpression(var: !7030, expr: !DIExpression())
!7030 = distinct !DIGlobalVariable(scope: null, file: !6952, line: 21, type: !1949, isLocal: true, isDefinition: true)
!7031 = !DIGlobalVariableExpression(var: !7032, expr: !DIExpression())
!7032 = distinct !DIGlobalVariable(name: "trace_event_fields_qi_submit", scope: !2, file: !6952, line: 21, type: !7033, isLocal: true, isDefinition: true)
!7033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1183, size: 1920, elements: !1950)
!7034 = !DIGlobalVariableExpression(var: !7035, expr: !DIExpression())
!7035 = distinct !DIGlobalVariable(name: "trace_event_type_funcs_qi_submit", scope: !2, file: !6952, line: 21, type: !1271, isLocal: true, isDefinition: true)
!7036 = !DIGlobalVariableExpression(var: !7037, expr: !DIExpression())
!7037 = distinct !DIGlobalVariable(scope: null, file: !6952, line: 21, type: !7038, isLocal: true, isDefinition: true)
!7038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 288, elements: !7039)
!7039 = !{!7040}
!7040 = !DISubrange(count: 36)
!7041 = !DIGlobalVariableExpression(var: !7042, expr: !DIExpression())
!7042 = distinct !DIGlobalVariable(scope: null, file: !6952, line: 21, type: !7012, isLocal: true, isDefinition: true)
!7043 = !DIGlobalVariableExpression(var: !7044, expr: !DIExpression())
!7044 = distinct !DIGlobalVariable(scope: null, file: !6952, line: 21, type: !7045, isLocal: true, isDefinition: true)
!7045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 80, elements: !2080)
!7046 = !DIGlobalVariableExpression(var: !7047, expr: !DIExpression())
!7047 = distinct !DIGlobalVariable(scope: null, file: !6952, line: 21, type: !7048, isLocal: true, isDefinition: true)
!7048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 96, elements: !4044)
!7049 = !DIGlobalVariableExpression(var: !7050, expr: !DIExpression())
!7050 = distinct !DIGlobalVariable(scope: null, file: !6952, line: 21, type: !3715, isLocal: true, isDefinition: true)
!7051 = !DIGlobalVariableExpression(var: !7052, expr: !DIExpression())
!7052 = distinct !DIGlobalVariable(scope: null, file: !6952, line: 21, type: !7053, isLocal: true, isDefinition: true)
!7053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 72, elements: !7054)
!7054 = !{!7055}
!7055 = !DISubrange(count: 9)
!7056 = !DIGlobalVariableExpression(var: !7057, expr: !DIExpression())
!7057 = distinct !DIGlobalVariable(scope: null, file: !6952, line: 21, type: !7048, isLocal: true, isDefinition: true)
!7058 = !DIGlobalVariableExpression(var: !7059, expr: !DIExpression())
!7059 = distinct !DIGlobalVariable(scope: null, file: !6952, line: 21, type: !7012, isLocal: true, isDefinition: true)
!7060 = !DIGlobalVariableExpression(var: !7061, expr: !DIExpression())
!7061 = distinct !DIGlobalVariable(scope: null, file: !6952, line: 21, type: !7062, isLocal: true, isDefinition: true)
!7062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 112, elements: !3171)
!7063 = !DIGlobalVariableExpression(var: !7064, expr: !DIExpression())
!7064 = distinct !DIGlobalVariable(scope: null, file: !6952, line: 21, type: !7062, isLocal: true, isDefinition: true)
!7065 = !DIGlobalVariableExpression(var: !7066, expr: !DIExpression())
!7066 = distinct !DIGlobalVariable(name: "symbols", scope: !7067, file: !6952, line: 21, type: !7077, isLocal: true, isDefinition: true)
!7067 = distinct !DISubprogram(name: "trace_raw_output_qi_submit", scope: !6952, file: !6952, line: 21, type: !1276, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7068)
!7068 = !{!7069, !7070, !7071, !7072, !7074, !7075, !7076}
!7069 = !DILocalVariable(name: "iter", arg: 1, scope: !7067, file: !6952, line: 21, type: !1278)
!7070 = !DILocalVariable(name: "flags", arg: 2, scope: !7067, file: !6952, line: 21, type: !34)
!7071 = !DILocalVariable(name: "trace_event", arg: 3, scope: !7067, file: !6952, line: 21, type: !1348)
!7072 = !DILocalVariable(name: "s", scope: !7067, file: !6952, line: 21, type: !7073)
!7073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!7074 = !DILocalVariable(name: "p", scope: !7067, file: !6952, line: 21, type: !7073)
!7075 = !DILocalVariable(name: "field", scope: !7067, file: !6952, line: 21, type: !6950)
!7076 = !DILocalVariable(name: "ret", scope: !7067, file: !6952, line: 21, type: !34)
!7077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7078, size: 1280, elements: !2080)
!7078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7079)
!7079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_print_flags", file: !361, line: 16, size: 128, elements: !7080)
!7080 = !{!7081, !7082}
!7081 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !7079, file: !361, line: 17, baseType: !51, size: 64)
!7082 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !7079, file: !361, line: 18, baseType: !28, size: 64, offset: 64)
!7083 = !DIGlobalVariableExpression(var: !7084, expr: !DIExpression())
!7084 = distinct !DIGlobalVariable(name: "print_fmt_qi_submit", scope: !2, file: !6952, line: 21, type: !7085, isLocal: true, isDefinition: true)
!7085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2640, elements: !7086)
!7086 = !{!7087}
!7087 = !DISubrange(count: 330)
!7088 = !DIGlobalVariableExpression(var: !7089, expr: !DIExpression())
!7089 = distinct !DIGlobalVariable(scope: null, file: !6952, line: 58, type: !7015, isLocal: true, isDefinition: true)
!7090 = !DIGlobalVariableExpression(var: !7091, expr: !DIExpression())
!7091 = distinct !DIGlobalVariable(scope: null, file: !6952, line: 58, type: !7015, isLocal: true, isDefinition: true)
!7092 = !DIGlobalVariableExpression(var: !7093, expr: !DIExpression())
!7093 = distinct !DIGlobalVariable(scope: null, file: !6952, line: 58, type: !7015, isLocal: true, isDefinition: true)
!7094 = !DIGlobalVariableExpression(var: !7095, expr: !DIExpression())
!7095 = distinct !DIGlobalVariable(scope: null, file: !6952, line: 58, type: !7015, isLocal: true, isDefinition: true)
!7096 = !DIGlobalVariableExpression(var: !7097, expr: !DIExpression())
!7097 = distinct !DIGlobalVariable(scope: null, file: !6952, line: 58, type: !7062, isLocal: true, isDefinition: true)
!7098 = !DIGlobalVariableExpression(var: !7099, expr: !DIExpression())
!7099 = distinct !DIGlobalVariable(scope: null, file: !6952, line: 58, type: !7015, isLocal: true, isDefinition: true)
!7100 = !DIGlobalVariableExpression(var: !7101, expr: !DIExpression())
!7101 = distinct !DIGlobalVariable(scope: null, file: !6952, line: 58, type: !7015, isLocal: true, isDefinition: true)
!7102 = !DIGlobalVariableExpression(var: !7103, expr: !DIExpression())
!7103 = distinct !DIGlobalVariable(scope: null, file: !6952, line: 58, type: !7104, isLocal: true, isDefinition: true)
!7104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 40, elements: !1862)
!7105 = !DIGlobalVariableExpression(var: !7106, expr: !DIExpression())
!7106 = distinct !DIGlobalVariable(name: "trace_event_fields_prq_report", scope: !2, file: !6952, line: 58, type: !7107, isLocal: true, isDefinition: true)
!7107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1183, size: 2880, elements: !7054)
!7108 = !DIGlobalVariableExpression(var: !7109, expr: !DIExpression())
!7109 = distinct !DIGlobalVariable(name: "trace_event_type_funcs_prq_report", scope: !2, file: !6952, line: 58, type: !1271, isLocal: true, isDefinition: true)
!7110 = !DIGlobalVariableExpression(var: !7111, expr: !DIExpression())
!7111 = distinct !DIGlobalVariable(scope: null, file: !6952, line: 58, type: !7112, isLocal: true, isDefinition: true)
!7112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 160, elements: !4011)
!7113 = !DIGlobalVariableExpression(var: !7114, expr: !DIExpression())
!7114 = distinct !DIGlobalVariable(scope: null, file: !374, line: 934, type: !7115, isLocal: true, isDefinition: true)
!7115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 480, elements: !7116)
!7116 = !{!7117}
!7117 = !DISubrange(count: 60)
!7118 = !DIGlobalVariableExpression(var: !7119, expr: !DIExpression())
!7119 = distinct !DIGlobalVariable(scope: null, file: !374, line: 949, type: !7120, isLocal: true, isDefinition: true)
!7120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 192, elements: !7121)
!7121 = !{!7122}
!7122 = !DISubrange(count: 24)
!7123 = !DIGlobalVariableExpression(var: !7124, expr: !DIExpression())
!7124 = distinct !DIGlobalVariable(name: "print_fmt_prq_report", scope: !2, file: !6952, line: 58, type: !7125, isLocal: true, isDefinition: true)
!7125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 1200, elements: !7126)
!7126 = !{!7127}
!7127 = !DISubrange(count: 150)
!7128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 80, elements: !2080)
!7129 = !{i32 7, !"Dwarf Version", i32 5}
!7130 = !{i32 2, !"Debug Info Version", i32 3}
!7131 = !{i32 1, !"wchar_size", i32 2}
!7132 = !{i32 8, !"cf-protection-branch", i32 1}
!7133 = !{i32 4, !"function_return_thunk_extern", i32 1}
!7134 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!7135 = !{i32 1, !"Code Model", i32 2}
!7136 = !{i32 1, !"override-stack-alignment", i32 8}
!7137 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!7138 = distinct !DISubprogram(name: "__traceiter_qi_submit", scope: !6952, file: !6952, line: 21, type: !7139, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7141)
!7139 = !DISubroutineType(types: !7140)
!7140 = !{!34, !32, !372, !378, !378, !378, !378}
!7141 = !{!7142, !7143, !7144, !7145, !7146, !7147, !7148, !7149, !7150}
!7142 = !DILocalVariable(name: "__data", arg: 1, scope: !7138, file: !6952, line: 21, type: !32)
!7143 = !DILocalVariable(name: "iommu", arg: 2, scope: !7138, file: !6952, line: 21, type: !372)
!7144 = !DILocalVariable(name: "qw0", arg: 3, scope: !7138, file: !6952, line: 21, type: !378)
!7145 = !DILocalVariable(name: "qw1", arg: 4, scope: !7138, file: !6952, line: 21, type: !378)
!7146 = !DILocalVariable(name: "qw2", arg: 5, scope: !7138, file: !6952, line: 21, type: !378)
!7147 = !DILocalVariable(name: "qw3", arg: 6, scope: !7138, file: !6952, line: 21, type: !378)
!7148 = !DILocalVariable(name: "it_func_ptr", scope: !7138, file: !6952, line: 21, type: !359)
!7149 = !DILocalVariable(name: "it_func", scope: !7138, file: !6952, line: 21, type: !32)
!7150 = !DILocalVariable(name: "__UNIQUE_ID_rcu349", scope: !7151, file: !6952, line: 21, type: !359)
!7151 = distinct !DILexicalBlock(scope: !7138, file: !6952, line: 21, column: 1)
!7152 = !DILocation(line: 21, column: 1, scope: !7138)
!7153 = !DILocation(line: 21, column: 1, scope: !7151)
!7154 = !DILocation(line: 21, column: 1, scope: !7155)
!7155 = distinct !DILexicalBlock(scope: !7151, file: !6952, line: 21, column: 1)
!7156 = !DILocation(line: 21, column: 1, scope: !7157)
!7157 = distinct !DILexicalBlock(scope: !7155, file: !6952, line: 21, column: 1)
!7158 = !DILocation(line: 21, column: 1, scope: !7159)
!7159 = distinct !DILexicalBlock(scope: !7138, file: !6952, line: 21, column: 1)
!7160 = !DILocation(line: 21, column: 1, scope: !7161)
!7161 = distinct !DILexicalBlock(scope: !7159, file: !6952, line: 21, column: 1)
!7162 = !DILocation(line: 21, column: 1, scope: !7163)
!7163 = distinct !DILexicalBlock(scope: !7164, file: !6952, line: 21, column: 1)
!7164 = distinct !DILexicalBlock(scope: !7161, file: !6952, line: 21, column: 1)
!7165 = !DILocation(line: 21, column: 1, scope: !7166)
!7166 = distinct !DILexicalBlock(scope: !7163, file: !6952, line: 21, column: 1)
!7167 = !DILocation(line: 21, column: 1, scope: !7164)
!7168 = distinct !{!7168, !7160, !7160, !7169, !7170}
!7169 = !{!"llvm.loop.mustprogress"}
!7170 = !{!"llvm.loop.unroll.disable"}
!7171 = distinct !DISubprogram(name: "__probestub_qi_submit", scope: !6952, file: !6952, line: 21, type: !370, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7172)
!7172 = !{!7173, !7174, !7175, !7176, !7177, !7178}
!7173 = !DILocalVariable(name: "__data", arg: 1, scope: !7171, file: !6952, line: 21, type: !32)
!7174 = !DILocalVariable(name: "iommu", arg: 2, scope: !7171, file: !6952, line: 21, type: !372)
!7175 = !DILocalVariable(name: "qw0", arg: 3, scope: !7171, file: !6952, line: 21, type: !378)
!7176 = !DILocalVariable(name: "qw1", arg: 4, scope: !7171, file: !6952, line: 21, type: !378)
!7177 = !DILocalVariable(name: "qw2", arg: 5, scope: !7171, file: !6952, line: 21, type: !378)
!7178 = !DILocalVariable(name: "qw3", arg: 6, scope: !7171, file: !6952, line: 21, type: !378)
!7179 = !DILocation(line: 21, column: 1, scope: !7171)
!7180 = distinct !DISubprogram(name: "__traceiter_prq_report", scope: !6952, file: !6952, line: 58, type: !7181, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7183)
!7181 = !DISubroutineType(types: !7182)
!7182 = !{!34, !32, !372, !461, !378, !378, !378, !378, !51}
!7183 = !{!7184, !7185, !7186, !7187, !7188, !7189, !7190, !7191, !7192, !7193, !7194}
!7184 = !DILocalVariable(name: "__data", arg: 1, scope: !7180, file: !6952, line: 58, type: !32)
!7185 = !DILocalVariable(name: "iommu", arg: 2, scope: !7180, file: !6952, line: 58, type: !372)
!7186 = !DILocalVariable(name: "dev", arg: 3, scope: !7180, file: !6952, line: 58, type: !461)
!7187 = !DILocalVariable(name: "dw0", arg: 4, scope: !7180, file: !6952, line: 58, type: !378)
!7188 = !DILocalVariable(name: "dw1", arg: 5, scope: !7180, file: !6952, line: 58, type: !378)
!7189 = !DILocalVariable(name: "dw2", arg: 6, scope: !7180, file: !6952, line: 58, type: !378)
!7190 = !DILocalVariable(name: "dw3", arg: 7, scope: !7180, file: !6952, line: 58, type: !378)
!7191 = !DILocalVariable(name: "seq", arg: 8, scope: !7180, file: !6952, line: 58, type: !51)
!7192 = !DILocalVariable(name: "it_func_ptr", scope: !7180, file: !6952, line: 58, type: !359)
!7193 = !DILocalVariable(name: "it_func", scope: !7180, file: !6952, line: 58, type: !32)
!7194 = !DILocalVariable(name: "__UNIQUE_ID_rcu352", scope: !7195, file: !6952, line: 58, type: !359)
!7195 = distinct !DILexicalBlock(scope: !7180, file: !6952, line: 58, column: 1)
!7196 = !DILocation(line: 58, column: 1, scope: !7180)
!7197 = !DILocation(line: 58, column: 1, scope: !7195)
!7198 = !DILocation(line: 58, column: 1, scope: !7199)
!7199 = distinct !DILexicalBlock(scope: !7195, file: !6952, line: 58, column: 1)
!7200 = !DILocation(line: 58, column: 1, scope: !7201)
!7201 = distinct !DILexicalBlock(scope: !7199, file: !6952, line: 58, column: 1)
!7202 = !DILocation(line: 58, column: 1, scope: !7203)
!7203 = distinct !DILexicalBlock(scope: !7180, file: !6952, line: 58, column: 1)
!7204 = !DILocation(line: 58, column: 1, scope: !7205)
!7205 = distinct !DILexicalBlock(scope: !7203, file: !6952, line: 58, column: 1)
!7206 = !DILocation(line: 58, column: 1, scope: !7207)
!7207 = distinct !DILexicalBlock(scope: !7208, file: !6952, line: 58, column: 1)
!7208 = distinct !DILexicalBlock(scope: !7205, file: !6952, line: 58, column: 1)
!7209 = !DILocation(line: 58, column: 1, scope: !7210)
!7210 = distinct !DILexicalBlock(scope: !7207, file: !6952, line: 58, column: 1)
!7211 = !DILocation(line: 58, column: 1, scope: !7208)
!7212 = distinct !{!7212, !7204, !7204, !7169, !7170}
!7213 = distinct !DISubprogram(name: "__probestub_prq_report", scope: !6952, file: !6952, line: 58, type: !6948, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7214)
!7214 = !{!7215, !7216, !7217, !7218, !7219, !7220, !7221, !7222}
!7215 = !DILocalVariable(name: "__data", arg: 1, scope: !7213, file: !6952, line: 58, type: !32)
!7216 = !DILocalVariable(name: "iommu", arg: 2, scope: !7213, file: !6952, line: 58, type: !372)
!7217 = !DILocalVariable(name: "dev", arg: 3, scope: !7213, file: !6952, line: 58, type: !461)
!7218 = !DILocalVariable(name: "dw0", arg: 4, scope: !7213, file: !6952, line: 58, type: !378)
!7219 = !DILocalVariable(name: "dw1", arg: 5, scope: !7213, file: !6952, line: 58, type: !378)
!7220 = !DILocalVariable(name: "dw2", arg: 6, scope: !7213, file: !6952, line: 58, type: !378)
!7221 = !DILocalVariable(name: "dw3", arg: 7, scope: !7213, file: !6952, line: 58, type: !378)
!7222 = !DILocalVariable(name: "seq", arg: 8, scope: !7213, file: !6952, line: 58, type: !51)
!7223 = !DILocation(line: 58, column: 1, scope: !7213)
!7224 = distinct !DISubprogram(name: "trace_event_raw_event_qi_submit", scope: !6952, file: !6952, line: 21, type: !370, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7225)
!7225 = !{!7226, !7227, !7228, !7229, !7230, !7231}
!7226 = !DILocalVariable(name: "__data", arg: 1, scope: !7224, file: !6952, line: 21, type: !32)
!7227 = !DILocalVariable(name: "iommu", arg: 2, scope: !7224, file: !6952, line: 21, type: !372)
!7228 = !DILocalVariable(name: "qw0", arg: 3, scope: !7224, file: !6952, line: 21, type: !378)
!7229 = !DILocalVariable(name: "qw1", arg: 4, scope: !7224, file: !6952, line: 21, type: !378)
!7230 = !DILocalVariable(name: "qw2", arg: 5, scope: !7224, file: !6952, line: 21, type: !378)
!7231 = !DILocalVariable(name: "qw3", arg: 6, scope: !7224, file: !6952, line: 21, type: !378)
!7232 = !DILocation(line: 21, column: 1, scope: !7224)
!7233 = distinct !DISubprogram(name: "perf_trace_qi_submit", scope: !6952, file: !6952, line: 21, type: !370, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7234)
!7234 = !{!7235, !7236, !7237, !7238, !7239, !7240, !7241, !7242, !7246, !7247, !7248, !7249, !7250, !7251, !7252, !7253, !7254, !7257}
!7235 = !DILocalVariable(name: "__data", arg: 1, scope: !7233, file: !6952, line: 21, type: !32)
!7236 = !DILocalVariable(name: "iommu", arg: 2, scope: !7233, file: !6952, line: 21, type: !372)
!7237 = !DILocalVariable(name: "qw0", arg: 3, scope: !7233, file: !6952, line: 21, type: !378)
!7238 = !DILocalVariable(name: "qw1", arg: 4, scope: !7233, file: !6952, line: 21, type: !378)
!7239 = !DILocalVariable(name: "qw2", arg: 5, scope: !7233, file: !6952, line: 21, type: !378)
!7240 = !DILocalVariable(name: "qw3", arg: 6, scope: !7233, file: !6952, line: 21, type: !378)
!7241 = !DILocalVariable(name: "event_call", scope: !7233, file: !6952, line: 21, type: !1166)
!7242 = !DILocalVariable(name: "__data_offsets", scope: !7233, file: !6952, line: 21, type: !7243)
!7243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_data_offsets_qi_submit", file: !6952, line: 21, size: 32, elements: !7244)
!7244 = !{!7245}
!7245 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !7243, file: !6952, line: 21, baseType: !390, size: 32)
!7246 = !DILocalVariable(name: "entry", scope: !7233, file: !6952, line: 21, type: !6950)
!7247 = !DILocalVariable(name: "__regs", scope: !7233, file: !6952, line: 21, type: !4075)
!7248 = !DILocalVariable(name: "__count", scope: !7233, file: !6952, line: 21, type: !378)
!7249 = !DILocalVariable(name: "__task", scope: !7233, file: !6952, line: 21, type: !1445)
!7250 = !DILocalVariable(name: "head", scope: !7233, file: !6952, line: 21, type: !1365)
!7251 = !DILocalVariable(name: "__entry_size", scope: !7233, file: !6952, line: 21, type: !34)
!7252 = !DILocalVariable(name: "__data_size", scope: !7233, file: !6952, line: 21, type: !34)
!7253 = !DILocalVariable(name: "rctx", scope: !7233, file: !6952, line: 21, type: !34)
!7254 = !DILocalVariable(name: "__vpp_verify", scope: !7255, file: !6952, line: 21, type: !2781)
!7255 = distinct !DILexicalBlock(scope: !7256, file: !6952, line: 21, column: 1)
!7256 = distinct !DILexicalBlock(scope: !7233, file: !6952, line: 21, column: 1)
!7257 = !DILocalVariable(name: "tcp_ptr__", scope: !7258, file: !6952, line: 21, type: !51)
!7258 = distinct !DILexicalBlock(scope: !7256, file: !6952, line: 21, column: 1)
!7259 = !DILocation(line: 21, column: 1, scope: !7233)
!7260 = !DILocation(line: 21, column: 1, scope: !7256)
!7261 = !DILocation(line: 21, column: 1, scope: !7255)
!7262 = !DILocation(line: 21, column: 1, scope: !7258)
!7263 = !{i64 2157266497}
!7264 = !DILocation(line: 21, column: 1, scope: !7265)
!7265 = distinct !DILexicalBlock(scope: !7233, file: !6952, line: 21, column: 1)
!7266 = !DILocation(line: 21, column: 1, scope: !7267)
!7267 = distinct !DILexicalBlock(scope: !7233, file: !6952, line: 21, column: 1)
!7268 = !DILocation(line: 21, column: 1, scope: !7269)
!7269 = distinct !DILexicalBlock(scope: !7233, file: !6952, line: 21, column: 1)
!7270 = distinct !DISubprogram(name: "trace_event_raw_event_prq_report", scope: !6952, file: !6952, line: 58, type: !6948, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7271)
!7271 = !{!7272, !7273, !7274, !7275, !7276, !7277, !7278, !7279}
!7272 = !DILocalVariable(name: "__data", arg: 1, scope: !7270, file: !6952, line: 58, type: !32)
!7273 = !DILocalVariable(name: "iommu", arg: 2, scope: !7270, file: !6952, line: 58, type: !372)
!7274 = !DILocalVariable(name: "dev", arg: 3, scope: !7270, file: !6952, line: 58, type: !461)
!7275 = !DILocalVariable(name: "dw0", arg: 4, scope: !7270, file: !6952, line: 58, type: !378)
!7276 = !DILocalVariable(name: "dw1", arg: 5, scope: !7270, file: !6952, line: 58, type: !378)
!7277 = !DILocalVariable(name: "dw2", arg: 6, scope: !7270, file: !6952, line: 58, type: !378)
!7278 = !DILocalVariable(name: "dw3", arg: 7, scope: !7270, file: !6952, line: 58, type: !378)
!7279 = !DILocalVariable(name: "seq", arg: 8, scope: !7270, file: !6952, line: 58, type: !51)
!7280 = !DILocation(line: 58, column: 1, scope: !7270)
!7281 = distinct !DISubprogram(name: "perf_trace_prq_report", scope: !6952, file: !6952, line: 58, type: !6948, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7282)
!7282 = !{!7283, !7284, !7285, !7286, !7287, !7288, !7289, !7290, !7291, !7292, !7298, !7299, !7300, !7301, !7302, !7303, !7304, !7305, !7306, !7309}
!7283 = !DILocalVariable(name: "__data", arg: 1, scope: !7281, file: !6952, line: 58, type: !32)
!7284 = !DILocalVariable(name: "iommu", arg: 2, scope: !7281, file: !6952, line: 58, type: !372)
!7285 = !DILocalVariable(name: "dev", arg: 3, scope: !7281, file: !6952, line: 58, type: !461)
!7286 = !DILocalVariable(name: "dw0", arg: 4, scope: !7281, file: !6952, line: 58, type: !378)
!7287 = !DILocalVariable(name: "dw1", arg: 5, scope: !7281, file: !6952, line: 58, type: !378)
!7288 = !DILocalVariable(name: "dw2", arg: 6, scope: !7281, file: !6952, line: 58, type: !378)
!7289 = !DILocalVariable(name: "dw3", arg: 7, scope: !7281, file: !6952, line: 58, type: !378)
!7290 = !DILocalVariable(name: "seq", arg: 8, scope: !7281, file: !6952, line: 58, type: !51)
!7291 = !DILocalVariable(name: "event_call", scope: !7281, file: !6952, line: 58, type: !1166)
!7292 = !DILocalVariable(name: "__data_offsets", scope: !7281, file: !6952, line: 58, type: !7293)
!7293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_data_offsets_prq_report", file: !6952, line: 58, size: 96, elements: !7294)
!7294 = !{!7295, !7296, !7297}
!7295 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !7293, file: !6952, line: 58, baseType: !390, size: 32)
!7296 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !7293, file: !6952, line: 58, baseType: !390, size: 32, offset: 32)
!7297 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !7293, file: !6952, line: 58, baseType: !390, size: 32, offset: 64)
!7298 = !DILocalVariable(name: "entry", scope: !7281, file: !6952, line: 58, type: !6961)
!7299 = !DILocalVariable(name: "__regs", scope: !7281, file: !6952, line: 58, type: !4075)
!7300 = !DILocalVariable(name: "__count", scope: !7281, file: !6952, line: 58, type: !378)
!7301 = !DILocalVariable(name: "__task", scope: !7281, file: !6952, line: 58, type: !1445)
!7302 = !DILocalVariable(name: "head", scope: !7281, file: !6952, line: 58, type: !1365)
!7303 = !DILocalVariable(name: "__entry_size", scope: !7281, file: !6952, line: 58, type: !34)
!7304 = !DILocalVariable(name: "__data_size", scope: !7281, file: !6952, line: 58, type: !34)
!7305 = !DILocalVariable(name: "rctx", scope: !7281, file: !6952, line: 58, type: !34)
!7306 = !DILocalVariable(name: "__vpp_verify", scope: !7307, file: !6952, line: 58, type: !2781)
!7307 = distinct !DILexicalBlock(scope: !7308, file: !6952, line: 58, column: 1)
!7308 = distinct !DILexicalBlock(scope: !7281, file: !6952, line: 58, column: 1)
!7309 = !DILocalVariable(name: "tcp_ptr__", scope: !7310, file: !6952, line: 58, type: !51)
!7310 = distinct !DILexicalBlock(scope: !7308, file: !6952, line: 58, column: 1)
!7311 = !DILocation(line: 58, column: 1, scope: !7281)
!7312 = !DILocation(line: 58, column: 1, scope: !7308)
!7313 = !DILocation(line: 58, column: 1, scope: !7307)
!7314 = !DILocation(line: 58, column: 1, scope: !7310)
!7315 = !{i64 2157274662}
!7316 = !DILocation(line: 58, column: 1, scope: !7317)
!7317 = distinct !DILexicalBlock(scope: !7281, file: !6952, line: 58, column: 1)
!7318 = !DILocation(line: 58, column: 1, scope: !7319)
!7319 = distinct !DILexicalBlock(scope: !7281, file: !6952, line: 58, column: 1)
!7320 = !DILocation(line: 58, column: 1, scope: !7321)
!7321 = distinct !DILexicalBlock(scope: !7281, file: !6952, line: 58, column: 1)
!7322 = distinct !DISubprogram(name: "do_trace_event_raw_event_qi_submit", scope: !6952, file: !6952, line: 21, type: !370, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7323)
!7323 = !{!7324, !7325, !7326, !7327, !7328, !7329, !7330, !7349, !7350, !7367, !7368}
!7324 = !DILocalVariable(name: "__data", arg: 1, scope: !7322, file: !6952, line: 21, type: !32)
!7325 = !DILocalVariable(name: "iommu", arg: 2, scope: !7322, file: !6952, line: 21, type: !372)
!7326 = !DILocalVariable(name: "qw0", arg: 3, scope: !7322, file: !6952, line: 21, type: !378)
!7327 = !DILocalVariable(name: "qw1", arg: 4, scope: !7322, file: !6952, line: 21, type: !378)
!7328 = !DILocalVariable(name: "qw2", arg: 5, scope: !7322, file: !6952, line: 21, type: !378)
!7329 = !DILocalVariable(name: "qw3", arg: 6, scope: !7322, file: !6952, line: 21, type: !378)
!7330 = !DILocalVariable(name: "trace_file", scope: !7322, file: !6952, line: 21, type: !7331)
!7331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7332, size: 64)
!7332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_file", file: !320, line: 655, size: 768, elements: !7333)
!7333 = !{!7334, !7335, !7336, !7337, !7340, !7341, !7344, !7345, !7346, !7347, !7348}
!7334 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !7332, file: !320, line: 656, baseType: !109, size: 128)
!7335 = !DIDerivedType(tag: DW_TAG_member, name: "event_call", scope: !7332, file: !320, line: 657, baseType: !1166, size: 64, offset: 128)
!7336 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !7332, file: !320, line: 658, baseType: !1354, size: 64, offset: 192)
!7337 = !DIDerivedType(tag: DW_TAG_member, name: "ei", scope: !7332, file: !320, line: 659, baseType: !7338, size: 64, offset: 256)
!7338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7339, size: 64)
!7339 = !DICompositeType(tag: DW_TAG_structure_type, name: "eventfs_inode", file: !320, line: 659, flags: DIFlagFwdDecl)
!7340 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !7332, file: !320, line: 660, baseType: !1282, size: 64, offset: 320)
!7341 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !7332, file: !320, line: 661, baseType: !7342, size: 64, offset: 384)
!7342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7343, size: 64)
!7343 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_subsystem_dir", file: !320, line: 485, flags: DIFlagFwdDecl)
!7344 = !DIDerivedType(tag: DW_TAG_member, name: "triggers", scope: !7332, file: !320, line: 662, baseType: !109, size: 128, offset: 448)
!7345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !7332, file: !320, line: 680, baseType: !51, size: 64, offset: 576)
!7346 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !7332, file: !320, line: 681, baseType: !61, size: 32, offset: 640)
!7347 = !DIDerivedType(tag: DW_TAG_member, name: "sm_ref", scope: !7332, file: !320, line: 682, baseType: !61, size: 32, offset: 672)
!7348 = !DIDerivedType(tag: DW_TAG_member, name: "tm_ref", scope: !7332, file: !320, line: 683, baseType: !61, size: 32, offset: 704)
!7349 = !DILocalVariable(name: "__data_offsets", scope: !7322, file: !6952, line: 21, type: !7243)
!7350 = !DILocalVariable(name: "fbuffer", scope: !7322, file: !6952, line: 21, type: !7351)
!7351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_buffer", file: !320, line: 308, size: 384, elements: !7352)
!7352 = !{!7353, !7356, !7363, !7364, !7365, !7366}
!7353 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !7351, file: !320, line: 309, baseType: !7354, size: 64)
!7354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7355, size: 64)
!7355 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_buffer", file: !1297, line: 9, flags: DIFlagFwdDecl)
!7356 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !7351, file: !320, line: 310, baseType: !7357, size: 64, offset: 64)
!7357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7358, size: 64)
!7358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_event", file: !1297, line: 15, size: 32, elements: !7359)
!7359 = !{!7360, !7361, !7362}
!7360 = !DIDerivedType(tag: DW_TAG_member, name: "type_len", scope: !7358, file: !1297, line: 16, baseType: !390, size: 5, flags: DIFlagBitField, extraData: i64 0)
!7361 = !DIDerivedType(tag: DW_TAG_member, name: "time_delta", scope: !7358, file: !1297, line: 16, baseType: !390, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!7362 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !7358, file: !1297, line: 18, baseType: !6693, offset: 32)
!7363 = !DIDerivedType(tag: DW_TAG_member, name: "trace_file", scope: !7351, file: !320, line: 311, baseType: !7331, size: 64, offset: 128)
!7364 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !7351, file: !320, line: 312, baseType: !32, size: 64, offset: 192)
!7365 = !DIDerivedType(tag: DW_TAG_member, name: "trace_ctx", scope: !7351, file: !320, line: 313, baseType: !7, size: 32, offset: 256)
!7366 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !7351, file: !320, line: 314, baseType: !4075, size: 64, offset: 320)
!7367 = !DILocalVariable(name: "entry", scope: !7322, file: !6952, line: 21, type: !6950)
!7368 = !DILocalVariable(name: "__data_size", scope: !7322, file: !6952, line: 21, type: !34)
!7369 = !DILocation(line: 21, column: 1, scope: !7322)
!7370 = !DILocation(line: 21, column: 1, scope: !7371)
!7371 = distinct !DILexicalBlock(scope: !7322, file: !6952, line: 21, column: 1)
!7372 = !DILocation(line: 21, column: 1, scope: !7373)
!7373 = distinct !DILexicalBlock(scope: !7322, file: !6952, line: 21, column: 1)
!7374 = !DILocation(line: 21, column: 1, scope: !7375)
!7375 = distinct !DILexicalBlock(scope: !7322, file: !6952, line: 21, column: 1)
!7376 = distinct !DISubprogram(name: "trace_trigger_soft_disabled", scope: !320, file: !320, line: 746, type: !7377, scopeLine: 747, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7379)
!7377 = !DISubroutineType(types: !7378)
!7378 = !{!459, !7331}
!7379 = !{!7380, !7381}
!7380 = !DILocalVariable(name: "file", arg: 1, scope: !7376, file: !320, line: 746, type: !7331)
!7381 = !DILocalVariable(name: "eflags", scope: !7376, file: !320, line: 748, type: !51)
!7382 = !DILocation(line: 746, column: 54, scope: !7376)
!7383 = !DILocation(line: 748, column: 2, scope: !7376)
!7384 = !DILocation(line: 748, column: 16, scope: !7376)
!7385 = !DILocation(line: 748, column: 25, scope: !7376)
!7386 = !DILocation(line: 748, column: 31, scope: !7376)
!7387 = !DILocation(line: 750, column: 6, scope: !7388)
!7388 = distinct !DILexicalBlock(scope: !7376, file: !320, line: 750, column: 6)
!7389 = !DILocation(line: 750, column: 6, scope: !7376)
!7390 = !DILocation(line: 753, column: 3, scope: !7388)
!7391 = !DILocation(line: 755, column: 6, scope: !7392)
!7392 = distinct !DILexicalBlock(scope: !7376, file: !320, line: 755, column: 6)
!7393 = !DILocation(line: 755, column: 6, scope: !7376)
!7394 = !DILocation(line: 756, column: 3, scope: !7392)
!7395 = !DILocation(line: 758, column: 39, scope: !7376)
!7396 = !DILocation(line: 758, column: 9, scope: !7376)
!7397 = !DILocation(line: 758, column: 2, scope: !7376)
!7398 = !DILocation(line: 759, column: 1, scope: !7376)
!7399 = distinct !DISubprogram(name: "trace_event_get_offsets_qi_submit", scope: !6952, file: !6952, line: 21, type: !7400, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7403)
!7400 = !DISubroutineType(types: !7401)
!7401 = !{!34, !7402, !372, !378, !378, !378, !378}
!7402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7243, size: 64)
!7403 = !{!7404, !7405, !7406, !7407, !7408, !7409, !7410, !7411, !7412}
!7404 = !DILocalVariable(name: "__data_offsets", arg: 1, scope: !7399, file: !6952, line: 21, type: !7402)
!7405 = !DILocalVariable(name: "iommu", arg: 2, scope: !7399, file: !6952, line: 21, type: !372)
!7406 = !DILocalVariable(name: "qw0", arg: 3, scope: !7399, file: !6952, line: 21, type: !378)
!7407 = !DILocalVariable(name: "qw1", arg: 4, scope: !7399, file: !6952, line: 21, type: !378)
!7408 = !DILocalVariable(name: "qw2", arg: 5, scope: !7399, file: !6952, line: 21, type: !378)
!7409 = !DILocalVariable(name: "qw3", arg: 6, scope: !7399, file: !6952, line: 21, type: !378)
!7410 = !DILocalVariable(name: "__data_size", scope: !7399, file: !6952, line: 21, type: !34)
!7411 = !DILocalVariable(name: "__item_length", scope: !7399, file: !6952, line: 21, type: !34)
!7412 = !DILocalVariable(name: "entry", scope: !7399, file: !6952, line: 21, type: !6950)
!7413 = !DILocation(line: 21, column: 1, scope: !7399)
!7414 = !DISubprogram(name: "trace_event_buffer_reserve", scope: !320, file: !320, line: 317, type: !7415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7415 = !DISubroutineType(types: !7416)
!7416 = !{!32, !7417, !7331, !51}
!7417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7351, size: 64)
!7418 = !DISubprogram(name: "strcpy", scope: !7419, file: !7419, line: 63, type: !7420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7419 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!7420 = !DISubroutineType(types: !7421)
!7421 = !{!506, !506, !28}
!7422 = !DISubprogram(name: "trace_event_buffer_commit", scope: !320, file: !320, line: 321, type: !7423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7423 = !DISubroutineType(types: !7424)
!7424 = !{null, !7417}
!7425 = !DISubprogram(name: "__trace_trigger_soft_disabled", scope: !320, file: !320, line: 734, type: !7377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7426 = !DISubprogram(name: "strlen", scope: !7419, file: !7419, line: 128, type: !7427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7427 = !DISubroutineType(types: !7428)
!7428 = !{!51, !28}
!7429 = !DILocation(line: 21, column: 1, scope: !7067)
!7430 = !DILocation(line: 21, column: 1, scope: !7431)
!7431 = distinct !DILexicalBlock(scope: !7067, file: !6952, line: 21, column: 1)
!7432 = !DILocation(line: 21, column: 1, scope: !7433)
!7433 = distinct !DILexicalBlock(scope: !7067, file: !6952, line: 21, column: 1)
!7434 = !DISubprogram(name: "trace_raw_output_prep", scope: !320, file: !320, line: 57, type: !7435, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7435 = !DISubroutineType(types: !7436)
!7436 = !{!34, !1278, !1348}
!7437 = !DISubprogram(name: "trace_event_printf", scope: !320, file: !320, line: 60, type: !7438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7438 = !DISubroutineType(types: !7439)
!7439 = !{null, !1278, !28, null}
!7440 = !DISubprogram(name: "trace_print_symbols_seq", scope: !320, file: !320, line: 24, type: !7441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7441 = !DISubroutineType(types: !7442)
!7442 = !{!28, !7073, !51, !7443}
!7443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7078, size: 64)
!7444 = !DISubprogram(name: "trace_handle_return", scope: !320, file: !320, line: 165, type: !7445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7445 = !DISubroutineType(types: !7446)
!7446 = !{!330, !7073}
!7447 = distinct !DISubprogram(name: "do_trace_event_raw_event_prq_report", scope: !6952, file: !6952, line: 58, type: !6948, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7448)
!7448 = !{!7449, !7450, !7451, !7452, !7453, !7454, !7455, !7456, !7457, !7458, !7459, !7460, !7461}
!7449 = !DILocalVariable(name: "__data", arg: 1, scope: !7447, file: !6952, line: 58, type: !32)
!7450 = !DILocalVariable(name: "iommu", arg: 2, scope: !7447, file: !6952, line: 58, type: !372)
!7451 = !DILocalVariable(name: "dev", arg: 3, scope: !7447, file: !6952, line: 58, type: !461)
!7452 = !DILocalVariable(name: "dw0", arg: 4, scope: !7447, file: !6952, line: 58, type: !378)
!7453 = !DILocalVariable(name: "dw1", arg: 5, scope: !7447, file: !6952, line: 58, type: !378)
!7454 = !DILocalVariable(name: "dw2", arg: 6, scope: !7447, file: !6952, line: 58, type: !378)
!7455 = !DILocalVariable(name: "dw3", arg: 7, scope: !7447, file: !6952, line: 58, type: !378)
!7456 = !DILocalVariable(name: "seq", arg: 8, scope: !7447, file: !6952, line: 58, type: !51)
!7457 = !DILocalVariable(name: "trace_file", scope: !7447, file: !6952, line: 58, type: !7331)
!7458 = !DILocalVariable(name: "__data_offsets", scope: !7447, file: !6952, line: 58, type: !7293)
!7459 = !DILocalVariable(name: "fbuffer", scope: !7447, file: !6952, line: 58, type: !7351)
!7460 = !DILocalVariable(name: "entry", scope: !7447, file: !6952, line: 58, type: !6961)
!7461 = !DILocalVariable(name: "__data_size", scope: !7447, file: !6952, line: 58, type: !34)
!7462 = !DILocation(line: 58, column: 1, scope: !7447)
!7463 = !DILocation(line: 58, column: 1, scope: !7464)
!7464 = distinct !DILexicalBlock(scope: !7447, file: !6952, line: 58, column: 1)
!7465 = !DILocation(line: 58, column: 1, scope: !7466)
!7466 = distinct !DILexicalBlock(scope: !7447, file: !6952, line: 58, column: 1)
!7467 = !DILocation(line: 58, column: 1, scope: !7468)
!7468 = distinct !DILexicalBlock(scope: !7447, file: !6952, line: 58, column: 1)
!7469 = distinct !DISubprogram(name: "trace_event_get_offsets_prq_report", scope: !6952, file: !6952, line: 58, type: !7470, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7473)
!7470 = !DISubroutineType(types: !7471)
!7471 = !{!34, !7472, !372, !461, !378, !378, !378, !378, !51}
!7472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7293, size: 64)
!7473 = !{!7474, !7475, !7476, !7477, !7478, !7479, !7480, !7481, !7482, !7483, !7484}
!7474 = !DILocalVariable(name: "__data_offsets", arg: 1, scope: !7469, file: !6952, line: 58, type: !7472)
!7475 = !DILocalVariable(name: "iommu", arg: 2, scope: !7469, file: !6952, line: 58, type: !372)
!7476 = !DILocalVariable(name: "dev", arg: 3, scope: !7469, file: !6952, line: 58, type: !461)
!7477 = !DILocalVariable(name: "dw0", arg: 4, scope: !7469, file: !6952, line: 58, type: !378)
!7478 = !DILocalVariable(name: "dw1", arg: 5, scope: !7469, file: !6952, line: 58, type: !378)
!7479 = !DILocalVariable(name: "dw2", arg: 6, scope: !7469, file: !6952, line: 58, type: !378)
!7480 = !DILocalVariable(name: "dw3", arg: 7, scope: !7469, file: !6952, line: 58, type: !378)
!7481 = !DILocalVariable(name: "seq", arg: 8, scope: !7469, file: !6952, line: 58, type: !51)
!7482 = !DILocalVariable(name: "__data_size", scope: !7469, file: !6952, line: 58, type: !34)
!7483 = !DILocalVariable(name: "__item_length", scope: !7469, file: !6952, line: 58, type: !34)
!7484 = !DILocalVariable(name: "entry", scope: !7469, file: !6952, line: 58, type: !6961)
!7485 = !DILocation(line: 58, column: 1, scope: !7469)
!7486 = distinct !DISubprogram(name: "dev_name", scope: !187, file: !187, line: 858, type: !7487, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7489)
!7487 = !DISubroutineType(types: !7488)
!7488 = !{!28, !5638}
!7489 = !{!7490}
!7490 = !DILocalVariable(name: "dev", arg: 1, scope: !7486, file: !187, line: 858, type: !5638)
!7491 = !DILocation(line: 858, column: 57, scope: !7486)
!7492 = !DILocation(line: 861, column: 6, scope: !7493)
!7493 = distinct !DILexicalBlock(scope: !7486, file: !187, line: 861, column: 6)
!7494 = !DILocation(line: 861, column: 11, scope: !7493)
!7495 = !DILocation(line: 861, column: 6, scope: !7486)
!7496 = !DILocation(line: 862, column: 10, scope: !7493)
!7497 = !DILocation(line: 862, column: 15, scope: !7493)
!7498 = !DILocation(line: 862, column: 3, scope: !7493)
!7499 = !DILocation(line: 864, column: 23, scope: !7486)
!7500 = !DILocation(line: 864, column: 28, scope: !7486)
!7501 = !DILocation(line: 864, column: 9, scope: !7486)
!7502 = !DILocation(line: 864, column: 2, scope: !7486)
!7503 = !DILocation(line: 865, column: 1, scope: !7486)
!7504 = distinct !DISubprogram(name: "kobject_name", scope: !466, file: !466, line: 87, type: !494, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7505)
!7505 = !{!7506}
!7506 = !DILocalVariable(name: "kobj", arg: 1, scope: !7504, file: !466, line: 87, type: !489)
!7507 = !DILocation(line: 87, column: 62, scope: !7504)
!7508 = !DILocation(line: 89, column: 9, scope: !7504)
!7509 = !DILocation(line: 89, column: 15, scope: !7504)
!7510 = !DILocation(line: 89, column: 2, scope: !7504)
!7511 = distinct !DISubprogram(name: "trace_raw_output_prq_report", scope: !6952, file: !6952, line: 58, type: !1276, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7512)
!7512 = !{!7513, !7514, !7515, !7516, !7517, !7518, !7519}
!7513 = !DILocalVariable(name: "iter", arg: 1, scope: !7511, file: !6952, line: 58, type: !1278)
!7514 = !DILocalVariable(name: "flags", arg: 2, scope: !7511, file: !6952, line: 58, type: !34)
!7515 = !DILocalVariable(name: "trace_event", arg: 3, scope: !7511, file: !6952, line: 58, type: !1348)
!7516 = !DILocalVariable(name: "s", scope: !7511, file: !6952, line: 58, type: !7073)
!7517 = !DILocalVariable(name: "p", scope: !7511, file: !6952, line: 58, type: !7073)
!7518 = !DILocalVariable(name: "field", scope: !7511, file: !6952, line: 58, type: !6961)
!7519 = !DILocalVariable(name: "ret", scope: !7511, file: !6952, line: 58, type: !34)
!7520 = !DILocation(line: 58, column: 1, scope: !7511)
!7521 = !DILocation(line: 58, column: 1, scope: !7522)
!7522 = distinct !DILexicalBlock(scope: !7511, file: !6952, line: 58, column: 1)
!7523 = distinct !DISubprogram(name: "decode_prq_descriptor", scope: !374, file: !374, line: 927, type: !7524, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7526)
!7524 = !DISubroutineType(types: !7525)
!7525 = !{!28, !506, !47, !378, !378, !378, !378}
!7526 = !{!7527, !7528, !7529, !7530, !7531, !7532, !7533, !7534}
!7527 = !DILocalVariable(name: "str", arg: 1, scope: !7523, file: !374, line: 927, type: !506)
!7528 = !DILocalVariable(name: "size", arg: 2, scope: !7523, file: !374, line: 927, type: !47)
!7529 = !DILocalVariable(name: "dw0", arg: 3, scope: !7523, file: !374, line: 928, type: !378)
!7530 = !DILocalVariable(name: "dw1", arg: 4, scope: !7523, file: !374, line: 928, type: !378)
!7531 = !DILocalVariable(name: "dw2", arg: 5, scope: !7523, file: !374, line: 928, type: !378)
!7532 = !DILocalVariable(name: "dw3", arg: 6, scope: !7523, file: !374, line: 928, type: !378)
!7533 = !DILocalVariable(name: "buf", scope: !7523, file: !374, line: 930, type: !506)
!7534 = !DILocalVariable(name: "bytes", scope: !7523, file: !374, line: 931, type: !34)
!7535 = !DILocation(line: 927, column: 55, scope: !7523)
!7536 = !DILocation(line: 927, column: 67, scope: !7523)
!7537 = !DILocation(line: 928, column: 7, scope: !7523)
!7538 = !DILocation(line: 928, column: 16, scope: !7523)
!7539 = !DILocation(line: 928, column: 25, scope: !7523)
!7540 = !DILocation(line: 928, column: 34, scope: !7523)
!7541 = !DILocation(line: 930, column: 2, scope: !7523)
!7542 = !DILocation(line: 930, column: 8, scope: !7523)
!7543 = !DILocation(line: 930, column: 14, scope: !7523)
!7544 = !DILocation(line: 931, column: 2, scope: !7523)
!7545 = !DILocation(line: 931, column: 6, scope: !7523)
!7546 = !DILocation(line: 933, column: 19, scope: !7523)
!7547 = !DILocation(line: 933, column: 24, scope: !7523)
!7548 = !DILocation(line: 935, column: 5, scope: !7549)
!7549 = distinct !DILexicalBlock(scope: !7550, file: !374, line: 935, column: 5)
!7550 = distinct !DILexicalBlock(scope: !7523, file: !374, line: 935, column: 5)
!7551 = !DILocation(line: 935, column: 5, scope: !7552)
!7552 = distinct !DILexicalBlock(scope: !7549, file: !374, line: 935, column: 5)
!7553 = !DILocation(line: 935, column: 5, scope: !7554)
!7554 = distinct !DILexicalBlock(scope: !7549, file: !374, line: 935, column: 5)
!7555 = !DILocation(line: 935, column: 5, scope: !7556)
!7556 = distinct !DILexicalBlock(scope: !7549, file: !374, line: 935, column: 5)
!7557 = !DILocation(line: 935, column: 5, scope: !7558)
!7558 = distinct !DILexicalBlock(scope: !7549, file: !374, line: 935, column: 5)
!7559 = !DILocation(line: 935, column: 5, scope: !7560)
!7560 = distinct !DILexicalBlock(scope: !7549, file: !374, line: 935, column: 5)
!7561 = !DILocation(line: 935, column: 5, scope: !7550)
!7562 = !DILocation(line: 936, column: 5, scope: !7563)
!7563 = distinct !DILexicalBlock(scope: !7564, file: !374, line: 936, column: 5)
!7564 = distinct !DILexicalBlock(scope: !7523, file: !374, line: 936, column: 5)
!7565 = !DILocation(line: 936, column: 5, scope: !7566)
!7566 = distinct !DILexicalBlock(scope: !7563, file: !374, line: 936, column: 5)
!7567 = !DILocation(line: 936, column: 5, scope: !7568)
!7568 = distinct !DILexicalBlock(scope: !7563, file: !374, line: 936, column: 5)
!7569 = !DILocation(line: 936, column: 5, scope: !7570)
!7570 = distinct !DILexicalBlock(scope: !7563, file: !374, line: 936, column: 5)
!7571 = !DILocation(line: 936, column: 5, scope: !7572)
!7572 = distinct !DILexicalBlock(scope: !7563, file: !374, line: 936, column: 5)
!7573 = !DILocation(line: 936, column: 5, scope: !7574)
!7574 = distinct !DILexicalBlock(scope: !7563, file: !374, line: 936, column: 5)
!7575 = !DILocation(line: 936, column: 5, scope: !7564)
!7576 = !DILocation(line: 937, column: 5, scope: !7523)
!7577 = !DILocation(line: 937, column: 9, scope: !7523)
!7578 = !DILocation(line: 938, column: 5, scope: !7523)
!7579 = !DILocation(line: 938, column: 9, scope: !7523)
!7580 = !DILocation(line: 939, column: 5, scope: !7523)
!7581 = !DILocation(line: 939, column: 9, scope: !7523)
!7582 = !DILocation(line: 940, column: 5, scope: !7523)
!7583 = !DILocation(line: 940, column: 9, scope: !7523)
!7584 = !DILocation(line: 941, column: 5, scope: !7523)
!7585 = !DILocation(line: 941, column: 9, scope: !7523)
!7586 = !DILocation(line: 942, column: 5, scope: !7587)
!7587 = distinct !DILexicalBlock(scope: !7588, file: !374, line: 942, column: 5)
!7588 = distinct !DILexicalBlock(scope: !7523, file: !374, line: 942, column: 5)
!7589 = !DILocation(line: 942, column: 5, scope: !7590)
!7590 = distinct !DILexicalBlock(scope: !7587, file: !374, line: 942, column: 5)
!7591 = !DILocation(line: 942, column: 5, scope: !7592)
!7592 = distinct !DILexicalBlock(scope: !7587, file: !374, line: 942, column: 5)
!7593 = !DILocation(line: 942, column: 5, scope: !7594)
!7594 = distinct !DILexicalBlock(scope: !7587, file: !374, line: 942, column: 5)
!7595 = !DILocation(line: 942, column: 5, scope: !7596)
!7596 = distinct !DILexicalBlock(scope: !7587, file: !374, line: 942, column: 5)
!7597 = !DILocation(line: 942, column: 5, scope: !7598)
!7598 = distinct !DILexicalBlock(scope: !7587, file: !374, line: 942, column: 5)
!7599 = !DILocation(line: 942, column: 5, scope: !7588)
!7600 = !DILocation(line: 943, column: 5, scope: !7601)
!7601 = distinct !DILexicalBlock(scope: !7602, file: !374, line: 943, column: 5)
!7602 = distinct !DILexicalBlock(scope: !7523, file: !374, line: 943, column: 5)
!7603 = !DILocation(line: 943, column: 5, scope: !7604)
!7604 = distinct !DILexicalBlock(scope: !7601, file: !374, line: 943, column: 5)
!7605 = !DILocation(line: 943, column: 5, scope: !7606)
!7606 = distinct !DILexicalBlock(scope: !7601, file: !374, line: 943, column: 5)
!7607 = !DILocation(line: 943, column: 5, scope: !7608)
!7608 = distinct !DILexicalBlock(scope: !7601, file: !374, line: 943, column: 5)
!7609 = !DILocation(line: 943, column: 5, scope: !7610)
!7610 = distinct !DILexicalBlock(scope: !7601, file: !374, line: 943, column: 5)
!7611 = !DILocation(line: 943, column: 5, scope: !7612)
!7612 = distinct !DILexicalBlock(scope: !7601, file: !374, line: 943, column: 5)
!7613 = !DILocation(line: 943, column: 5, scope: !7602)
!7614 = !DILocation(line: 933, column: 10, scope: !7523)
!7615 = !DILocation(line: 933, column: 8, scope: !7523)
!7616 = !DILocation(line: 946, column: 6, scope: !7617)
!7617 = distinct !DILexicalBlock(scope: !7523, file: !374, line: 946, column: 6)
!7618 = !DILocation(line: 946, column: 10, scope: !7617)
!7619 = !DILocation(line: 946, column: 6, scope: !7523)
!7620 = !DILocation(line: 947, column: 11, scope: !7621)
!7621 = distinct !DILexicalBlock(scope: !7617, file: !374, line: 946, column: 24)
!7622 = !DILocation(line: 947, column: 8, scope: !7621)
!7623 = !DILocation(line: 948, column: 10, scope: !7621)
!7624 = !DILocation(line: 948, column: 7, scope: !7621)
!7625 = !DILocation(line: 949, column: 12, scope: !7621)
!7626 = !DILocation(line: 949, column: 17, scope: !7621)
!7627 = !DILocation(line: 949, column: 51, scope: !7621)
!7628 = !DILocation(line: 949, column: 56, scope: !7621)
!7629 = !DILocation(line: 949, column: 3, scope: !7621)
!7630 = !DILocation(line: 950, column: 2, scope: !7621)
!7631 = !DILocation(line: 952, column: 9, scope: !7523)
!7632 = !DILocation(line: 953, column: 1, scope: !7523)
!7633 = !DILocation(line: 952, column: 2, scope: !7523)
!7634 = !DISubprogram(name: "snprintf", scope: !7635, file: !7635, line: 12, type: !7636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7635 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!7636 = !DISubroutineType(types: !7637)
!7637 = !{!34, !506, !47, !28, null}
!7638 = distinct !DISubprogram(name: "bpf_prog_array_valid", scope: !320, file: !320, line: 443, type: !7639, scopeLine: 444, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7641)
!7639 = !DISubroutineType(types: !7640)
!7640 = !{!459, !1166}
!7641 = !{!7642}
!7642 = !DILocalVariable(name: "call", arg: 1, scope: !7638, file: !320, line: 443, type: !1166)
!7643 = !DILocation(line: 443, column: 66, scope: !7638)
!7644 = !DILocation(line: 462, column: 11, scope: !7645)
!7645 = distinct !DILexicalBlock(scope: !7638, file: !320, line: 462, column: 11)
!7646 = !DILocation(line: 462, column: 11, scope: !7647)
!7647 = distinct !DILexicalBlock(scope: !7645, file: !320, line: 462, column: 11)
!7648 = !DILocation(line: 462, column: 10, scope: !7638)
!7649 = !DILocation(line: 462, column: 9, scope: !7638)
!7650 = !DILocation(line: 462, column: 2, scope: !7638)
!7651 = distinct !DISubprogram(name: "hlist_empty", scope: !7652, file: !7652, line: 970, type: !7653, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7657)
!7652 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!7653 = !DISubroutineType(types: !7654)
!7654 = !{!34, !7655}
!7655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7656, size: 64)
!7656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1366)
!7657 = !{!7658}
!7658 = !DILocalVariable(name: "h", arg: 1, scope: !7651, file: !7652, line: 970, type: !7655)
!7659 = !DILocation(line: 970, column: 56, scope: !7651)
!7660 = !DILocation(line: 972, column: 10, scope: !7661)
!7661 = distinct !DILexicalBlock(scope: !7651, file: !7652, line: 972, column: 10)
!7662 = !DILocation(line: 972, column: 10, scope: !7663)
!7663 = distinct !DILexicalBlock(scope: !7661, file: !7652, line: 972, column: 10)
!7664 = !DILocation(line: 972, column: 9, scope: !7651)
!7665 = !DILocation(line: 972, column: 2, scope: !7651)
!7666 = !DISubprogram(name: "perf_trace_buf_alloc", scope: !320, file: !320, line: 904, type: !7667, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7667 = !DISubroutineType(types: !7668)
!7668 = !{!32, !34, !7669, !440}
!7669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!7670 = distinct !DISubprogram(name: "perf_fetch_caller_regs", scope: !290, file: !290, line: 1427, type: !7671, scopeLine: 1428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7673)
!7671 = !DISubroutineType(types: !7672)
!7672 = !{null, !4075}
!7673 = !{!7674}
!7674 = !DILocalVariable(name: "regs", arg: 1, scope: !7670, file: !290, line: 1427, type: !4075)
!7675 = !DILocation(line: 1427, column: 59, scope: !7670)
!7676 = !DILocation(line: 1429, column: 2, scope: !7677)
!7677 = distinct !DILexicalBlock(scope: !7670, file: !290, line: 1429, column: 2)
!7678 = !DILocation(line: 1430, column: 1, scope: !7670)
!7679 = !DISubprogram(name: "perf_trace_run_bpf_submit", scope: !320, file: !320, line: 936, type: !7680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7680 = !DISubroutineType(types: !7681)
!7681 = !{null, !32, !34, !34, !1166, !378, !4075, !1365, !1445}
