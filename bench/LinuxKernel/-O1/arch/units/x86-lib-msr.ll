; ModuleID = 'arch/x86/lib/msr.c'
source_filename = "arch/x86/lib/msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "\09.section \22__tracepoints_ptrs\22, \22a\22\09\09"
module asm "\09.balign 4\09\09\09\09\09"
module asm "\09.long \09__tracepoint_read_msr - .\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm ".pushsection .static_call.text, \22ax\22\09\09"
module asm ".align 4\09\09\09\09\09\09"
module asm ".globl __SCT__tp_func_read_msr\09\09"
module asm "__SCT__tp_func_read_msr:\09\09\09"
module asm "986: "
module asm "\09.pushsection .discard.noendbr"
module asm "\09.long 986b"
module asm "\09.popsection"
module asm "\09.byte 0xe9; .long __traceiter_read_msr - (. + 4)\09\09\09\09\09\09"
module asm ".byte 0x0f, 0xb9, 0xcc\09\09\09\09"
module asm ".type __SCT__tp_func_read_msr, @function\09"
module asm ".size __SCT__tp_func_read_msr, . - __SCT__tp_func_read_msr "
module asm ".popsection\09\09\09\09\09"
module asm "\09.section \22__tracepoints_ptrs\22, \22a\22\09\09"
module asm "\09.balign 4\09\09\09\09\09"
module asm "\09.long \09__tracepoint_write_msr - .\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm ".pushsection .static_call.text, \22ax\22\09\09"
module asm ".align 4\09\09\09\09\09\09"
module asm ".globl __SCT__tp_func_write_msr\09\09"
module asm "__SCT__tp_func_write_msr:\09\09\09"
module asm "986: "
module asm "\09.pushsection .discard.noendbr"
module asm "\09.long 986b"
module asm "\09.popsection"
module asm "\09.byte 0xe9; .long __traceiter_write_msr - (. + 4)\09\09\09\09\09\09"
module asm ".byte 0x0f, 0xb9, 0xcc\09\09\09\09"
module asm ".type __SCT__tp_func_write_msr, @function\09"
module asm ".size __SCT__tp_func_write_msr, . - __SCT__tp_func_write_msr "
module asm ".popsection\09\09\09\09\09"
module asm "\09.section \22__tracepoints_ptrs\22, \22a\22\09\09"
module asm "\09.balign 4\09\09\09\09\09"
module asm "\09.long \09__tracepoint_rdpmc - .\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm ".pushsection .static_call.text, \22ax\22\09\09"
module asm ".align 4\09\09\09\09\09\09"
module asm ".globl __SCT__tp_func_rdpmc\09\09"
module asm "__SCT__tp_func_rdpmc:\09\09\09"
module asm "986: "
module asm "\09.pushsection .discard.noendbr"
module asm "\09.long 986b"
module asm "\09.popsection"
module asm "\09.byte 0xe9; .long __traceiter_rdpmc - (. + 4)\09\09\09\09\09\09"
module asm ".byte 0x0f, 0xb9, 0xcc\09\09\09\09"
module asm ".type __SCT__tp_func_rdpmc, @function\09"
module asm ".size __SCT__tp_func_rdpmc, . - __SCT__tp_func_rdpmc "
module asm ".popsection\09\09\09\09\09"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_msrs_alloc: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad msrs_alloc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_msrs_free: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad msrs_free ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_do_trace_write_msr: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad do_trace_write_msr ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___tracepoint_write_msr: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __tracepoint_write_msr ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___traceiter_write_msr: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __traceiter_write_msr ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___SCK__tp_func_write_msr: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __SCK__tp_func_write_msr ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___SCT__tp_func_write_msr: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __SCT__tp_func_write_msr ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_do_trace_read_msr: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad do_trace_read_msr ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___tracepoint_read_msr: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __tracepoint_read_msr ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___traceiter_read_msr: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __traceiter_read_msr ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___SCK__tp_func_read_msr: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __SCK__tp_func_read_msr ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___SCT__tp_func_read_msr: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __SCT__tp_func_read_msr ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_do_trace_rdpmc: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad do_trace_rdpmc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___tracepoint_rdpmc: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __tracepoint_rdpmc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___traceiter_rdpmc: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __traceiter_rdpmc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___SCK__tp_func_rdpmc: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __SCK__tp_func_rdpmc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___SCT__tp_func_rdpmc: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __SCT__tp_func_rdpmc ; .previous"

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
%struct.pcpu_hot = type { %union.anon.28 }
%union.anon.28 = type { %struct.anon.29, [16 x i8] }
%struct.anon.29 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.cpumask = type { [1 x i64] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_data_offsets_msr_trace_class = type {}
%struct.trace_event_raw_msr_trace_class = type { %struct.trace_entry, i32, i64, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.msr = type { %union.anon.26 }
%union.anon.26 = type { i64 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i64, ptr, i32, ptr, i32, i64, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i64, i32, i32, i32, i64, i64, i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i64, i32 }
%struct.seq_buf = type { ptr, i64, i64 }
%struct.hlist_head = type { ptr }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.24, i64, i64, %union.anon.25 }
%union.anon.24 = type { i64 }
%union.anon.25 = type { i64 }

@__tpstrtab_read_msr = internal constant [9 x i8] c"read_msr\00", section "__tracepoints_strings", align 1, !dbg !0
@__SCK__tp_func_read_msr = hidden global %struct.static_call_key { ptr @__traceiter_read_msr, %union.anon.0 { i64 1 } }, align 8, !dbg !5839
@__tracepoint_read_msr = hidden global %struct.tracepoint { ptr @__tpstrtab_read_msr, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_read_msr, ptr @__SCT__tp_func_read_msr, ptr @__traceiter_read_msr, ptr @__probestub_read_msr, ptr null, ptr null, ptr null }, section "__tracepoints", align 8, !dbg !364
@__tpstrtab_write_msr = internal constant [10 x i8] c"write_msr\00", section "__tracepoints_strings", align 1, !dbg !5907
@__SCK__tp_func_write_msr = hidden global %struct.static_call_key { ptr @__traceiter_write_msr, %union.anon.0 { i64 1 } }, align 8, !dbg !5843
@__tracepoint_write_msr = hidden global %struct.tracepoint { ptr @__tpstrtab_write_msr, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_write_msr, ptr @__SCT__tp_func_write_msr, ptr @__traceiter_write_msr, ptr @__probestub_write_msr, ptr null, ptr null, ptr null }, section "__tracepoints", align 8, !dbg !5841
@__tpstrtab_rdpmc = internal constant [6 x i8] c"rdpmc\00", section "__tracepoints_strings", align 1, !dbg !5910
@__SCK__tp_func_rdpmc = hidden global %struct.static_call_key { ptr @__traceiter_rdpmc, %union.anon.0 { i64 1 } }, align 8, !dbg !5847
@__tracepoint_rdpmc = hidden global %struct.tracepoint { ptr @__tpstrtab_rdpmc, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rdpmc, ptr @__SCT__tp_func_rdpmc, ptr @__traceiter_rdpmc, ptr @__probestub_rdpmc, ptr null, ptr null, ptr null }, section "__tracepoints", align 8, !dbg !5845
@str__msr__trace_system_name = internal constant [4 x i8] c"msr\00", align 1, !dbg !5913
@trace_event_fields_msr_trace_class = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.21 { %struct.anon.20 { ptr @.str.2, i32 4, i32 4, i8 0, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.21 { %struct.anon.20 { ptr @.str.4, i32 8, i32 8, i8 0, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.21 { %struct.anon.20 { ptr @.str.6, i32 4, i32 4, i8 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 16, !dbg !5934
@event_class_msr_trace_class = internal global %struct.trace_event_class { ptr @str__msr__trace_system_name, ptr @trace_event_raw_event_msr_trace_class, ptr @perf_trace_msr_trace_class, ptr @trace_event_reg, ptr @trace_event_fields_msr_trace_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_msr_trace_class, i64 48), ptr getelementptr (i8, ptr @event_class_msr_trace_class, i64 48) }, ptr @trace_event_raw_init }, section ".ref.data", align 8, !dbg !5849
@trace_event_type_funcs_msr_trace_class = internal global %struct.trace_event_functions { ptr @trace_raw_output_msr_trace_class, ptr null, ptr null, ptr null }, align 8, !dbg !5937
@print_fmt_msr_trace_class = internal global [66 x i8] c"\22%x, value %llx%s\22, REC->msr, REC->val, REC->failed ? \22 #GP\22 : \22\22\00", align 16, !dbg !5950
@event_read_msr = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_msr_trace_class, %union.anon.22 { ptr @__tracepoint_read_msr }, %struct.trace_event { %struct.hlist_node zeroinitializer, i32 0, ptr @trace_event_type_funcs_msr_trace_class }, ptr @print_fmt_msr_trace_class, ptr null, %union.anon.23 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4, !dbg !5851
@__event_read_msr = internal global ptr @event_read_msr, section "_ftrace_events", align 8, !dbg !5853
@event_write_msr = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_msr_trace_class, %union.anon.22 { ptr @__tracepoint_write_msr }, %struct.trace_event { %struct.hlist_node zeroinitializer, i32 0, ptr @trace_event_type_funcs_msr_trace_class }, ptr @print_fmt_msr_trace_class, ptr null, %union.anon.23 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4, !dbg !5855
@__event_write_msr = internal global ptr @event_write_msr, section "_ftrace_events", align 8, !dbg !5857
@event_rdpmc = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_msr_trace_class, %union.anon.22 { ptr @__tracepoint_rdpmc }, %struct.trace_event { %struct.hlist_node zeroinitializer, i32 0, ptr @trace_event_type_funcs_msr_trace_class }, ptr @print_fmt_msr_trace_class, ptr null, %union.anon.23 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4, !dbg !5859
@__event_rdpmc = internal global ptr @event_rdpmc, section "_ftrace_events", align 8, !dbg !5861
@.str = private unnamed_addr constant [29 x i8] c"\014%s: error allocating msrs\0A\00", align 1, !dbg !5863
@__func__.msrs_alloc = private unnamed_addr constant [11 x i8] c"msrs_alloc\00", align 1, !dbg !5868
@__UNIQUE_ID___addressable_msrs_alloc347 = internal global ptr @msrs_alloc, section ".discard.addressable", align 8, !dbg !5873
@__UNIQUE_ID___addressable_msrs_free348 = internal global ptr @msrs_free, section ".discard.addressable", align 8, !dbg !5875
@__UNIQUE_ID___addressable_do_trace_write_msr349 = internal global ptr @do_trace_write_msr, section ".discard.addressable", align 8, !dbg !5877
@__UNIQUE_ID___addressable___tracepoint_write_msr350 = internal global ptr @__tracepoint_write_msr, section ".discard.addressable", align 8, !dbg !5879
@__UNIQUE_ID___addressable___traceiter_write_msr351 = internal global ptr @__traceiter_write_msr, section ".discard.addressable", align 8, !dbg !5881
@__UNIQUE_ID___addressable___SCK__tp_func_write_msr352 = internal global ptr @__SCK__tp_func_write_msr, section ".discard.addressable", align 8, !dbg !5883
@__UNIQUE_ID___addressable___SCT__tp_func_write_msr353 = internal global ptr @__SCT__tp_func_write_msr, section ".discard.addressable", align 8, !dbg !5885
@__UNIQUE_ID___addressable_do_trace_read_msr354 = internal global ptr @do_trace_read_msr, section ".discard.addressable", align 8, !dbg !5887
@__UNIQUE_ID___addressable___tracepoint_read_msr355 = internal global ptr @__tracepoint_read_msr, section ".discard.addressable", align 8, !dbg !5889
@__UNIQUE_ID___addressable___traceiter_read_msr356 = internal global ptr @__traceiter_read_msr, section ".discard.addressable", align 8, !dbg !5891
@__UNIQUE_ID___addressable___SCK__tp_func_read_msr357 = internal global ptr @__SCK__tp_func_read_msr, section ".discard.addressable", align 8, !dbg !5893
@__UNIQUE_ID___addressable___SCT__tp_func_read_msr358 = internal global ptr @__SCT__tp_func_read_msr, section ".discard.addressable", align 8, !dbg !5895
@__UNIQUE_ID___addressable_do_trace_rdpmc359 = internal global ptr @do_trace_rdpmc, section ".discard.addressable", align 8, !dbg !5897
@__UNIQUE_ID___addressable___tracepoint_rdpmc360 = internal global ptr @__tracepoint_rdpmc, section ".discard.addressable", align 8, !dbg !5899
@__UNIQUE_ID___addressable___traceiter_rdpmc361 = internal global ptr @__traceiter_rdpmc, section ".discard.addressable", align 8, !dbg !5901
@__UNIQUE_ID___addressable___SCK__tp_func_rdpmc362 = internal global ptr @__SCK__tp_func_rdpmc, section ".discard.addressable", align 8, !dbg !5903
@__UNIQUE_ID___addressable___SCT__tp_func_rdpmc363 = internal global ptr @__SCT__tp_func_rdpmc, section ".discard.addressable", align 8, !dbg !5905
@.str.1 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1, !dbg !5917
@.str.2 = private unnamed_addr constant [4 x i8] c"msr\00", align 1, !dbg !5922
@.str.3 = private unnamed_addr constant [4 x i8] c"u64\00", align 1, !dbg !5925
@.str.4 = private unnamed_addr constant [4 x i8] c"val\00", align 1, !dbg !5927
@.str.5 = private unnamed_addr constant [4 x i8] c"int\00", align 1, !dbg !5929
@.str.6 = private unnamed_addr constant [7 x i8] c"failed\00", align 1, !dbg !5931
@.str.7 = private unnamed_addr constant [18 x i8] c"%x, value %llx%s\0A\00", align 1, !dbg !5939
@.str.8 = private unnamed_addr constant [5 x i8] c" #GP\00", align 1, !dbg !5944
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !5947
@this_cpu_off = external dso_local global i64, section ".data..percpu..read_mostly", align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.10 = private unnamed_addr constant [33 x i8] c"arch/x86/include/asm/msr-trace.h\00", align 1, !dbg !5955
@trace_write_msr.__UNIQUE_ID___addressable___SCK__tp_func_write_msr213 = internal global ptr @__SCK__tp_func_write_msr, section ".discard.addressable", align 8, !dbg !5960
@trace_write_msr.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace214 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !5990
@__SCK__preempt_schedule_notrace = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@trace_read_msr.__UNIQUE_ID___addressable___SCK__tp_func_read_msr205 = internal global ptr @__SCK__tp_func_read_msr, section ".discard.addressable", align 8, !dbg !5992
@trace_read_msr.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace206 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !6020
@trace_rdpmc.__UNIQUE_ID___addressable___SCK__tp_func_rdpmc221 = internal global ptr @__SCK__tp_func_rdpmc, section ".discard.addressable", align 8, !dbg !6022
@trace_rdpmc.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace222 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !6050
@llvm.compiler.used = appending global [33 x ptr] [ptr @__tracepoint_read_msr, ptr @__tracepoint_write_msr, ptr @__tracepoint_rdpmc, ptr @event_class_msr_trace_class, ptr @event_read_msr, ptr @__event_read_msr, ptr @event_write_msr, ptr @__event_write_msr, ptr @event_rdpmc, ptr @__event_rdpmc, ptr @__UNIQUE_ID___addressable_msrs_alloc347, ptr @__UNIQUE_ID___addressable_msrs_free348, ptr @__UNIQUE_ID___addressable_do_trace_write_msr349, ptr @__UNIQUE_ID___addressable___tracepoint_write_msr350, ptr @__UNIQUE_ID___addressable___traceiter_write_msr351, ptr @__UNIQUE_ID___addressable___SCK__tp_func_write_msr352, ptr @__UNIQUE_ID___addressable___SCT__tp_func_write_msr353, ptr @__UNIQUE_ID___addressable_do_trace_read_msr354, ptr @__UNIQUE_ID___addressable___tracepoint_read_msr355, ptr @__UNIQUE_ID___addressable___traceiter_read_msr356, ptr @__UNIQUE_ID___addressable___SCK__tp_func_read_msr357, ptr @__UNIQUE_ID___addressable___SCT__tp_func_read_msr358, ptr @__UNIQUE_ID___addressable_do_trace_rdpmc359, ptr @__UNIQUE_ID___addressable___tracepoint_rdpmc360, ptr @__UNIQUE_ID___addressable___traceiter_rdpmc361, ptr @__UNIQUE_ID___addressable___SCK__tp_func_rdpmc362, ptr @__UNIQUE_ID___addressable___SCT__tp_func_rdpmc363, ptr @trace_write_msr.__UNIQUE_ID___addressable___SCK__tp_func_write_msr213, ptr @trace_write_msr.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace214, ptr @trace_read_msr.__UNIQUE_ID___addressable___SCK__tp_func_read_msr205, ptr @trace_read_msr.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace206, ptr @trace_rdpmc.__UNIQUE_ID___addressable___SCK__tp_func_rdpmc221, ptr @trace_rdpmc.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace222], section "llvm.metadata"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_read_msr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__traceiter_read_msr(ptr noundef %__data, i32 noundef %msr, i64 noundef %val, i32 noundef %failed) #1 align 16 !dbg !6063 {
entry:
  %__data.addr = alloca ptr, align 8
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  %failed.addr = alloca i32, align 4
  %it_func_ptr = alloca ptr, align 8
  %it_func = alloca ptr, align 8
  %__UNIQUE_ID_rcu227 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6067, metadata !DIExpression()), !dbg !6075
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6068, metadata !DIExpression()), !dbg !6075
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6069, metadata !DIExpression()), !dbg !6075
  store i32 %failed, ptr %failed.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %failed.addr, metadata !6070, metadata !DIExpression()), !dbg !6075
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #14, !dbg !6075
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !6071, metadata !DIExpression()), !dbg !6075
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func) #14, !dbg !6075
  call void @llvm.dbg.declare(metadata ptr %it_func, metadata !6072, metadata !DIExpression()), !dbg !6075
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu227) #14, !dbg !6076
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu227, metadata !6073, metadata !DIExpression()), !dbg !6076
  br label %do.body, !dbg !6077

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6079

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6079

do.end:                                           ; preds = %do.cond
  %0 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 8), align 8, !dbg !6077
  store ptr %0, ptr %tmp, align 8, !dbg !6079
  %1 = load ptr, ptr %tmp, align 8, !dbg !6077
  store ptr %1, ptr %__UNIQUE_ID_rcu227, align 8, !dbg !6076
  %2 = load ptr, ptr %__UNIQUE_ID_rcu227, align 8, !dbg !6076
  store ptr %2, ptr %tmp1, align 8, !dbg !6076
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu227) #14, !dbg !6075
  %3 = load ptr, ptr %tmp1, align 8, !dbg !6076
  store ptr %3, ptr %it_func_ptr, align 8, !dbg !6075
  %4 = load ptr, ptr %it_func_ptr, align 8, !dbg !6081
  %tobool = icmp ne ptr %4, null, !dbg !6081
  br i1 %tobool, label %if.then, label %if.end, !dbg !6075

if.then:                                          ; preds = %do.end
  br label %do.body2, !dbg !6083

do.body2:                                         ; preds = %do.cond7, %if.then
  br label %do.body3, !dbg !6085

do.body3:                                         ; preds = %do.body2
  br label %do.cond4, !dbg !6088

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !6088

do.end5:                                          ; preds = %do.cond4
  %5 = load ptr, ptr %it_func_ptr, align 8, !dbg !6085
  %func = getelementptr inbounds %struct.tracepoint_func, ptr %5, i32 0, i32 0, !dbg !6085
  %6 = load volatile ptr, ptr %func, align 8, !dbg !6085
  store ptr %6, ptr %tmp6, align 8, !dbg !6088
  %7 = load ptr, ptr %tmp6, align 8, !dbg !6085
  store ptr %7, ptr %it_func, align 8, !dbg !6090
  %8 = load ptr, ptr %it_func_ptr, align 8, !dbg !6090
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1, !dbg !6090
  %9 = load ptr, ptr %data, align 8, !dbg !6090
  store ptr %9, ptr %__data.addr, align 8, !dbg !6090
  %10 = load ptr, ptr %it_func, align 8, !dbg !6090
  %11 = load ptr, ptr %__data.addr, align 8, !dbg !6090
  %12 = load i32, ptr %msr.addr, align 4, !dbg !6090
  %13 = load i64, ptr %val.addr, align 8, !dbg !6090
  %14 = load i32, ptr %failed.addr, align 4, !dbg !6090
  call void %10(ptr noundef %11, i32 noundef %12, i64 noundef %13, i32 noundef %14) #15, !dbg !6090
  br label %do.cond7, !dbg !6090

do.cond7:                                         ; preds = %do.end5
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !6083
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %15, i32 1, !dbg !6083
  store ptr %incdec.ptr, ptr %it_func_ptr, align 8, !dbg !6083
  %func8 = getelementptr inbounds %struct.tracepoint_func, ptr %incdec.ptr, i32 0, i32 0, !dbg !6083
  %16 = load ptr, ptr %func8, align 8, !dbg !6083
  %tobool9 = icmp ne ptr %16, null, !dbg !6090
  br i1 %tobool9, label %do.body2, label %do.end10, !dbg !6090, !llvm.loop !6091

do.end10:                                         ; preds = %do.cond7
  br label %if.end, !dbg !6083

if.end:                                           ; preds = %do.end10, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func) #14, !dbg !6075
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #14, !dbg !6075
  ret i32 0, !dbg !6075
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__probestub_read_msr(ptr noundef %__data, i32 noundef %msr, i64 noundef %val, i32 noundef %failed) #1 align 16 !dbg !6094 {
entry:
  %__data.addr = alloca ptr, align 8
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  %failed.addr = alloca i32, align 4
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6096, metadata !DIExpression()), !dbg !6100
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6097, metadata !DIExpression()), !dbg !6100
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6098, metadata !DIExpression()), !dbg !6100
  store i32 %failed, ptr %failed.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %failed.addr, metadata !6099, metadata !DIExpression()), !dbg !6100
  ret void, !dbg !6100
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_write_msr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__traceiter_write_msr(ptr noundef %__data, i32 noundef %msr, i64 noundef %val, i32 noundef %failed) #1 align 16 !dbg !6101 {
entry:
  %__data.addr = alloca ptr, align 8
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  %failed.addr = alloca i32, align 4
  %it_func_ptr = alloca ptr, align 8
  %it_func = alloca ptr, align 8
  %__UNIQUE_ID_rcu230 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6103, metadata !DIExpression()), !dbg !6111
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6104, metadata !DIExpression()), !dbg !6111
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6105, metadata !DIExpression()), !dbg !6111
  store i32 %failed, ptr %failed.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %failed.addr, metadata !6106, metadata !DIExpression()), !dbg !6111
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #14, !dbg !6111
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !6107, metadata !DIExpression()), !dbg !6111
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func) #14, !dbg !6111
  call void @llvm.dbg.declare(metadata ptr %it_func, metadata !6108, metadata !DIExpression()), !dbg !6111
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu230) #14, !dbg !6112
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu230, metadata !6109, metadata !DIExpression()), !dbg !6112
  br label %do.body, !dbg !6113

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6115

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6115

do.end:                                           ; preds = %do.cond
  %0 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_write_msr, i32 0, i32 8), align 8, !dbg !6113
  store ptr %0, ptr %tmp, align 8, !dbg !6115
  %1 = load ptr, ptr %tmp, align 8, !dbg !6113
  store ptr %1, ptr %__UNIQUE_ID_rcu230, align 8, !dbg !6112
  %2 = load ptr, ptr %__UNIQUE_ID_rcu230, align 8, !dbg !6112
  store ptr %2, ptr %tmp1, align 8, !dbg !6112
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu230) #14, !dbg !6111
  %3 = load ptr, ptr %tmp1, align 8, !dbg !6112
  store ptr %3, ptr %it_func_ptr, align 8, !dbg !6111
  %4 = load ptr, ptr %it_func_ptr, align 8, !dbg !6117
  %tobool = icmp ne ptr %4, null, !dbg !6117
  br i1 %tobool, label %if.then, label %if.end, !dbg !6111

if.then:                                          ; preds = %do.end
  br label %do.body2, !dbg !6119

do.body2:                                         ; preds = %do.cond7, %if.then
  br label %do.body3, !dbg !6121

do.body3:                                         ; preds = %do.body2
  br label %do.cond4, !dbg !6124

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !6124

do.end5:                                          ; preds = %do.cond4
  %5 = load ptr, ptr %it_func_ptr, align 8, !dbg !6121
  %func = getelementptr inbounds %struct.tracepoint_func, ptr %5, i32 0, i32 0, !dbg !6121
  %6 = load volatile ptr, ptr %func, align 8, !dbg !6121
  store ptr %6, ptr %tmp6, align 8, !dbg !6124
  %7 = load ptr, ptr %tmp6, align 8, !dbg !6121
  store ptr %7, ptr %it_func, align 8, !dbg !6126
  %8 = load ptr, ptr %it_func_ptr, align 8, !dbg !6126
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1, !dbg !6126
  %9 = load ptr, ptr %data, align 8, !dbg !6126
  store ptr %9, ptr %__data.addr, align 8, !dbg !6126
  %10 = load ptr, ptr %it_func, align 8, !dbg !6126
  %11 = load ptr, ptr %__data.addr, align 8, !dbg !6126
  %12 = load i32, ptr %msr.addr, align 4, !dbg !6126
  %13 = load i64, ptr %val.addr, align 8, !dbg !6126
  %14 = load i32, ptr %failed.addr, align 4, !dbg !6126
  call void %10(ptr noundef %11, i32 noundef %12, i64 noundef %13, i32 noundef %14) #15, !dbg !6126
  br label %do.cond7, !dbg !6126

do.cond7:                                         ; preds = %do.end5
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !6119
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %15, i32 1, !dbg !6119
  store ptr %incdec.ptr, ptr %it_func_ptr, align 8, !dbg !6119
  %func8 = getelementptr inbounds %struct.tracepoint_func, ptr %incdec.ptr, i32 0, i32 0, !dbg !6119
  %16 = load ptr, ptr %func8, align 8, !dbg !6119
  %tobool9 = icmp ne ptr %16, null, !dbg !6126
  br i1 %tobool9, label %do.body2, label %do.end10, !dbg !6126, !llvm.loop !6127

do.end10:                                         ; preds = %do.cond7
  br label %if.end, !dbg !6119

if.end:                                           ; preds = %do.end10, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func) #14, !dbg !6111
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #14, !dbg !6111
  ret i32 0, !dbg !6111
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__probestub_write_msr(ptr noundef %__data, i32 noundef %msr, i64 noundef %val, i32 noundef %failed) #1 align 16 !dbg !6128 {
entry:
  %__data.addr = alloca ptr, align 8
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  %failed.addr = alloca i32, align 4
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6130, metadata !DIExpression()), !dbg !6134
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6131, metadata !DIExpression()), !dbg !6134
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6132, metadata !DIExpression()), !dbg !6134
  store i32 %failed, ptr %failed.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %failed.addr, metadata !6133, metadata !DIExpression()), !dbg !6134
  ret void, !dbg !6134
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_rdpmc(ptr noundef, i32 noundef, i64 noundef, i32 noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__traceiter_rdpmc(ptr noundef %__data, i32 noundef %msr, i64 noundef %val, i32 noundef %failed) #1 align 16 !dbg !6135 {
entry:
  %__data.addr = alloca ptr, align 8
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  %failed.addr = alloca i32, align 4
  %it_func_ptr = alloca ptr, align 8
  %it_func = alloca ptr, align 8
  %__UNIQUE_ID_rcu233 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6137, metadata !DIExpression()), !dbg !6145
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6138, metadata !DIExpression()), !dbg !6145
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6139, metadata !DIExpression()), !dbg !6145
  store i32 %failed, ptr %failed.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %failed.addr, metadata !6140, metadata !DIExpression()), !dbg !6145
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #14, !dbg !6145
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !6141, metadata !DIExpression()), !dbg !6145
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func) #14, !dbg !6145
  call void @llvm.dbg.declare(metadata ptr %it_func, metadata !6142, metadata !DIExpression()), !dbg !6145
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu233) #14, !dbg !6146
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu233, metadata !6143, metadata !DIExpression()), !dbg !6146
  br label %do.body, !dbg !6147

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6149

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6149

do.end:                                           ; preds = %do.cond
  %0 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdpmc, i32 0, i32 8), align 8, !dbg !6147
  store ptr %0, ptr %tmp, align 8, !dbg !6149
  %1 = load ptr, ptr %tmp, align 8, !dbg !6147
  store ptr %1, ptr %__UNIQUE_ID_rcu233, align 8, !dbg !6146
  %2 = load ptr, ptr %__UNIQUE_ID_rcu233, align 8, !dbg !6146
  store ptr %2, ptr %tmp1, align 8, !dbg !6146
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu233) #14, !dbg !6145
  %3 = load ptr, ptr %tmp1, align 8, !dbg !6146
  store ptr %3, ptr %it_func_ptr, align 8, !dbg !6145
  %4 = load ptr, ptr %it_func_ptr, align 8, !dbg !6151
  %tobool = icmp ne ptr %4, null, !dbg !6151
  br i1 %tobool, label %if.then, label %if.end, !dbg !6145

if.then:                                          ; preds = %do.end
  br label %do.body2, !dbg !6153

do.body2:                                         ; preds = %do.cond7, %if.then
  br label %do.body3, !dbg !6155

do.body3:                                         ; preds = %do.body2
  br label %do.cond4, !dbg !6158

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !6158

do.end5:                                          ; preds = %do.cond4
  %5 = load ptr, ptr %it_func_ptr, align 8, !dbg !6155
  %func = getelementptr inbounds %struct.tracepoint_func, ptr %5, i32 0, i32 0, !dbg !6155
  %6 = load volatile ptr, ptr %func, align 8, !dbg !6155
  store ptr %6, ptr %tmp6, align 8, !dbg !6158
  %7 = load ptr, ptr %tmp6, align 8, !dbg !6155
  store ptr %7, ptr %it_func, align 8, !dbg !6160
  %8 = load ptr, ptr %it_func_ptr, align 8, !dbg !6160
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1, !dbg !6160
  %9 = load ptr, ptr %data, align 8, !dbg !6160
  store ptr %9, ptr %__data.addr, align 8, !dbg !6160
  %10 = load ptr, ptr %it_func, align 8, !dbg !6160
  %11 = load ptr, ptr %__data.addr, align 8, !dbg !6160
  %12 = load i32, ptr %msr.addr, align 4, !dbg !6160
  %13 = load i64, ptr %val.addr, align 8, !dbg !6160
  %14 = load i32, ptr %failed.addr, align 4, !dbg !6160
  call void %10(ptr noundef %11, i32 noundef %12, i64 noundef %13, i32 noundef %14) #15, !dbg !6160
  br label %do.cond7, !dbg !6160

do.cond7:                                         ; preds = %do.end5
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !6153
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %15, i32 1, !dbg !6153
  store ptr %incdec.ptr, ptr %it_func_ptr, align 8, !dbg !6153
  %func8 = getelementptr inbounds %struct.tracepoint_func, ptr %incdec.ptr, i32 0, i32 0, !dbg !6153
  %16 = load ptr, ptr %func8, align 8, !dbg !6153
  %tobool9 = icmp ne ptr %16, null, !dbg !6160
  br i1 %tobool9, label %do.body2, label %do.end10, !dbg !6160, !llvm.loop !6161

do.end10:                                         ; preds = %do.cond7
  br label %if.end, !dbg !6153

if.end:                                           ; preds = %do.end10, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func) #14, !dbg !6145
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #14, !dbg !6145
  ret i32 0, !dbg !6145
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__probestub_rdpmc(ptr noundef %__data, i32 noundef %msr, i64 noundef %val, i32 noundef %failed) #1 align 16 !dbg !6162 {
entry:
  %__data.addr = alloca ptr, align 8
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  %failed.addr = alloca i32, align 4
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6164, metadata !DIExpression()), !dbg !6168
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6165, metadata !DIExpression()), !dbg !6168
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6166, metadata !DIExpression()), !dbg !6168
  store i32 %failed, ptr %failed.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %failed.addr, metadata !6167, metadata !DIExpression()), !dbg !6168
  ret void, !dbg !6168
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_event_raw_event_msr_trace_class(ptr noundef %__data, i32 noundef %msr, i64 noundef %val, i32 noundef %failed) #1 align 16 !dbg !6169 {
entry:
  %__data.addr = alloca ptr, align 8
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  %failed.addr = alloca i32, align 4
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6171, metadata !DIExpression()), !dbg !6175
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6172, metadata !DIExpression()), !dbg !6175
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6173, metadata !DIExpression()), !dbg !6175
  store i32 %failed, ptr %failed.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %failed.addr, metadata !6174, metadata !DIExpression()), !dbg !6175
  %0 = load ptr, ptr %__data.addr, align 8, !dbg !6175
  %1 = load i32, ptr %msr.addr, align 4, !dbg !6175
  %2 = load i64, ptr %val.addr, align 8, !dbg !6175
  %3 = load i32, ptr %failed.addr, align 4, !dbg !6175
  call void @do_trace_event_raw_event_msr_trace_class(ptr noundef %0, i32 noundef %1, i64 noundef %2, i32 noundef %3) #15, !dbg !6175
  ret void, !dbg !6175
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @perf_trace_msr_trace_class(ptr noundef %__data, i32 noundef %msr, i64 noundef %val, i32 noundef %failed) #1 align 16 !dbg !6176 {
entry:
  %__data.addr = alloca ptr, align 8
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  %failed.addr = alloca i32, align 4
  %event_call = alloca ptr, align 8
  %__data_offsets = alloca %struct.trace_event_data_offsets_msr_trace_class, align 1
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
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6178, metadata !DIExpression()), !dbg !6198
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6179, metadata !DIExpression()), !dbg !6198
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6180, metadata !DIExpression()), !dbg !6198
  store i32 %failed, ptr %failed.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %failed.addr, metadata !6181, metadata !DIExpression()), !dbg !6198
  call void @llvm.lifetime.start.p0(i64 8, ptr %event_call) #14, !dbg !6198
  call void @llvm.dbg.declare(metadata ptr %event_call, metadata !6182, metadata !DIExpression()), !dbg !6198
  %0 = load ptr, ptr %__data.addr, align 8, !dbg !6198
  store ptr %0, ptr %event_call, align 8, !dbg !6198
  call void @llvm.lifetime.start.p0(i64 0, ptr %__data_offsets) #14, !dbg !6198
  call void @llvm.dbg.declare(metadata ptr %__data_offsets, metadata !6183, metadata !DIExpression()), !dbg !6198
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #14, !dbg !6198
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !6185, metadata !DIExpression()), !dbg !6198
  call void @llvm.lifetime.start.p0(i64 8, ptr %__regs) #14, !dbg !6198
  call void @llvm.dbg.declare(metadata ptr %__regs, metadata !6186, metadata !DIExpression()), !dbg !6198
  call void @llvm.lifetime.start.p0(i64 8, ptr %__count) #14, !dbg !6198
  call void @llvm.dbg.declare(metadata ptr %__count, metadata !6187, metadata !DIExpression()), !dbg !6198
  store i64 1, ptr %__count, align 8, !dbg !6198
  call void @llvm.lifetime.start.p0(i64 8, ptr %__task) #14, !dbg !6198
  call void @llvm.dbg.declare(metadata ptr %__task, metadata !6188, metadata !DIExpression()), !dbg !6198
  store ptr null, ptr %__task, align 8, !dbg !6198
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #14, !dbg !6198
  call void @llvm.dbg.declare(metadata ptr %head, metadata !6189, metadata !DIExpression()), !dbg !6198
  call void @llvm.lifetime.start.p0(i64 4, ptr %__entry_size) #14, !dbg !6198
  call void @llvm.dbg.declare(metadata ptr %__entry_size, metadata !6190, metadata !DIExpression()), !dbg !6198
  call void @llvm.lifetime.start.p0(i64 4, ptr %__data_size) #14, !dbg !6198
  call void @llvm.dbg.declare(metadata ptr %__data_size, metadata !6191, metadata !DIExpression()), !dbg !6198
  call void @llvm.lifetime.start.p0(i64 4, ptr %rctx) #14, !dbg !6198
  call void @llvm.dbg.declare(metadata ptr %rctx, metadata !6192, metadata !DIExpression()), !dbg !6198
  %1 = load i32, ptr %msr.addr, align 4, !dbg !6198
  %2 = load i64, ptr %val.addr, align 8, !dbg !6198
  %3 = load i32, ptr %failed.addr, align 4, !dbg !6198
  %call = call i32 @trace_event_get_offsets_msr_trace_class(ptr noundef %__data_offsets, i32 noundef %1, i64 noundef %2, i32 noundef %3) #15, !dbg !6198
  store i32 %call, ptr %__data_size, align 4, !dbg !6198
  br label %do.body, !dbg !6199

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !6200
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6193, metadata !DIExpression()), !dbg !6200
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6200
  %4 = load ptr, ptr %__vpp_verify, align 8, !dbg !6200
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !6199
  br label %do.cond, !dbg !6200

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6200

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #14, !dbg !6201
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !6196, metadata !DIExpression()), !dbg !6201
  %5 = load ptr, ptr %event_call, align 8, !dbg !6201
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %5, i32 0, i32 10, !dbg !6201
  %6 = load ptr, ptr %perf_events, align 8, !dbg !6201
  %7 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr %6) #16, !dbg !6201, !srcloc !6202
  store i64 %7, ptr %tcp_ptr__, align 8, !dbg !6201
  %8 = load i64, ptr %tcp_ptr__, align 8, !dbg !6201
  %9 = inttoptr i64 %8 to ptr, !dbg !6201
  store ptr %9, ptr %tmp2, align 8, !dbg !6201
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #14, !dbg !6199
  %10 = load ptr, ptr %tmp2, align 8, !dbg !6201
  store ptr %10, ptr %tmp, align 8, !dbg !6200
  %11 = load ptr, ptr %tmp, align 8, !dbg !6199
  store ptr %11, ptr %head, align 8, !dbg !6198
  %12 = load ptr, ptr %event_call, align 8, !dbg !6203
  %call3 = call zeroext i1 @bpf_prog_array_valid(ptr noundef %12) #15, !dbg !6203
  br i1 %call3, label %if.end, label %land.lhs.true, !dbg !6203

land.lhs.true:                                    ; preds = %do.end
  %13 = load ptr, ptr %__task, align 8, !dbg !6203
  %tobool = icmp ne ptr %13, null, !dbg !6203
  %lnot = xor i1 %tobool, true, !dbg !6203
  %lnot.ext = zext i1 %lnot to i32, !dbg !6203
  %14 = call i1 @llvm.is.constant.i32(i32 %lnot.ext), !dbg !6203
  br i1 %14, label %land.lhs.true4, label %if.end, !dbg !6203

land.lhs.true4:                                   ; preds = %land.lhs.true
  %15 = load ptr, ptr %__task, align 8, !dbg !6203
  %tobool5 = icmp ne ptr %15, null, !dbg !6203
  br i1 %tobool5, label %if.end, label %land.lhs.true6, !dbg !6203

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %16 = load ptr, ptr %head, align 8, !dbg !6203
  %call7 = call i32 @hlist_empty(ptr noundef %16) #15, !dbg !6203
  %tobool8 = icmp ne i32 %call7, 0, !dbg !6203
  br i1 %tobool8, label %if.then, label %if.end, !dbg !6198

if.then:                                          ; preds = %land.lhs.true6
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6203

if.end:                                           ; preds = %land.lhs.true6, %land.lhs.true4, %land.lhs.true, %do.end
  %17 = load i32, ptr %__data_size, align 4, !dbg !6198
  %conv = sext i32 %17 to i64, !dbg !6198
  %add = add i64 %conv, 32, !dbg !6198
  %add9 = add i64 %add, 4, !dbg !6198
  %add10 = add i64 %add9, 7, !dbg !6198
  %and = and i64 %add10, -8, !dbg !6198
  %conv11 = trunc i64 %and to i32, !dbg !6198
  store i32 %conv11, ptr %__entry_size, align 4, !dbg !6198
  %18 = load i32, ptr %__entry_size, align 4, !dbg !6198
  %conv12 = sext i32 %18 to i64, !dbg !6198
  %sub = sub i64 %conv12, 4, !dbg !6198
  %conv13 = trunc i64 %sub to i32, !dbg !6198
  store i32 %conv13, ptr %__entry_size, align 4, !dbg !6198
  %19 = load i32, ptr %__entry_size, align 4, !dbg !6198
  %call14 = call ptr @perf_trace_buf_alloc(i32 noundef %19, ptr noundef %__regs, ptr noundef %rctx) #15, !dbg !6198
  store ptr %call14, ptr %entry1, align 8, !dbg !6198
  %20 = load ptr, ptr %entry1, align 8, !dbg !6205
  %tobool15 = icmp ne ptr %20, null, !dbg !6205
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !6198

if.then16:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6205

if.end17:                                         ; preds = %if.end
  %21 = load ptr, ptr %__regs, align 8, !dbg !6198
  call void @perf_fetch_caller_regs(ptr noundef %21) #15, !dbg !6198
  %22 = load i32, ptr %msr.addr, align 4, !dbg !6207
  %23 = load ptr, ptr %entry1, align 8, !dbg !6207
  %msr18 = getelementptr inbounds %struct.trace_event_raw_msr_trace_class, ptr %23, i32 0, i32 1, !dbg !6207
  store i32 %22, ptr %msr18, align 8, !dbg !6207
  %24 = load i64, ptr %val.addr, align 8, !dbg !6207
  %25 = load ptr, ptr %entry1, align 8, !dbg !6207
  %val19 = getelementptr inbounds %struct.trace_event_raw_msr_trace_class, ptr %25, i32 0, i32 2, !dbg !6207
  store i64 %24, ptr %val19, align 8, !dbg !6207
  %26 = load i32, ptr %failed.addr, align 4, !dbg !6207
  %27 = load ptr, ptr %entry1, align 8, !dbg !6207
  %failed20 = getelementptr inbounds %struct.trace_event_raw_msr_trace_class, ptr %27, i32 0, i32 3, !dbg !6207
  store i32 %26, ptr %failed20, align 8, !dbg !6207
  %28 = load ptr, ptr %entry1, align 8, !dbg !6198
  %29 = load i32, ptr %__entry_size, align 4, !dbg !6198
  %30 = load i32, ptr %rctx, align 4, !dbg !6198
  %31 = load ptr, ptr %event_call, align 8, !dbg !6198
  %32 = load i64, ptr %__count, align 8, !dbg !6198
  %33 = load ptr, ptr %__regs, align 8, !dbg !6198
  %34 = load ptr, ptr %head, align 8, !dbg !6198
  %35 = load ptr, ptr %__task, align 8, !dbg !6198
  call void @perf_trace_run_bpf_submit(ptr noundef %28, i32 noundef %29, i32 noundef %30, ptr noundef %31, i64 noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef %35) #15, !dbg !6198
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6198
  br label %cleanup, !dbg !6198

cleanup:                                          ; preds = %if.end17, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rctx) #14, !dbg !6198
  call void @llvm.lifetime.end.p0(i64 4, ptr %__data_size) #14, !dbg !6198
  call void @llvm.lifetime.end.p0(i64 4, ptr %__entry_size) #14, !dbg !6198
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #14, !dbg !6198
  call void @llvm.lifetime.end.p0(i64 8, ptr %__task) #14, !dbg !6198
  call void @llvm.lifetime.end.p0(i64 8, ptr %__count) #14, !dbg !6198
  call void @llvm.lifetime.end.p0(i64 8, ptr %__regs) #14, !dbg !6198
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #14, !dbg !6198
  call void @llvm.lifetime.end.p0(i64 0, ptr %__data_offsets) #14, !dbg !6198
  call void @llvm.lifetime.end.p0(i64 8, ptr %event_call) #14, !dbg !6198
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6198

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @msrs_alloc() #1 align 16 !dbg !6209 {
entry:
  %retval = alloca ptr, align 8
  %msrs = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %msrs) #14, !dbg !6214
  call void @llvm.dbg.declare(metadata ptr %msrs, metadata !6213, metadata !DIExpression()), !dbg !6215
  store ptr null, ptr %msrs, align 8, !dbg !6215
  %call = call noalias ptr @__alloc_percpu(i64 noundef 8, i64 noundef 8) #17, !dbg !6216
  store ptr %call, ptr %msrs, align 8, !dbg !6217
  %0 = load ptr, ptr %msrs, align 8, !dbg !6218
  %tobool = icmp ne ptr %0, null, !dbg !6218
  br i1 %tobool, label %if.end, label %if.then, !dbg !6220

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6221

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !6224

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6224

do.end:                                           ; preds = %do.cond
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef @__func__.msrs_alloc) #18, !dbg !6221
  store i32 %call1, ptr %tmp, align 4, !dbg !6224
  %1 = load i32, ptr %tmp, align 4, !dbg !6221
  store ptr null, ptr %retval, align 8, !dbg !6226
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6226

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %msrs, align 8, !dbg !6227
  store ptr %2, ptr %retval, align 8, !dbg !6228
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6228

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %msrs) #14, !dbg !6229
  %3 = load ptr, ptr %retval, align 8, !dbg !6229
  ret ptr %3, !dbg !6229
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6230 dso_local noalias ptr @__alloc_percpu(i64 noundef, i64 noundef) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6234 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @msrs_free(ptr noundef %msrs) #1 align 16 !dbg !6238 {
entry:
  %msrs.addr = alloca ptr, align 8
  store ptr %msrs, ptr %msrs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %msrs.addr, metadata !6242, metadata !DIExpression()), !dbg !6243
  %0 = load ptr, ptr %msrs.addr, align 8, !dbg !6244
  call void @free_percpu(ptr noundef %0) #15, !dbg !6245
  ret void, !dbg !6246
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6247 dso_local void @free_percpu(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @msr_set_bit(i32 noundef %msr, i8 noundef zeroext %bit) #1 align 16 !dbg !6248 {
entry:
  %msr.addr = alloca i32, align 4
  %bit.addr = alloca i8, align 1
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6252, metadata !DIExpression()), !dbg !6254
  store i8 %bit, ptr %bit.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !6253, metadata !DIExpression()), !dbg !6255
  %0 = load i32, ptr %msr.addr, align 4, !dbg !6256
  %1 = load i8, ptr %bit.addr, align 1, !dbg !6257
  %call = call i32 @__flip_bit(i32 noundef %0, i8 noundef zeroext %1, i1 noundef zeroext true) #15, !dbg !6258
  ret i32 %call, !dbg !6259
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__flip_bit(i32 noundef %msr, i8 noundef zeroext %bit, i1 noundef zeroext %set) #6 align 16 !dbg !6260 {
entry:
  %retval = alloca i32, align 4
  %msr.addr = alloca i32, align 4
  %bit.addr = alloca i8, align 1
  %set.addr = alloca i8, align 1
  %m = alloca %struct.msr, align 8
  %m1 = alloca %struct.msr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6264, metadata !DIExpression()), !dbg !6270
  store i8 %bit, ptr %bit.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !6265, metadata !DIExpression()), !dbg !6271
  %frombool = zext i1 %set to i8
  store i8 %frombool, ptr %set.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !6266, metadata !DIExpression()), !dbg !6272
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #14, !dbg !6273
  call void @llvm.dbg.declare(metadata ptr %m, metadata !6267, metadata !DIExpression()), !dbg !6274
  call void @llvm.lifetime.start.p0(i64 8, ptr %m1) #14, !dbg !6273
  call void @llvm.dbg.declare(metadata ptr %m1, metadata !6268, metadata !DIExpression()), !dbg !6275
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !6276
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6269, metadata !DIExpression()), !dbg !6277
  store i32 -22, ptr %err, align 4, !dbg !6277
  %0 = load i8, ptr %bit.addr, align 1, !dbg !6278
  %conv = zext i8 %0 to i32, !dbg !6278
  %cmp = icmp sgt i32 %conv, 63, !dbg !6280
  br i1 %cmp, label %if.then, label %if.end, !dbg !6281

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %err, align 4, !dbg !6282
  store i32 %1, ptr %retval, align 4, !dbg !6283
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6283

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %msr.addr, align 4, !dbg !6284
  %call = call i32 @msr_read(i32 noundef %2, ptr noundef %m) #15, !dbg !6285
  store i32 %call, ptr %err, align 4, !dbg !6286
  %3 = load i32, ptr %err, align 4, !dbg !6287
  %tobool = icmp ne i32 %3, 0, !dbg !6287
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !6289

if.then2:                                         ; preds = %if.end
  %4 = load i32, ptr %err, align 4, !dbg !6290
  store i32 %4, ptr %retval, align 4, !dbg !6291
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6291

if.end3:                                          ; preds = %if.end
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %m1, ptr align 8 %m, i64 8, i1 false), !dbg !6292
  %5 = load i8, ptr %set.addr, align 1, !dbg !6293, !range !6295, !noundef !722
  %tobool4 = trunc i8 %5 to i1, !dbg !6293
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !6296

if.then5:                                         ; preds = %if.end3
  %6 = load i8, ptr %bit.addr, align 1, !dbg !6297
  %conv6 = zext i8 %6 to i32, !dbg !6297
  %sh_prom = zext i32 %conv6 to i64, !dbg !6297
  %shl = shl i64 1, %sh_prom, !dbg !6297
  %7 = getelementptr inbounds %struct.msr, ptr %m1, i32 0, i32 0, !dbg !6298
  %8 = load i64, ptr %7, align 8, !dbg !6299
  %or = or i64 %8, %shl, !dbg !6299
  store i64 %or, ptr %7, align 8, !dbg !6299
  br label %if.end10, !dbg !6300

if.else:                                          ; preds = %if.end3
  %9 = load i8, ptr %bit.addr, align 1, !dbg !6301
  %conv7 = zext i8 %9 to i32, !dbg !6301
  %sh_prom8 = zext i32 %conv7 to i64, !dbg !6301
  %shl9 = shl i64 1, %sh_prom8, !dbg !6301
  %not = xor i64 %shl9, -1, !dbg !6302
  %10 = getelementptr inbounds %struct.msr, ptr %m1, i32 0, i32 0, !dbg !6303
  %11 = load i64, ptr %10, align 8, !dbg !6304
  %and = and i64 %11, %not, !dbg !6304
  store i64 %and, ptr %10, align 8, !dbg !6304
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5
  %12 = getelementptr inbounds %struct.msr, ptr %m1, i32 0, i32 0, !dbg !6305
  %13 = load i64, ptr %12, align 8, !dbg !6305
  %14 = getelementptr inbounds %struct.msr, ptr %m, i32 0, i32 0, !dbg !6307
  %15 = load i64, ptr %14, align 8, !dbg !6307
  %cmp11 = icmp eq i64 %13, %15, !dbg !6308
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !6309

if.then13:                                        ; preds = %if.end10
  store i32 0, ptr %retval, align 4, !dbg !6310
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6310

if.end14:                                         ; preds = %if.end10
  %16 = load i32, ptr %msr.addr, align 4, !dbg !6311
  %call15 = call i32 @msr_write(i32 noundef %16, ptr noundef %m1) #15, !dbg !6312
  store i32 %call15, ptr %err, align 4, !dbg !6313
  %17 = load i32, ptr %err, align 4, !dbg !6314
  %tobool16 = icmp ne i32 %17, 0, !dbg !6314
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !6316

if.then17:                                        ; preds = %if.end14
  %18 = load i32, ptr %err, align 4, !dbg !6317
  store i32 %18, ptr %retval, align 4, !dbg !6318
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6318

if.end18:                                         ; preds = %if.end14
  store i32 1, ptr %retval, align 4, !dbg !6319
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6319

cleanup:                                          ; preds = %if.end18, %if.then17, %if.then13, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !6320
  call void @llvm.lifetime.end.p0(i64 8, ptr %m1) #14, !dbg !6320
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #14, !dbg !6320
  %19 = load i32, ptr %retval, align 4, !dbg !6320
  ret i32 %19, !dbg !6320
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @msr_clear_bit(i32 noundef %msr, i8 noundef zeroext %bit) #1 align 16 !dbg !6321 {
entry:
  %msr.addr = alloca i32, align 4
  %bit.addr = alloca i8, align 1
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6323, metadata !DIExpression()), !dbg !6325
  store i8 %bit, ptr %bit.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !6324, metadata !DIExpression()), !dbg !6326
  %0 = load i32, ptr %msr.addr, align 4, !dbg !6327
  %1 = load i8, ptr %bit.addr, align 1, !dbg !6328
  %call = call i32 @__flip_bit(i32 noundef %0, i8 noundef zeroext %1, i1 noundef zeroext false) #15, !dbg !6329
  ret i32 %call, !dbg !6330
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @do_trace_write_msr(i32 noundef %msr, i64 noundef %val, i32 noundef %failed) #1 align 16 !dbg !6331 {
entry:
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  %failed.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6333, metadata !DIExpression()), !dbg !6336
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6334, metadata !DIExpression()), !dbg !6337
  store i32 %failed, ptr %failed.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %failed.addr, metadata !6335, metadata !DIExpression()), !dbg !6338
  %0 = load i32, ptr %msr.addr, align 4, !dbg !6339
  %1 = load i64, ptr %val.addr, align 8, !dbg !6340
  %2 = load i32, ptr %failed.addr, align 4, !dbg !6341
  call void @trace_write_msr(i32 noundef %0, i64 noundef %1, i32 noundef %2) #15, !dbg !6342
  ret void, !dbg !6343
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_write_msr(i32 noundef %msr, i64 noundef %val, i32 noundef %failed) #6 align 16 !dbg !5962 {
entry:
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  %failed.addr = alloca i32, align 4
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
  %__UNIQUE_ID_rcu211 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !5966, metadata !DIExpression()), !dbg !6344
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5967, metadata !DIExpression()), !dbg !6344
  store i32 %failed, ptr %failed.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %failed.addr, metadata !5968, metadata !DIExpression()), !dbg !6344
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_write_msr, i32 0, i32 1)) #15, !dbg !6345
  br i1 %call, label %if.then, label %if.end68, !dbg !6344

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6345

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #14, !dbg !6346
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !5969, metadata !DIExpression()), !dbg !6346
  store i32 0, ptr %__idx, align 4, !dbg !6346
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #14, !dbg !6347
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5972, metadata !DIExpression()), !dbg !6347
  br label %do.body1, !dbg !6347

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !6348
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5975, metadata !DIExpression()), !dbg !6348
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6348
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6348
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !6347
  br label %do.cond, !dbg !6348

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6348

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #14, !dbg !6349
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5977, metadata !DIExpression()), !dbg !6349
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.29, ptr @pcpu_hot, i32 0, i32 2)) #14, !dbg !6349, !srcloc !6350
  store i32 %1, ptr %pfo_val__, align 4, !dbg !6349
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !6349
  %conv = zext i32 %2 to i64, !dbg !6349
  %conv2 = trunc i64 %conv to i32, !dbg !6349
  store i32 %conv2, ptr %tmp, align 4, !dbg !6349
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #14, !dbg !6347
  %3 = load i32, ptr %tmp, align 4, !dbg !6349
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !6347
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !6347
  store i32 %4, ptr %tmp3, align 4, !dbg !6347
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #14, !dbg !6351
  %5 = load i32, ptr %tmp3, align 4, !dbg !6347
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #15, !dbg !6351
  br i1 %call4, label %if.end, label %if.then5, !dbg !6346

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6351

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6352
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5979, metadata !DIExpression()), !dbg !6352
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !6352
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !6353
  %tobool = icmp ne i32 %6, 0, !dbg !6353
  %lnot = xor i1 %tobool, true, !dbg !6353
  %lnot6 = xor i1 %lnot, true, !dbg !6353
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !6353
  %conv7 = sext i32 %lnot.ext to i64, !dbg !6353
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !6353
  %tobool8 = icmp ne i64 %expval, 0, !dbg !6353
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !6352

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !6353

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !6354
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5982, metadata !DIExpression()), !dbg !6354
  store i32 2307, ptr %__flags, align 4, !dbg !6354
  br label %do.body11, !dbg !6354

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !6355

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6355

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !6354

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !6357
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, i32 48, i32 %7, i64 12) #14, !dbg !6357, !srcloc !6359
  br label %do.cond15, !dbg !6357

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !6357

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !6354

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !6360

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6360

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !6353
  br label %do.cond20, !dbg !6354

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !6354

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !6354

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !6352
  %tobool24 = icmp ne i32 %8, 0, !dbg !6352
  %lnot25 = xor i1 %tobool24, true, !dbg !6352
  %lnot27 = xor i1 %lnot25, true, !dbg !6352
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !6352
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !6352
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !6352
  store i64 %expval30, ptr %tmp23, align 8, !dbg !6353
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6362
  %9 = load i64, ptr %tmp23, align 8, !dbg !6352
  %tobool31 = icmp ne i64 %9, 0, !dbg !6362
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !6346

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6362

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !6346

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #15, !dbg !6363
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !6363, !srcloc !6365
  br label %do.cond35, !dbg !6363

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !6363

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !6346

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #14, !dbg !6366
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !5985, metadata !DIExpression()), !dbg !6366
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #14, !dbg !6366
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !5987, metadata !DIExpression()), !dbg !6366
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu211) #14, !dbg !6367
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu211, metadata !5988, metadata !DIExpression()), !dbg !6367
  br label %do.body38, !dbg !6368

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !6370

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !6370

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_write_msr, i32 0, i32 8), align 8, !dbg !6368
  store ptr %10, ptr %tmp41, align 8, !dbg !6370
  %11 = load ptr, ptr %tmp41, align 8, !dbg !6368
  store ptr %11, ptr %__UNIQUE_ID_rcu211, align 8, !dbg !6367
  %12 = load ptr, ptr %__UNIQUE_ID_rcu211, align 8, !dbg !6367
  store ptr %12, ptr %tmp42, align 8, !dbg !6367
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu211) #14, !dbg !6366
  %13 = load ptr, ptr %tmp42, align 8, !dbg !6367
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !6366
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !6372
  %tobool43 = icmp ne ptr %14, null, !dbg !6372
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !6366

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !6374
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !6374
  %16 = load ptr, ptr %data, align 8, !dbg !6374
  store ptr %16, ptr %__data, align 8, !dbg !6374
  store ptr @__SCT__tp_func_write_msr, ptr %tmp45, align 8, !dbg !6376
  %17 = load ptr, ptr %tmp45, align 8, !dbg !6376
  %18 = load ptr, ptr %__data, align 8, !dbg !6374
  %19 = load i32, ptr %msr.addr, align 4, !dbg !6374
  %20 = load i64, ptr %val.addr, align 8, !dbg !6374
  %21 = load i32, ptr %failed.addr, align 4, !dbg !6374
  %call46 = call i32 %17(ptr noundef %18, i32 noundef %19, i64 noundef %20, i32 noundef %21) #15, !dbg !6374
  br label %if.end47, !dbg !6374

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #14, !dbg !6346
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #14, !dbg !6346
  br label %do.cond48, !dbg !6366

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !6366

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !6346

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !6378, !srcloc !6380
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #15, !dbg !6381
  %lnot52 = xor i1 %call51, true, !dbg !6381
  %lnot54 = xor i1 %lnot52, true, !dbg !6381
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !6381
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !6381
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !6381
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !6381
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !6378

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !6381

do.body60:                                        ; preds = %if.then59
  %22 = call i64 @llvm.read_register.i64(metadata !6053), !dbg !6383
  %23 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %22) #14, !dbg !6383, !srcloc !6385
  call void @llvm.write_register.i64(metadata !6053, i64 %23), !dbg !6383
  br label %do.cond61, !dbg !6383

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !6383

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !6383

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !6378

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !6378

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6345
  br label %cleanup, !dbg !6345

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #14, !dbg !6345
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !6346

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !6346

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !6344

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @do_trace_read_msr(i32 noundef %msr, i64 noundef %val, i32 noundef %failed) #1 align 16 !dbg !6386 {
entry:
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  %failed.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6388, metadata !DIExpression()), !dbg !6391
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6389, metadata !DIExpression()), !dbg !6392
  store i32 %failed, ptr %failed.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %failed.addr, metadata !6390, metadata !DIExpression()), !dbg !6393
  %0 = load i32, ptr %msr.addr, align 4, !dbg !6394
  %1 = load i64, ptr %val.addr, align 8, !dbg !6395
  %2 = load i32, ptr %failed.addr, align 4, !dbg !6396
  call void @trace_read_msr(i32 noundef %0, i64 noundef %1, i32 noundef %2) #15, !dbg !6397
  ret void, !dbg !6398
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_read_msr(i32 noundef %msr, i64 noundef %val, i32 noundef %failed) #6 align 16 !dbg !5994 {
entry:
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  %failed.addr = alloca i32, align 4
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
  %__UNIQUE_ID_rcu203 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !5996, metadata !DIExpression()), !dbg !6399
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5997, metadata !DIExpression()), !dbg !6399
  store i32 %failed, ptr %failed.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %failed.addr, metadata !5998, metadata !DIExpression()), !dbg !6399
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #15, !dbg !6400
  br i1 %call, label %if.then, label %if.end68, !dbg !6399

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6400

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #14, !dbg !6401
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !5999, metadata !DIExpression()), !dbg !6401
  store i32 0, ptr %__idx, align 4, !dbg !6401
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #14, !dbg !6402
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6002, metadata !DIExpression()), !dbg !6402
  br label %do.body1, !dbg !6402

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !6403
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6005, metadata !DIExpression()), !dbg !6403
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6403
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6403
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !6402
  br label %do.cond, !dbg !6403

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6403

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #14, !dbg !6404
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6007, metadata !DIExpression()), !dbg !6404
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.29, ptr @pcpu_hot, i32 0, i32 2)) #14, !dbg !6404, !srcloc !6405
  store i32 %1, ptr %pfo_val__, align 4, !dbg !6404
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !6404
  %conv = zext i32 %2 to i64, !dbg !6404
  %conv2 = trunc i64 %conv to i32, !dbg !6404
  store i32 %conv2, ptr %tmp, align 4, !dbg !6404
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #14, !dbg !6402
  %3 = load i32, ptr %tmp, align 4, !dbg !6404
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !6402
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !6402
  store i32 %4, ptr %tmp3, align 4, !dbg !6402
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #14, !dbg !6406
  %5 = load i32, ptr %tmp3, align 4, !dbg !6402
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #15, !dbg !6406
  br i1 %call4, label %if.end, label %if.then5, !dbg !6401

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6406

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6407
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6009, metadata !DIExpression()), !dbg !6407
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !6407
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !6408
  %tobool = icmp ne i32 %6, 0, !dbg !6408
  %lnot = xor i1 %tobool, true, !dbg !6408
  %lnot6 = xor i1 %lnot, true, !dbg !6408
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !6408
  %conv7 = sext i32 %lnot.ext to i64, !dbg !6408
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !6408
  %tobool8 = icmp ne i64 %expval, 0, !dbg !6408
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !6407

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !6408

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !6409
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6012, metadata !DIExpression()), !dbg !6409
  store i32 2307, ptr %__flags, align 4, !dbg !6409
  br label %do.body11, !dbg !6409

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !6410

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6410

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !6409

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !6412
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, i32 43, i32 %7, i64 12) #14, !dbg !6412, !srcloc !6414
  br label %do.cond15, !dbg !6412

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !6412

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !6409

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !6415

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6415

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !6408
  br label %do.cond20, !dbg !6409

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !6409

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !6409

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !6407
  %tobool24 = icmp ne i32 %8, 0, !dbg !6407
  %lnot25 = xor i1 %tobool24, true, !dbg !6407
  %lnot27 = xor i1 %lnot25, true, !dbg !6407
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !6407
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !6407
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !6407
  store i64 %expval30, ptr %tmp23, align 8, !dbg !6408
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6417
  %9 = load i64, ptr %tmp23, align 8, !dbg !6407
  %tobool31 = icmp ne i64 %9, 0, !dbg !6417
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !6401

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6417

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !6401

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #15, !dbg !6418
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !6418, !srcloc !6420
  br label %do.cond35, !dbg !6418

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !6418

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !6401

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #14, !dbg !6421
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !6015, metadata !DIExpression()), !dbg !6421
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #14, !dbg !6421
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !6017, metadata !DIExpression()), !dbg !6421
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu203) #14, !dbg !6422
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu203, metadata !6018, metadata !DIExpression()), !dbg !6422
  br label %do.body38, !dbg !6423

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !6425

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !6425

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 8), align 8, !dbg !6423
  store ptr %10, ptr %tmp41, align 8, !dbg !6425
  %11 = load ptr, ptr %tmp41, align 8, !dbg !6423
  store ptr %11, ptr %__UNIQUE_ID_rcu203, align 8, !dbg !6422
  %12 = load ptr, ptr %__UNIQUE_ID_rcu203, align 8, !dbg !6422
  store ptr %12, ptr %tmp42, align 8, !dbg !6422
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu203) #14, !dbg !6421
  %13 = load ptr, ptr %tmp42, align 8, !dbg !6422
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !6421
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !6427
  %tobool43 = icmp ne ptr %14, null, !dbg !6427
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !6421

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !6429
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !6429
  %16 = load ptr, ptr %data, align 8, !dbg !6429
  store ptr %16, ptr %__data, align 8, !dbg !6429
  store ptr @__SCT__tp_func_read_msr, ptr %tmp45, align 8, !dbg !6431
  %17 = load ptr, ptr %tmp45, align 8, !dbg !6431
  %18 = load ptr, ptr %__data, align 8, !dbg !6429
  %19 = load i32, ptr %msr.addr, align 4, !dbg !6429
  %20 = load i64, ptr %val.addr, align 8, !dbg !6429
  %21 = load i32, ptr %failed.addr, align 4, !dbg !6429
  %call46 = call i32 %17(ptr noundef %18, i32 noundef %19, i64 noundef %20, i32 noundef %21) #15, !dbg !6429
  br label %if.end47, !dbg !6429

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #14, !dbg !6401
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #14, !dbg !6401
  br label %do.cond48, !dbg !6421

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !6421

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !6401

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !6433, !srcloc !6435
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #15, !dbg !6436
  %lnot52 = xor i1 %call51, true, !dbg !6436
  %lnot54 = xor i1 %lnot52, true, !dbg !6436
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !6436
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !6436
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !6436
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !6436
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !6433

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !6436

do.body60:                                        ; preds = %if.then59
  %22 = call i64 @llvm.read_register.i64(metadata !6053), !dbg !6438
  %23 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %22) #14, !dbg !6438, !srcloc !6440
  call void @llvm.write_register.i64(metadata !6053, i64 %23), !dbg !6438
  br label %do.cond61, !dbg !6438

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !6438

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !6438

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !6433

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !6433

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6400
  br label %cleanup, !dbg !6400

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #14, !dbg !6400
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !6401

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !6401

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !6399

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @do_trace_rdpmc(i32 noundef %counter, i64 noundef %val, i32 noundef %failed) #1 align 16 !dbg !6441 {
entry:
  %counter.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  %failed.addr = alloca i32, align 4
  store i32 %counter, ptr %counter.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %counter.addr, metadata !6443, metadata !DIExpression()), !dbg !6446
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6444, metadata !DIExpression()), !dbg !6447
  store i32 %failed, ptr %failed.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %failed.addr, metadata !6445, metadata !DIExpression()), !dbg !6448
  %0 = load i32, ptr %counter.addr, align 4, !dbg !6449
  %1 = load i64, ptr %val.addr, align 8, !dbg !6450
  %2 = load i32, ptr %failed.addr, align 4, !dbg !6451
  call void @trace_rdpmc(i32 noundef %0, i64 noundef %1, i32 noundef %2) #15, !dbg !6452
  ret void, !dbg !6453
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_rdpmc(i32 noundef %msr, i64 noundef %val, i32 noundef %failed) #6 align 16 !dbg !6024 {
entry:
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  %failed.addr = alloca i32, align 4
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
  %__UNIQUE_ID_rcu219 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6026, metadata !DIExpression()), !dbg !6454
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6027, metadata !DIExpression()), !dbg !6454
  store i32 %failed, ptr %failed.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %failed.addr, metadata !6028, metadata !DIExpression()), !dbg !6454
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdpmc, i32 0, i32 1)) #15, !dbg !6455
  br i1 %call, label %if.then, label %if.end68, !dbg !6454

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6455

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #14, !dbg !6456
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !6029, metadata !DIExpression()), !dbg !6456
  store i32 0, ptr %__idx, align 4, !dbg !6456
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #14, !dbg !6457
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6032, metadata !DIExpression()), !dbg !6457
  br label %do.body1, !dbg !6457

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !6458
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6035, metadata !DIExpression()), !dbg !6458
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6458
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6458
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !6457
  br label %do.cond, !dbg !6458

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6458

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #14, !dbg !6459
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6037, metadata !DIExpression()), !dbg !6459
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.29, ptr @pcpu_hot, i32 0, i32 2)) #14, !dbg !6459, !srcloc !6460
  store i32 %1, ptr %pfo_val__, align 4, !dbg !6459
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !6459
  %conv = zext i32 %2 to i64, !dbg !6459
  %conv2 = trunc i64 %conv to i32, !dbg !6459
  store i32 %conv2, ptr %tmp, align 4, !dbg !6459
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #14, !dbg !6457
  %3 = load i32, ptr %tmp, align 4, !dbg !6459
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !6457
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !6457
  store i32 %4, ptr %tmp3, align 4, !dbg !6457
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #14, !dbg !6461
  %5 = load i32, ptr %tmp3, align 4, !dbg !6457
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #15, !dbg !6461
  br i1 %call4, label %if.end, label %if.then5, !dbg !6456

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6461

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6462
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6039, metadata !DIExpression()), !dbg !6462
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !6462
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !6463
  %tobool = icmp ne i32 %6, 0, !dbg !6463
  %lnot = xor i1 %tobool, true, !dbg !6463
  %lnot6 = xor i1 %lnot, true, !dbg !6463
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !6463
  %conv7 = sext i32 %lnot.ext to i64, !dbg !6463
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !6463
  %tobool8 = icmp ne i64 %expval, 0, !dbg !6463
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !6462

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !6463

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !6464
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6042, metadata !DIExpression()), !dbg !6464
  store i32 2307, ptr %__flags, align 4, !dbg !6464
  br label %do.body11, !dbg !6464

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !6465

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6465

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !6464

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !6467
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, i32 53, i32 %7, i64 12) #14, !dbg !6467, !srcloc !6469
  br label %do.cond15, !dbg !6467

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !6467

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !6464

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !6470

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6470

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !6463
  br label %do.cond20, !dbg !6464

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !6464

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !6464

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !6462
  %tobool24 = icmp ne i32 %8, 0, !dbg !6462
  %lnot25 = xor i1 %tobool24, true, !dbg !6462
  %lnot27 = xor i1 %lnot25, true, !dbg !6462
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !6462
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !6462
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !6462
  store i64 %expval30, ptr %tmp23, align 8, !dbg !6463
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6472
  %9 = load i64, ptr %tmp23, align 8, !dbg !6462
  %tobool31 = icmp ne i64 %9, 0, !dbg !6472
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !6456

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6472

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !6456

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #15, !dbg !6473
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !6473, !srcloc !6475
  br label %do.cond35, !dbg !6473

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !6473

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !6456

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #14, !dbg !6476
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !6045, metadata !DIExpression()), !dbg !6476
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #14, !dbg !6476
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !6047, metadata !DIExpression()), !dbg !6476
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu219) #14, !dbg !6477
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu219, metadata !6048, metadata !DIExpression()), !dbg !6477
  br label %do.body38, !dbg !6478

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !6480

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !6480

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdpmc, i32 0, i32 8), align 8, !dbg !6478
  store ptr %10, ptr %tmp41, align 8, !dbg !6480
  %11 = load ptr, ptr %tmp41, align 8, !dbg !6478
  store ptr %11, ptr %__UNIQUE_ID_rcu219, align 8, !dbg !6477
  %12 = load ptr, ptr %__UNIQUE_ID_rcu219, align 8, !dbg !6477
  store ptr %12, ptr %tmp42, align 8, !dbg !6477
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu219) #14, !dbg !6476
  %13 = load ptr, ptr %tmp42, align 8, !dbg !6477
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !6476
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !6482
  %tobool43 = icmp ne ptr %14, null, !dbg !6482
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !6476

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !6484
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !6484
  %16 = load ptr, ptr %data, align 8, !dbg !6484
  store ptr %16, ptr %__data, align 8, !dbg !6484
  store ptr @__SCT__tp_func_rdpmc, ptr %tmp45, align 8, !dbg !6486
  %17 = load ptr, ptr %tmp45, align 8, !dbg !6486
  %18 = load ptr, ptr %__data, align 8, !dbg !6484
  %19 = load i32, ptr %msr.addr, align 4, !dbg !6484
  %20 = load i64, ptr %val.addr, align 8, !dbg !6484
  %21 = load i32, ptr %failed.addr, align 4, !dbg !6484
  %call46 = call i32 %17(ptr noundef %18, i32 noundef %19, i64 noundef %20, i32 noundef %21) #15, !dbg !6484
  br label %if.end47, !dbg !6484

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #14, !dbg !6456
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #14, !dbg !6456
  br label %do.cond48, !dbg !6476

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !6476

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !6456

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !6488, !srcloc !6490
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #15, !dbg !6491
  %lnot52 = xor i1 %call51, true, !dbg !6491
  %lnot54 = xor i1 %lnot52, true, !dbg !6491
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !6491
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !6491
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !6491
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !6491
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !6488

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !6491

do.body60:                                        ; preds = %if.then59
  %22 = call i64 @llvm.read_register.i64(metadata !6053), !dbg !6493
  %23 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %22) #14, !dbg !6493, !srcloc !6495
  call void @llvm.write_register.i64(metadata !6053, i64 %23), !dbg !6493
  br label %do.cond61, !dbg !6493

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !6493

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !6493

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !6488

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !6488

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6455
  br label %cleanup, !dbg !6455

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #14, !dbg !6455
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !6456

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !6456

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !6454

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_trace_event_raw_event_msr_trace_class(ptr noundef %__data, i32 noundef %msr, i64 noundef %val, i32 noundef %failed) #1 align 16 !dbg !6496 {
entry:
  %__data.addr = alloca ptr, align 8
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  %failed.addr = alloca i32, align 4
  %trace_file = alloca ptr, align 8
  %__data_offsets = alloca %struct.trace_event_data_offsets_msr_trace_class, align 1
  %fbuffer = alloca %struct.trace_event_buffer, align 8
  %entry1 = alloca ptr, align 8
  %__data_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6498, metadata !DIExpression()), !dbg !6542
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6499, metadata !DIExpression()), !dbg !6542
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6500, metadata !DIExpression()), !dbg !6542
  store i32 %failed, ptr %failed.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %failed.addr, metadata !6501, metadata !DIExpression()), !dbg !6542
  call void @llvm.lifetime.start.p0(i64 8, ptr %trace_file) #14, !dbg !6542
  call void @llvm.dbg.declare(metadata ptr %trace_file, metadata !6502, metadata !DIExpression()), !dbg !6542
  %0 = load ptr, ptr %__data.addr, align 8, !dbg !6542
  store ptr %0, ptr %trace_file, align 8, !dbg !6542
  call void @llvm.lifetime.start.p0(i64 0, ptr %__data_offsets) #14, !dbg !6542
  call void @llvm.dbg.declare(metadata ptr %__data_offsets, metadata !6521, metadata !DIExpression()), !dbg !6542
  call void @llvm.lifetime.start.p0(i64 48, ptr %fbuffer) #14, !dbg !6542
  call void @llvm.dbg.declare(metadata ptr %fbuffer, metadata !6522, metadata !DIExpression()), !dbg !6542
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #14, !dbg !6542
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !6540, metadata !DIExpression()), !dbg !6542
  call void @llvm.lifetime.start.p0(i64 4, ptr %__data_size) #14, !dbg !6542
  call void @llvm.dbg.declare(metadata ptr %__data_size, metadata !6541, metadata !DIExpression()), !dbg !6542
  %1 = load ptr, ptr %trace_file, align 8, !dbg !6543
  %call = call zeroext i1 @trace_trigger_soft_disabled(ptr noundef %1) #15, !dbg !6543
  br i1 %call, label %if.then, label %if.end, !dbg !6542

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6543

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %msr.addr, align 4, !dbg !6542
  %3 = load i64, ptr %val.addr, align 8, !dbg !6542
  %4 = load i32, ptr %failed.addr, align 4, !dbg !6542
  %call2 = call i32 @trace_event_get_offsets_msr_trace_class(ptr noundef %__data_offsets, i32 noundef %2, i64 noundef %3, i32 noundef %4) #15, !dbg !6542
  store i32 %call2, ptr %__data_size, align 4, !dbg !6542
  %5 = load ptr, ptr %trace_file, align 8, !dbg !6542
  %6 = load i32, ptr %__data_size, align 4, !dbg !6542
  %conv = sext i32 %6 to i64, !dbg !6542
  %add = add i64 32, %conv, !dbg !6542
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef %fbuffer, ptr noundef %5, i64 noundef %add) #15, !dbg !6542
  store ptr %call3, ptr %entry1, align 8, !dbg !6542
  %7 = load ptr, ptr %entry1, align 8, !dbg !6545
  %tobool = icmp ne ptr %7, null, !dbg !6545
  br i1 %tobool, label %if.end5, label %if.then4, !dbg !6542

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6545

if.end5:                                          ; preds = %if.end
  %8 = load i32, ptr %msr.addr, align 4, !dbg !6547
  %9 = load ptr, ptr %entry1, align 8, !dbg !6547
  %msr6 = getelementptr inbounds %struct.trace_event_raw_msr_trace_class, ptr %9, i32 0, i32 1, !dbg !6547
  store i32 %8, ptr %msr6, align 8, !dbg !6547
  %10 = load i64, ptr %val.addr, align 8, !dbg !6547
  %11 = load ptr, ptr %entry1, align 8, !dbg !6547
  %val7 = getelementptr inbounds %struct.trace_event_raw_msr_trace_class, ptr %11, i32 0, i32 2, !dbg !6547
  store i64 %10, ptr %val7, align 8, !dbg !6547
  %12 = load i32, ptr %failed.addr, align 4, !dbg !6547
  %13 = load ptr, ptr %entry1, align 8, !dbg !6547
  %failed8 = getelementptr inbounds %struct.trace_event_raw_msr_trace_class, ptr %13, i32 0, i32 3, !dbg !6547
  store i32 %12, ptr %failed8, align 8, !dbg !6547
  call void @trace_event_buffer_commit(ptr noundef %fbuffer) #15, !dbg !6542
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6542
  br label %cleanup, !dbg !6542

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %__data_size) #14, !dbg !6542
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #14, !dbg !6542
  call void @llvm.lifetime.end.p0(i64 48, ptr %fbuffer) #14, !dbg !6542
  call void @llvm.lifetime.end.p0(i64 0, ptr %__data_offsets) #14, !dbg !6542
  call void @llvm.lifetime.end.p0(i64 8, ptr %trace_file) #14, !dbg !6542
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6542

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @trace_trigger_soft_disabled(ptr noundef %file) #7 align 16 !dbg !6549 {
entry:
  %retval = alloca i1, align 1
  %file.addr = alloca ptr, align 8
  %eflags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6553, metadata !DIExpression()), !dbg !6555
  call void @llvm.lifetime.start.p0(i64 8, ptr %eflags) #14, !dbg !6556
  call void @llvm.dbg.declare(metadata ptr %eflags, metadata !6554, metadata !DIExpression()), !dbg !6557
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6558
  %flags = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7, !dbg !6559
  %1 = load i64, ptr %flags, align 8, !dbg !6559
  store i64 %1, ptr %eflags, align 8, !dbg !6557
  %2 = load i64, ptr %eflags, align 8, !dbg !6560
  %and = and i64 %2, 704, !dbg !6560
  %tobool = icmp ne i64 %and, 0, !dbg !6560
  %lnot = xor i1 %tobool, true, !dbg !6560
  %lnot1 = xor i1 %lnot, true, !dbg !6560
  %lnot2 = xor i1 %lnot1, true, !dbg !6560
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6560
  %conv = sext i32 %lnot.ext to i64, !dbg !6560
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6560
  %tobool3 = icmp ne i64 %expval, 0, !dbg !6560
  br i1 %tobool3, label %if.then, label %if.end, !dbg !6562

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6563
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6563

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %eflags, align 8, !dbg !6564
  %and4 = and i64 %3, 256, !dbg !6564
  %tobool5 = icmp ne i64 %and4, 0, !dbg !6564
  %lnot6 = xor i1 %tobool5, true, !dbg !6564
  %lnot8 = xor i1 %lnot6, true, !dbg !6564
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !6564
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !6564
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !6564
  %tobool12 = icmp ne i64 %expval11, 0, !dbg !6564
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !6566

if.then13:                                        ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !6567
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6567

if.end14:                                         ; preds = %if.end
  %4 = load ptr, ptr %file.addr, align 8, !dbg !6568
  %call = call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %4) #15, !dbg !6569
  store i1 %call, ptr %retval, align 1, !dbg !6570
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6570

cleanup:                                          ; preds = %if.end14, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %eflags) #14, !dbg !6571
  %5 = load i1, ptr %retval, align 1, !dbg !6571
  ret i1 %5, !dbg !6571
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trace_event_get_offsets_msr_trace_class(ptr noundef %__data_offsets, i32 noundef %msr, i64 noundef %val, i32 noundef %failed) #6 align 16 !dbg !6572 {
entry:
  %__data_offsets.addr = alloca ptr, align 8
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  %failed.addr = alloca i32, align 4
  %__data_size = alloca i32, align 4
  %__item_length = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  store ptr %__data_offsets, ptr %__data_offsets.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data_offsets.addr, metadata !6577, metadata !DIExpression()), !dbg !6584
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6578, metadata !DIExpression()), !dbg !6584
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6579, metadata !DIExpression()), !dbg !6584
  store i32 %failed, ptr %failed.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %failed.addr, metadata !6580, metadata !DIExpression()), !dbg !6584
  call void @llvm.lifetime.start.p0(i64 4, ptr %__data_size) #14, !dbg !6584
  call void @llvm.dbg.declare(metadata ptr %__data_size, metadata !6581, metadata !DIExpression()), !dbg !6584
  store i32 0, ptr %__data_size, align 4, !dbg !6584
  call void @llvm.lifetime.start.p0(i64 4, ptr %__item_length) #14, !dbg !6584
  call void @llvm.dbg.declare(metadata ptr %__item_length, metadata !6582, metadata !DIExpression()), !dbg !6584
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #14, !dbg !6584
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !6583, metadata !DIExpression()), !dbg !6584
  %0 = load i32, ptr %__data_size, align 4, !dbg !6584
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #14, !dbg !6584
  call void @llvm.lifetime.end.p0(i64 4, ptr %__item_length) #14, !dbg !6584
  call void @llvm.lifetime.end.p0(i64 4, ptr %__data_size) #14, !dbg !6584
  ret i32 %0, !dbg !6584
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6585 dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6589 dso_local void @trace_event_buffer_commit(ptr noundef) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6592 dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trace_raw_output_msr_trace_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #1 align 16 !dbg !6593 {
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
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !6595, metadata !DIExpression()), !dbg !6603
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6596, metadata !DIExpression()), !dbg !6603
  store ptr %trace_event, ptr %trace_event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trace_event.addr, metadata !6597, metadata !DIExpression()), !dbg !6603
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #14, !dbg !6603
  call void @llvm.dbg.declare(metadata ptr %s, metadata !6598, metadata !DIExpression()), !dbg !6603
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !6603
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16, !dbg !6603
  store ptr %seq, ptr %s, align 8, !dbg !6603
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !6603
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6600, metadata !DIExpression()), !dbg !6603
  %1 = load ptr, ptr %iter.addr, align 8, !dbg !6603
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %1, i32 0, i32 13, !dbg !6603
  store ptr %tmp_seq, ptr %p, align 8, !dbg !6603
  call void @llvm.lifetime.start.p0(i64 8, ptr %field) #14, !dbg !6603
  call void @llvm.dbg.declare(metadata ptr %field, metadata !6601, metadata !DIExpression()), !dbg !6603
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !6603
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6602, metadata !DIExpression()), !dbg !6603
  %2 = load ptr, ptr %iter.addr, align 8, !dbg !6603
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %2, i32 0, i32 17, !dbg !6603
  %3 = load ptr, ptr %ent, align 8, !dbg !6603
  store ptr %3, ptr %field, align 8, !dbg !6603
  %4 = load ptr, ptr %iter.addr, align 8, !dbg !6603
  %5 = load ptr, ptr %trace_event.addr, align 8, !dbg !6603
  %call = call i32 @trace_raw_output_prep(ptr noundef %4, ptr noundef %5) #15, !dbg !6603
  store i32 %call, ptr %ret, align 4, !dbg !6603
  %6 = load i32, ptr %ret, align 4, !dbg !6604
  %cmp = icmp ne i32 %6, 1, !dbg !6604
  br i1 %cmp, label %if.then, label %if.end, !dbg !6603

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %ret, align 4, !dbg !6604
  store i32 %7, ptr %retval, align 4, !dbg !6604
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6604

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %iter.addr, align 8, !dbg !6603
  %9 = load ptr, ptr %field, align 8, !dbg !6603
  %msr = getelementptr inbounds %struct.trace_event_raw_msr_trace_class, ptr %9, i32 0, i32 1, !dbg !6603
  %10 = load i32, ptr %msr, align 8, !dbg !6603
  %11 = load ptr, ptr %field, align 8, !dbg !6603
  %val = getelementptr inbounds %struct.trace_event_raw_msr_trace_class, ptr %11, i32 0, i32 2, !dbg !6603
  %12 = load i64, ptr %val, align 8, !dbg !6603
  %13 = load ptr, ptr %field, align 8, !dbg !6603
  %failed = getelementptr inbounds %struct.trace_event_raw_msr_trace_class, ptr %13, i32 0, i32 3, !dbg !6603
  %14 = load i32, ptr %failed, align 8, !dbg !6603
  %tobool = icmp ne i32 %14, 0, !dbg !6603
  %15 = zext i1 %tobool to i64, !dbg !6603
  %cond = select i1 %tobool, ptr @.str.8, ptr @.str.9, !dbg !6603
  call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %8, ptr noundef @.str.7, i32 noundef %10, i64 noundef %12, ptr noundef %cond) #15, !dbg !6603
  %16 = load ptr, ptr %s, align 8, !dbg !6603
  %call1 = call i32 @trace_handle_return(ptr noundef %16) #15, !dbg !6603
  store i32 %call1, ptr %retval, align 4, !dbg !6603
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6603

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !6603
  call void @llvm.lifetime.end.p0(i64 8, ptr %field) #14, !dbg !6603
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !6603
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #14, !dbg !6603
  %17 = load i32, ptr %retval, align 4, !dbg !6603
  ret i32 %17, !dbg !6603
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6606 dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6609 dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6612 dso_local i32 @trace_handle_return(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bpf_prog_array_valid(ptr noundef %call) #6 align 16 !dbg !6615 {
entry:
  %call.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %call, ptr %call.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %call.addr, metadata !6619, metadata !DIExpression()), !dbg !6620
  br label %do.body, !dbg !6621

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6623

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %call.addr, align 8, !dbg !6621
  %prog_array = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11, !dbg !6621
  %1 = load volatile ptr, ptr %prog_array, align 8, !dbg !6621
  store ptr %1, ptr %tmp, align 8, !dbg !6623
  %2 = load ptr, ptr %tmp, align 8, !dbg !6621
  %tobool = icmp ne ptr %2, null, !dbg !6625
  %lnot = xor i1 %tobool, true, !dbg !6625
  %lnot1 = xor i1 %lnot, true, !dbg !6626
  ret i1 %lnot1, !dbg !6627
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hlist_empty(ptr noundef %h) #6 align 16 !dbg !6628 {
entry:
  %h.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !6635, metadata !DIExpression()), !dbg !6636
  br label %do.body, !dbg !6637

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6639

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %h.addr, align 8, !dbg !6637
  %first = getelementptr inbounds %struct.hlist_head, ptr %0, i32 0, i32 0, !dbg !6637
  %1 = load volatile ptr, ptr %first, align 8, !dbg !6637
  store ptr %1, ptr %tmp, align 8, !dbg !6639
  %2 = load ptr, ptr %tmp, align 8, !dbg !6637
  %tobool = icmp ne ptr %2, null, !dbg !6641
  %lnot = xor i1 %tobool, true, !dbg !6641
  %lnot.ext = zext i1 %lnot to i32, !dbg !6641
  ret i32 %lnot.ext, !dbg !6642
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6643 dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @perf_fetch_caller_regs(ptr noundef %regs) #6 align 16 !dbg !6647 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6651, metadata !DIExpression()), !dbg !6652
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !6653
  %1 = ptrtoint ptr %0 to i64, !dbg !6653
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6653
  %ip = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 16, !dbg !6653
  store i64 %1, ptr %ip, align 8, !dbg !6653
  %3 = call ptr @llvm.frameaddress.p0(i32 0), !dbg !6653
  %4 = ptrtoint ptr %3 to i64, !dbg !6653
  %5 = load ptr, ptr %regs.addr, align 8, !dbg !6653
  %sp = getelementptr inbounds %struct.pt_regs, ptr %5, i32 0, i32 19, !dbg !6653
  store i64 %4, ptr %sp, align 8, !dbg !6653
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !6653
  %7 = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 17, !dbg !6653
  store i16 16, ptr %7, align 8, !dbg !6653
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !6653
  %flags = getelementptr inbounds %struct.pt_regs, ptr %8, i32 0, i32 18, !dbg !6653
  store i64 0, ptr %flags, align 8, !dbg !6653
  ret void, !dbg !6655
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6656 dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @msr_read(i32 noundef %msr, ptr noundef %m) #1 align 16 !dbg !6659 {
entry:
  %msr.addr = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %val = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6663, metadata !DIExpression()), !dbg !6667
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6664, metadata !DIExpression()), !dbg !6668
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !6669
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6665, metadata !DIExpression()), !dbg !6670
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #14, !dbg !6671
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6666, metadata !DIExpression()), !dbg !6672
  %0 = load i32, ptr %msr.addr, align 4, !dbg !6673
  %call = call i32 @rdmsrl_safe(i32 noundef %0, ptr noundef %val) #15, !dbg !6674
  store i32 %call, ptr %err, align 4, !dbg !6675
  %1 = load i32, ptr %err, align 4, !dbg !6676
  %tobool = icmp ne i32 %1, 0, !dbg !6676
  br i1 %tobool, label %if.end, label %if.then, !dbg !6678

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %val, align 8, !dbg !6679
  %3 = load ptr, ptr %m.addr, align 8, !dbg !6680
  %4 = getelementptr inbounds %struct.msr, ptr %3, i32 0, i32 0, !dbg !6681
  store i64 %2, ptr %4, align 8, !dbg !6682
  br label %if.end, !dbg !6680

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %err, align 4, !dbg !6683
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #14, !dbg !6684
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !6684
  ret i32 %5, !dbg !6685
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @msr_write(i32 noundef %msr, ptr noundef %m) #1 align 16 !dbg !6686 {
entry:
  %msr.addr = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6688, metadata !DIExpression()), !dbg !6690
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6689, metadata !DIExpression()), !dbg !6691
  %0 = load i32, ptr %msr.addr, align 4, !dbg !6692
  %1 = load ptr, ptr %m.addr, align 8, !dbg !6693
  %2 = getelementptr inbounds %struct.msr, ptr %1, i32 0, i32 0, !dbg !6694
  %3 = load i64, ptr %2, align 8, !dbg !6694
  %call = call i32 @wrmsrl_safe(i32 noundef %0, i64 noundef %3) #15, !dbg !6695
  ret i32 %call, !dbg !6696
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rdmsrl_safe(i32 noundef %msr, ptr noundef %p) #6 align 16 !dbg !6697 {
entry:
  %msr.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6703, metadata !DIExpression()), !dbg !6706
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6704, metadata !DIExpression()), !dbg !6707
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !6708
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6705, metadata !DIExpression()), !dbg !6709
  %0 = load i32, ptr %msr.addr, align 4, !dbg !6710
  %call = call i64 @native_read_msr_safe(i32 noundef %0, ptr noundef %err) #15, !dbg !6711
  %1 = load ptr, ptr %p.addr, align 8, !dbg !6712
  store i64 %call, ptr %1, align 8, !dbg !6713
  %2 = load i32, ptr %err, align 4, !dbg !6714
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !6715
  ret i32 %2, !dbg !6716
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr_safe(i32 noundef %msr, ptr noundef %err) #6 align 16 !dbg !6717 {
entry:
  %msr.addr = alloca i32, align 4
  %err.addr = alloca ptr, align 8
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6721, metadata !DIExpression()), !dbg !6725
  store ptr %err, ptr %err.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !6722, metadata !DIExpression()), !dbg !6726
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #14, !dbg !6727
  call void @llvm.dbg.declare(metadata ptr %low, metadata !6723, metadata !DIExpression()), !dbg !6727
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #14, !dbg !6727
  call void @llvm.dbg.declare(metadata ptr %high, metadata !6724, metadata !DIExpression()), !dbg !6727
  %0 = load ptr, ptr %err.addr, align 8, !dbg !6728
  %1 = load i32, ptr %msr.addr, align 4, !dbg !6729
  %2 = call { i32, i64, i64 } asm sideeffect "1: rdmsr ; xor $0,$0\0A2:\0A\09 .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$0, type=11 \0A.purgem extable_type_reg\0A .popsection\0A", "=r,={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %1) #14, !dbg !6730, !srcloc !6731
  %asmresult = extractvalue { i32, i64, i64 } %2, 0, !dbg !6730
  %asmresult1 = extractvalue { i32, i64, i64 } %2, 1, !dbg !6730
  %asmresult2 = extractvalue { i32, i64, i64 } %2, 2, !dbg !6730
  store i32 %asmresult, ptr %0, align 4, !dbg !6730
  store i64 %asmresult1, ptr %low, align 8, !dbg !6730
  store i64 %asmresult2, ptr %high, align 8, !dbg !6730
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #15, !dbg !6732
  br i1 %call, label %if.then, label %if.end, !dbg !6734

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !6735
  %4 = load i64, ptr %low, align 8, !dbg !6736
  %5 = load i64, ptr %high, align 8, !dbg !6736
  %shl = shl i64 %5, 32, !dbg !6736
  %or = or i64 %4, %shl, !dbg !6736
  %6 = load ptr, ptr %err.addr, align 8, !dbg !6737
  %7 = load i32, ptr %6, align 4, !dbg !6738
  call void @do_trace_read_msr(i32 noundef %3, i64 noundef %or, i32 noundef %7) #15, !dbg !6739
  br label %if.end, !dbg !6739

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64, ptr %low, align 8, !dbg !6740
  %9 = load i64, ptr %high, align 8, !dbg !6740
  %shl3 = shl i64 %9, 32, !dbg !6740
  %or4 = or i64 %8, %shl3, !dbg !6740
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #14, !dbg !6741
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #14, !dbg !6741
  ret i64 %or4, !dbg !6742
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #7 align 16 !dbg !6743 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6748, metadata !DIExpression()), !dbg !6749
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6750
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #15, !dbg !6751
  ret i1 %call, !dbg !6752
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #7 align 16 !dbg !6753 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6758, metadata !DIExpression()), !dbg !6761
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !6759, metadata !DIExpression()), !dbg !6762
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6763
  %1 = load i8, ptr %branch.addr, align 1, !dbg !6764, !range !6295, !noundef !722
  %tobool = trunc i8 %1 to i1, !dbg !6764
  %conv = zext i1 %tobool to i32, !dbg !6764
  %or = or i32 2, %conv, !dbg !6765
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #14
          to label %asm.fallthrough [label %l_yes], !dbg !6766, !srcloc !6767

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6768
  br label %return, !dbg !6768

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !6760), !dbg !6769
  store i1 true, ptr %retval, align 1, !dbg !6770
  br label %return, !dbg !6770

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !6771
  ret i1 %2, !dbg !6771
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @wrmsrl_safe(i32 noundef %msr, i64 noundef %val) #6 align 16 !dbg !6772 {
entry:
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6776, metadata !DIExpression()), !dbg !6778
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6777, metadata !DIExpression()), !dbg !6779
  %0 = load i32, ptr %msr.addr, align 4, !dbg !6780
  %1 = load i64, ptr %val.addr, align 8, !dbg !6781
  %conv = trunc i64 %1 to i32, !dbg !6782
  %2 = load i64, ptr %val.addr, align 8, !dbg !6783
  %shr = lshr i64 %2, 32, !dbg !6784
  %conv1 = trunc i64 %shr to i32, !dbg !6785
  %call = call i32 @wrmsr_safe(i32 noundef %0, i32 noundef %conv, i32 noundef %conv1) #15, !dbg !6786
  ret i32 %call, !dbg !6787
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @wrmsr_safe(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #6 align 16 !dbg !6788 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6792, metadata !DIExpression()), !dbg !6795
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !6793, metadata !DIExpression()), !dbg !6796
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !6794, metadata !DIExpression()), !dbg !6797
  %0 = load i32, ptr %msr.addr, align 4, !dbg !6798
  %1 = load i32, ptr %low.addr, align 4, !dbg !6799
  %2 = load i32, ptr %high.addr, align 4, !dbg !6800
  %call = call i32 @native_write_msr_safe(i32 noundef %0, i32 noundef %1, i32 noundef %2) #15, !dbg !6801
  ret i32 %call, !dbg !6802
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @native_write_msr_safe(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #6 align 16 !dbg !6803 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %err = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6805, metadata !DIExpression()), !dbg !6809
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !6806, metadata !DIExpression()), !dbg !6810
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !6807, metadata !DIExpression()), !dbg !6811
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !6812
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6808, metadata !DIExpression()), !dbg !6813
  %0 = load i32, ptr %msr.addr, align 4, !dbg !6814
  %1 = load i32, ptr %low.addr, align 4, !dbg !6815
  %2 = load i32, ptr %high.addr, align 4, !dbg !6816
  %3 = call i32 asm sideeffect "1: wrmsr ; xor $0,$0\0A2:\0A\09 .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$0, type=10 \0A.purgem extable_type_reg\0A .popsection\0A", "={ax},{cx},0,{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1, i32 %2) #14, !dbg !6817, !srcloc !6818
  store i32 %3, ptr %err, align 4, !dbg !6817
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_write_msr, i32 0, i32 1)) #15, !dbg !6819
  br i1 %call, label %if.then, label %if.end, !dbg !6821

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %msr.addr, align 4, !dbg !6822
  %5 = load i32, ptr %high.addr, align 4, !dbg !6823
  %conv = zext i32 %5 to i64, !dbg !6824
  %shl = shl i64 %conv, 32, !dbg !6825
  %6 = load i32, ptr %low.addr, align 4, !dbg !6826
  %conv1 = zext i32 %6 to i64, !dbg !6826
  %or = or i64 %shl, %conv1, !dbg !6827
  %7 = load i32, ptr %err, align 4, !dbg !6828
  call void @do_trace_write_msr(i32 noundef %4, i64 noundef %or, i32 noundef %7) #15, !dbg !6829
  br label %if.end, !dbg !6829

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, ptr %err, align 4, !dbg !6830
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !6831
  ret i32 %8, !dbg !6832
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #6 align 16 !dbg !6833 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6837, metadata !DIExpression()), !dbg !6838
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6839
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #15, !dbg !6840
  ret i1 %call, !dbg !6841
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #7 align 16 !dbg !6842 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6845, metadata !DIExpression()), !dbg !6852
  br label %do.body, !dbg !6853

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #14, !dbg !6854
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !6846, metadata !DIExpression()), !dbg !6854
  %0 = load i32, ptr %val.addr, align 4, !dbg !6854
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6854
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !6854

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !6854
  %cmp = icmp eq i32 %2, 1, !dbg !6854
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !6854

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !6854
  %cmp1 = icmp eq i32 %3, -1, !dbg !6854
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !6854

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !6854
  br label %cond.end, !dbg !6854

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !6854

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !6854
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !6854
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !6855
  %cmp2 = icmp eq i32 %5, 1, !dbg !6855
  br i1 %cmp2, label %if.then, label %if.else, !dbg !6854

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.29, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.29, ptr @pcpu_hot, i32 0, i32 1)) #14, !dbg !6856, !srcloc !6858
  br label %if.end8, !dbg !6855

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !6859
  %cmp3 = icmp eq i32 %6, -1, !dbg !6859
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !6855

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.29, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.29, ptr @pcpu_hot, i32 0, i32 1)) #14, !dbg !6860, !srcloc !6862
  br label %if.end, !dbg !6859

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !6859

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #14, !dbg !6863
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !6848, metadata !DIExpression()), !dbg !6863
  %7 = load i32, ptr %val.addr, align 4, !dbg !6863
  %conv = sext i32 %7 to i64, !dbg !6863
  %and = and i64 %conv, 4294967295, !dbg !6863
  %conv7 = trunc i64 %and to i32, !dbg !6863
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !6863
  %8 = load i32, ptr %pto_val__, align 4, !dbg !6863
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.29, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.29, ptr @pcpu_hot, i32 0, i32 1)) #14, !dbg !6863, !srcloc !6864
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #14, !dbg !6859
  br label %do.cond, !dbg !6863

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !6863

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #14, !dbg !6853
  br label %do.end10, !dbg !6854

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !6865
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #7 align 16 !dbg !6866 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #14, !dbg !6870
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6868, metadata !DIExpression()), !dbg !6870
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.29, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.29, ptr @pcpu_hot, i32 0, i32 1)) #14, !dbg !6870, !srcloc !6871
  %1 = icmp ult i8 %0, 2, !dbg !6870
  call void @llvm.assume(i1 %1), !dbg !6870
  store i8 %0, ptr %c, align 1, !dbg !6870
  %2 = load i8, ptr %c, align 1, !dbg !6870, !range !6295, !noundef !722
  %tobool = trunc i8 %2 to i1, !dbg !6870
  %frombool = zext i1 %tobool to i8, !dbg !6870
  store i8 %frombool, ptr %tmp, align 1, !dbg !6870
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #14, !dbg !6872
  %3 = load i8, ptr %tmp, align 1, !dbg !6870, !range !6295, !noundef !722
  %tobool1 = trunc i8 %3 to i1, !dbg !6870
  ret i1 %tobool1, !dbg !6873
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #11

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #7 align 16 !dbg !6874 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6878, metadata !DIExpression()), !dbg !6880
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !6879, metadata !DIExpression()), !dbg !6881
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6882
  %call = call i32 @cpumask_check(i32 noundef %0) #15, !dbg !6882
  %conv = zext i32 %call to i64, !dbg !6882
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !6882
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !6882
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6882
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #15, !dbg !6882
  ret i1 %call1, !dbg !6883
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6884 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6892, metadata !DIExpression()), !dbg !6894
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6893, metadata !DIExpression()), !dbg !6895
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6896
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6897
  %div = udiv i64 %1, 64, !dbg !6897
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6898
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #15, !dbg !6899
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6900
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6901
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !6902
  ret i1 %call, !dbg !6903
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #7 align 16 !dbg !6904 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6908, metadata !DIExpression()), !dbg !6909
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6910
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #15, !dbg !6911
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !6912
  ret i32 %1, !dbg !6913
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !6914 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6922, metadata !DIExpression()), !dbg !6924
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6923, metadata !DIExpression()), !dbg !6925
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6926
  %1 = load i64, ptr %size.addr, align 8, !dbg !6927
  %conv = trunc i64 %1 to i32, !dbg !6927
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #15, !dbg !6928
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6929
  %3 = load i64, ptr %size.addr, align 8, !dbg !6929
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #15, !dbg !6929
  ret void, !dbg !6930
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6931 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6934, metadata !DIExpression()), !dbg !6936
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6935, metadata !DIExpression()), !dbg !6937
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6938
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6939
  br i1 %1, label %cond.true, label %cond.false, !dbg !6939

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6940
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6941
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !6942
  %conv = zext i1 %call to i32, !dbg !6942
  br label %cond.end, !dbg !6939

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6943
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6944
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #15, !dbg !6945
  %conv2 = zext i1 %call1 to i32, !dbg !6945
  br label %cond.end, !dbg !6939

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6939
  %tobool = icmp ne i32 %cond, 0, !dbg !6939
  ret i1 %tobool, !dbg !6946
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !6947 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6952, metadata !DIExpression()), !dbg !6954
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6953, metadata !DIExpression()), !dbg !6955
  ret i1 true, !dbg !6956
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !6957 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6962, metadata !DIExpression()), !dbg !6965
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6963, metadata !DIExpression()), !dbg !6966
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6964, metadata !DIExpression()), !dbg !6967
  ret void, !dbg !6968
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6969 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6973, metadata !DIExpression()), !dbg !6975
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6974, metadata !DIExpression()), !dbg !6976
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6977
  %and = and i64 %0, 63, !dbg !6978
  %shl = shl i64 1, %and, !dbg !6979
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6980
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6981
  %shr = ashr i64 %2, 6, !dbg !6982
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6980
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6980
  %and1 = and i64 %shl, %3, !dbg !6983
  %cmp = icmp ne i64 %and1, 0, !dbg !6984
  ret i1 %cmp, !dbg !6985
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6986 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6988, metadata !DIExpression()), !dbg !6991
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6989, metadata !DIExpression()), !dbg !6992
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #14, !dbg !6993
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6990, metadata !DIExpression()), !dbg !6994
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6995
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6996
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #14, !dbg !6997, !srcloc !6998
  %3 = icmp ult i8 %2, 2, !dbg !6997
  call void @llvm.assume(i1 %3), !dbg !6997
  store i8 %2, ptr %oldbit, align 1, !dbg !6997
  %4 = load i8, ptr %oldbit, align 1, !dbg !6999, !range !6295, !noundef !722
  %tobool = trunc i8 %4 to i1, !dbg !6999
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #14, !dbg !7000
  ret i1 %tobool, !dbg !7001
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #7 align 16 !dbg !7002 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !7006, metadata !DIExpression()), !dbg !7008
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !7007, metadata !DIExpression()), !dbg !7009
  ret void, !dbg !7010
}

attributes #0 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #12 = { nocallback nounwind }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { nounwind memory(read) }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!6053}
!llvm.module.flags = !{!6054, !6055, !6056, !6057, !6058, !6059, !6060, !6061}
!llvm.ident = !{!6062}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__tpstrtab_read_msr", scope: !2, file: !318, line: 40, type: !6052, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/lib/.msr.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/lib/msr\22 -D KBUILD_BASENAME=\22msr\22 -D KBUILD_MODNAME=\22msr\22 -D __KBUILD_MODNAME=kmod_msr -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/lib/msr.ll arch/x86/lib/msr.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !281, globals: !363, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/lib/msr.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eba91481463ed8c6ac71fb61410eabd0")
!4 = !{!5, !13, !19, !35, !43, !50, !58, !64, !69, !75, !82, !87, !183, !189, !196, !204, !211, !220, !225, !230, !236, !245, !256, !262, !267}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !14, line: 26, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!17 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!18 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !20, line: 1325, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!21 = !{!22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!22 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!23 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!24 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!25 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!26 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!27 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!28 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!29 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!30 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!31 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!32 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!33 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!34 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !36, line: 68, baseType: !7, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!37 = !{!38, !39, !40, !41, !42}
!38 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!39 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!40 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!41 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!42 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !44, line: 15, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!45 = !{!46, !47, !48, !49}
!46 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!47 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!48 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!49 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !51, line: 9, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!52 = !{!53, !54, !55, !56, !57}
!53 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!54 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!55 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!56 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!57 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !59, line: 54, baseType: !7, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!60 = !{!61, !62, !63}
!61 = !DIEnumerator(name: "USRQUOTA", value: 0)
!62 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!63 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !65, line: 65, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!66 = !{!67, !68}
!67 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!68 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !70, line: 16, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!71 = !{!72, !73, !74}
!72 = !DIEnumerator(name: "TT_NONE", value: 0)
!73 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!74 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !76, line: 51, baseType: !7, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!77 = !{!78, !79, !80, !81}
!78 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!79 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!80 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!81 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !83, line: 2052, baseType: !7, size: 32, elements: !84)
!83 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!84 = !{!85, !86}
!85 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!86 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !89, file: !88, line: 147, baseType: !7, size: 32, elements: !180)
!88 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !88, line: 135, size: 512, elements: !90)
!90 = !{!91, !95, !97, !99, !103, !104, !120, !178, !179}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !89, file: !88, line: 136, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!94 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !89, file: !88, line: 137, baseType: !96, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !89, file: !88, line: 138, baseType: !98, size: 32, offset: 128)
!98 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !89, file: !88, line: 139, baseType: !100, size: 16, offset: 160)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !101, line: 24, baseType: !102)
!101 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!102 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !89, file: !88, line: 150, baseType: !87, size: 32, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !89, file: !88, line: 151, baseType: !105, size: 64, offset: 256)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !88, line: 64, baseType: !107)
!107 = !DISubroutineType(types: !108)
!108 = !{!98, !109, !98, !96, !110, !116}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !101, line: 61, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !113, line: 72, baseType: !114)
!113 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !113, line: 16, baseType: !115)
!115 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !101, line: 52, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !113, line: 88, baseType: !119)
!119 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !89, file: !88, line: 152, baseType: !121, size: 64, offset: 320)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !88, line: 117, size: 256, elements: !123)
!123 = !{!124, !129}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !122, file: !88, line: 118, baseType: !125, size: 32)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !101, line: 174, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !101, line: 172, size: 32, elements: !127)
!127 = !{!128}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !126, file: !101, line: 173, baseType: !98, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !122, file: !88, line: 119, baseType: !130, size: 192, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !131, line: 41, baseType: !132)
!131 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !131, line: 37, size: 192, elements: !133)
!133 = !{!134, !172}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !132, file: !131, line: 38, baseType: !135, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !136, line: 29, baseType: !137)
!136 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !136, line: 17, size: 32, elements: !138)
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_member, scope: !137, file: !136, line: 18, baseType: !140, size: 32)
!140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !137, file: !136, line: 18, size: 32, elements: !141)
!141 = !{!142}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !140, file: !136, line: 19, baseType: !143, size: 32)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !144, line: 14, size: 32, elements: !145)
!144 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!145 = !{!146}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !143, file: !144, line: 15, baseType: !147, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !148, line: 44, baseType: !149)
!148 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !148, line: 14, size: 32, elements: !150)
!150 = !{!151}
!151 = !DIDerivedType(tag: DW_TAG_member, scope: !149, file: !148, line: 15, baseType: !152, size: 32)
!152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !149, file: !148, line: 15, size: 32, elements: !153)
!153 = !{!154, !155, !165}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !152, file: !148, line: 16, baseType: !125, size: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, scope: !152, file: !148, line: 24, baseType: !156, size: 16)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !152, file: !148, line: 24, size: 16, elements: !157)
!157 = !{!158, !164}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !156, file: !148, line: 25, baseType: !159, size: 8)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !160, line: 17, baseType: !161)
!160 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !162, line: 21, baseType: !163)
!162 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!163 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !156, file: !148, line: 26, baseType: !159, size: 8, offset: 8)
!165 = !DIDerivedType(tag: DW_TAG_member, scope: !152, file: !148, line: 28, baseType: !166, size: 32)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !152, file: !148, line: 28, size: 32, elements: !167)
!167 = !{!168, !171}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !166, file: !148, line: 29, baseType: !169, size: 16)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !160, line: 19, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !162, line: 24, baseType: !102)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !166, file: !148, line: 30, baseType: !169, size: 16, offset: 16)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !132, file: !131, line: 39, baseType: !173, size: 128, offset: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !101, line: 190, size: 128, elements: !174)
!174 = !{!175, !177}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !173, file: !101, line: 191, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !173, file: !101, line: 191, baseType: !176, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !89, file: !88, line: 153, baseType: !96, size: 64, offset: 384)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !89, file: !88, line: 154, baseType: !96, size: 64, offset: 448)
!180 = !{!181, !182}
!181 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!182 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !184, line: 45, baseType: !7, size: 32, elements: !185)
!184 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!185 = !{!186, !187, !188}
!186 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!187 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!188 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !190, line: 487, baseType: !7, size: 32, elements: !191)
!190 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!191 = !{!192, !193, !194, !195}
!192 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!193 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!194 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!195 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !197, line: 620, baseType: !7, size: 32, elements: !198)
!197 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!198 = !{!199, !200, !201, !202, !203}
!199 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!200 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!201 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!202 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!203 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !197, line: 597, baseType: !98, size: 32, elements: !205)
!205 = !{!206, !207, !208, !209, !210}
!206 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!207 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!208 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!209 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!210 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !190, line: 547, baseType: !7, size: 32, elements: !212)
!212 = !{!213, !214, !215, !216, !217, !218, !219}
!213 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!214 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!215 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!216 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!217 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!218 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!219 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!220 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !190, line: 564, baseType: !7, size: 32, elements: !221)
!221 = !{!222, !223, !224}
!222 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!223 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!224 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!225 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !190, line: 577, baseType: !7, size: 32, elements: !226)
!226 = !{!227, !228, !229}
!227 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!228 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!229 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!230 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !190, line: 503, baseType: !7, size: 32, elements: !231)
!231 = !{!232, !233, !234, !235}
!232 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!233 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!234 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!235 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!236 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !237, line: 593, baseType: !98, size: 32, elements: !238)
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
!262 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !263, line: 10, baseType: !7, size: 32, elements: !264)
!263 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!264 = !{!265, !266}
!265 = !DIEnumerator(name: "false", value: 0)
!266 = !DIEnumerator(name: "true", value: 1)
!267 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !246, line: 640, baseType: !7, size: 32, elements: !268)
!268 = !{!269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280}
!269 = !DIEnumerator(name: "EVENT_FILE_FL_ENABLED", value: 1)
!270 = !DIEnumerator(name: "EVENT_FILE_FL_RECORDED_CMD", value: 2)
!271 = !DIEnumerator(name: "EVENT_FILE_FL_RECORDED_TGID", value: 4)
!272 = !DIEnumerator(name: "EVENT_FILE_FL_FILTERED", value: 8)
!273 = !DIEnumerator(name: "EVENT_FILE_FL_NO_SET_FILTER", value: 16)
!274 = !DIEnumerator(name: "EVENT_FILE_FL_SOFT_MODE", value: 32)
!275 = !DIEnumerator(name: "EVENT_FILE_FL_SOFT_DISABLED", value: 64)
!276 = !DIEnumerator(name: "EVENT_FILE_FL_TRIGGER_MODE", value: 128)
!277 = !DIEnumerator(name: "EVENT_FILE_FL_TRIGGER_COND", value: 256)
!278 = !DIEnumerator(name: "EVENT_FILE_FL_PID_FILTER", value: 512)
!279 = !DIEnumerator(name: "EVENT_FILE_FL_WAS_ENABLED", value: 1024)
!280 = !DIEnumerator(name: "EVENT_FILE_FL_FREED", value: 2048)
!281 = !{!96, !282, !285, !292, !295, !301, !98, !316, !334, !115, !344, !349, !312, !298, !352, !353, !362, !7}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !287, line: 26, size: 192, elements: !288)
!287 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!288 = !{!289, !290, !291}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !286, file: !287, line: 27, baseType: !96, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !286, file: !287, line: 28, baseType: !96, size: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !286, file: !287, line: 29, baseType: !98, size: 32, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !96)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !96, !7, !298, !98}
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !160, line: 23, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !162, line: 31, baseType: !300)
!300 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msr", file: !303, line: 5, size: 64, elements: !304)
!303 = !DIFile(filename: "./arch/x86/include/asm/shared/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97cdbff086ff569e0d38e30ef42693a4")
!304 = !{!305}
!305 = !DIDerivedType(tag: DW_TAG_member, scope: !302, file: !303, line: 6, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !302, file: !303, line: 6, size: 64, elements: !307)
!307 = !{!308, !315}
!308 = !DIDerivedType(tag: DW_TAG_member, scope: !306, file: !303, line: 7, baseType: !309, size: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !306, file: !303, line: 7, size: 64, elements: !310)
!310 = !{!311, !314}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !309, file: !303, line: 8, baseType: !312, size: 32)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !160, line: 21, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !162, line: 27, baseType: !7)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !309, file: !303, line: 9, baseType: !312, size: 32, offset: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !306, file: !303, line: 11, baseType: !298, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_raw_msr_trace_class", file: !318, line: 21, size: 256, elements: !319)
!318 = !DIFile(filename: "./arch/x86/include/asm/msr-trace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa287462a5410920a87eb5d5b842a153")
!319 = !{!320, !327, !328, !329, !330}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !317, file: !318, line: 21, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !246, line: 79, size: 64, elements: !322)
!322 = !{!323, !324, !325, !326}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !321, file: !246, line: 80, baseType: !102, size: 16)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !321, file: !246, line: 81, baseType: !163, size: 8, offset: 16)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !321, file: !246, line: 82, baseType: !163, size: 8, offset: 24)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !321, file: !246, line: 83, baseType: !98, size: 32, offset: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "msr", scope: !317, file: !318, line: 21, baseType: !7, size: 32, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !317, file: !318, line: 21, baseType: !298, size: 64, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !317, file: !318, line: 21, baseType: !98, size: 32, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !317, file: !318, line: 21, baseType: !331, offset: 224)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: -1)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !101, line: 194, size: 64, elements: !336)
!336 = !{!337}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !335, file: !101, line: 195, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !101, line: 198, size: 128, elements: !340)
!340 = !{!341, !342}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !339, file: !101, line: 199, baseType: !338, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !339, file: !101, line: 199, baseType: !343, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !246, line: 399, flags: DIFlagFwdDecl)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !338)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !356, line: 19, size: 64, elements: !357)
!356 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !355, file: !356, line: 19, baseType: !359, size: 64)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 64, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 1)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!363 = !{!364, !5839, !5841, !5843, !5845, !5847, !5849, !5851, !5853, !5855, !5857, !5859, !5861, !5863, !5868, !5873, !5875, !5877, !5879, !5881, !5883, !5885, !5887, !5889, !5891, !5893, !5895, !5897, !5899, !5901, !5903, !5905, !0, !5907, !5910, !5913, !5917, !5922, !5925, !5927, !5929, !5931, !5934, !5937, !5939, !5944, !5947, !5950, !5955, !5960, !5990, !5992, !6020, !6022, !6050}
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(name: "__tracepoint_read_msr", scope: !2, file: !318, line: 40, type: !366, isLocal: false, isDefinition: true)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !287, line: 32, size: 640, elements: !367)
!367 = !{!368, !369, !391, !5833, !5834, !5835, !5836, !5837, !5838}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !366, file: !287, line: 33, baseType: !92, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !366, file: !287, line: 34, baseType: !370, size: 128, offset: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !371, line: 85, size: 128, elements: !372)
!371 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!372 = !{!373, !374}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !370, file: !371, line: 86, baseType: !125, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, scope: !370, file: !371, line: 101, baseType: !375, size: 64, offset: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !370, file: !371, line: 101, size: 64, elements: !376)
!376 = !{!377, !378, !388}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !375, file: !371, line: 102, baseType: !115, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !375, file: !371, line: 103, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !371, line: 117, size: 128, elements: !381)
!381 = !{!382, !385, !386}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !380, file: !371, line: 118, baseType: !383, size: 32)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !160, line: 20, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !162, line: 26, baseType: !98)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !380, file: !371, line: 119, baseType: !383, size: 32, offset: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !380, file: !371, line: 120, baseType: !387, size: 64, offset: 64)
!387 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !375, file: !371, line: 104, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !371, line: 104, flags: DIFlagFwdDecl)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !366, file: !287, line: 35, baseType: !392, size: 64, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !394, line: 61, size: 128, elements: !395)
!394 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!395 = !{!396, !397}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !393, file: !394, line: 62, baseType: !96, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !394, line: 63, baseType: !398, size: 64, offset: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !394, line: 63, size: 64, elements: !399)
!399 = !{!400, !401, !5832}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !398, file: !394, line: 65, baseType: !115, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !398, file: !394, line: 66, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !404, line: 169, size: 192, elements: !405)
!404 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!405 = !{!406, !407, !5831}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !403, file: !404, line: 170, baseType: !402, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !403, file: !404, line: 171, baseType: !408, size: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !410)
!410 = !{!411, !412, !413, !417, !5517, !5543, !5544, !5545, !5546, !5550, !5553, !5554, !5555, !5607, !5608, !5609, !5610, !5611, !5612, !5613, !5614, !5622, !5626, !5644, !5661, !5662, !5663, !5664, !5673, !5696, !5697, !5700, !5703, !5704, !5705, !5706, !5707, !5708, !5709, !5712, !5713, !5798, !5799, !5800, !5801, !5803, !5805, !5806, !5815, !5816, !5817, !5818, !5819, !5820, !5821, !5827, !5828, !5829, !5830}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !409, file: !6, line: 403, baseType: !5, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !409, file: !6, line: 406, baseType: !173, size: 128, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !409, file: !6, line: 409, baseType: !414, size: 448, offset: 192)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 448, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 56)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !409, file: !6, line: 417, baseType: !418, size: 768, offset: 640)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !419)
!419 = !{!420, !5511, !5512, !5513, !5516}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !418, file: !6, line: 46, baseType: !421, size: 512)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !422, line: 64, size: 512, elements: !423)
!422 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!423 = !{!424, !425, !426, !428, !475, !5500, !5501, !5506, !5507, !5508, !5509, !5510}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !421, file: !422, line: 65, baseType: !92, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !421, file: !422, line: 66, baseType: !173, size: 128, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !421, file: !422, line: 67, baseType: !427, size: 64, offset: 192)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !421, file: !422, line: 68, baseType: !429, size: 64, offset: 256)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !422, line: 168, size: 768, elements: !431)
!431 = !{!432, !433, !434, !435}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !430, file: !422, line: 169, baseType: !173, size: 128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !430, file: !422, line: 170, baseType: !135, size: 32, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !430, file: !422, line: 171, baseType: !421, size: 512, offset: 192)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !430, file: !422, line: 172, baseType: !436, size: 64, offset: 704)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !422, line: 133, size: 192, elements: !439)
!439 = !{!440, !447, !452}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !438, file: !422, line: 134, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!98, !445}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !421)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !438, file: !422, line: 135, baseType: !448, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!92, !445}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !438, file: !422, line: 136, baseType: !453, size: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!98, !445, !457}
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !422, line: 125, size: 20736, elements: !459)
!459 = !{!460, !465, !469, !470, !474}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !458, file: !422, line: 126, baseType: !461, size: 192)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 192, elements: !463)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!463 = !{!464}
!464 = !DISubrange(count: 3)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !458, file: !422, line: 127, baseType: !466, size: 4096, offset: 192)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 4096, elements: !467)
!467 = !{!468}
!468 = !DISubrange(count: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !458, file: !422, line: 128, baseType: !98, size: 32, offset: 4288)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !458, file: !422, line: 129, baseType: !471, size: 16384, offset: 4320)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 16384, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 2048)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !458, file: !422, line: 130, baseType: !98, size: 32, offset: 20704)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !421, file: !422, line: 69, baseType: !476, size: 64, offset: 320)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !478)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !422, line: 116, size: 384, elements: !479)
!479 = !{!480, !484, !506, !5488, !5492, !5496}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !478, file: !422, line: 117, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !427}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !478, file: !422, line: 118, baseType: !485, size: 64, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !487)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !488, line: 254, size: 128, elements: !489)
!488 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!489 = !{!490, !502}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !487, file: !488, line: 255, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!494, !427, !497, !462}
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !101, line: 66, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !113, line: 73, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !113, line: 15, baseType: !387)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !488, line: 30, size: 128, elements: !499)
!499 = !{!500, !501}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !498, file: !488, line: 31, baseType: !92, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !498, file: !488, line: 32, baseType: !100, size: 16, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !487, file: !488, line: 256, baseType: !503, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!494, !427, !497, !92, !111}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !478, file: !422, line: 119, baseType: !507, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !510)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !488, line: 84, size: 320, elements: !511)
!511 = !{!512, !513, !517, !5484, !5486}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !510, file: !488, line: 85, baseType: !92, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !510, file: !488, line: 86, baseType: !514, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!100, !427, !497, !98}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !510, file: !488, line: 88, baseType: !518, size: 64, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!100, !427, !521, !98}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !488, line: 175, size: 512, elements: !523)
!523 = !{!524, !525, !526, !527, !5475, !5479, !5480}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !522, file: !488, line: 176, baseType: !498, size: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !522, file: !488, line: 177, baseType: !111, size: 64, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !522, file: !488, line: 178, baseType: !96, size: 64, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !522, file: !488, line: 179, baseType: !528, size: 64, offset: 256)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!531}
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !83, line: 472, size: 1536, align: 64, elements: !533)
!533 = !{!534, !5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316, !5469, !5470, !5471, !5472, !5473, !5474}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !532, file: !83, line: 473, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !83, line: 641, size: 4800, elements: !537)
!537 = !{!538, !539, !540, !548, !549, !556, !557, !560, !561, !5248, !5249, !5250, !5251, !5252, !5257, !5258, !5259, !5260, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5268, !5269, !5270, !5271, !5272, !5273, !5274, !5275, !5280, !5281, !5282, !5283, !5284, !5285, !5286, !5291, !5294, !5295, !5296, !5305, !5306, !5307, !5308}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !536, file: !83, line: 642, baseType: !100, size: 16)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !536, file: !83, line: 643, baseType: !102, size: 16, offset: 16)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !536, file: !83, line: 644, baseType: !541, size: 32, offset: 32)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !542, line: 23, baseType: !543)
!542 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !542, line: 21, size: 32, elements: !544)
!544 = !{!545}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !543, file: !542, line: 22, baseType: !546, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !101, line: 37, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !113, line: 49, baseType: !7)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !536, file: !83, line: 645, baseType: !173, size: 128, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !536, file: !83, line: 646, baseType: !550, size: 32, offset: 192)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !542, line: 28, baseType: !551)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !542, line: 26, size: 32, elements: !552)
!552 = !{!553}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !551, file: !542, line: 27, baseType: !554, size: 32)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !101, line: 38, baseType: !555)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !113, line: 50, baseType: !7)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !536, file: !83, line: 647, baseType: !7, size: 32, offset: 224)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !536, file: !83, line: 650, baseType: !558, size: 64, offset: 256)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !83, line: 607, flags: DIFlagFwdDecl)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !536, file: !83, line: 651, baseType: !558, size: 64, offset: 320)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !536, file: !83, line: 654, baseType: !562, size: 64, offset: 384)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !564)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !83, line: 1966, size: 2048, align: 512, elements: !565)
!565 = !{!566, !5082, !5092, !5096, !5100, !5104, !5108, !5112, !5116, !5120, !5124, !5125, !5129, !5133, !5170, !5199, !5203, !5209, !5213, !5217, !5221, !5225, !5229, !5235, !5239}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !564, file: !83, line: 1967, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!570, !535, !570, !7}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !572, line: 82, size: 1536, elements: !573)
!572 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!573 = !{!574, !575, !585, !593, !594, !609, !610, !614, !627, !5066, !5067, !5068, !5069, !5074, !5075, !5076}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !571, file: !572, line: 84, baseType: !7, size: 32)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !571, file: !572, line: 85, baseType: !576, size: 32, offset: 32)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !577, line: 275, baseType: !578)
!577 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !577, line: 275, size: 32, elements: !579)
!579 = !{!580}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !578, file: !577, line: 275, baseType: !581, size: 32)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !577, line: 69, baseType: !582)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !577, line: 64, size: 32, elements: !583)
!583 = !{!584}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !582, file: !577, line: 65, baseType: !7, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !571, file: !572, line: 86, baseType: !586, size: 128, offset: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !587, line: 38, size: 128, elements: !588)
!587 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!588 = !{!589, !591}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !586, file: !587, line: 39, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !586, file: !587, line: 39, baseType: !592, size: 64, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !571, file: !572, line: 87, baseType: !570, size: 64, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !571, file: !572, line: 88, baseType: !595, size: 128, offset: 256)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !572, line: 49, size: 128, elements: !596)
!596 = !{!597, !606}
!597 = !DIDerivedType(tag: DW_TAG_member, scope: !595, file: !572, line: 50, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !595, file: !572, line: 50, size: 64, elements: !599)
!599 = !{!600, !605}
!600 = !DIDerivedType(tag: DW_TAG_member, scope: !598, file: !572, line: 51, baseType: !601, size: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !598, file: !572, line: 51, size: 64, elements: !602)
!602 = !{!603, !604}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !601, file: !572, line: 52, baseType: !312, size: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !601, file: !572, line: 52, baseType: !312, size: 32, offset: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !598, file: !572, line: 54, baseType: !298, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !595, file: !572, line: 56, baseType: !607, size: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !571, file: !572, line: 89, baseType: !535, size: 64, offset: 384)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !571, file: !572, line: 91, baseType: !611, size: 256, offset: 448)
!611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 256, elements: !612)
!612 = !{!613}
!613 = !DISubrange(count: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !571, file: !572, line: 94, baseType: !615, size: 64, offset: 704)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !616, line: 25, size: 64, elements: !617)
!616 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!617 = !{!618}
!618 = !DIDerivedType(tag: DW_TAG_member, scope: !615, file: !616, line: 26, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !615, file: !616, line: 26, size: 64, elements: !620)
!620 = !{!621, !622}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !619, file: !616, line: 28, baseType: !299, size: 64, align: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, scope: !619, file: !616, line: 30, baseType: !623, size: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !619, file: !616, line: 30, size: 64, elements: !624)
!624 = !{!625, !626}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !623, file: !616, line: 31, baseType: !135, size: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !623, file: !616, line: 32, baseType: !98, size: 32, offset: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !571, file: !572, line: 95, baseType: !628, size: 64, offset: 768)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !630)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !572, line: 128, size: 1024, align: 512, elements: !631)
!631 = !{!632, !636, !637, !644, !650, !654, !658, !662, !663, !667, !671, !5056, !5060}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !630, file: !572, line: 129, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!98, !570, !7}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !630, file: !572, line: 130, baseType: !633, size: 64, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !630, file: !572, line: 131, baseType: !638, size: 64, offset: 128)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!98, !641, !643}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !630, file: !572, line: 132, baseType: !645, size: 64, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!98, !641, !7, !92, !648}
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !595)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !630, file: !572, line: 134, baseType: !651, size: 64, offset: 256)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!98, !641}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !630, file: !572, line: 135, baseType: !655, size: 64, offset: 320)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!98, !570}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !630, file: !572, line: 136, baseType: !659, size: 64, offset: 384)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{null, !570}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !630, file: !572, line: 137, baseType: !659, size: 64, offset: 448)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !630, file: !572, line: 138, baseType: !664, size: 64, offset: 512)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{null, !570, !535}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !630, file: !572, line: 139, baseType: !668, size: 64, offset: 576)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!462, !570, !462, !98}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !630, file: !572, line: 140, baseType: !672, size: 64, offset: 640)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!675, !5055}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !677, line: 70, size: 256, elements: !678)
!677 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!678 = !{!679, !680, !5051, !5052}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !676, file: !677, line: 71, baseType: !570, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !676, file: !677, line: 72, baseType: !681, size: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !83, line: 1190, size: 10752, elements: !683)
!683 = !{!684, !685, !688, !689, !690, !691, !731, !4760, !4800, !4885, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4902, !4906, !4907, !4910, !4913, !4916, !4919, !4920, !4921, !4962, !4985, !4986, !4987, !4988, !4989, !4990, !4993, !4994, !5001, !5002, !5003, !5004, !5005, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5042, !5043, !5044, !5045, !5046, !5047, !5048, !5049, !5050}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !682, file: !83, line: 1191, baseType: !173, size: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !682, file: !83, line: 1192, baseType: !686, size: 32, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !101, line: 21, baseType: !687)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !101, line: 18, baseType: !312)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !682, file: !83, line: 1193, baseType: !163, size: 8, offset: 160)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !682, file: !83, line: 1194, baseType: !115, size: 64, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !682, file: !83, line: 1195, baseType: !117, size: 64, offset: 256)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !682, file: !83, line: 1196, baseType: !692, size: 64, offset: 320)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !83, line: 2366, size: 576, elements: !694)
!694 = !{!695, !696, !697, !704, !708, !712, !716, !717, !718, !719, !723, !724, !725, !727, !728, !729, !730}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !693, file: !83, line: 2367, baseType: !92, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !693, file: !83, line: 2368, baseType: !98, size: 32, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !693, file: !83, line: 2376, baseType: !698, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!98, !701}
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !703, line: 32, flags: DIFlagFwdDecl)
!703 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!704 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !693, file: !83, line: 2377, baseType: !705, size: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !707)
!707 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !83, line: 75, flags: DIFlagFwdDecl)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !693, file: !83, line: 2378, baseType: !709, size: 64, offset: 256)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!570, !692, !98, !92, !96}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !693, file: !83, line: 2380, baseType: !713, size: 64, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !681}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !693, file: !83, line: 2381, baseType: !408, size: 64, offset: 384)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !693, file: !83, line: 2382, baseType: !692, size: 64, offset: 448)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !693, file: !83, line: 2383, baseType: !335, size: 64, offset: 512)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !693, file: !83, line: 2385, baseType: !720, offset: 576)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !721, line: 206, elements: !722)
!721 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!722 = !{}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !693, file: !83, line: 2386, baseType: !720, offset: 576)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !693, file: !83, line: 2387, baseType: !720, offset: 576)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !693, file: !83, line: 2388, baseType: !726, offset: 576)
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !720, elements: !463)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !693, file: !83, line: 2390, baseType: !720, offset: 576)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !693, file: !83, line: 2391, baseType: !720, offset: 576)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !693, file: !83, line: 2392, baseType: !720, offset: 576)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !693, file: !83, line: 2393, baseType: !720, offset: 576)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !682, file: !83, line: 1197, baseType: !732, size: 64, offset: 384)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !734)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !83, line: 2057, size: 1664, elements: !735)
!735 = !{!736, !740, !744, !745, !749, !755, !759, !760, !761, !765, !769, !773, !774, !775, !781, !785, !786, !4685, !4686, !4687, !4688, !4692, !4696, !4743, !4758, !4759}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !734, file: !83, line: 2058, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!535, !681}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !734, file: !83, line: 2059, baseType: !741, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{null, !535}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !734, file: !83, line: 2060, baseType: !741, size: 64, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !734, file: !83, line: 2062, baseType: !746, size: 64, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{null, !535, !98}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !734, file: !83, line: 2063, baseType: !750, size: 64, offset: 256)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!98, !535, !753}
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !83, line: 309, flags: DIFlagFwdDecl)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !734, file: !83, line: 2064, baseType: !756, size: 64, offset: 320)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!98, !535}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !734, file: !83, line: 2065, baseType: !741, size: 64, offset: 384)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !734, file: !83, line: 2066, baseType: !713, size: 64, offset: 448)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !734, file: !83, line: 2067, baseType: !762, size: 64, offset: 512)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!98, !681, !98}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !734, file: !83, line: 2068, baseType: !766, size: 64, offset: 576)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{!98, !681, !82}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !734, file: !83, line: 2069, baseType: !770, size: 64, offset: 640)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!98, !681}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !734, file: !83, line: 2070, baseType: !766, size: 64, offset: 704)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !734, file: !83, line: 2071, baseType: !770, size: 64, offset: 768)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !734, file: !83, line: 2072, baseType: !776, size: 64, offset: 832)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!98, !570, !779}
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !83, line: 62, flags: DIFlagFwdDecl)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !734, file: !83, line: 2073, baseType: !782, size: 64, offset: 896)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{!98, !681, !352, !462}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !734, file: !83, line: 2074, baseType: !713, size: 64, offset: 960)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !734, file: !83, line: 2076, baseType: !787, size: 64, offset: 1024)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!98, !790, !570}
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !792, line: 17, size: 960, elements: !793)
!792 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!793 = !{!794, !795, !796, !797, !798, !799, !800, !801, !822, !843, !844, !4684}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !791, file: !792, line: 18, baseType: !462, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !791, file: !792, line: 19, baseType: !111, size: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !791, file: !792, line: 20, baseType: !111, size: 64, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !791, file: !792, line: 21, baseType: !111, size: 64, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !791, file: !792, line: 22, baseType: !111, size: 64, offset: 256)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !791, file: !792, line: 23, baseType: !117, size: 64, offset: 320)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !791, file: !792, line: 24, baseType: !117, size: 64, offset: 384)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !791, file: !792, line: 25, baseType: !802, size: 256, offset: 448)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !803, line: 66, size: 256, elements: !804)
!803 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!804 = !{!805, !814, !816, !821}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !802, file: !803, line: 67, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !807, line: 13, baseType: !808)
!807 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !101, line: 181, baseType: !809)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !101, line: 179, size: 64, elements: !810)
!810 = !{!811}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !809, file: !101, line: 180, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !160, line: 22, baseType: !813)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !162, line: 30, baseType: !119)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !802, file: !803, line: 68, baseType: !815, size: 32, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !144, line: 23, baseType: !143)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !802, file: !803, line: 70, baseType: !817, size: 32, offset: 96)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !818, line: 15, size: 32, elements: !819)
!818 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!819 = !{!820}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !817, file: !818, line: 20, baseType: !125, size: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !802, file: !803, line: 72, baseType: !173, size: 128, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !791, file: !792, line: 26, baseType: !823, size: 64, offset: 704)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !825)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !792, line: 32, size: 256, elements: !826)
!826 = !{!827, !831, !835, !839}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !825, file: !792, line: 33, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!96, !790, !116}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !825, file: !792, line: 34, baseType: !832, size: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{null, !790, !96}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !825, file: !792, line: 35, baseType: !836, size: 64, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!96, !790, !96, !116}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !825, file: !792, line: 36, baseType: !840, size: 64, offset: 192)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!98, !790, !96}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !791, file: !792, line: 27, baseType: !98, size: 32, offset: 768)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !791, file: !792, line: 28, baseType: !845, size: 64, offset: 832)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !847)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !83, line: 994, size: 1856, align: 64, elements: !848)
!848 = !{!849, !868, !869, !871, !872, !873, !874, !875, !4504, !4505, !4514, !4520, !4521, !4675, !4676, !4677, !4678, !4679, !4680, !4683}
!849 = !DIDerivedType(tag: DW_TAG_member, scope: !847, file: !83, line: 995, baseType: !850, size: 128)
!850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !847, file: !83, line: 995, size: 128, elements: !851)
!851 = !{!852, !858, !867}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !850, file: !83, line: 996, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !854, line: 60, size: 64, elements: !855)
!854 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!855 = !{!856}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !853, file: !854, line: 61, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !850, file: !83, line: 997, baseType: !859, size: 128, align: 64)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !101, line: 232, size: 128, align: 64, elements: !860)
!860 = !{!861, !863}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !859, file: !101, line: 233, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !859, file: !101, line: 234, baseType: !864, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{null, !862}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !850, file: !83, line: 998, baseType: !7, size: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !847, file: !83, line: 1005, baseType: !135, size: 32, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !847, file: !83, line: 1006, baseType: !870, size: 32, offset: 160)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !101, line: 156, baseType: !7)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !847, file: !83, line: 1007, baseType: !806, size: 64, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !847, file: !83, line: 1008, baseType: !802, size: 256, offset: 256)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !847, file: !83, line: 1009, baseType: !117, size: 64, offset: 512)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !847, file: !83, line: 1010, baseType: !7, size: 32, offset: 576)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !847, file: !83, line: 1011, baseType: !876, size: 256, offset: 640)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !83, line: 948, size: 256, elements: !877)
!877 = !{!878, !899, !4500, !4501, !4502, !4503}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !876, file: !83, line: 949, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !880, line: 34, baseType: !881)
!880 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !880, line: 25, size: 64, elements: !882)
!882 = !{!883}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !881, file: !880, line: 26, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !885, line: 27, baseType: !886)
!885 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !885, line: 13, size: 64, elements: !887)
!887 = !{!888, !898}
!888 = !DIDerivedType(tag: DW_TAG_member, scope: !886, file: !885, line: 14, baseType: !889, size: 32)
!889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !886, file: !885, line: 14, size: 32, elements: !890)
!890 = !{!891, !892}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !889, file: !885, line: 15, baseType: !125, size: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, scope: !889, file: !885, line: 16, baseType: !893, size: 32)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !889, file: !885, line: 16, size: 32, elements: !894)
!894 = !{!895, !896}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !893, file: !885, line: 18, baseType: !159, size: 8)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !893, file: !885, line: 19, baseType: !897, size: 24, offset: 8)
!897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 24, elements: !463)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !886, file: !885, line: 26, baseType: !147, size: 32, offset: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !876, file: !83, line: 950, baseType: !900, size: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !51, line: 59, size: 768, elements: !902)
!902 = !{!903, !909, !910, !911, !915, !916, !917, !918}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !901, file: !51, line: 61, baseType: !904, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !905, line: 113, baseType: !906)
!905 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !905, line: 111, size: 32, elements: !907)
!907 = !{!908}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !906, file: !905, line: 112, baseType: !125, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !901, file: !51, line: 62, baseType: !7, size: 32, offset: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !901, file: !51, line: 63, baseType: !135, size: 32, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !901, file: !51, line: 65, baseType: !912, size: 256, offset: 128)
!912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 256, elements: !913)
!913 = !{!914}
!914 = !DISubrange(count: 4)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !901, file: !51, line: 66, baseType: !335, size: 64, offset: 384)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !901, file: !51, line: 68, baseType: !130, size: 192, offset: 448)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !901, file: !51, line: 69, baseType: !859, size: 128, align: 64, offset: 640)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !901, file: !51, line: 70, baseType: !919, offset: 768)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !920, elements: !332)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !51, line: 54, size: 128, elements: !921)
!921 = !{!922, !923}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !920, file: !51, line: 55, baseType: !98, size: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !920, file: !51, line: 56, baseType: !924, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !926, line: 26, size: 1152, elements: !927)
!926 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!927 = !{!928, !942, !943, !944, !4489, !4490, !4491, !4492, !4495, !4496, !4497, !4498, !4499}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !925, file: !926, line: 27, baseType: !929, size: 192)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !930, line: 19, size: 192, elements: !931)
!930 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!931 = !{!932, !940, !941}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !929, file: !930, line: 20, baseType: !933, size: 128)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !934, line: 296, size: 128, elements: !935)
!934 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!935 = !{!936, !937, !939}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !933, file: !934, line: 297, baseType: !135, size: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !933, file: !934, line: 299, baseType: !938, size: 32, offset: 32)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !101, line: 154, baseType: !7)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !933, file: !934, line: 300, baseType: !96, size: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !929, file: !930, line: 21, baseType: !7, size: 32, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !929, file: !930, line: 22, baseType: !7, size: 32, offset: 160)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !925, file: !926, line: 28, baseType: !859, size: 128, align: 64, offset: 192)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !925, file: !926, line: 29, baseType: !7, size: 32, offset: 320)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !925, file: !926, line: 30, baseType: !945, size: 64, offset: 384)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !947, line: 746, size: 58368, elements: !948)
!947 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!948 = !{!949, !957, !958, !959, !960, !961, !962, !963, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !1036, !1047, !1142, !1146, !1149, !1180, !1181, !1182, !1183, !1187, !1189, !1190, !1191, !1192, !1193, !1194, !1205, !1206, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1223, !1224, !1231, !1232, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1751, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1799, !1805, !1875, !1876, !1877, !1878, !1882, !1885, !1892, !1897, !1900, !1903, !1906, !2597, !2798, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2836, !2837, !2838, !2847, !2855, !2856, !2857, !2858, !2859, !2864, !2865, !2866, !2869, !2870, !2873, !2876, !2879, !2887, !2890, !2891, !2977, !2978, !2979, !2980, !2981, !2987, !2988, !2989, !2990, !2991, !2992, !2995, !2998, !2999, !3002, !3003, !3004, !3042, !3043, !3044, !3045, !3046, !3047, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3078, !3081, !3087, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3099, !3171, !3173, !3174, !3175, !3176, !3177, !3178, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3195, !3196, !3197}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !946, file: !947, line: 752, baseType: !950, size: 192)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !951, line: 56, size: 192, elements: !952)
!951 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!952 = !{!953, !954, !955, !956}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !950, file: !951, line: 57, baseType: !115, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !950, file: !951, line: 58, baseType: !115, size: 64, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !950, file: !951, line: 59, baseType: !312, size: 32, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !950, file: !951, line: 61, baseType: !312, size: 32, offset: 160)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !946, file: !947, line: 754, baseType: !7, size: 32, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !946, file: !947, line: 767, baseType: !96, size: 64, offset: 256)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !946, file: !947, line: 768, baseType: !904, size: 32, offset: 320)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !946, file: !947, line: 770, baseType: !7, size: 32, offset: 352)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !946, file: !947, line: 771, baseType: !7, size: 32, offset: 384)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !946, file: !947, line: 774, baseType: !98, size: 32, offset: 416)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !946, file: !947, line: 775, baseType: !964, size: 128, offset: 448)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !965, line: 58, size: 128, elements: !966)
!965 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!966 = !{!967, !968, !973, !974}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !964, file: !965, line: 59, baseType: !853, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, scope: !964, file: !965, line: 60, baseType: !969, size: 32, offset: 64)
!969 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !964, file: !965, line: 60, size: 32, elements: !970)
!970 = !{!971, !972}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !969, file: !965, line: 61, baseType: !7, size: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !969, file: !965, line: 62, baseType: !125, size: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !964, file: !965, line: 65, baseType: !169, size: 16, offset: 96)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !964, file: !965, line: 65, baseType: !169, size: 16, offset: 112)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !946, file: !947, line: 776, baseType: !7, size: 32, offset: 576)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !946, file: !947, line: 777, baseType: !115, size: 64, offset: 640)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !946, file: !947, line: 778, baseType: !945, size: 64, offset: 704)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !946, file: !947, line: 787, baseType: !98, size: 32, offset: 768)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !946, file: !947, line: 788, baseType: !98, size: 32, offset: 800)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !946, file: !947, line: 790, baseType: !98, size: 32, offset: 832)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !946, file: !947, line: 792, baseType: !98, size: 32, offset: 864)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !946, file: !947, line: 793, baseType: !98, size: 32, offset: 896)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !946, file: !947, line: 794, baseType: !98, size: 32, offset: 928)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !946, file: !947, line: 795, baseType: !7, size: 32, offset: 960)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !946, file: !947, line: 797, baseType: !986, size: 2048, offset: 1024)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !947, line: 551, size: 2048, elements: !987)
!987 = !{!988, !993, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1015, !1018, !1019, !1020}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !986, file: !947, line: 553, baseType: !989, size: 128)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !947, line: 411, size: 128, elements: !990)
!990 = !{!991, !992}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !989, file: !947, line: 412, baseType: !115, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !989, file: !947, line: 413, baseType: !312, size: 32, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !986, file: !947, line: 554, baseType: !994, size: 192, align: 64, offset: 128)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !995, line: 5, size: 192, align: 64, elements: !996)
!995 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!996 = !{!997, !998, !1000}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !994, file: !995, line: 6, baseType: !115, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !994, file: !995, line: 7, baseType: !999, size: 64, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !994, file: !995, line: 8, baseType: !999, size: 64, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !986, file: !947, line: 555, baseType: !298, size: 64, offset: 320)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !986, file: !947, line: 556, baseType: !298, size: 64, offset: 384)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !986, file: !947, line: 558, baseType: !173, size: 128, offset: 448)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !986, file: !947, line: 559, baseType: !7, size: 32, offset: 576)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !986, file: !947, line: 561, baseType: !298, size: 64, offset: 640)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !986, file: !947, line: 562, baseType: !298, size: 64, offset: 704)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !986, file: !947, line: 563, baseType: !298, size: 64, offset: 768)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !986, file: !947, line: 564, baseType: !298, size: 64, offset: 832)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !986, file: !947, line: 565, baseType: !812, size: 64, offset: 896)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !986, file: !947, line: 566, baseType: !298, size: 64, offset: 960)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !986, file: !947, line: 568, baseType: !298, size: 64, offset: 1024)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !986, file: !947, line: 571, baseType: !98, size: 32, offset: 1088)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !986, file: !947, line: 572, baseType: !1014, size: 64, offset: 1152)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !986, file: !947, line: 574, baseType: !1016, size: 64, offset: 1216)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !947, line: 49, flags: DIFlagFwdDecl)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !986, file: !947, line: 576, baseType: !1016, size: 64, offset: 1280)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !986, file: !947, line: 578, baseType: !115, size: 64, offset: 1344)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !986, file: !947, line: 588, baseType: !1021, size: 512, align: 512, offset: 1536)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !947, line: 497, size: 512, align: 512, elements: !1022)
!1022 = !{!1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1021, file: !947, line: 498, baseType: !298, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1021, file: !947, line: 499, baseType: !298, size: 64, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1021, file: !947, line: 500, baseType: !298, size: 64, offset: 128)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1021, file: !947, line: 501, baseType: !312, size: 32, offset: 192)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1021, file: !947, line: 502, baseType: !312, size: 32, offset: 224)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1021, file: !947, line: 503, baseType: !115, size: 64, offset: 256)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1021, file: !947, line: 504, baseType: !115, size: 64, offset: 320)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1021, file: !947, line: 505, baseType: !115, size: 64, offset: 384)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1021, file: !947, line: 506, baseType: !1032, size: 64, align: 64, offset: 448)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !947, line: 445, size: 64, align: 64, elements: !1033)
!1033 = !{!1034, !1035}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1032, file: !947, line: 446, baseType: !7, size: 32)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1032, file: !947, line: 447, baseType: !7, size: 32, offset: 32)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !946, file: !947, line: 798, baseType: !1037, size: 384, offset: 3072)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !947, line: 592, size: 384, elements: !1038)
!1038 = !{!1039, !1040, !1041, !1042, !1043, !1044, !1045}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1037, file: !947, line: 593, baseType: !173, size: 128)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1037, file: !947, line: 594, baseType: !115, size: 64, offset: 128)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1037, file: !947, line: 595, baseType: !115, size: 64, offset: 192)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1037, file: !947, line: 596, baseType: !7, size: 32, offset: 256)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1037, file: !947, line: 597, baseType: !102, size: 16, offset: 288)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1037, file: !947, line: 598, baseType: !102, size: 16, offset: 304)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1037, file: !947, line: 600, baseType: !1046, size: 64, offset: 320)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !946, file: !947, line: 799, baseType: !1048, size: 1792, offset: 3456)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !947, line: 610, size: 1792, elements: !1049)
!1049 = !{!1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1139, !1140}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1048, file: !947, line: 611, baseType: !994, size: 192, align: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1048, file: !947, line: 618, baseType: !298, size: 64, offset: 192)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1048, file: !947, line: 619, baseType: !298, size: 64, offset: 256)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1048, file: !947, line: 620, baseType: !298, size: 64, offset: 320)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1048, file: !947, line: 621, baseType: !298, size: 64, offset: 384)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1048, file: !947, line: 622, baseType: !298, size: 64, offset: 448)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1048, file: !947, line: 629, baseType: !812, size: 64, offset: 512)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1048, file: !947, line: 630, baseType: !298, size: 64, offset: 576)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1048, file: !947, line: 631, baseType: !7, size: 32, offset: 640)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1048, file: !947, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1048, file: !947, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1048, file: !947, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1048, file: !947, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1048, file: !947, line: 662, baseType: !1064, size: 512, offset: 704)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !65, line: 118, size: 512, elements: !1065)
!1065 = !{!1066, !1074, !1075, !1080, !1135, !1136, !1137, !1138}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1064, file: !65, line: 119, baseType: !1067, size: 256)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1068, line: 9, size: 256, elements: !1069)
!1068 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1069 = !{!1070, !1071}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1067, file: !1068, line: 10, baseType: !994, size: 192, align: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1067, file: !1068, line: 11, baseType: !1072, size: 64, offset: 192)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1073, line: 29, baseType: !812)
!1073 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1064, file: !65, line: 120, baseType: !1072, size: 64, offset: 256)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1064, file: !65, line: 121, baseType: !1076, size: 64, offset: 320)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!64, !1079}
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1064, file: !65, line: 122, baseType: !1081, size: 64, offset: 384)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !65, line: 159, size: 512, align: 512, elements: !1083)
!1083 = !{!1084, !1109, !1110, !1113, !1118, !1119, !1130, !1134}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1082, file: !65, line: 160, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !65, line: 215, size: 4608, align: 512, elements: !1087)
!1087 = !{!1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1086, file: !65, line: 216, baseType: !815, size: 32)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1086, file: !65, line: 217, baseType: !7, size: 32, offset: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1086, file: !65, line: 218, baseType: !7, size: 32, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1086, file: !65, line: 219, baseType: !7, size: 32, offset: 96)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1086, file: !65, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1086, file: !65, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1086, file: !65, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1086, file: !65, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1086, file: !65, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1086, file: !65, line: 226, baseType: !7, size: 32, offset: 160)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1086, file: !65, line: 227, baseType: !102, size: 16, offset: 192)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1086, file: !65, line: 228, baseType: !102, size: 16, offset: 208)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1086, file: !65, line: 229, baseType: !7, size: 32, offset: 224)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1086, file: !65, line: 235, baseType: !1072, size: 64, offset: 256)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1086, file: !65, line: 236, baseType: !1079, size: 64, offset: 320)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1086, file: !65, line: 237, baseType: !1072, size: 64, offset: 384)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1086, file: !65, line: 238, baseType: !1079, size: 64, offset: 448)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1086, file: !65, line: 239, baseType: !1106, size: 4096, align: 512, offset: 512)
!1106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1082, size: 4096, align: 512, elements: !1107)
!1107 = !{!1108}
!1108 = !DISubrange(count: 8)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1082, file: !65, line: 161, baseType: !7, size: 32, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1082, file: !65, line: 162, baseType: !1111, size: 32, offset: 96)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !101, line: 32, baseType: !1112)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !113, line: 96, baseType: !98)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1082, file: !65, line: 163, baseType: !1114, size: 32, offset: 128)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !577, line: 274, baseType: !1115)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !577, line: 274, size: 32, elements: !1116)
!1116 = !{!1117}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1115, file: !577, line: 274, baseType: !581, size: 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1082, file: !65, line: 164, baseType: !1079, size: 64, offset: 192)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1082, file: !65, line: 165, baseType: !1120, size: 128, offset: 256)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1068, line: 14, size: 128, elements: !1121)
!1121 = !{!1122}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1120, file: !1068, line: 15, baseType: !1123, size: 128)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !995, line: 26, size: 128, elements: !1124)
!1124 = !{!1125, !1129}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1123, file: !995, line: 27, baseType: !1126, size: 64)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !995, line: 12, size: 64, elements: !1127)
!1127 = !{!1128}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1126, file: !995, line: 13, baseType: !999, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1123, file: !995, line: 28, baseType: !999, size: 64, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1082, file: !65, line: 166, baseType: !1131, size: 64, offset: 384)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!1072}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1082, file: !65, line: 167, baseType: !1072, size: 64, offset: 448)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1064, file: !65, line: 123, baseType: !159, size: 8, offset: 448)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1064, file: !65, line: 124, baseType: !159, size: 8, offset: 456)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1064, file: !65, line: 125, baseType: !159, size: 8, offset: 464)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1064, file: !65, line: 126, baseType: !159, size: 8, offset: 472)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1048, file: !947, line: 671, baseType: !1064, size: 512, offset: 1216)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1048, file: !947, line: 679, baseType: !1141, size: 64, offset: 1728)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !946, file: !947, line: 800, baseType: !1143, size: 64, offset: 5248)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1145)
!1145 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !947, line: 800, flags: DIFlagFwdDecl)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !946, file: !947, line: 809, baseType: !1147, size: 64, offset: 5312)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !947, line: 70, flags: DIFlagFwdDecl)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !946, file: !947, line: 825, baseType: !1150, size: 2048, align: 512, offset: 5632)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !947, line: 509, size: 2048, align: 512, elements: !1151)
!1151 = !{!1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1150, file: !947, line: 511, baseType: !298, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1150, file: !947, line: 512, baseType: !298, size: 64, offset: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1150, file: !947, line: 513, baseType: !298, size: 64, offset: 128)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1150, file: !947, line: 514, baseType: !298, size: 64, offset: 192)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1150, file: !947, line: 515, baseType: !298, size: 64, offset: 256)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1150, file: !947, line: 516, baseType: !298, size: 64, offset: 320)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1150, file: !947, line: 518, baseType: !298, size: 64, offset: 384)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1150, file: !947, line: 519, baseType: !298, size: 64, offset: 448)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1150, file: !947, line: 520, baseType: !812, size: 64, offset: 512)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1150, file: !947, line: 522, baseType: !298, size: 64, offset: 576)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1150, file: !947, line: 523, baseType: !298, size: 64, offset: 640)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1150, file: !947, line: 524, baseType: !812, size: 64, offset: 704)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1150, file: !947, line: 526, baseType: !812, size: 64, offset: 768)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1150, file: !947, line: 527, baseType: !298, size: 64, offset: 832)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1150, file: !947, line: 529, baseType: !298, size: 64, offset: 896)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1150, file: !947, line: 530, baseType: !298, size: 64, offset: 960)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1150, file: !947, line: 531, baseType: !298, size: 64, offset: 1024)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1150, file: !947, line: 532, baseType: !298, size: 64, offset: 1088)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1150, file: !947, line: 533, baseType: !298, size: 64, offset: 1152)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1150, file: !947, line: 535, baseType: !298, size: 64, offset: 1216)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1150, file: !947, line: 536, baseType: !298, size: 64, offset: 1280)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1150, file: !947, line: 537, baseType: !298, size: 64, offset: 1344)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1150, file: !947, line: 538, baseType: !298, size: 64, offset: 1408)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1150, file: !947, line: 539, baseType: !298, size: 64, offset: 1472)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1150, file: !947, line: 540, baseType: !298, size: 64, offset: 1536)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1150, file: !947, line: 541, baseType: !298, size: 64, offset: 1600)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1150, file: !947, line: 542, baseType: !298, size: 64, offset: 1664)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1150, file: !947, line: 543, baseType: !298, size: 64, offset: 1728)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !946, file: !947, line: 833, baseType: !7, size: 32, offset: 7680)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !946, file: !947, line: 836, baseType: !7, size: 32, offset: 7712)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !946, file: !947, line: 837, baseType: !98, size: 32, offset: 7744)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !946, file: !947, line: 838, baseType: !1184, size: 64, offset: 7808)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1186)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !356, line: 19, baseType: !355)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !946, file: !947, line: 839, baseType: !1188, size: 64, offset: 7872)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !946, file: !947, line: 840, baseType: !1186, size: 64, offset: 7936)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !946, file: !947, line: 841, baseType: !96, size: 64, offset: 8000)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !946, file: !947, line: 843, baseType: !102, size: 16, offset: 8064)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !946, file: !947, line: 845, baseType: !102, size: 16, offset: 8080)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !946, file: !947, line: 848, baseType: !98, size: 32, offset: 8096)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !946, file: !947, line: 849, baseType: !1195, size: 32, offset: 8128)
!1195 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !947, line: 718, size: 32, elements: !1196)
!1196 = !{!1197, !1204}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1195, file: !947, line: 724, baseType: !1198, size: 32)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1195, file: !947, line: 719, size: 32, elements: !1199)
!1199 = !{!1200, !1201, !1202, !1203}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1198, file: !947, line: 720, baseType: !159, size: 8)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1198, file: !947, line: 721, baseType: !159, size: 8, offset: 8)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1198, file: !947, line: 722, baseType: !159, size: 8, offset: 16)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1198, file: !947, line: 723, baseType: !159, size: 8, offset: 24)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1195, file: !947, line: 725, baseType: !312, size: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !946, file: !947, line: 850, baseType: !173, size: 128, offset: 8192)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !946, file: !947, line: 851, baseType: !1207, size: 64, offset: 8320)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !947, line: 60, flags: DIFlagFwdDecl)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !946, file: !947, line: 855, baseType: !115, size: 64, offset: 8384)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !946, file: !947, line: 856, baseType: !159, size: 8, offset: 8448)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !946, file: !947, line: 857, baseType: !159, size: 8, offset: 8456)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !946, file: !947, line: 858, baseType: !98, size: 32, offset: 8480)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !946, file: !947, line: 859, baseType: !173, size: 128, offset: 8512)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !946, file: !947, line: 860, baseType: !98, size: 32, offset: 8640)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !946, file: !947, line: 861, baseType: !173, size: 128, offset: 8704)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !946, file: !947, line: 873, baseType: !1217, size: 256, offset: 8832)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !947, line: 376, size: 256, elements: !1218)
!1218 = !{!1219, !1220, !1221, !1222}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1217, file: !947, line: 381, baseType: !115, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1217, file: !947, line: 384, baseType: !300, size: 64, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1217, file: !947, line: 389, baseType: !300, size: 64, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1217, file: !947, line: 392, baseType: !300, size: 64, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !946, file: !947, line: 875, baseType: !173, size: 128, offset: 9088)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !946, file: !947, line: 877, baseType: !1225, size: 320, offset: 9216)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1226, line: 86, size: 320, elements: !1227)
!1226 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1227 = !{!1228, !1229, !1230}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1225, file: !1226, line: 87, baseType: !98, size: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1225, file: !1226, line: 88, baseType: !173, size: 128, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1225, file: !1226, line: 89, baseType: !173, size: 128, offset: 192)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !946, file: !947, line: 878, baseType: !994, size: 192, align: 64, offset: 9536)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !946, file: !947, line: 881, baseType: !1233, size: 64, offset: 9728)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !20, line: 733, size: 10240, elements: !1235)
!1235 = !{!1236, !1665}
!1236 = !DIDerivedType(tag: DW_TAG_member, scope: !1234, file: !20, line: 734, baseType: !1237, size: 10240)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1234, file: !20, line: 734, size: 10240, elements: !1238)
!1238 = !{!1239, !1243, !1256, !1261, !1262, !1263, !1264, !1265, !1266, !1275, !1276, !1277, !1283, !1284, !1285, !1286, !1287, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1324, !1334, !1337, !1385, !1386, !1387, !1390, !1651, !1652, !1655, !1656, !1657, !1663, !1664}
!1239 = !DIDerivedType(tag: DW_TAG_member, scope: !1237, file: !20, line: 739, baseType: !1240, size: 512, align: 512)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1237, file: !20, line: 739, size: 512, align: 512, elements: !1241)
!1241 = !{!1242}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1240, file: !20, line: 747, baseType: !125, size: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1237, file: !20, line: 750, baseType: !1244, size: 128, offset: 512)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1245, line: 218, size: 128, elements: !1246)
!1245 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1246 = !{!1247, !1254, !1255}
!1247 = !DIDerivedType(tag: DW_TAG_member, scope: !1244, file: !1245, line: 219, baseType: !1248, size: 32)
!1248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1244, file: !1245, line: 219, size: 32, elements: !1249)
!1249 = !{!1250, !1251}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1248, file: !1245, line: 220, baseType: !135, size: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1248, file: !1245, line: 221, baseType: !1252)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1245, line: 197, baseType: !1253)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1245, line: 197, elements: !722)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1244, file: !1245, line: 223, baseType: !7, size: 32, offset: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1244, file: !1245, line: 224, baseType: !96, size: 64, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1237, file: !20, line: 752, baseType: !1257, size: 64, offset: 640)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!115, !1260, !115, !115, !115, !115}
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1237, file: !20, line: 756, baseType: !115, size: 64, offset: 704)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1237, file: !20, line: 757, baseType: !115, size: 64, offset: 768)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1237, file: !20, line: 760, baseType: !115, size: 64, offset: 832)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1237, file: !20, line: 761, baseType: !115, size: 64, offset: 896)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1237, file: !20, line: 763, baseType: !115, size: 64, offset: 960)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1237, file: !20, line: 764, baseType: !1267, size: 64, offset: 1024)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1269, line: 299, baseType: !1270)
!1269 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1269, line: 299, size: 64, elements: !1271)
!1271 = !{!1272}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1270, file: !1269, line: 299, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1274, line: 18, baseType: !115)
!1274 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1237, file: !20, line: 773, baseType: !125, size: 32, offset: 1088)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1237, file: !20, line: 785, baseType: !125, size: 32, offset: 1120)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1237, file: !20, line: 795, baseType: !1278, size: 64, offset: 1152)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !20, line: 726, size: 128, elements: !1280)
!1280 = !{!1281, !1282}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1279, file: !20, line: 727, baseType: !298, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1279, file: !20, line: 728, baseType: !98, size: 32, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1237, file: !20, line: 801, baseType: !115, size: 64, offset: 1216)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1237, file: !20, line: 804, baseType: !806, size: 64, offset: 1280)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1237, file: !20, line: 806, baseType: !98, size: 32, offset: 1344)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1237, file: !20, line: 808, baseType: !135, size: 32, offset: 1376)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1237, file: !20, line: 823, baseType: !1288, size: 320, offset: 1408)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1289, line: 48, size: 320, elements: !1290)
!1289 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1290 = !{!1291, !1292, !1293, !1294, !1295}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1288, file: !1289, line: 49, baseType: !806, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1288, file: !1289, line: 55, baseType: !806, size: 64, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1288, file: !1289, line: 57, baseType: !817, size: 32, offset: 128)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1288, file: !1289, line: 59, baseType: !815, size: 32, offset: 160)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1288, file: !1289, line: 60, baseType: !173, size: 128, offset: 192)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1237, file: !20, line: 825, baseType: !173, size: 128, offset: 1728)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1237, file: !20, line: 845, baseType: !98, size: 32, offset: 1856)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1237, file: !20, line: 849, baseType: !115, size: 64, offset: 1920)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1237, file: !20, line: 850, baseType: !115, size: 64, offset: 1984)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1237, file: !20, line: 852, baseType: !115, size: 64, offset: 2048)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1237, file: !20, line: 853, baseType: !115, size: 64, offset: 2112)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1237, file: !20, line: 854, baseType: !808, size: 64, offset: 2176)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1237, file: !20, line: 855, baseType: !115, size: 64, offset: 2240)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1237, file: !20, line: 856, baseType: !115, size: 64, offset: 2304)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1237, file: !20, line: 857, baseType: !115, size: 64, offset: 2368)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1237, file: !20, line: 858, baseType: !115, size: 64, offset: 2432)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1237, file: !20, line: 865, baseType: !581, size: 32, offset: 2496)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1237, file: !20, line: 867, baseType: !135, size: 32, offset: 2528)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1237, file: !20, line: 869, baseType: !115, size: 64, offset: 2560)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1237, file: !20, line: 869, baseType: !115, size: 64, offset: 2624)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1237, file: !20, line: 869, baseType: !115, size: 64, offset: 2688)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1237, file: !20, line: 869, baseType: !115, size: 64, offset: 2752)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1237, file: !20, line: 870, baseType: !115, size: 64, offset: 2816)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1237, file: !20, line: 870, baseType: !115, size: 64, offset: 2880)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1237, file: !20, line: 870, baseType: !115, size: 64, offset: 2944)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1237, file: !20, line: 871, baseType: !115, size: 64, offset: 3008)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1237, file: !20, line: 871, baseType: !115, size: 64, offset: 3072)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1237, file: !20, line: 871, baseType: !115, size: 64, offset: 3136)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1237, file: !20, line: 871, baseType: !115, size: 64, offset: 3200)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1237, file: !20, line: 873, baseType: !1321, size: 3328, offset: 3264)
!1321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 3328, elements: !1322)
!1322 = !{!1323}
!1323 = !DISubrange(count: 52)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1237, file: !20, line: 875, baseType: !1325, size: 1280, offset: 6592)
!1325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1326, size: 1280, elements: !913)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1327, line: 22, size: 320, elements: !1328)
!1327 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1328 = !{!1329, !1330, !1331, !1332}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1326, file: !1327, line: 23, baseType: !815, size: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1326, file: !1327, line: 24, baseType: !812, size: 64, offset: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1326, file: !1327, line: 26, baseType: !173, size: 128, offset: 128)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1326, file: !1327, line: 28, baseType: !1333, size: 64, offset: 256)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1237, file: !20, line: 877, baseType: !1335, size: 64, offset: 7872)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !20, line: 877, flags: DIFlagFwdDecl)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1237, file: !20, line: 880, baseType: !1338, size: 1088, offset: 7936)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1339, line: 72, baseType: !1340)
!1339 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1339, line: 23, size: 1088, elements: !1341)
!1341 = !{!1342, !1343, !1344, !1345, !1346, !1349, !1350, !1351, !1352, !1379, !1380, !1381}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1340, file: !1339, line: 28, baseType: !298, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1340, file: !1339, line: 38, baseType: !808, size: 64, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1340, file: !1339, line: 40, baseType: !115, size: 64, offset: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1340, file: !1339, line: 43, baseType: !1288, size: 320, offset: 192)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1340, file: !1339, line: 44, baseType: !1347, size: 64, offset: 512)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1339, line: 44, flags: DIFlagFwdDecl)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1340, file: !1339, line: 48, baseType: !115, size: 64, offset: 576)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1340, file: !1339, line: 59, baseType: !802, size: 256, offset: 640)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1340, file: !1339, line: 60, baseType: !96, size: 64, offset: 896)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1340, file: !1339, line: 61, baseType: !1353, size: 64, offset: 960)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1355)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1356, line: 13, size: 1216, elements: !1357)
!1356 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1357 = !{!1358, !1359, !1360, !1361, !1362, !1363, !1364, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1355, file: !1356, line: 14, baseType: !96, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1355, file: !1356, line: 15, baseType: !115, size: 64, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1355, file: !1356, line: 17, baseType: !115, size: 64, offset: 128)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1355, file: !1356, line: 17, baseType: !115, size: 64, offset: 192)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1355, file: !1356, line: 18, baseType: !115, size: 64, offset: 256)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1355, file: !1356, line: 18, baseType: !115, size: 64, offset: 320)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1355, file: !1356, line: 19, baseType: !1365, size: 64, offset: 384)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1355, file: !1356, line: 21, baseType: !387, size: 64, offset: 448)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1355, file: !1356, line: 23, baseType: !387, size: 64, offset: 512)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1355, file: !1356, line: 24, baseType: !387, size: 64, offset: 576)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1355, file: !1356, line: 25, baseType: !387, size: 64, offset: 640)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1355, file: !1356, line: 26, baseType: !387, size: 64, offset: 704)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1355, file: !1356, line: 27, baseType: !387, size: 64, offset: 768)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1355, file: !1356, line: 28, baseType: !387, size: 64, offset: 832)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1355, file: !1356, line: 29, baseType: !387, size: 64, offset: 896)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1355, file: !1356, line: 30, baseType: !387, size: 64, offset: 960)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1355, file: !1356, line: 31, baseType: !387, size: 64, offset: 1024)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1355, file: !1356, line: 32, baseType: !387, size: 64, offset: 1088)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1355, file: !1356, line: 33, baseType: !387, size: 64, offset: 1152)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1340, file: !1339, line: 63, baseType: !125, size: 32, offset: 1024)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1340, file: !1339, line: 69, baseType: !169, size: 16, offset: 1056)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1340, file: !1339, line: 70, baseType: !1382, size: 16, offset: 1072)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !160, line: 18, baseType: !1383)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !162, line: 23, baseType: !1384)
!1384 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1237, file: !20, line: 882, baseType: !115, size: 64, offset: 9024)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1237, file: !20, line: 885, baseType: !135, size: 32, offset: 9088)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1237, file: !20, line: 886, baseType: !1388, size: 64, offset: 9152)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !20, line: 732, flags: DIFlagFwdDecl)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1237, file: !20, line: 901, baseType: !1391, size: 64, offset: 9216)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1393, line: 68, size: 4800, elements: !1394)
!1393 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1394 = !{!1395, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1434, !1435, !1438, !1439, !1549, !1550, !1562, !1632, !1633, !1647, !1649}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1392, file: !1393, line: 69, baseType: !1396, size: 576)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1393, line: 23, size: 576, elements: !1397)
!1397 = !{!1398, !1399}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1396, file: !1393, line: 24, baseType: !312, size: 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, scope: !1396, file: !1393, line: 25, baseType: !1400, size: 512, offset: 64)
!1400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1396, file: !1393, line: 25, size: 512, elements: !1401)
!1401 = !{!1402, !1411}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1400, file: !1393, line: 26, baseType: !1403, size: 480)
!1403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1404, size: 480, elements: !1409)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1393, line: 17, size: 96, elements: !1405)
!1405 = !{!1406, !1407, !1408}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1404, file: !1393, line: 18, baseType: !312, size: 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1404, file: !1393, line: 19, baseType: !312, size: 32, offset: 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1404, file: !1393, line: 20, baseType: !312, size: 32, offset: 64)
!1409 = !{!1410}
!1410 = !DISubrange(count: 5)
!1411 = !DIDerivedType(tag: DW_TAG_member, scope: !1400, file: !1393, line: 27, baseType: !1412, size: 128)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1400, file: !1393, line: 27, size: 128, elements: !1413)
!1413 = !{!1414, !1416}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1412, file: !1393, line: 28, baseType: !1415, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1412, file: !1393, line: 29, baseType: !1415, size: 64, offset: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1392, file: !1393, line: 70, baseType: !1396, size: 576, offset: 576)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1392, file: !1393, line: 71, baseType: !1396, size: 576, offset: 1152)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1392, file: !1393, line: 72, baseType: !1391, size: 64, offset: 1728)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1392, file: !1393, line: 73, baseType: !98, size: 32, offset: 1792)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1392, file: !1393, line: 74, baseType: !541, size: 32, offset: 1824)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1392, file: !1393, line: 75, baseType: !550, size: 32, offset: 1856)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1392, file: !1393, line: 76, baseType: !1424, size: 192, offset: 1920)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1425, line: 9, size: 192, elements: !1426)
!1425 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1426 = !{!1427, !1428, !1432, !1433}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1424, file: !1425, line: 10, baseType: !806, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1424, file: !1425, line: 11, baseType: !1429, size: 64, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1431)
!1431 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1425, line: 7, flags: DIFlagFwdDecl)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1424, file: !1425, line: 12, baseType: !7, size: 32, offset: 128)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1424, file: !1425, line: 13, baseType: !904, size: 32, offset: 160)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1392, file: !1393, line: 77, baseType: !115, size: 64, offset: 2112)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1392, file: !1393, line: 80, baseType: !1436, size: 8, offset: 2176)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !101, line: 35, baseType: !1437)
!1437 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1392, file: !1393, line: 88, baseType: !173, size: 128, offset: 2240)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1392, file: !1393, line: 89, baseType: !1440, size: 64, offset: 2368)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1442, line: 195, size: 1728, elements: !1443)
!1442 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1443 = !{!1444, !1445, !1448, !1453, !1454, !1457, !1458, !1465, !1466, !1467, !1468, !1471, !1472, !1473, !1474, !1475, !1513, !1534}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1441, file: !1442, line: 196, baseType: !904, size: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1441, file: !1442, line: 197, baseType: !1446, size: 32, offset: 32)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1442, line: 28, baseType: !1447)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !101, line: 104, baseType: !383)
!1448 = !DIDerivedType(tag: DW_TAG_member, scope: !1441, file: !1442, line: 198, baseType: !1449, size: 192, offset: 64)
!1449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1441, file: !1442, line: 198, size: 192, elements: !1450)
!1450 = !{!1451, !1452}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1449, file: !1442, line: 199, baseType: !173, size: 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1449, file: !1442, line: 200, baseType: !994, size: 192, align: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1441, file: !1442, line: 205, baseType: !1288, size: 320, offset: 256)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1441, file: !1442, line: 206, baseType: !1455, size: 64, offset: 576)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1442, line: 206, flags: DIFlagFwdDecl)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1441, file: !1442, line: 207, baseType: !96, size: 64, offset: 640)
!1458 = !DIDerivedType(tag: DW_TAG_member, scope: !1441, file: !1442, line: 208, baseType: !1459, size: 64, offset: 704)
!1459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1441, file: !1442, line: 208, size: 64, elements: !1460)
!1460 = !{!1461, !1464}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1459, file: !1442, line: 209, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1463, line: 8, baseType: !813)
!1463 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1459, file: !1442, line: 210, baseType: !1462, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1441, file: !1442, line: 212, baseType: !1462, size: 64, offset: 768)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1441, file: !1442, line: 213, baseType: !541, size: 32, offset: 832)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1441, file: !1442, line: 214, baseType: !550, size: 32, offset: 864)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1441, file: !1442, line: 215, baseType: !1469, size: 32, offset: 896)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1442, line: 31, baseType: !1470)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !101, line: 110, baseType: !312)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1441, file: !1442, line: 216, baseType: !102, size: 16, offset: 928)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1441, file: !1442, line: 217, baseType: !102, size: 16, offset: 944)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1441, file: !1442, line: 221, baseType: !1384, size: 16, offset: 960)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1441, file: !1442, line: 228, baseType: !115, size: 64, offset: 1024)
!1475 = !DIDerivedType(tag: DW_TAG_member, scope: !1441, file: !1442, line: 245, baseType: !1476, size: 320, offset: 1088)
!1476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1441, file: !1442, line: 245, size: 320, elements: !1477)
!1477 = !{!1478, !1505}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1476, file: !1442, line: 246, baseType: !1479, size: 320)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1442, line: 114, size: 320, elements: !1480)
!1480 = !{!1481, !1482, !1494, !1497, !1504}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1479, file: !1442, line: 116, baseType: !115, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, scope: !1479, file: !1442, line: 117, baseType: !1483, size: 64, offset: 64)
!1483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1479, file: !1442, line: 117, size: 64, elements: !1484)
!1484 = !{!1485, !1493}
!1485 = !DIDerivedType(tag: DW_TAG_member, scope: !1483, file: !1442, line: 118, baseType: !1486, size: 64)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1483, file: !1442, line: 118, size: 64, elements: !1487)
!1487 = !{!1488, !1489}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1486, file: !1442, line: 120, baseType: !169, size: 16)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1486, file: !1442, line: 121, baseType: !1490, size: 48, offset: 16)
!1490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 48, elements: !1491)
!1491 = !{!1492}
!1492 = !DISubrange(count: 6)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1483, file: !1442, line: 127, baseType: !115, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1479, file: !1442, line: 129, baseType: !1495, size: 64, offset: 128)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1442, line: 102, flags: DIFlagFwdDecl)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1479, file: !1442, line: 130, baseType: !1498, size: 64, offset: 192)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1442, line: 108, size: 192, elements: !1500)
!1500 = !{!1501, !1502, !1503}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1499, file: !1442, line: 109, baseType: !859, size: 128, align: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1499, file: !1442, line: 110, baseType: !904, size: 32, offset: 128)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1499, file: !1442, line: 111, baseType: !1436, size: 8, offset: 160)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1479, file: !1442, line: 131, baseType: !92, size: 64, offset: 256)
!1505 = !DIDerivedType(tag: DW_TAG_member, scope: !1476, file: !1442, line: 247, baseType: !1506, size: 320)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1476, file: !1442, line: 247, size: 320, elements: !1507)
!1507 = !{!1508, !1509, !1510, !1511, !1512}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1506, file: !1442, line: 248, baseType: !115, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1506, file: !1442, line: 249, baseType: !115, size: 64, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1506, file: !1442, line: 250, baseType: !1495, size: 64, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1506, file: !1442, line: 251, baseType: !1498, size: 64, offset: 192)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1506, file: !1442, line: 252, baseType: !462, size: 64, offset: 256)
!1513 = !DIDerivedType(tag: DW_TAG_member, scope: !1441, file: !1442, line: 260, baseType: !1514, size: 256, offset: 1408)
!1514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1441, file: !1442, line: 260, size: 256, elements: !1515)
!1515 = !{!1516, !1522}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1514, file: !1442, line: 261, baseType: !1517, size: 256)
!1517 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1442, line: 134, size: 256, elements: !1518)
!1518 = !{!1519, !1520}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1517, file: !1442, line: 135, baseType: !96, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1517, file: !1442, line: 136, baseType: !1521, size: 256)
!1521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 256, elements: !913)
!1522 = !DIDerivedType(tag: DW_TAG_member, scope: !1514, file: !1442, line: 262, baseType: !1523, size: 256)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1514, file: !1442, line: 262, size: 256, elements: !1524)
!1524 = !{!1525, !1526}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1523, file: !1442, line: 264, baseType: !173, size: 128)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1523, file: !1442, line: 265, baseType: !1527, size: 128, offset: 128)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1528, line: 22, size: 128, elements: !1529)
!1528 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1529 = !{!1530, !1533}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1527, file: !1528, line: 23, baseType: !1531, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1528, line: 23, flags: DIFlagFwdDecl)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1527, file: !1528, line: 24, baseType: !115, size: 64, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1441, file: !1442, line: 280, baseType: !1535, size: 64, offset: 1664)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1442, line: 176, size: 192, elements: !1537)
!1537 = !{!1538, !1547, !1548}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1536, file: !1442, line: 177, baseType: !1539, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1442, line: 171, baseType: !1540)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!98, !1440, !1543, !1545, !1440}
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1496)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1517)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1536, file: !1442, line: 178, baseType: !1440, size: 64, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1536, file: !1442, line: 179, baseType: !1495, size: 64, offset: 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1392, file: !1393, line: 90, baseType: !1288, size: 320, offset: 2432)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1392, file: !1393, line: 97, baseType: !1551, size: 256, offset: 2752)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1552, line: 98, size: 256, elements: !1553)
!1552 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1553 = !{!1554, !1555, !1556}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1551, file: !1552, line: 99, baseType: !806, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1551, file: !1552, line: 100, baseType: !173, size: 128, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1551, file: !1552, line: 101, baseType: !1557, size: 64, offset: 192)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1552, line: 21, baseType: !1558)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{null, !1561}
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1392, file: !1393, line: 99, baseType: !1563, size: 768, offset: 3008)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !88, line: 199, size: 768, elements: !1564)
!1564 = !{!1565, !1570}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1563, file: !88, line: 200, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!98, !1569}
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1563, file: !88, line: 201, baseType: !1571, size: 704, offset: 64)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !88, line: 193, size: 704, elements: !1572)
!1572 = !{!1573, !1631}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1571, file: !88, line: 195, baseType: !1574, size: 640)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !88, line: 173, size: 640, elements: !1575)
!1575 = !{!1576, !1588, !1600, !1601, !1621, !1622, !1624, !1630}
!1576 = !DIDerivedType(tag: DW_TAG_member, scope: !1574, file: !88, line: 174, baseType: !1577, size: 192)
!1577 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1574, file: !88, line: 174, size: 192, elements: !1578)
!1578 = !{!1579, !1587}
!1579 = !DIDerivedType(tag: DW_TAG_member, scope: !1577, file: !88, line: 175, baseType: !1580, size: 192)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1577, file: !88, line: 175, size: 192, elements: !1581)
!1581 = !{!1582, !1583, !1584, !1585, !1586}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1580, file: !88, line: 176, baseType: !109, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1580, file: !88, line: 177, baseType: !98, size: 32, offset: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1580, file: !88, line: 178, baseType: !98, size: 32, offset: 96)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1580, file: !88, line: 179, baseType: !98, size: 32, offset: 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1580, file: !88, line: 180, baseType: !98, size: 32, offset: 160)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1577, file: !88, line: 182, baseType: !859, size: 128, align: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1574, file: !88, line: 184, baseType: !1589, size: 64, offset: 192)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1591, line: 26, size: 256, elements: !1592)
!1591 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1592 = !{!1593, !1594}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1590, file: !1591, line: 27, baseType: !7, size: 32)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1590, file: !1591, line: 28, baseType: !1595, size: 192, offset: 64)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1596, line: 43, size: 192, elements: !1597)
!1596 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1597 = !{!1598, !1599}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1595, file: !1596, line: 44, baseType: !815, size: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1595, file: !1596, line: 45, baseType: !173, size: 128, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1574, file: !88, line: 185, baseType: !109, size: 64, offset: 256)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1574, file: !88, line: 186, baseType: !1602, size: 64, offset: 320)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !88, line: 204, size: 960, elements: !1604)
!1604 = !{!1605, !1606, !1610, !1617}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1603, file: !88, line: 205, baseType: !1563, size: 768)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1603, file: !88, line: 206, baseType: !1607, size: 64, offset: 768)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!1569, !1602}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1603, file: !88, line: 207, baseType: !1611, size: 64, offset: 832)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{null, !1614, !1615, !1616}
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1603, file: !88, line: 209, baseType: !1618, size: 64, offset: 896)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!98, !1614, !109}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1574, file: !88, line: 187, baseType: !1569, size: 64, offset: 384)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1574, file: !88, line: 188, baseType: !1623, size: 64, offset: 448)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1574, file: !88, line: 189, baseType: !1625, size: 64, offset: 512)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !88, line: 157, size: 256, elements: !1627)
!1627 = !{!1628, !1629}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1626, file: !88, line: 158, baseType: !994, size: 192, align: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1626, file: !88, line: 159, baseType: !1614, size: 64, offset: 192)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1574, file: !88, line: 190, baseType: !335, size: 64, offset: 576)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1571, file: !88, line: 196, baseType: !1126, size: 64, offset: 640)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1392, file: !1393, line: 100, baseType: !1614, size: 64, offset: 3776)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1392, file: !1393, line: 102, baseType: !1634, size: 64, offset: 3840)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1393, line: 107, size: 1152, elements: !1636)
!1636 = !{!1637, !1638, !1639, !1640, !1641, !1645}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1635, file: !1393, line: 108, baseType: !339, size: 128)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1635, file: !1393, line: 109, baseType: !1391, size: 64, offset: 128)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1635, file: !1393, line: 110, baseType: !541, size: 32, offset: 192)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1635, file: !1393, line: 111, baseType: !125, size: 32, offset: 224)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1635, file: !1393, line: 112, baseType: !1642, size: 640, offset: 256)
!1642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !806, size: 640, elements: !1643)
!1643 = !{!1644}
!1644 = !DISubrange(count: 10)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1635, file: !1393, line: 113, baseType: !1646, size: 256, offset: 896)
!1646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !806, size: 256, elements: !913)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1392, file: !1393, line: 103, baseType: !1648, size: 640, offset: 3904)
!1648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 640, elements: !1643)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1392, file: !1393, line: 104, baseType: !1650, size: 256, offset: 4544)
!1650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 256, elements: !913)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1237, file: !20, line: 904, baseType: !1260, size: 64, offset: 9280)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1237, file: !20, line: 906, baseType: !1653, size: 64, offset: 9344)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !20, line: 906, flags: DIFlagFwdDecl)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1237, file: !20, line: 930, baseType: !125, size: 32, offset: 9408)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1237, file: !20, line: 933, baseType: !125, size: 32, offset: 9440)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1237, file: !20, line: 935, baseType: !1658, size: 64, offset: 9472)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !76, line: 103, size: 64, elements: !1659)
!1659 = !{!1660}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1658, file: !76, line: 104, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !76, line: 101, flags: DIFlagFwdDecl)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1237, file: !20, line: 940, baseType: !806, size: 64, offset: 9536)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1237, file: !20, line: 942, baseType: !1551, size: 256, offset: 9600)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1234, file: !20, line: 986, baseType: !1666, offset: 10240)
!1666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, elements: !332)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !946, file: !947, line: 882, baseType: !1233, size: 64, offset: 9792)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !946, file: !947, line: 884, baseType: !98, size: 32, offset: 9856)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !946, file: !947, line: 885, baseType: !98, size: 32, offset: 9888)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !946, file: !947, line: 886, baseType: !98, size: 32, offset: 9920)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !946, file: !947, line: 888, baseType: !98, size: 32, offset: 9952)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !946, file: !947, line: 890, baseType: !115, size: 64, offset: 9984)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !946, file: !947, line: 893, baseType: !7, size: 32, offset: 10048)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !946, file: !947, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !946, file: !947, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !946, file: !947, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !946, file: !947, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !946, file: !947, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !946, file: !947, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !946, file: !947, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !946, file: !947, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !946, file: !947, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !946, file: !947, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !946, file: !947, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !946, file: !947, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !946, file: !947, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !946, file: !947, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !946, file: !947, line: 969, baseType: !115, size: 64, offset: 10176)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !946, file: !947, line: 971, baseType: !1690, size: 448, offset: 10240)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !70, line: 25, size: 448, elements: !1691)
!1691 = !{!1692, !1693, !1698}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1690, file: !70, line: 26, baseType: !115, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1690, file: !70, line: 27, baseType: !1694, size: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!387, !1697}
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, scope: !1690, file: !70, line: 28, baseType: !1699, size: 320, offset: 128)
!1699 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1690, file: !70, line: 28, size: 320, elements: !1700)
!1700 = !{!1701, !1711, !1736}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1699, file: !70, line: 37, baseType: !1702, size: 320)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1699, file: !70, line: 30, size: 320, elements: !1703)
!1703 = !{!1704, !1706, !1707, !1708, !1709, !1710}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1702, file: !70, line: 31, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1702, file: !70, line: 32, baseType: !312, size: 32, offset: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1702, file: !70, line: 33, baseType: !312, size: 32, offset: 96)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1702, file: !70, line: 34, baseType: !312, size: 32, offset: 128)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1702, file: !70, line: 35, baseType: !298, size: 64, offset: 192)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1702, file: !70, line: 36, baseType: !1705, size: 64, offset: 256)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1699, file: !70, line: 47, baseType: !1712, size: 192)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1699, file: !70, line: 39, size: 192, elements: !1713)
!1713 = !{!1714, !1715, !1716, !1735}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1712, file: !70, line: 40, baseType: !1111, size: 32)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1712, file: !70, line: 41, baseType: !69, size: 32, offset: 32)
!1716 = !DIDerivedType(tag: DW_TAG_member, scope: !1712, file: !70, line: 42, baseType: !1717, size: 64, offset: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1712, file: !70, line: 42, size: 64, elements: !1718)
!1718 = !{!1719, !1727}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1717, file: !70, line: 43, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1722, line: 7, size: 128, elements: !1723)
!1722 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1723 = !{!1724, !1726}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1721, file: !1722, line: 8, baseType: !1725, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !113, line: 93, baseType: !119)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1721, file: !1722, line: 9, baseType: !119, size: 64, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1717, file: !70, line: 44, baseType: !1728, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1730, line: 7, size: 64, elements: !1731)
!1730 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1731 = !{!1732, !1734}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1729, file: !1730, line: 8, baseType: !1733, size: 32)
!1733 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1730, line: 5, baseType: !383)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1729, file: !1730, line: 9, baseType: !383, size: 32, offset: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1712, file: !70, line: 46, baseType: !298, size: 64, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1699, file: !70, line: 55, baseType: !1737, size: 256)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1699, file: !70, line: 49, size: 256, elements: !1738)
!1738 = !{!1739, !1747, !1748, !1749, !1750}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1737, file: !70, line: 50, baseType: !1740, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1742, line: 36, size: 64, elements: !1743)
!1742 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!1743 = !{!1744, !1745, !1746}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1741, file: !1742, line: 37, baseType: !98, size: 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1741, file: !1742, line: 38, baseType: !1384, size: 16, offset: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1741, file: !1742, line: 39, baseType: !1384, size: 16, offset: 48)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1737, file: !70, line: 51, baseType: !98, size: 32, offset: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1737, file: !70, line: 52, baseType: !98, size: 32, offset: 96)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1737, file: !70, line: 53, baseType: !115, size: 64, offset: 128)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1737, file: !70, line: 54, baseType: !115, size: 64, offset: 192)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !946, file: !947, line: 973, baseType: !1752, size: 32, offset: 10688)
!1752 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !101, line: 27, baseType: !1753)
!1753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !113, line: 28, baseType: !98)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !946, file: !947, line: 974, baseType: !1752, size: 32, offset: 10720)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !946, file: !947, line: 978, baseType: !115, size: 64, offset: 10752)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !946, file: !947, line: 987, baseType: !945, size: 64, offset: 10816)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !946, file: !947, line: 990, baseType: !945, size: 64, offset: 10880)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !946, file: !947, line: 995, baseType: !173, size: 128, offset: 10944)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !946, file: !947, line: 996, baseType: !173, size: 128, offset: 11072)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !946, file: !947, line: 997, baseType: !945, size: 64, offset: 11200)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !946, file: !947, line: 1005, baseType: !173, size: 128, offset: 11264)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !946, file: !947, line: 1006, baseType: !173, size: 128, offset: 11392)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !946, file: !947, line: 1009, baseType: !900, size: 64, offset: 11520)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !946, file: !947, line: 1010, baseType: !1765, size: 512, offset: 11584)
!1765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 512, elements: !913)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !946, file: !947, line: 1011, baseType: !173, size: 128, offset: 12096)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !946, file: !947, line: 1012, baseType: !173, size: 128, offset: 12224)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !946, file: !947, line: 1014, baseType: !1589, size: 64, offset: 12352)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !946, file: !947, line: 1017, baseType: !352, size: 64, offset: 12416)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !946, file: !947, line: 1020, baseType: !352, size: 64, offset: 12480)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !946, file: !947, line: 1023, baseType: !96, size: 64, offset: 12544)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !946, file: !947, line: 1025, baseType: !298, size: 64, offset: 12608)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !946, file: !947, line: 1026, baseType: !298, size: 64, offset: 12672)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !946, file: !947, line: 1031, baseType: !298, size: 64, offset: 12736)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !946, file: !947, line: 1032, baseType: !1776, size: 192, offset: 12800)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !947, line: 324, size: 192, elements: !1777)
!1777 = !{!1778, !1779, !1780}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1776, file: !947, line: 326, baseType: !298, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1776, file: !947, line: 327, baseType: !298, size: 64, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1776, file: !947, line: 328, baseType: !815, size: 32, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !946, file: !947, line: 1041, baseType: !115, size: 64, offset: 12992)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !946, file: !947, line: 1042, baseType: !115, size: 64, offset: 13056)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !946, file: !947, line: 1045, baseType: !298, size: 64, offset: 13120)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !946, file: !947, line: 1048, baseType: !298, size: 64, offset: 13184)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !946, file: !947, line: 1051, baseType: !115, size: 64, offset: 13248)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !946, file: !947, line: 1052, baseType: !115, size: 64, offset: 13312)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !946, file: !947, line: 1055, baseType: !1788, size: 640, offset: 13376)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1789, line: 132, size: 640, elements: !1790)
!1789 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1790 = !{!1791, !1797, !1798}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1788, file: !1789, line: 133, baseType: !1792, size: 576)
!1792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1793, size: 576, elements: !463)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1789, line: 117, size: 192, elements: !1794)
!1794 = !{!1795, !1796}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1793, file: !1789, line: 118, baseType: !298, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1793, file: !1789, line: 119, baseType: !1120, size: 128, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1788, file: !1789, line: 134, baseType: !7, size: 32, offset: 576)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1788, file: !1789, line: 135, baseType: !7, size: 32, offset: 608)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !946, file: !947, line: 1058, baseType: !1800, size: 448, offset: 14016)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1789, line: 144, size: 448, elements: !1801)
!1801 = !{!1802, !1803, !1804}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1800, file: !1789, line: 145, baseType: !859, size: 128, align: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1800, file: !1789, line: 146, baseType: !802, size: 256, offset: 128)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1800, file: !1789, line: 147, baseType: !7, size: 32, offset: 384)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !946, file: !947, line: 1064, baseType: !1806, size: 64, offset: 14464)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1808)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1809, line: 110, size: 1472, elements: !1810)
!1809 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1810 = !{!1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1860, !1861, !1862, !1870}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1808, file: !1809, line: 111, baseType: !806, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1808, file: !1809, line: 112, baseType: !541, size: 32, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1808, file: !1809, line: 113, baseType: !550, size: 32, offset: 96)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1808, file: !1809, line: 114, baseType: !541, size: 32, offset: 128)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1808, file: !1809, line: 115, baseType: !550, size: 32, offset: 160)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1808, file: !1809, line: 116, baseType: !541, size: 32, offset: 192)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1808, file: !1809, line: 117, baseType: !550, size: 32, offset: 224)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1808, file: !1809, line: 118, baseType: !541, size: 32, offset: 256)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1808, file: !1809, line: 119, baseType: !550, size: 32, offset: 288)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1808, file: !1809, line: 120, baseType: !7, size: 32, offset: 320)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1808, file: !1809, line: 121, baseType: !1822, size: 64, offset: 384)
!1822 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1823, line: 24, baseType: !1824)
!1823 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1823, line: 24, size: 64, elements: !1825)
!1825 = !{!1826}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1824, file: !1823, line: 24, baseType: !298, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1808, file: !1809, line: 122, baseType: !1822, size: 64, offset: 448)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1808, file: !1809, line: 123, baseType: !1822, size: 64, offset: 512)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1808, file: !1809, line: 124, baseType: !1822, size: 64, offset: 576)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1808, file: !1809, line: 125, baseType: !1822, size: 64, offset: 640)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1808, file: !1809, line: 127, baseType: !163, size: 8, offset: 704)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1808, file: !1809, line: 129, baseType: !1440, size: 64, offset: 768)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1808, file: !1809, line: 130, baseType: !1440, size: 64, offset: 832)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1808, file: !1809, line: 131, baseType: !1440, size: 64, offset: 896)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1808, file: !1809, line: 132, baseType: !1440, size: 64, offset: 960)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1808, file: !1809, line: 135, baseType: !96, size: 64, offset: 1024)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1808, file: !1809, line: 137, baseType: !1838, size: 64, offset: 1088)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1840, line: 14, size: 1088, elements: !1841)
!1840 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1841 = !{!1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1839, file: !1840, line: 15, baseType: !904, size: 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1839, file: !1840, line: 17, baseType: !1326, size: 320, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1839, file: !1840, line: 19, baseType: !115, size: 64, offset: 384)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1839, file: !1840, line: 20, baseType: !806, size: 64, offset: 448)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1839, file: !1840, line: 23, baseType: !339, size: 128, offset: 512)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1839, file: !1840, line: 24, baseType: !541, size: 32, offset: 640)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1839, file: !1840, line: 29, baseType: !806, size: 64, offset: 704)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1839, file: !1840, line: 36, baseType: !1850, size: 320, offset: 768)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1851, line: 15, size: 320, elements: !1852)
!1851 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1852 = !{!1853, !1854, !1855, !1856, !1857, !1858, !1859}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1850, file: !1851, line: 16, baseType: !815, size: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1850, file: !1851, line: 18, baseType: !98, size: 32, offset: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1850, file: !1851, line: 19, baseType: !98, size: 32, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1850, file: !1851, line: 20, baseType: !98, size: 32, offset: 96)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1850, file: !1851, line: 21, baseType: !98, size: 32, offset: 128)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1850, file: !1851, line: 22, baseType: !115, size: 64, offset: 192)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1850, file: !1851, line: 23, baseType: !115, size: 64, offset: 256)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1808, file: !1809, line: 138, baseType: !1391, size: 64, offset: 1152)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1808, file: !1809, line: 139, baseType: !1634, size: 64, offset: 1216)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1808, file: !1809, line: 140, baseType: !1863, size: 64, offset: 1280)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1809, line: 25, size: 64, elements: !1865)
!1865 = !{!1866, !1867, !1868}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1864, file: !1809, line: 26, baseType: !125, size: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1864, file: !1809, line: 27, baseType: !98, size: 32, offset: 32)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1864, file: !1809, line: 28, baseType: !1869, offset: 64)
!1869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, elements: !332)
!1870 = !DIDerivedType(tag: DW_TAG_member, scope: !1808, file: !1809, line: 142, baseType: !1871, size: 128, offset: 1344)
!1871 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1808, file: !1809, line: 142, size: 128, elements: !1872)
!1872 = !{!1873, !1874}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1871, file: !1809, line: 143, baseType: !98, size: 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1871, file: !1809, line: 144, baseType: !859, size: 128, align: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !946, file: !947, line: 1067, baseType: !1806, size: 64, offset: 14528)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !946, file: !947, line: 1070, baseType: !1806, size: 64, offset: 14592)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !946, file: !947, line: 1074, baseType: !1440, size: 64, offset: 14656)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !946, file: !947, line: 1084, baseType: !1879, size: 128, offset: 14720)
!1879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 128, elements: !1880)
!1880 = !{!1881}
!1881 = !DISubrange(count: 16)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !946, file: !947, line: 1086, baseType: !1883, size: 64, offset: 14848)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !947, line: 55, flags: DIFlagFwdDecl)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !946, file: !947, line: 1089, baseType: !1886, size: 64, offset: 14912)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1887, line: 12, size: 64, elements: !1888)
!1887 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1888 = !{!1889}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1886, file: !1887, line: 13, baseType: !1890, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1887, line: 8, flags: DIFlagFwdDecl)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !946, file: !947, line: 1090, baseType: !1893, size: 128, offset: 14976)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1894, line: 13, size: 128, elements: !1895)
!1894 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1895 = !{!1896}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1893, file: !1894, line: 14, baseType: !173, size: 128)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !946, file: !947, line: 1097, baseType: !1898, size: 64, offset: 15104)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !947, line: 50, flags: DIFlagFwdDecl)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !946, file: !947, line: 1100, baseType: !1901, size: 64, offset: 15168)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !947, line: 1100, flags: DIFlagFwdDecl)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !946, file: !947, line: 1103, baseType: !1904, size: 64, offset: 15232)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !947, line: 53, flags: DIFlagFwdDecl)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !946, file: !947, line: 1107, baseType: !1907, size: 64, offset: 15296)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1909, line: 31, size: 576, elements: !1910)
!1909 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1910 = !{!1911, !1912, !1915, !1918, !1921, !1922, !1925, !1928, !1929}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1908, file: !1909, line: 32, baseType: !904, size: 32)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1908, file: !1909, line: 33, baseType: !1913, size: 64, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1909, line: 9, flags: DIFlagFwdDecl)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1908, file: !1909, line: 34, baseType: !1916, size: 64, offset: 128)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1909, line: 10, flags: DIFlagFwdDecl)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1908, file: !1909, line: 35, baseType: !1919, size: 64, offset: 192)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1909, line: 8, flags: DIFlagFwdDecl)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1908, file: !1909, line: 36, baseType: !924, size: 64, offset: 256)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1908, file: !1909, line: 37, baseType: !1923, size: 64, offset: 320)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1442, line: 34, flags: DIFlagFwdDecl)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1908, file: !1909, line: 38, baseType: !1926, size: 64, offset: 384)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1909, line: 38, flags: DIFlagFwdDecl)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1908, file: !1909, line: 39, baseType: !1926, size: 64, offset: 448)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1908, file: !1909, line: 40, baseType: !1930, size: 64, offset: 512)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1932, line: 771, size: 384, elements: !1933)
!1932 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!1933 = !{!1934, !1935, !1936, !1937}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1931, file: !1932, line: 772, baseType: !1424, size: 192)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1931, file: !1932, line: 773, baseType: !1391, size: 64, offset: 192)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1931, file: !1932, line: 774, baseType: !1634, size: 64, offset: 256)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !1931, file: !1932, line: 775, baseType: !1938, size: 64, offset: 320)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1940, line: 209, size: 4736, elements: !1941)
!1940 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!1941 = !{!1942, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1939, file: !1940, line: 215, baseType: !1943, size: 896)
!1943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1944, size: 896, elements: !2401)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !1940, line: 152, size: 1600, elements: !1946)
!1946 = !{!1947, !2452, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2575}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !1945, file: !1940, line: 154, baseType: !1948, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !1940, line: 389, size: 7872, elements: !1950)
!1950 = !{!1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !2352, !2369, !2370, !2374, !2375, !2376, !2377, !2378, !2379, !2398, !2399, !2403, !2404, !2405, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2439, !2442, !2443, !2450}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1949, file: !1940, line: 391, baseType: !1945, size: 1600)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1949, file: !1940, line: 393, baseType: !115, size: 64, offset: 1600)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1949, file: !1940, line: 401, baseType: !98, size: 32, offset: 1664)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !1949, file: !1940, line: 404, baseType: !98, size: 32, offset: 1696)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !1949, file: !1940, line: 417, baseType: !98, size: 32, offset: 1728)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !1949, file: !1940, line: 418, baseType: !98, size: 32, offset: 1760)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !1949, file: !1940, line: 419, baseType: !98, size: 32, offset: 1792)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !1949, file: !1940, line: 432, baseType: !98, size: 32, offset: 1824)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !1949, file: !1940, line: 433, baseType: !98, size: 32, offset: 1856)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !1949, file: !1940, line: 434, baseType: !98, size: 32, offset: 1888)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !1949, file: !1940, line: 436, baseType: !98, size: 32, offset: 1920)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !1949, file: !1940, line: 439, baseType: !7, size: 32, offset: 1952)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1949, file: !1940, line: 441, baseType: !1964, size: 64, offset: 1984)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !703, line: 190, size: 1152, elements: !1966)
!1966 = !{!1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !2344, !2345, !2346, !2347, !2348, !2351}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1965, file: !703, line: 191, baseType: !125, size: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1965, file: !703, line: 192, baseType: !125, size: 32, offset: 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1965, file: !703, line: 202, baseType: !1964, size: 64, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1965, file: !703, line: 203, baseType: !92, size: 64, offset: 128)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1965, file: !703, line: 205, baseType: !994, size: 192, align: 64, offset: 192)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1965, file: !703, line: 207, baseType: !1365, size: 64, offset: 384)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1965, file: !703, line: 208, baseType: !7, size: 32, offset: 448)
!1974 = !DIDerivedType(tag: DW_TAG_member, scope: !1965, file: !703, line: 209, baseType: !1975, size: 256, offset: 512)
!1975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1965, file: !703, line: 209, size: 256, elements: !1976)
!1976 = !{!1977, !1986, !1990}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1975, file: !703, line: 210, baseType: !1978, size: 256)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !703, line: 153, size: 256, elements: !1979)
!1979 = !{!1980, !1981, !1982, !1985}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1978, file: !703, line: 154, baseType: !115, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1978, file: !703, line: 156, baseType: !1126, size: 64, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1978, file: !703, line: 162, baseType: !1983, size: 64, offset: 128)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !703, line: 162, flags: DIFlagFwdDecl)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1978, file: !703, line: 167, baseType: !115, size: 64, offset: 192)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1975, file: !703, line: 211, baseType: !1987, size: 64)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !703, line: 170, size: 64, elements: !1988)
!1988 = !{!1989}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1987, file: !703, line: 171, baseType: !1964, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1975, file: !703, line: 212, baseType: !1991, size: 256)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !703, line: 174, size: 256, elements: !1992)
!1992 = !{!1993, !2339, !2342, !2343}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1991, file: !703, line: 175, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1996)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !703, line: 271, size: 768, elements: !1997)
!1997 = !{!1998, !2303, !2307, !2308, !2309, !2310, !2311, !2315, !2316, !2317, !2318, !2335}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1996, file: !703, line: 276, baseType: !1999, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!98, !2002}
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !703, line: 251, size: 1216, elements: !2004)
!2004 = !{!2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2003, file: !703, line: 253, baseType: !1964, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2003, file: !703, line: 254, baseType: !1260, size: 64, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2003, file: !703, line: 255, baseType: !790, size: 64, offset: 128)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2003, file: !703, line: 256, baseType: !96, size: 64, offset: 192)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2003, file: !703, line: 259, baseType: !802, size: 256, offset: 256)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2003, file: !703, line: 260, baseType: !802, size: 256, offset: 512)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2003, file: !703, line: 261, baseType: !98, size: 32, offset: 768)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2003, file: !703, line: 262, baseType: !173, size: 128, offset: 832)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2003, file: !703, line: 263, baseType: !462, size: 64, offset: 960)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2003, file: !703, line: 265, baseType: !111, size: 64, offset: 1024)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2003, file: !703, line: 266, baseType: !1436, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2003, file: !703, line: 267, baseType: !1436, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2003, file: !703, line: 268, baseType: !2018, size: 64, offset: 1152)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2020)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2021, line: 563, size: 1024, elements: !2022)
!2021 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2022 = !{!2023, !2079, !2080, !2084, !2088, !2092, !2269, !2273, !2277, !2281, !2282, !2283, !2287, !2291, !2295, !2299}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2020, file: !2021, line: 564, baseType: !2024, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{null, !2027}
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !20, line: 625, size: 1344, elements: !2029)
!2029 = !{!2030, !2039, !2040, !2046, !2053, !2054, !2059, !2060, !2065, !2066, !2069, !2070, !2071, !2072, !2073, !2074, !2077}
!2030 = !DIDerivedType(tag: DW_TAG_member, scope: !2028, file: !20, line: 628, baseType: !2031, size: 128)
!2031 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2028, file: !20, line: 628, size: 128, elements: !2032)
!2032 = !{!2033, !2038}
!2033 = !DIDerivedType(tag: DW_TAG_member, scope: !2031, file: !20, line: 629, baseType: !2034, size: 128)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2031, file: !20, line: 629, size: 128, elements: !2035)
!2035 = !{!2036, !2037}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2034, file: !20, line: 631, baseType: !115, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2034, file: !20, line: 632, baseType: !115, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2031, file: !20, line: 635, baseType: !859, size: 128, align: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2028, file: !20, line: 639, baseType: !1233, size: 64, offset: 128)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2028, file: !20, line: 640, baseType: !2041, size: 64, offset: 192)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1269, line: 297, baseType: !2042)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1269, line: 297, size: 64, elements: !2043)
!2043 = !{!2044}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2042, file: !1269, line: 297, baseType: !2045, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1274, line: 19, baseType: !115)
!2046 = !DIDerivedType(tag: DW_TAG_member, scope: !2028, file: !20, line: 646, baseType: !2047, size: 64, offset: 256)
!2047 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2028, file: !20, line: 646, size: 64, elements: !2048)
!2048 = !{!2049, !2052}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2047, file: !20, line: 647, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2051)
!2051 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !20, line: 542, baseType: !115)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2047, file: !20, line: 648, baseType: !2051, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2028, file: !20, line: 666, baseType: !98, size: 32, offset: 320)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2028, file: !20, line: 667, baseType: !2055, size: 64, offset: 384)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !20, line: 579, size: 320, elements: !2057)
!2057 = !{!2058}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2056, file: !20, line: 580, baseType: !1288, size: 320)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2028, file: !20, line: 670, baseType: !1436, size: 8, offset: 448)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2028, file: !20, line: 681, baseType: !2061, size: 256, offset: 512)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2028, file: !20, line: 678, size: 256, elements: !2062)
!2062 = !{!2063, !2064}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2061, file: !20, line: 679, baseType: !994, size: 192, align: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2061, file: !20, line: 680, baseType: !115, size: 64, offset: 192)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2028, file: !20, line: 689, baseType: !173, size: 128, offset: 768)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2028, file: !20, line: 691, baseType: !2067, size: 64, offset: 896)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !20, line: 691, flags: DIFlagFwdDecl)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2028, file: !20, line: 694, baseType: !2018, size: 64, offset: 960)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2028, file: !20, line: 697, baseType: !115, size: 64, offset: 1024)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2028, file: !20, line: 699, baseType: !1260, size: 64, offset: 1088)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2028, file: !20, line: 700, baseType: !96, size: 64, offset: 1152)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2028, file: !20, line: 711, baseType: !806, size: 64, offset: 1216)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2028, file: !20, line: 717, baseType: !2075, size: 64, offset: 1280)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !947, line: 54, flags: DIFlagFwdDecl)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2028, file: !20, line: 722, baseType: !2078, offset: 1344)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !20, line: 570, elements: !722)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2020, file: !2021, line: 569, baseType: !2024, size: 64, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2020, file: !2021, line: 571, baseType: !2081, size: 64, offset: 128)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{!98, !2027, !115}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2020, file: !2021, line: 572, baseType: !2085, size: 64, offset: 192)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!98, !2027}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2020, file: !2021, line: 578, baseType: !2089, size: 64, offset: 256)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!98, !2027, !115, !115, !115}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2020, file: !2021, line: 580, baseType: !2093, size: 64, offset: 320)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!2096, !2097}
!2096 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !20, line: 1184, baseType: !7)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2021, line: 512, size: 896, elements: !2099)
!2099 = !{!2100, !2108, !2109, !2116, !2123, !2133, !2262, !2263, !2265, !2267}
!2100 = !DIDerivedType(tag: DW_TAG_member, scope: !2098, file: !2021, line: 513, baseType: !2101, size: 320)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2098, file: !2021, line: 513, size: 320, elements: !2102)
!2102 = !{!2103, !2104, !2105, !2106, !2107}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2101, file: !2021, line: 514, baseType: !2027, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2101, file: !2021, line: 515, baseType: !938, size: 32, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2101, file: !2021, line: 516, baseType: !115, size: 64, offset: 128)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2101, file: !2021, line: 517, baseType: !115, size: 64, offset: 192)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2101, file: !2021, line: 518, baseType: !115, size: 64, offset: 256)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2098, file: !2021, line: 520, baseType: !19, size: 32, offset: 320)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2098, file: !2021, line: 522, baseType: !2110, size: 64, offset: 384)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1274, line: 22, baseType: !2112)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1274, line: 22, size: 64, elements: !2113)
!2113 = !{!2114}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2112, file: !1274, line: 22, baseType: !2115, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1274, line: 15, baseType: !115)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2098, file: !2021, line: 524, baseType: !2117, size: 64, offset: 448)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1269, line: 372, baseType: !2119)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1269, line: 372, size: 64, elements: !2120)
!2120 = !{!2121}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2119, file: !1269, line: 372, baseType: !2122, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1274, line: 16, baseType: !115)
!2123 = !DIDerivedType(tag: DW_TAG_member, scope: !2098, file: !2021, line: 527, baseType: !2124, size: 64, offset: 512)
!2124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2098, file: !2021, line: 527, size: 64, elements: !2125)
!2125 = !{!2126, !2132}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2124, file: !2021, line: 528, baseType: !2127, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1274, line: 21, baseType: !2128)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1274, line: 21, size: 64, elements: !2129)
!2129 = !{!2130}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2128, file: !1274, line: 21, baseType: !2131, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1274, line: 14, baseType: !115)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2124, file: !2021, line: 529, baseType: !2111, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2098, file: !2021, line: 534, baseType: !2134, size: 64, offset: 576)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !20, line: 74, size: 512, align: 128, elements: !2136)
!2136 = !{!2137, !2138, !2256, !2261}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2135, file: !20, line: 75, baseType: !115, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, scope: !2135, file: !20, line: 83, baseType: !2139, size: 320, offset: 64)
!2139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2135, file: !20, line: 83, size: 320, elements: !2140)
!2140 = !{!2141, !2162, !2176, !2180, !2255}
!2141 = !DIDerivedType(tag: DW_TAG_member, scope: !2139, file: !20, line: 84, baseType: !2142, size: 320)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2139, file: !20, line: 84, size: 320, elements: !2143)
!2143 = !{!2144, !2155, !2156, !2161}
!2144 = !DIDerivedType(tag: DW_TAG_member, scope: !2142, file: !20, line: 90, baseType: !2145, size: 128)
!2145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2142, file: !20, line: 90, size: 128, elements: !2146)
!2146 = !{!2147, !2148, !2153, !2154}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2145, file: !20, line: 91, baseType: !173, size: 128)
!2148 = !DIDerivedType(tag: DW_TAG_member, scope: !2145, file: !20, line: 94, baseType: !2149, size: 128)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2145, file: !20, line: 94, size: 128, elements: !2150)
!2150 = !{!2151, !2152}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2149, file: !20, line: 96, baseType: !96, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2149, file: !20, line: 98, baseType: !7, size: 32, offset: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2145, file: !20, line: 102, baseType: !173, size: 128)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2145, file: !20, line: 103, baseType: !173, size: 128)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2142, file: !20, line: 106, baseType: !531, size: 64, offset: 128)
!2156 = !DIDerivedType(tag: DW_TAG_member, scope: !2142, file: !20, line: 107, baseType: !2157, size: 64, offset: 192)
!2157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2142, file: !20, line: 107, size: 64, elements: !2158)
!2158 = !{!2159, !2160}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2157, file: !20, line: 108, baseType: !115, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2157, file: !20, line: 109, baseType: !115, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2142, file: !20, line: 117, baseType: !115, size: 64, offset: 256)
!2162 = !DIDerivedType(tag: DW_TAG_member, scope: !2139, file: !20, line: 119, baseType: !2163, size: 320)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2139, file: !20, line: 119, size: 320, elements: !2164)
!2164 = !{!2165, !2166, !2169, !2170, !2171}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2163, file: !20, line: 124, baseType: !115, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2163, file: !20, line: 125, baseType: !2167, size: 64, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !20, line: 125, flags: DIFlagFwdDecl)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2163, file: !20, line: 126, baseType: !115, size: 64, offset: 128)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2163, file: !20, line: 127, baseType: !115, size: 64, offset: 192)
!2171 = !DIDerivedType(tag: DW_TAG_member, scope: !2163, file: !20, line: 128, baseType: !2172, size: 64, offset: 256)
!2172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2163, file: !20, line: 128, size: 64, elements: !2173)
!2173 = !{!2174, !2175}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2172, file: !20, line: 133, baseType: !115, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2172, file: !20, line: 138, baseType: !806, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, scope: !2139, file: !20, line: 141, baseType: !2177, size: 64)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2139, file: !20, line: 141, size: 64, elements: !2178)
!2178 = !{!2179}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2177, file: !20, line: 142, baseType: !115, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, scope: !2139, file: !20, line: 144, baseType: !2181, size: 128)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2139, file: !20, line: 144, size: 128, elements: !2182)
!2182 = !{!2183, !2254}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2181, file: !20, line: 146, baseType: !2184, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !36, line: 126, size: 1216, elements: !2186)
!2186 = !{!2187, !2197, !2218, !2219, !2220, !2221, !2222, !2236, !2237, !2238}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2185, file: !36, line: 127, baseType: !2188, size: 384)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !36, line: 21, size: 384, elements: !2189)
!2189 = !{!2190, !2191, !2193, !2194, !2195, !2196}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2188, file: !36, line: 22, baseType: !115, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2188, file: !36, line: 23, baseType: !2192, size: 64, offset: 64)
!2192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2188, file: !36, line: 24, baseType: !2192, size: 64, offset: 128)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2188, file: !36, line: 25, baseType: !115, size: 64, offset: 192)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2188, file: !36, line: 26, baseType: !115, size: 64, offset: 256)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2188, file: !36, line: 27, baseType: !115, size: 64, offset: 320)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2185, file: !36, line: 128, baseType: !2198, size: 128, offset: 384)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2199, line: 105, size: 128, elements: !2200)
!2199 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2200 = !{!2201, !2202}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2198, file: !2199, line: 110, baseType: !115, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2198, file: !2199, line: 118, baseType: !2203, size: 64, offset: 64)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2199, line: 95, size: 448, elements: !2205)
!2205 = !{!2206, !2207, !2213, !2214, !2215, !2216, !2217}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2204, file: !2199, line: 96, baseType: !806, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2204, file: !2199, line: 97, baseType: !2208, size: 64, offset: 64)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2199, line: 60, baseType: !2210)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{null, !2212}
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2204, file: !2199, line: 98, baseType: !2208, size: 64, offset: 128)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2204, file: !2199, line: 99, baseType: !1436, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2204, file: !2199, line: 100, baseType: !1436, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2204, file: !2199, line: 101, baseType: !859, size: 128, align: 64, offset: 256)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2204, file: !2199, line: 102, baseType: !2212, size: 64, offset: 384)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2185, file: !36, line: 129, baseType: !1590, size: 256, offset: 512)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2185, file: !36, line: 130, baseType: !35, size: 32, offset: 768)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2185, file: !36, line: 131, baseType: !7, size: 32, offset: 800)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2185, file: !36, line: 132, baseType: !115, size: 64, offset: 832)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2185, file: !36, line: 133, baseType: !2223, size: 64, offset: 896)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2225)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !36, line: 77, size: 192, elements: !2226)
!2226 = !{!2227, !2231, !2232}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2225, file: !36, line: 83, baseType: !2228, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{null, !2134}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2225, file: !36, line: 89, baseType: !2093, size: 64, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2225, file: !36, line: 100, baseType: !2233, size: 64, offset: 128)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!98, !2184, !115, !115, !98}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2185, file: !36, line: 134, baseType: !96, size: 64, offset: 960)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2185, file: !36, line: 135, baseType: !98, size: 32, offset: 1024)
!2238 = !DIDerivedType(tag: DW_TAG_member, scope: !2185, file: !36, line: 136, baseType: !2239, size: 128, offset: 1088)
!2239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2185, file: !36, line: 136, size: 128, elements: !2240)
!2240 = !{!2241, !2247}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2239, file: !36, line: 137, baseType: !2242, size: 128)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2243, line: 6, size: 128, elements: !2244)
!2243 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2244 = !{!2245, !2246}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2242, file: !2243, line: 7, baseType: !298, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2242, file: !2243, line: 8, baseType: !298, size: 64, offset: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, scope: !2239, file: !36, line: 138, baseType: !2248)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2239, file: !36, line: 138, elements: !2249)
!2249 = !{!2250, !2252}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2248, file: !36, line: 138, baseType: !2251)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2248, file: !36, line: 138, elements: !722)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2248, file: !36, line: 138, baseType: !2253)
!2253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2242, elements: !332)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2181, file: !20, line: 147, baseType: !96, size: 64, offset: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2139, file: !20, line: 161, baseType: !859, size: 128, align: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, scope: !2135, file: !20, line: 164, baseType: !2257, size: 32, offset: 384)
!2257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2135, file: !20, line: 164, size: 32, elements: !2258)
!2258 = !{!2259, !2260}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2257, file: !20, line: 169, baseType: !125, size: 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2257, file: !20, line: 177, baseType: !7, size: 32)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2135, file: !20, line: 181, baseType: !125, size: 32, offset: 416)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2098, file: !2021, line: 535, baseType: !2134, size: 64, offset: 640)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2098, file: !2021, line: 541, baseType: !2264, size: 64, offset: 704)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2098, file: !2021, line: 545, baseType: !2266, size: 64, offset: 768)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2098, file: !2021, line: 549, baseType: !2268, size: 64, offset: 832)
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1269, line: 520, baseType: !2134)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2020, file: !2021, line: 581, baseType: !2270, size: 64, offset: 384)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!2096, !2097, !7}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2020, file: !2021, line: 582, baseType: !2274, size: 64, offset: 448)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!2096, !2097, !115, !115}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2020, file: !2021, line: 584, baseType: !2278, size: 64, offset: 512)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!115, !2027}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2020, file: !2021, line: 588, baseType: !2093, size: 64, offset: 576)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2020, file: !2021, line: 591, baseType: !2093, size: 64, offset: 640)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2020, file: !2021, line: 597, baseType: !2284, size: 64, offset: 704)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!98, !2027, !115, !96, !98, !98}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2020, file: !2021, line: 603, baseType: !2288, size: 64, offset: 768)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!92, !2027}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2020, file: !2021, line: 613, baseType: !2292, size: 64, offset: 832)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!98, !2027, !2075}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2020, file: !2021, line: 625, baseType: !2296, size: 64, offset: 896)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!2075, !2027, !115}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2020, file: !2021, line: 633, baseType: !2300, size: 64, offset: 960)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!2134, !2027, !115}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1996, file: !703, line: 277, baseType: !2304, size: 64, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{null, !2002}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1996, file: !703, line: 290, baseType: !840, size: 64, offset: 128)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1996, file: !703, line: 292, baseType: !828, size: 64, offset: 192)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1996, file: !703, line: 293, baseType: !836, size: 64, offset: 256)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1996, file: !703, line: 294, baseType: !832, size: 64, offset: 320)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1996, file: !703, line: 296, baseType: !2312, size: 64, offset: 384)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!494, !2002, !462, !111, !117}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1996, file: !703, line: 306, baseType: !111, size: 64, offset: 448)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1996, file: !703, line: 313, baseType: !1436, size: 8, offset: 512)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1996, file: !703, line: 314, baseType: !2312, size: 64, offset: 576)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1996, file: !703, line: 317, baseType: !2319, size: 64, offset: 640)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!2322, !2002, !2324}
!2322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2323, line: 59, baseType: !7)
!2323 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2326, line: 37, size: 128, elements: !2327)
!2326 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2327 = !{!2328, !2334}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2325, file: !2326, line: 38, baseType: !2329, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2326, line: 31, baseType: !2330)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{null, !1260, !2333, !2324}
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2325, file: !2326, line: 39, baseType: !2322, size: 32, offset: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1996, file: !703, line: 320, baseType: !2336, size: 64, offset: 704)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!98, !2002, !2027}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1991, file: !703, line: 176, baseType: !2340, size: 64, offset: 64)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !703, line: 35, flags: DIFlagFwdDecl)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1991, file: !703, line: 177, baseType: !117, size: 64, offset: 128)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1991, file: !703, line: 178, baseType: !1964, size: 64, offset: 192)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1965, file: !703, line: 215, baseType: !96, size: 64, offset: 768)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1965, file: !703, line: 221, baseType: !298, size: 64, offset: 832)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1965, file: !703, line: 223, baseType: !102, size: 16, offset: 896)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1965, file: !703, line: 224, baseType: !100, size: 16, offset: 912)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1965, file: !703, line: 225, baseType: !2349, size: 64, offset: 960)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !703, line: 36, flags: DIFlagFwdDecl)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1965, file: !703, line: 227, baseType: !859, size: 128, align: 64, offset: 1024)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !1949, file: !1940, line: 442, baseType: !2353, size: 448, offset: 2048)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !1940, line: 138, size: 448, elements: !2354)
!2354 = !{!2355, !2356, !2357}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2353, file: !1940, line: 140, baseType: !1964, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !2353, file: !1940, line: 141, baseType: !115, size: 64, offset: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !2353, file: !1940, line: 142, baseType: !2358, size: 320, offset: 128)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2359, line: 11, size: 320, elements: !2360)
!2359 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2360 = !{!2361, !2362, !2363, !2368}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2358, file: !2359, line: 16, baseType: !339, size: 128)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2358, file: !2359, line: 17, baseType: !115, size: 64, offset: 128)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2358, file: !2359, line: 18, baseType: !2364, size: 64, offset: 192)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{null, !2367}
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2358, file: !2359, line: 19, baseType: !312, size: 32, offset: 256)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !1949, file: !1940, line: 443, baseType: !2353, size: 448, offset: 2496)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !1949, file: !1940, line: 446, baseType: !2371, offset: 2944)
!2371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2353, elements: !2372)
!2372 = !{!2373}
!2373 = !DISubrange(count: 0)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !1949, file: !1940, line: 455, baseType: !169, size: 16, offset: 2944)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !1949, file: !1940, line: 456, baseType: !169, size: 16, offset: 2960)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !1949, file: !1940, line: 457, baseType: !169, size: 16, offset: 2976)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !1949, file: !1940, line: 458, baseType: !169, size: 16, offset: 2992)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1949, file: !1940, line: 461, baseType: !1943, size: 896, offset: 3008)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1949, file: !1940, line: 463, baseType: !2380, size: 64, offset: 3904)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !1940, line: 537, size: 41664, elements: !2382)
!2382 = !{!2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2396}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !2381, file: !1940, line: 538, baseType: !1983, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !2381, file: !1940, line: 541, baseType: !7, size: 32, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !2381, file: !1940, line: 544, baseType: !98, size: 32, offset: 96)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !2381, file: !1940, line: 547, baseType: !173, size: 128, offset: 128)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2381, file: !1940, line: 548, baseType: !859, size: 128, align: 64, offset: 256)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2381, file: !1940, line: 555, baseType: !1949, size: 7872, offset: 384)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !2381, file: !1940, line: 558, baseType: !1948, size: 64, offset: 8256)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !2381, file: !1940, line: 561, baseType: !125, size: 32, offset: 8320)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2381, file: !1940, line: 564, baseType: !7, size: 32, offset: 8352)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !2381, file: !1940, line: 567, baseType: !2393, size: 32768, offset: 8384)
!2393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 32768, elements: !2394)
!2394 = !{!2395}
!2395 = !DISubrange(count: 4096)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2381, file: !1940, line: 570, baseType: !2397, size: 512, offset: 41152)
!2397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 512, elements: !467)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !1949, file: !1940, line: 469, baseType: !173, size: 128, offset: 3968)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !1949, file: !1940, line: 478, baseType: !2400, size: 1792, offset: 4096)
!2400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 1792, elements: !2401)
!2401 = !{!2402}
!2402 = !DISubrange(count: 14)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !1949, file: !1940, line: 487, baseType: !1948, size: 64, offset: 5888)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !1949, file: !1940, line: 488, baseType: !1948, size: 64, offset: 5952)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !1949, file: !1940, line: 491, baseType: !2406, size: 64, offset: 6016)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !1940, line: 327, size: 896, elements: !2408)
!2408 = !{!2409, !2412, !2422, !2423, !2424, !2425, !2426}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !2407, file: !1940, line: 332, baseType: !2410)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !2411, line: 64, elements: !722)
!2411 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !2407, file: !1940, line: 333, baseType: !2413, size: 192)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !1940, line: 299, size: 192, elements: !2414)
!2414 = !{!2415}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !2413, file: !1940, line: 300, baseType: !2416, size: 192)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !2417, line: 17, size: 192, elements: !2418)
!2417 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!2418 = !{!2419, !2420, !2421}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2416, file: !2417, line: 18, baseType: !298, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2416, file: !2417, line: 19, baseType: !298, size: 64, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2416, file: !2417, line: 20, baseType: !300, size: 64, offset: 128)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !2407, file: !1940, line: 339, baseType: !2413, size: 192, offset: 192)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !2407, file: !1940, line: 347, baseType: !2413, size: 192, offset: 384)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !2407, file: !1940, line: 353, baseType: !2413, size: 192, offset: 576)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !2407, file: !1940, line: 366, baseType: !1948, size: 64, offset: 768)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !2407, file: !1940, line: 367, baseType: !1948, size: 64, offset: 832)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !1949, file: !1940, line: 492, baseType: !173, size: 128, offset: 6080)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !1949, file: !1940, line: 495, baseType: !2413, size: 192, offset: 6208)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !1949, file: !1940, line: 496, baseType: !2413, size: 192, offset: 6400)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1949, file: !1940, line: 497, baseType: !1776, size: 192, offset: 6592)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !1949, file: !1940, line: 503, baseType: !173, size: 128, offset: 6784)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !1949, file: !1940, line: 504, baseType: !802, size: 256, offset: 6912)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !1949, file: !1940, line: 507, baseType: !130, size: 192, offset: 7168)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !1949, file: !1940, line: 510, baseType: !1551, size: 256, offset: 7360)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !1949, file: !1940, line: 513, baseType: !2436, size: 64, offset: 7616)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !2438, line: 214, elements: !722)
!2438 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !1949, file: !1940, line: 516, baseType: !2440, offset: 7680)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !2441, line: 76, elements: !722)
!2441 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !1949, file: !1940, line: 519, baseType: !125, size: 32, offset: 7680)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !1949, file: !1940, line: 522, baseType: !2444, size: 128, offset: 7712)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !1940, line: 370, size: 128, elements: !2445)
!2445 = !{!2446, !2447, !2448, !2449}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2444, file: !1940, line: 372, baseType: !1436, size: 8)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !2444, file: !1940, line: 375, baseType: !98, size: 32, offset: 32)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !2444, file: !1940, line: 380, baseType: !98, size: 32, offset: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !2444, file: !1940, line: 386, baseType: !98, size: 32, offset: 96)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !1949, file: !1940, line: 529, baseType: !2451, offset: 7872)
!2451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1948, elements: !332)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1945, file: !1940, line: 157, baseType: !2453, size: 64, offset: 64)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !1940, line: 669, size: 1984, elements: !2455)
!2455 = !{!2456, !2460, !2464, !2468, !2469, !2470, !2471, !2475, !2479, !2480, !2486, !2490, !2491, !2495, !2499, !2503, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2556, !2557}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !2454, file: !1940, line: 670, baseType: !2457, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!1944, !1944}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !2454, file: !1940, line: 671, baseType: !2461, size: 64, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!98, !1944}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !2454, file: !1940, line: 672, baseType: !2465, size: 64, offset: 128)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{null, !1944}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !2454, file: !1940, line: 673, baseType: !2465, size: 64, offset: 192)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !2454, file: !1940, line: 674, baseType: !2465, size: 64, offset: 256)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !2454, file: !1940, line: 675, baseType: !2465, size: 64, offset: 320)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !2454, file: !1940, line: 676, baseType: !2472, size: 64, offset: 384)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{null, !1944, !98}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !2454, file: !1940, line: 677, baseType: !2476, size: 64, offset: 448)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!98, !790, !1944}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !2454, file: !1940, line: 679, baseType: !2476, size: 64, offset: 512)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !2454, file: !1940, line: 682, baseType: !2481, size: 64, offset: 576)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!98, !2484}
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !1940, line: 30, flags: DIFlagFwdDecl)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !2454, file: !1940, line: 683, baseType: !2487, size: 64, offset: 640)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{null, !2484}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2454, file: !1940, line: 684, baseType: !2487, size: 64, offset: 704)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !2454, file: !1940, line: 685, baseType: !2492, size: 64, offset: 768)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{null}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !2454, file: !1940, line: 686, baseType: !2496, size: 64, offset: 832)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!98, !945, !1938}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !2454, file: !1940, line: 688, baseType: !2500, size: 64, offset: 896)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{null, !945, !1938}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !2454, file: !1940, line: 689, baseType: !2504, size: 64, offset: 960)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{null, !945}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2454, file: !1940, line: 690, baseType: !2504, size: 64, offset: 1024)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2454, file: !1940, line: 691, baseType: !2504, size: 64, offset: 1088)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2454, file: !1940, line: 692, baseType: !2465, size: 64, offset: 1152)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2454, file: !1940, line: 694, baseType: !1436, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !2454, file: !1940, line: 707, baseType: !1436, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !2454, file: !1940, line: 719, baseType: !1436, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2454, file: !1940, line: 722, baseType: !98, size: 32, offset: 1248)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2454, file: !1940, line: 723, baseType: !92, size: 64, offset: 1280)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !2454, file: !1940, line: 726, baseType: !92, size: 64, offset: 1344)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2454, file: !1940, line: 729, baseType: !2380, size: 64, offset: 1408)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !2454, file: !1940, line: 732, baseType: !929, size: 192, offset: 1472)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !2454, file: !1940, line: 738, baseType: !173, size: 128, offset: 1664)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !2454, file: !1940, line: 744, baseType: !2520, size: 64, offset: 1792)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !1940, line: 580, size: 1728, elements: !2522)
!2522 = !{!2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2532, !2533, !2534, !2538, !2542, !2543, !2544, !2545, !2546, !2550, !2554, !2555}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2521, file: !1940, line: 586, baseType: !2397, size: 512)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2521, file: !1940, line: 587, baseType: !115, size: 64, offset: 512)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !2521, file: !1940, line: 593, baseType: !111, size: 64, offset: 576)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2521, file: !1940, line: 596, baseType: !7, size: 32, offset: 640)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !2521, file: !1940, line: 604, baseType: !7, size: 32, offset: 672)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2521, file: !1940, line: 610, baseType: !2453, size: 64, offset: 704)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2521, file: !1940, line: 611, baseType: !173, size: 128, offset: 768)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !2521, file: !1940, line: 612, baseType: !2531, size: 64, offset: 896)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2521, file: !1940, line: 614, baseType: !1999, size: 64, offset: 960)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2521, file: !1940, line: 615, baseType: !2304, size: 64, offset: 1024)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !2521, file: !1940, line: 621, baseType: !2535, size: 64, offset: 1088)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!298, !1944, !2520}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !2521, file: !1940, line: 625, baseType: !2539, size: 64, offset: 1152)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!812, !1944, !2520}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2521, file: !1940, line: 628, baseType: !840, size: 64, offset: 1216)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2521, file: !1940, line: 631, baseType: !828, size: 64, offset: 1280)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2521, file: !1940, line: 632, baseType: !836, size: 64, offset: 1344)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2521, file: !1940, line: 633, baseType: !832, size: 64, offset: 1408)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !2521, file: !1940, line: 640, baseType: !2547, size: 64, offset: 1472)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!98, !1944, !2520, !298}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !2521, file: !1940, line: 645, baseType: !2551, size: 64, offset: 1536)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!98, !1944, !2520, !812}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2521, file: !1940, line: 654, baseType: !2312, size: 64, offset: 1600)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2521, file: !1940, line: 657, baseType: !2319, size: 64, offset: 1664)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !2454, file: !1940, line: 745, baseType: !2520, size: 64, offset: 1856)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !2454, file: !1940, line: 754, baseType: !7, size: 32, offset: 1920)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1945, file: !1940, line: 160, baseType: !2198, size: 128, offset: 128)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1945, file: !1940, line: 163, baseType: !173, size: 128, offset: 256)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1945, file: !1940, line: 164, baseType: !173, size: 128, offset: 384)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !1945, file: !1940, line: 167, baseType: !173, size: 128, offset: 512)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1945, file: !1940, line: 173, baseType: !98, size: 32, offset: 640)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1945, file: !1940, line: 175, baseType: !7, size: 32, offset: 672)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !1945, file: !1940, line: 183, baseType: !298, size: 64, offset: 704)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !1945, file: !1940, line: 189, baseType: !125, size: 32, offset: 768)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1945, file: !1940, line: 192, baseType: !1551, size: 256, offset: 832)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !1945, file: !1940, line: 193, baseType: !2568, size: 448, offset: 1088)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1552, line: 120, size: 448, elements: !2569)
!2569 = !{!2570, !2571, !2572}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2568, file: !1552, line: 121, baseType: !1551, size: 256)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2568, file: !1552, line: 122, baseType: !859, size: 128, align: 64, offset: 256)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2568, file: !1552, line: 125, baseType: !2573, size: 64, offset: 384)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1552, line: 18, flags: DIFlagFwdDecl)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1945, file: !1940, line: 199, baseType: !1944, size: 64, offset: 1536)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1939, file: !1940, line: 218, baseType: !904, size: 32, offset: 896)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !1939, file: !1940, line: 226, baseType: !1938, size: 64, offset: 960)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !1939, file: !1940, line: 229, baseType: !1948, size: 64, offset: 1024)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1939, file: !1940, line: 232, baseType: !98, size: 32, offset: 1088)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1939, file: !1940, line: 241, baseType: !173, size: 128, offset: 1152)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !1939, file: !1940, line: 242, baseType: !173, size: 128, offset: 1280)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !1939, file: !1940, line: 243, baseType: !173, size: 128, offset: 1408)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !1939, file: !1940, line: 246, baseType: !173, size: 128, offset: 1536)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !1939, file: !1940, line: 255, baseType: !2400, size: 1792, offset: 1664)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !1939, file: !1940, line: 258, baseType: !173, size: 128, offset: 3456)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !1939, file: !1940, line: 259, baseType: !173, size: 128, offset: 3584)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !1939, file: !1940, line: 265, baseType: !339, size: 128, offset: 3712)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !1939, file: !1940, line: 271, baseType: !173, size: 128, offset: 3840)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !1939, file: !1940, line: 277, baseType: !173, size: 128, offset: 3968)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !1939, file: !1940, line: 278, baseType: !173, size: 128, offset: 4096)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !1939, file: !1940, line: 279, baseType: !173, size: 128, offset: 4224)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !1939, file: !1940, line: 288, baseType: !1948, size: 64, offset: 4352)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !1939, file: !1940, line: 289, baseType: !1948, size: 64, offset: 4416)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !1939, file: !1940, line: 290, baseType: !1938, size: 64, offset: 4480)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !1939, file: !1940, line: 293, baseType: !1436, size: 8, offset: 4544)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1939, file: !1940, line: 296, baseType: !859, size: 128, align: 64, offset: 4608)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !946, file: !947, line: 1110, baseType: !2598, size: 64, offset: 15360)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2600, line: 93, size: 8768, elements: !2601)
!2600 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2601 = !{!2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2652, !2661, !2662, !2664, !2665, !2666, !2669, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2707, !2708, !2715, !2725, !2788, !2789, !2792, !2793, !2794, !2795, !2796, !2797}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2599, file: !2600, line: 94, baseType: !904, size: 32)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2599, file: !2600, line: 95, baseType: !125, size: 32, offset: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2599, file: !2600, line: 96, baseType: !98, size: 32, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2599, file: !2600, line: 97, baseType: !98, size: 32, offset: 96)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2599, file: !2600, line: 98, baseType: !173, size: 128, offset: 128)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2599, file: !2600, line: 100, baseType: !130, size: 192, offset: 256)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2599, file: !2600, line: 103, baseType: !945, size: 64, offset: 448)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2599, file: !2600, line: 106, baseType: !2610, size: 192, offset: 512)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2611, line: 32, size: 192, elements: !2612)
!2611 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2612 = !{!2613, !2614}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2610, file: !2611, line: 33, baseType: !173, size: 128)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2610, file: !2611, line: 34, baseType: !2615, size: 64, offset: 128)
!2615 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2616, line: 25, baseType: !2617)
!2616 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2616, line: 23, size: 64, elements: !2618)
!2618 = !{!2619}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2617, file: !2616, line: 24, baseType: !359, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2599, file: !2600, line: 109, baseType: !335, size: 64, offset: 704)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2599, file: !2600, line: 112, baseType: !98, size: 32, offset: 768)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2599, file: !2600, line: 114, baseType: !98, size: 32, offset: 800)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2599, file: !2600, line: 115, baseType: !945, size: 64, offset: 832)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2599, file: !2600, line: 118, baseType: !98, size: 32, offset: 896)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2599, file: !2600, line: 119, baseType: !7, size: 32, offset: 928)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2599, file: !2600, line: 121, baseType: !2627, size: 64, offset: 960)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2600, line: 80, size: 448, elements: !2629)
!2629 = !{!2630, !2631, !2637}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2628, file: !2600, line: 81, baseType: !125, size: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2628, file: !2600, line: 82, baseType: !2632, size: 128, offset: 64)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2600, line: 75, size: 128, elements: !2633)
!2633 = !{!2634, !2635}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2632, file: !2600, line: 76, baseType: !945, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2632, file: !2600, line: 77, baseType: !2636, size: 64, offset: 64)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2628, file: !2600, line: 83, baseType: !1590, size: 256, offset: 192)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2599, file: !2600, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2599, file: !2600, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2599, file: !2600, line: 138, baseType: !7, size: 32, offset: 1056)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2599, file: !2600, line: 139, baseType: !173, size: 128, offset: 1088)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2599, file: !2600, line: 142, baseType: !1064, size: 512, offset: 1216)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2599, file: !2600, line: 143, baseType: !1072, size: 64, offset: 1728)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2599, file: !2600, line: 150, baseType: !2645, size: 256, offset: 1792)
!2645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2646, size: 256, elements: !2650)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2600, line: 38, size: 128, elements: !2647)
!2647 = !{!2648, !2649}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2646, file: !2600, line: 39, baseType: !298, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2646, file: !2600, line: 40, baseType: !298, size: 64, offset: 64)
!2650 = !{!2651}
!2651 = !DISubrange(count: 2)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2599, file: !2600, line: 156, baseType: !2653, size: 192, offset: 2048)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2600, line: 66, size: 192, elements: !2654)
!2654 = !{!2655}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2653, file: !2600, line: 67, baseType: !2656, size: 192)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2600, line: 47, size: 192, elements: !2657)
!2657 = !{!2658, !2659, !2660}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2656, file: !2600, line: 48, baseType: !808, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2656, file: !2600, line: 49, baseType: !808, size: 64, offset: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2656, file: !2600, line: 50, baseType: !808, size: 64, offset: 128)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2599, file: !2600, line: 160, baseType: !1788, size: 640, offset: 2240)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2599, file: !2600, line: 163, baseType: !2663, size: 256, offset: 2880)
!2663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !900, size: 256, elements: !913)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2599, file: !2600, line: 169, baseType: !900, size: 64, offset: 3136)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2599, file: !2600, line: 172, baseType: !98, size: 32, offset: 3200)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2599, file: !2600, line: 174, baseType: !2667, size: 64, offset: 3264)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2600, line: 174, flags: DIFlagFwdDecl)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2599, file: !2600, line: 185, baseType: !2670, size: 64, offset: 3328)
!2670 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !577, line: 860, baseType: !2671)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !577, line: 853, size: 64, elements: !2672)
!2672 = !{!2673, !2674}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2671, file: !577, line: 858, baseType: !576, size: 32)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2671, file: !577, line: 859, baseType: !135, size: 32, offset: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2599, file: !2600, line: 186, baseType: !298, size: 64, offset: 3392)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2599, file: !2600, line: 186, baseType: !298, size: 64, offset: 3456)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2599, file: !2600, line: 186, baseType: !298, size: 64, offset: 3520)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2599, file: !2600, line: 186, baseType: !298, size: 64, offset: 3584)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2599, file: !2600, line: 187, baseType: !298, size: 64, offset: 3648)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2599, file: !2600, line: 188, baseType: !298, size: 64, offset: 3712)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2599, file: !2600, line: 189, baseType: !1776, size: 192, offset: 3776)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2599, file: !2600, line: 190, baseType: !115, size: 64, offset: 3968)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2599, file: !2600, line: 190, baseType: !115, size: 64, offset: 4032)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2599, file: !2600, line: 190, baseType: !115, size: 64, offset: 4096)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2599, file: !2600, line: 190, baseType: !115, size: 64, offset: 4160)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2599, file: !2600, line: 191, baseType: !115, size: 64, offset: 4224)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2599, file: !2600, line: 191, baseType: !115, size: 64, offset: 4288)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2599, file: !2600, line: 191, baseType: !115, size: 64, offset: 4352)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2599, file: !2600, line: 191, baseType: !115, size: 64, offset: 4416)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2599, file: !2600, line: 192, baseType: !115, size: 64, offset: 4480)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2599, file: !2600, line: 192, baseType: !115, size: 64, offset: 4544)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2599, file: !2600, line: 192, baseType: !115, size: 64, offset: 4608)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2599, file: !2600, line: 192, baseType: !115, size: 64, offset: 4672)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2599, file: !2600, line: 193, baseType: !115, size: 64, offset: 4736)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2599, file: !2600, line: 193, baseType: !115, size: 64, offset: 4800)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2599, file: !2600, line: 194, baseType: !2697, size: 448, offset: 4864)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2698, line: 12, size: 448, elements: !2699)
!2698 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2699 = !{!2700, !2701, !2702, !2703, !2704, !2705, !2706}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2697, file: !2698, line: 15, baseType: !298, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2697, file: !2698, line: 17, baseType: !298, size: 64, offset: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2697, file: !2698, line: 19, baseType: !298, size: 64, offset: 128)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2697, file: !2698, line: 21, baseType: !298, size: 64, offset: 192)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2697, file: !2698, line: 29, baseType: !298, size: 64, offset: 256)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2697, file: !2698, line: 35, baseType: !298, size: 64, offset: 320)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2697, file: !2698, line: 44, baseType: !298, size: 64, offset: 384)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2599, file: !2600, line: 202, baseType: !300, size: 64, offset: 5312)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2599, file: !2600, line: 213, baseType: !2709, size: 2048, offset: 5376)
!2709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2710, size: 2048, elements: !1880)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2711, line: 43, size: 128, elements: !2712)
!2711 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2712 = !{!2713, !2714}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2710, file: !2711, line: 44, baseType: !114, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2710, file: !2711, line: 45, baseType: !114, size: 64, offset: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2599, file: !2600, line: 216, baseType: !2716, size: 448, offset: 7424)
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2600, line: 30, size: 448, elements: !2717)
!2717 = !{!2718, !2719, !2720, !2721, !2722, !2723, !2724}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2716, file: !2600, line: 31, baseType: !98, size: 32)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2716, file: !2600, line: 32, baseType: !387, size: 64, offset: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2716, file: !2600, line: 33, baseType: !115, size: 64, offset: 128)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2716, file: !2600, line: 34, baseType: !298, size: 64, offset: 192)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2716, file: !2600, line: 34, baseType: !298, size: 64, offset: 256)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2716, file: !2600, line: 35, baseType: !115, size: 64, offset: 320)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2716, file: !2600, line: 35, baseType: !115, size: 64, offset: 384)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2599, file: !2600, line: 219, baseType: !2726, size: 64, offset: 7872)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2728, line: 41, size: 3456, elements: !2729)
!2728 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!2729 = !{!2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2744, !2745, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2727, file: !2728, line: 47, baseType: !170, size: 16)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2727, file: !2728, line: 48, baseType: !313, size: 32, offset: 32)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2727, file: !2728, line: 54, baseType: !161, size: 8, offset: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !2727, file: !2728, line: 55, baseType: !161, size: 8, offset: 72)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !2727, file: !2728, line: 73, baseType: !299, size: 64, align: 64, offset: 128)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !2727, file: !2728, line: 74, baseType: !299, size: 64, offset: 192)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !2727, file: !2728, line: 81, baseType: !299, size: 64, offset: 256)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !2727, file: !2728, line: 82, baseType: !299, size: 64, offset: 320)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !2727, file: !2728, line: 85, baseType: !299, size: 64, offset: 384)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !2727, file: !2728, line: 86, baseType: !299, size: 64, offset: 448)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !2727, file: !2728, line: 94, baseType: !299, size: 64, offset: 512)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !2727, file: !2728, line: 102, baseType: !299, size: 64, offset: 576)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !2727, file: !2728, line: 107, baseType: !2743, size: 256, offset: 640)
!2743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 256, elements: !612)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !2727, file: !2728, line: 108, baseType: !161, size: 8, align: 64, offset: 896)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !2727, file: !2728, line: 110, baseType: !2746, size: 24, offset: 904)
!2746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 24, elements: !463)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !2727, file: !2728, line: 111, baseType: !313, size: 32, align: 64, offset: 960)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !2727, file: !2728, line: 113, baseType: !313, size: 32, offset: 992)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !2727, file: !2728, line: 114, baseType: !313, size: 32, offset: 1024)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !2727, file: !2728, line: 115, baseType: !313, size: 32, offset: 1056)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !2727, file: !2728, line: 117, baseType: !313, size: 32, offset: 1088)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !2727, file: !2728, line: 118, baseType: !299, size: 64, align: 64, offset: 1152)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2727, file: !2728, line: 120, baseType: !299, size: 64, offset: 1216)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2727, file: !2728, line: 121, baseType: !299, size: 64, offset: 1280)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2727, file: !2728, line: 122, baseType: !299, size: 64, offset: 1344)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2727, file: !2728, line: 123, baseType: !299, size: 64, offset: 1408)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !2727, file: !2728, line: 133, baseType: !299, size: 64, offset: 1472)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !2727, file: !2728, line: 137, baseType: !299, size: 64, offset: 1536)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2727, file: !2728, line: 142, baseType: !299, size: 64, offset: 1600)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2727, file: !2728, line: 143, baseType: !299, size: 64, offset: 1664)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !2727, file: !2728, line: 146, baseType: !299, size: 64, offset: 1728)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !2727, file: !2728, line: 147, baseType: !299, size: 64, offset: 1792)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !2727, file: !2728, line: 148, baseType: !299, size: 64, offset: 1856)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !2727, file: !2728, line: 149, baseType: !299, size: 64, offset: 1920)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2727, file: !2728, line: 154, baseType: !299, size: 64, offset: 1984)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2727, file: !2728, line: 155, baseType: !299, size: 64, offset: 2048)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2727, file: !2728, line: 156, baseType: !299, size: 64, offset: 2112)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2727, file: !2728, line: 158, baseType: !299, size: 64, offset: 2176)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2727, file: !2728, line: 159, baseType: !299, size: 64, offset: 2240)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !2727, file: !2728, line: 162, baseType: !299, size: 64, offset: 2304)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !2727, file: !2728, line: 163, baseType: !299, size: 64, offset: 2368)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !2727, file: !2728, line: 164, baseType: !299, size: 64, offset: 2432)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !2727, file: !2728, line: 167, baseType: !299, size: 64, offset: 2496)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !2727, file: !2728, line: 168, baseType: !299, size: 64, offset: 2560)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !2727, file: !2728, line: 171, baseType: !299, size: 64, offset: 2624)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !2727, file: !2728, line: 172, baseType: !299, size: 64, offset: 2688)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !2727, file: !2728, line: 175, baseType: !299, size: 64, offset: 2752)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !2727, file: !2728, line: 178, baseType: !299, size: 64, offset: 2816)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !2727, file: !2728, line: 179, baseType: !299, size: 64, offset: 2880)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !2727, file: !2728, line: 182, baseType: !313, size: 32, offset: 2944)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !2727, file: !2728, line: 186, baseType: !299, size: 64, align: 64, offset: 3008)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !2727, file: !2728, line: 194, baseType: !299, size: 64, offset: 3072)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !2727, file: !2728, line: 195, baseType: !299, size: 64, offset: 3136)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !2727, file: !2728, line: 199, baseType: !299, size: 64, offset: 3200)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !2727, file: !2728, line: 200, baseType: !299, size: 64, offset: 3264)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !2727, file: !2728, line: 203, baseType: !299, size: 64, offset: 3328)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !2727, file: !2728, line: 204, baseType: !299, size: 64, offset: 3392)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2599, file: !2600, line: 222, baseType: !7, size: 32, offset: 7936)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2599, file: !2600, line: 223, baseType: !2790, size: 64, offset: 8000)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2600, line: 223, flags: DIFlagFwdDecl)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2599, file: !2600, line: 230, baseType: !1436, size: 8, offset: 8064)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2599, file: !2600, line: 231, baseType: !1384, size: 16, offset: 8080)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2599, file: !2600, line: 232, baseType: !1384, size: 16, offset: 8096)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2599, file: !2600, line: 234, baseType: !1233, size: 64, offset: 8128)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2599, file: !2600, line: 237, baseType: !802, size: 256, offset: 8192)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2599, file: !2600, line: 243, baseType: !1288, size: 320, offset: 8448)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !946, file: !947, line: 1111, baseType: !2799, size: 64, offset: 15424)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2600, line: 20, size: 16640, elements: !2801)
!2801 = !{!2802, !2803, !2804, !2805}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2800, file: !2600, line: 21, baseType: !135, size: 32)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2800, file: !2600, line: 22, baseType: !904, size: 32, offset: 32)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2800, file: !2600, line: 23, baseType: !130, size: 192, offset: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2800, file: !2600, line: 24, baseType: !2806, size: 16384, offset: 256)
!2806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2807, size: 16384, elements: !467)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2611, line: 51, size: 256, elements: !2808)
!2808 = !{!2809}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2807, file: !2611, line: 52, baseType: !2810, size: 256)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2611, line: 37, size: 256, elements: !2811)
!2811 = !{!2812, !2819, !2820, !2824}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2810, file: !2611, line: 39, baseType: !2813, size: 64)
!2813 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2814, line: 83, baseType: !2815)
!2814 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2814, line: 82, baseType: !2817)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{null, !98}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2810, file: !2611, line: 40, baseType: !115, size: 64, offset: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2810, file: !2611, line: 46, baseType: !2821, size: 64, offset: 128)
!2821 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2814, line: 86, baseType: !2822)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2814, line: 85, baseType: !2493)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2810, file: !2611, line: 48, baseType: !2615, size: 64, offset: 192)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !946, file: !947, line: 1112, baseType: !2615, size: 64, offset: 15488)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !946, file: !947, line: 1113, baseType: !2615, size: 64, offset: 15552)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !946, file: !947, line: 1115, baseType: !2615, size: 64, offset: 15616)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !946, file: !947, line: 1116, baseType: !2610, size: 192, offset: 15680)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !946, file: !947, line: 1117, baseType: !115, size: 64, offset: 15872)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !946, file: !947, line: 1118, baseType: !111, size: 64, offset: 15936)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !946, file: !947, line: 1119, baseType: !7, size: 32, offset: 16000)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !946, file: !947, line: 1121, baseType: !862, size: 64, offset: 16064)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !946, file: !947, line: 1125, baseType: !2834, size: 64, offset: 16128)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !947, line: 43, flags: DIFlagFwdDecl)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !946, file: !947, line: 1127, baseType: !541, size: 32, offset: 16192)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !946, file: !947, line: 1128, baseType: !7, size: 32, offset: 16224)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !946, file: !947, line: 1130, baseType: !2839, size: 128, offset: 16256)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2840, line: 37, size: 128, elements: !2841)
!2840 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2841 = !{!2842, !2843, !2844}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2839, file: !2840, line: 38, baseType: !98, size: 32)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2839, file: !2840, line: 39, baseType: !125, size: 32, offset: 32)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2839, file: !2840, line: 40, baseType: !2845, size: 64, offset: 64)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2840, line: 24, flags: DIFlagFwdDecl)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !946, file: !947, line: 1131, baseType: !2848, size: 256, offset: 16384)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2849, line: 12, size: 256, elements: !2850)
!2849 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2850 = !{!2851, !2852, !2853, !2854}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2848, file: !2849, line: 13, baseType: !462, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2848, file: !2849, line: 14, baseType: !115, size: 64, offset: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2848, file: !2849, line: 15, baseType: !115, size: 64, offset: 128)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2848, file: !2849, line: 16, baseType: !1436, size: 8, offset: 192)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !946, file: !947, line: 1134, baseType: !298, size: 64, offset: 16640)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !946, file: !947, line: 1135, baseType: !298, size: 64, offset: 16704)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !946, file: !947, line: 1138, baseType: !135, size: 32, offset: 16768)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !946, file: !947, line: 1141, baseType: !815, size: 32, offset: 16800)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !946, file: !947, line: 1143, baseType: !2860, size: 64, offset: 16832)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !947, line: 735, size: 64, elements: !2861)
!2861 = !{!2862}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2860, file: !947, line: 736, baseType: !2863, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !946, file: !947, line: 1147, baseType: !1123, size: 128, offset: 16896)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !946, file: !947, line: 1149, baseType: !945, size: 64, offset: 17024)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !946, file: !947, line: 1151, baseType: !2867, size: 64, offset: 17088)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !947, line: 1151, flags: DIFlagFwdDecl)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !946, file: !947, line: 1188, baseType: !96, size: 64, offset: 17152)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !946, file: !947, line: 1191, baseType: !2871, size: 64, offset: 17216)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !947, line: 44, flags: DIFlagFwdDecl)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !946, file: !947, line: 1194, baseType: !2874, size: 64, offset: 17280)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !947, line: 45, flags: DIFlagFwdDecl)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !946, file: !947, line: 1197, baseType: !2877, size: 64, offset: 17344)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !947, line: 61, flags: DIFlagFwdDecl)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !946, file: !947, line: 1199, baseType: !2880, size: 64, offset: 17408)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2882, line: 99, size: 128, elements: !2883)
!2882 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2883 = !{!2884, !2885, !2886}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2881, file: !2882, line: 100, baseType: !806, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2881, file: !2882, line: 101, baseType: !125, size: 32, offset: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2881, file: !2882, line: 103, baseType: !102, size: 16, offset: 96)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !946, file: !947, line: 1202, baseType: !2888, size: 64, offset: 17472)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !947, line: 48, flags: DIFlagFwdDecl)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !946, file: !947, line: 1205, baseType: !115, size: 64, offset: 17536)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !946, file: !947, line: 1206, baseType: !2892, size: 64, offset: 17600)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2611, line: 14, baseType: !2894)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2611, line: 12, size: 384, elements: !2895)
!2895 = !{!2896}
!2896 = !DIDerivedType(tag: DW_TAG_member, scope: !2894, file: !2611, line: 13, baseType: !2897, size: 384)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2894, file: !2611, line: 13, size: 384, elements: !2898)
!2898 = !{!2899, !2900, !2901, !2902}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2897, file: !2611, line: 13, baseType: !98, size: 32)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2897, file: !2611, line: 13, baseType: !98, size: 32, offset: 32)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2897, file: !2611, line: 13, baseType: !98, size: 32, offset: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2897, file: !2611, line: 13, baseType: !2903, size: 256, offset: 128)
!2903 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2904, line: 37, size: 256, elements: !2905)
!2904 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2905 = !{!2906, !2911, !2924, !2930, !2939, !2966, !2971}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2903, file: !2904, line: 42, baseType: !2907, size: 64)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2903, file: !2904, line: 39, size: 64, elements: !2908)
!2908 = !{!2909, !2910}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2907, file: !2904, line: 40, baseType: !1753, size: 32)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2907, file: !2904, line: 41, baseType: !547, size: 32, offset: 32)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2903, file: !2904, line: 50, baseType: !2912, size: 192)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2903, file: !2904, line: 45, size: 192, elements: !2913)
!2913 = !{!2914, !2916, !2917, !2923}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2912, file: !2904, line: 46, baseType: !2915, size: 32)
!2915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !113, line: 95, baseType: !98)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2912, file: !2904, line: 47, baseType: !98, size: 32, offset: 32)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2912, file: !2904, line: 48, baseType: !2918, size: 64, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2904, line: 11, baseType: !2919)
!2919 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2904, line: 8, size: 64, elements: !2920)
!2920 = !{!2921, !2922}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2919, file: !2904, line: 9, baseType: !98, size: 32)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2919, file: !2904, line: 10, baseType: !96, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2912, file: !2904, line: 49, baseType: !98, size: 32, offset: 128)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2903, file: !2904, line: 57, baseType: !2925, size: 128)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2903, file: !2904, line: 53, size: 128, elements: !2926)
!2926 = !{!2927, !2928, !2929}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2925, file: !2904, line: 54, baseType: !1753, size: 32)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2925, file: !2904, line: 55, baseType: !547, size: 32, offset: 32)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2925, file: !2904, line: 56, baseType: !2918, size: 64, offset: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2903, file: !2904, line: 66, baseType: !2931, size: 256)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2903, file: !2904, line: 60, size: 256, elements: !2932)
!2932 = !{!2933, !2934, !2935, !2936, !2938}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2931, file: !2904, line: 61, baseType: !1753, size: 32)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2931, file: !2904, line: 62, baseType: !547, size: 32, offset: 32)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2931, file: !2904, line: 63, baseType: !98, size: 32, offset: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2931, file: !2904, line: 64, baseType: !2937, size: 64, offset: 128)
!2937 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !113, line: 94, baseType: !496)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2931, file: !2904, line: 65, baseType: !2937, size: 64, offset: 192)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2903, file: !2904, line: 105, baseType: !2940, size: 256)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2903, file: !2904, line: 69, size: 256, elements: !2941)
!2941 = !{!2942, !2943}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2940, file: !2904, line: 70, baseType: !96, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, scope: !2940, file: !2904, line: 79, baseType: !2944, size: 192, offset: 64)
!2944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2940, file: !2904, line: 79, size: 192, elements: !2945)
!2945 = !{!2946, !2947, !2948, !2955, !2960}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2944, file: !2904, line: 81, baseType: !98, size: 32)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2944, file: !2904, line: 86, baseType: !1384, size: 16)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2944, file: !2904, line: 92, baseType: !2949, size: 192)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2944, file: !2904, line: 88, size: 192, elements: !2950)
!2950 = !{!2951, !2953, !2954}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2949, file: !2904, line: 89, baseType: !2952, size: 64)
!2952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 64, elements: !1107)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2949, file: !2904, line: 90, baseType: !96, size: 64, offset: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2949, file: !2904, line: 91, baseType: !96, size: 64, offset: 128)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2944, file: !2904, line: 97, baseType: !2956, size: 96)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2944, file: !2904, line: 94, size: 96, elements: !2957)
!2957 = !{!2958, !2959}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2956, file: !2904, line: 95, baseType: !2952, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2956, file: !2904, line: 96, baseType: !313, size: 32, offset: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2944, file: !2904, line: 103, baseType: !2961, size: 128)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2944, file: !2904, line: 99, size: 128, elements: !2962)
!2962 = !{!2963, !2964, !2965}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2961, file: !2904, line: 100, baseType: !115, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2961, file: !2904, line: 101, baseType: !313, size: 32, offset: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2961, file: !2904, line: 102, baseType: !313, size: 32, offset: 96)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2903, file: !2904, line: 111, baseType: !2967, size: 128)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2903, file: !2904, line: 108, size: 128, elements: !2968)
!2968 = !{!2969, !2970}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2967, file: !2904, line: 109, baseType: !387, size: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2967, file: !2904, line: 110, baseType: !98, size: 32, offset: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2903, file: !2904, line: 118, baseType: !2972, size: 128)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2903, file: !2904, line: 114, size: 128, elements: !2973)
!2973 = !{!2974, !2975, !2976}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2972, file: !2904, line: 115, baseType: !96, size: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2972, file: !2904, line: 116, baseType: !98, size: 32, offset: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2972, file: !2904, line: 117, baseType: !7, size: 32, offset: 96)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !946, file: !947, line: 1208, baseType: !2697, size: 448, offset: 17664)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !946, file: !947, line: 1215, baseType: !298, size: 64, offset: 18112)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !946, file: !947, line: 1217, baseType: !298, size: 64, offset: 18176)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !946, file: !947, line: 1219, baseType: !298, size: 64, offset: 18240)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !946, file: !947, line: 1223, baseType: !2982, size: 64, offset: 18304)
!2982 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2983, line: 99, baseType: !2984)
!2983 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2983, line: 99, size: 64, elements: !2985)
!2985 = !{!2986}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2984, file: !2983, line: 99, baseType: !359, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !946, file: !947, line: 1225, baseType: !576, size: 32, offset: 18368)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !946, file: !947, line: 1226, baseType: !98, size: 32, offset: 18400)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !946, file: !947, line: 1227, baseType: !98, size: 32, offset: 18432)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !946, file: !947, line: 1231, baseType: !1938, size: 64, offset: 18496)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !946, file: !947, line: 1233, baseType: !173, size: 128, offset: 18560)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !946, file: !947, line: 1240, baseType: !2993, size: 64, offset: 18688)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !947, line: 62, flags: DIFlagFwdDecl)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !946, file: !947, line: 1242, baseType: !2996, size: 64, offset: 18752)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !947, line: 1242, flags: DIFlagFwdDecl)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !946, file: !947, line: 1244, baseType: !173, size: 128, offset: 18816)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !946, file: !947, line: 1245, baseType: !3000, size: 64, offset: 18944)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !947, line: 51, flags: DIFlagFwdDecl)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !946, file: !947, line: 1246, baseType: !802, size: 256, offset: 19008)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !946, file: !947, line: 1247, baseType: !7, size: 32, offset: 19264)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !946, file: !947, line: 1250, baseType: !3005, size: 64, offset: 19328)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !237, line: 912, size: 1792, elements: !3007)
!3007 = !{!3008, !3009, !3010, !3011, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3006, file: !237, line: 917, baseType: !815, size: 32)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3006, file: !237, line: 923, baseType: !802, size: 256, offset: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3006, file: !237, line: 925, baseType: !173, size: 128, offset: 320)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3006, file: !237, line: 926, baseType: !3012, size: 128, offset: 448)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !237, line: 901, size: 128, elements: !3013)
!3013 = !{!3014, !3015}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3012, file: !237, line: 902, baseType: !1126, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3012, file: !237, line: 903, baseType: !298, size: 64, offset: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3006, file: !237, line: 927, baseType: !3012, size: 128, offset: 576)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3006, file: !237, line: 928, baseType: !173, size: 128, offset: 704)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3006, file: !237, line: 930, baseType: !98, size: 32, offset: 832)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3006, file: !237, line: 931, baseType: !98, size: 32, offset: 864)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3006, file: !237, line: 932, baseType: !98, size: 32, offset: 896)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3006, file: !237, line: 934, baseType: !98, size: 32, offset: 928)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3006, file: !237, line: 935, baseType: !98, size: 32, offset: 960)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3006, file: !237, line: 936, baseType: !98, size: 32, offset: 992)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3006, file: !237, line: 937, baseType: !98, size: 32, offset: 1024)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3006, file: !237, line: 939, baseType: !904, size: 32, offset: 1056)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3006, file: !237, line: 940, baseType: !945, size: 64, offset: 1088)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3006, file: !237, line: 945, baseType: !298, size: 64, offset: 1152)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3006, file: !237, line: 946, baseType: !298, size: 64, offset: 1216)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3006, file: !237, line: 947, baseType: !298, size: 64, offset: 1280)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3006, file: !237, line: 953, baseType: !3005, size: 64, offset: 1344)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3006, file: !237, line: 954, baseType: !298, size: 64, offset: 1408)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3006, file: !237, line: 955, baseType: !298, size: 64, offset: 1472)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3006, file: !237, line: 956, baseType: !98, size: 32, offset: 1536)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3006, file: !237, line: 958, baseType: !98, size: 32, offset: 1568)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3006, file: !237, line: 960, baseType: !859, size: 128, align: 64, offset: 1600)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3006, file: !237, line: 968, baseType: !3037, size: 64, offset: 1728)
!3037 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3038, line: 12, baseType: !3039)
!3038 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3038, line: 10, size: 64, elements: !3040)
!3040 = !{!3041}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3039, file: !3038, line: 11, baseType: !806, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !946, file: !947, line: 1251, baseType: !802, size: 256, offset: 19392)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !946, file: !947, line: 1252, baseType: !173, size: 128, offset: 19648)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !946, file: !947, line: 1259, baseType: !2075, size: 64, offset: 19776)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !946, file: !947, line: 1260, baseType: !1384, size: 16, offset: 19840)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !946, file: !947, line: 1261, baseType: !1384, size: 16, offset: 19856)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !946, file: !947, line: 1314, baseType: !3048, size: 64, offset: 19904)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3050, line: 62, size: 256, align: 256, elements: !3051)
!3050 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3051 = !{!3052, !3053, !3054, !3055, !3056, !3057, !3058}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3049, file: !3050, line: 75, baseType: !313, size: 32)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3049, file: !3050, line: 90, baseType: !313, size: 32, offset: 32)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3049, file: !3050, line: 112, baseType: !299, size: 64, offset: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3049, file: !3050, line: 132, baseType: !313, size: 32, offset: 128)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3049, file: !3050, line: 140, baseType: !313, size: 32, offset: 160)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3049, file: !3050, line: 149, baseType: !313, size: 32, offset: 192)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3049, file: !3050, line: 154, baseType: !331, offset: 224)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !946, file: !947, line: 1315, baseType: !312, size: 32, offset: 19968)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !946, file: !947, line: 1316, baseType: !312, size: 32, offset: 20000)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !946, file: !947, line: 1321, baseType: !115, size: 64, offset: 20032)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !946, file: !947, line: 1325, baseType: !98, size: 32, offset: 20096)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !946, file: !947, line: 1326, baseType: !98, size: 32, offset: 20128)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !946, file: !947, line: 1327, baseType: !98, size: 32, offset: 20160)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !946, file: !947, line: 1328, baseType: !98, size: 32, offset: 20192)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !946, file: !947, line: 1329, baseType: !859, size: 128, align: 64, offset: 20224)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !946, file: !947, line: 1332, baseType: !3068, size: 128, offset: 20352)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3069, line: 51, size: 128, elements: !3070)
!3069 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3070 = !{!3071, !3076, !3077}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3068, file: !3069, line: 60, baseType: !3072, size: 64)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3073, line: 7, size: 64, elements: !3074)
!3073 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3074 = !{!3075}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3072, file: !3073, line: 12, baseType: !355, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3068, file: !3069, line: 63, baseType: !1436, size: 8, offset: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3068, file: !3069, line: 70, baseType: !1436, size: 8, offset: 72)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !946, file: !947, line: 1335, baseType: !3079, size: 64, offset: 20480)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !947, line: 59, flags: DIFlagFwdDecl)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !946, file: !947, line: 1337, baseType: !3082, size: 128, offset: 20544)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3069, line: 39, size: 128, elements: !3083)
!3083 = !{!3084, !3085, !3086}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3082, file: !3069, line: 40, baseType: !2134, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3082, file: !3069, line: 42, baseType: !313, size: 32, offset: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3082, file: !3069, line: 43, baseType: !313, size: 32, offset: 96)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !946, file: !947, line: 1340, baseType: !3088, size: 64, offset: 20672)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !947, line: 69, flags: DIFlagFwdDecl)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !946, file: !947, line: 1351, baseType: !98, size: 32, offset: 20736)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !946, file: !947, line: 1352, baseType: !98, size: 32, offset: 20768)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !946, file: !947, line: 1354, baseType: !115, size: 64, offset: 20800)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !946, file: !947, line: 1364, baseType: !298, size: 64, offset: 20864)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !946, file: !947, line: 1365, baseType: !298, size: 64, offset: 20928)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !946, file: !947, line: 1412, baseType: !115, size: 64, offset: 20992)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !946, file: !947, line: 1453, baseType: !3097, size: 64, offset: 21056)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !947, line: 1453, flags: DIFlagFwdDecl)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !946, file: !947, line: 1457, baseType: !3100, size: 64, offset: 21120)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !76, line: 61, size: 576, elements: !3102)
!3102 = !{!3103, !3104, !3123, !3126, !3127, !3160, !3170}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3101, file: !76, line: 62, baseType: !75, size: 32)
!3104 = !DIDerivedType(tag: DW_TAG_member, scope: !3101, file: !76, line: 64, baseType: !3105, size: 192, offset: 64)
!3105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3101, file: !76, line: 64, size: 192, elements: !3106)
!3106 = !{!3107, !3118}
!3107 = !DIDerivedType(tag: DW_TAG_member, scope: !3105, file: !76, line: 65, baseType: !3108, size: 192)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3105, file: !76, line: 65, size: 192, elements: !3109)
!3109 = !{!3110, !3117}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3108, file: !76, line: 66, baseType: !3111, size: 128)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3112, line: 50, size: 128, elements: !3113)
!3112 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3113 = !{!3114, !3115, !3116}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3111, file: !3112, line: 52, baseType: !115, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3111, file: !3112, line: 54, baseType: !7, size: 32, offset: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3111, file: !3112, line: 55, baseType: !7, size: 32, offset: 96)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3108, file: !76, line: 67, baseType: !115, size: 64, offset: 128)
!3118 = !DIDerivedType(tag: DW_TAG_member, scope: !3105, file: !76, line: 70, baseType: !3119, size: 192)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3105, file: !76, line: 70, size: 192, elements: !3120)
!3120 = !{!3121, !3122}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3119, file: !76, line: 71, baseType: !859, size: 128, align: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3119, file: !76, line: 72, baseType: !115, size: 64, offset: 128)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3101, file: !76, line: 76, baseType: !3124, size: 64, offset: 256)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !76, line: 76, flags: DIFlagFwdDecl)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3101, file: !76, line: 77, baseType: !115, size: 64, offset: 320)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3101, file: !76, line: 79, baseType: !3128, size: 64, offset: 384)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3112, line: 25, size: 256, elements: !3130)
!3130 = !{!3131, !3137, !3141}
!3131 = !DIDerivedType(tag: DW_TAG_member, scope: !3129, file: !3112, line: 26, baseType: !3132, size: 128)
!3132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3129, file: !3112, line: 26, size: 128, elements: !3133)
!3133 = !{!3134, !3136}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3132, file: !3112, line: 27, baseType: !3135, size: 128)
!3135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 128, elements: !1880)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3132, file: !3112, line: 28, baseType: !3135, size: 128)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3129, file: !3112, line: 31, baseType: !3138, size: 64, offset: 128)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3140)
!3140 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3112, line: 23, flags: DIFlagFwdDecl)
!3141 = !DIDerivedType(tag: DW_TAG_member, scope: !3129, file: !3112, line: 33, baseType: !3142, size: 64, offset: 192)
!3142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3129, file: !3112, line: 33, size: 64, elements: !3143)
!3143 = !{!3144, !3150, !3155}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3142, file: !3112, line: 38, baseType: !3145, size: 64)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3142, file: !3112, line: 34, size: 64, elements: !3146)
!3146 = !{!3147, !3148, !3149}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3145, file: !3112, line: 35, baseType: !383, size: 32)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3145, file: !3112, line: 36, baseType: !159, size: 8, offset: 32)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3145, file: !3112, line: 37, baseType: !159, size: 8, offset: 40)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3142, file: !3112, line: 42, baseType: !3151, size: 16)
!3151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3142, file: !3112, line: 39, size: 16, elements: !3152)
!3152 = !{!3153, !3154}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3151, file: !3112, line: 40, baseType: !159, size: 8)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3151, file: !3112, line: 41, baseType: !159, size: 8, offset: 8)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3142, file: !3112, line: 46, baseType: !3156, size: 16)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3142, file: !3112, line: 43, size: 16, elements: !3157)
!3157 = !{!3158, !3159}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3156, file: !3112, line: 44, baseType: !159, size: 8)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3156, file: !3112, line: 45, baseType: !159, size: 8, offset: 8)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3101, file: !76, line: 81, baseType: !3161, size: 64, offset: 448)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !76, line: 85, size: 384, elements: !3163)
!3163 = !{!3164, !3165, !3166, !3167, !3168, !3169}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3162, file: !76, line: 86, baseType: !3124, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3162, file: !76, line: 87, baseType: !115, size: 64, offset: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3162, file: !76, line: 88, baseType: !115, size: 64, offset: 128)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3162, file: !76, line: 89, baseType: !115, size: 64, offset: 192)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3162, file: !76, line: 90, baseType: !1436, size: 8, offset: 256)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3162, file: !76, line: 92, baseType: !3161, size: 64, offset: 320)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3101, file: !76, line: 82, baseType: !7, size: 32, offset: 512)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !946, file: !947, line: 1463, baseType: !3172, offset: 21184)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !947, line: 739, elements: !722)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !946, file: !947, line: 1470, baseType: !859, size: 128, align: 64, offset: 21184)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !946, file: !947, line: 1471, baseType: !904, size: 32, offset: 21312)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !946, file: !947, line: 1472, baseType: !98, size: 32, offset: 21344)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !946, file: !947, line: 1474, baseType: !945, size: 64, offset: 21376)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !946, file: !947, line: 1475, baseType: !2358, size: 320, offset: 21440)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !946, file: !947, line: 1478, baseType: !3179, size: 64, offset: 21760)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !947, line: 1478, flags: DIFlagFwdDecl)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !946, file: !947, line: 1482, baseType: !904, size: 32, offset: 21824)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !946, file: !947, line: 1489, baseType: !96, size: 64, offset: 21888)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !946, file: !947, line: 1504, baseType: !96, size: 64, offset: 21952)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !946, file: !947, line: 1505, baseType: !299, size: 64, offset: 22016)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !946, file: !947, line: 1506, baseType: !298, size: 64, offset: 22080)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !946, file: !947, line: 1507, baseType: !299, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !946, file: !947, line: 1508, baseType: !299, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !946, file: !947, line: 1509, baseType: !299, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !946, file: !947, line: 1510, baseType: !859, size: 128, align: 64, offset: 22208)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !946, file: !947, line: 1511, baseType: !98, size: 32, offset: 22336)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !946, file: !947, line: 1515, baseType: !3192, size: 64, offset: 22400)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !854, line: 56, size: 64, elements: !3193)
!3193 = !{!3194}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3192, file: !854, line: 57, baseType: !857, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !946, file: !947, line: 1518, baseType: !3192, size: 64, offset: 22464)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !946, file: !947, line: 1528, baseType: !859, size: 128, align: 64, offset: 22528)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !946, file: !947, line: 1552, baseType: !3198, size: 35328, offset: 23040)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3199, line: 430, size: 35328, elements: !3200)
!3199 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3200 = !{!3201, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !4355, !4356, !4357, !4358, !4359, !4360, !4363, !4364, !4365, !4366}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3198, file: !3199, line: 432, baseType: !3202, size: 192)
!3202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3203, size: 192, elements: !463)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3204, line: 16, size: 64, elements: !3205)
!3204 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3205 = !{!3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3203, file: !3204, line: 17, baseType: !169, size: 16)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3203, file: !3204, line: 18, baseType: !169, size: 16, offset: 16)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3203, file: !3204, line: 19, baseType: !169, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3203, file: !3204, line: 19, baseType: !169, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3203, file: !3204, line: 19, baseType: !169, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3203, file: !3204, line: 19, baseType: !169, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3203, file: !3204, line: 19, baseType: !169, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3203, file: !3204, line: 20, baseType: !169, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3203, file: !3204, line: 20, baseType: !169, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3203, file: !3204, line: 20, baseType: !169, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3203, file: !3204, line: 20, baseType: !169, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3203, file: !3204, line: 20, baseType: !169, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3203, file: !3204, line: 20, baseType: !169, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3198, file: !3199, line: 436, baseType: !115, size: 64, offset: 192)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3198, file: !3199, line: 440, baseType: !102, size: 16, offset: 256)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3198, file: !3199, line: 441, baseType: !102, size: 16, offset: 272)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3198, file: !3199, line: 442, baseType: !102, size: 16, offset: 288)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3198, file: !3199, line: 443, baseType: !102, size: 16, offset: 304)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3198, file: !3199, line: 447, baseType: !115, size: 64, offset: 320)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3198, file: !3199, line: 448, baseType: !115, size: 64, offset: 384)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3198, file: !3199, line: 459, baseType: !3227, size: 256, offset: 448)
!3227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3228, size: 256, elements: !913)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !237, line: 671, size: 8512, elements: !3230)
!3230 = !{!3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3757, !3758, !3759, !3760, !3766, !3767, !3768, !3769, !3770, !3854, !3855, !3856, !3857, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3977, !3978, !3979, !3980, !3981, !3982, !3997, !3998, !3999, !4000, !4001, !4007, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4024, !4195, !4196, !4338, !4339, !4352, !4353, !4354}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !3229, file: !237, line: 678, baseType: !173, size: 128)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !3229, file: !237, line: 684, baseType: !173, size: 128, offset: 128)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !3229, file: !237, line: 685, baseType: !173, size: 128, offset: 256)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3229, file: !237, line: 689, baseType: !994, size: 192, align: 64, offset: 384)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !3229, file: !237, line: 690, baseType: !298, size: 64, offset: 576)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !3229, file: !237, line: 696, baseType: !173, size: 128, offset: 640)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !3229, file: !237, line: 698, baseType: !339, size: 128, offset: 768)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !3229, file: !237, line: 699, baseType: !173, size: 128, offset: 896)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !3229, file: !237, line: 700, baseType: !98, size: 32, offset: 1024)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !3229, file: !237, line: 703, baseType: !98, size: 32, offset: 1056)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !3229, file: !237, line: 705, baseType: !98, size: 32, offset: 1088)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !3229, file: !237, line: 707, baseType: !7, size: 32, offset: 1120)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3229, file: !237, line: 708, baseType: !3228, size: 64, offset: 1152)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3229, file: !237, line: 714, baseType: !3245, size: 64, offset: 1216)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !237, line: 302, size: 2432, elements: !3247)
!3247 = !{!3248, !3249, !3250, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3663, !3664, !3665, !3666, !3667, !3671, !3672, !3676, !3680, !3681, !3685, !3689, !3690, !3691, !3695, !3699, !3703, !3704, !3705, !3709, !3713, !3717, !3722, !3723, !3743, !3747, !3748, !3749, !3753}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3246, file: !237, line: 303, baseType: !173, size: 128)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3246, file: !237, line: 305, baseType: !408, size: 64, offset: 128)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3246, file: !237, line: 306, baseType: !3251, size: 64, offset: 192)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !190, line: 705, size: 5824, elements: !3253)
!3253 = !{!3254, !3255, !3256, !3259, !3260, !3313, !3383, !3384, !3385, !3386, !3387, !3394, !3486, !3499, !3509, !3513, !3515, !3516, !3517, !3521, !3528, !3529, !3532, !3535, !3539, !3542, !3543, !3544, !3545, !3546, !3547, !3604, !3605, !3606, !3609, !3612, !3621, !3622, !3623, !3624, !3625, !3626}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3252, file: !190, line: 706, baseType: !421, size: 512)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3252, file: !190, line: 707, baseType: !3251, size: 64, offset: 512)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3252, file: !190, line: 709, baseType: !3257, size: 64, offset: 576)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !190, line: 37, flags: DIFlagFwdDecl)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3252, file: !190, line: 711, baseType: !92, size: 64, offset: 640)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3252, file: !190, line: 712, baseType: !3261, size: 64, offset: 704)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3263)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !190, line: 89, size: 384, elements: !3264)
!3264 = !{!3265, !3266, !3267, !3273, !3278, !3282}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3263, file: !190, line: 90, baseType: !92, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3263, file: !190, line: 91, baseType: !507, size: 64, offset: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3263, file: !190, line: 92, baseType: !3268, size: 64, offset: 128)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!98, !3271, !457}
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3252)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3263, file: !190, line: 93, baseType: !3274, size: 64, offset: 192)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!462, !3271, !3277, !1615, !1616}
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3263, file: !190, line: 95, baseType: !3279, size: 64, offset: 256)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{null, !3251}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3263, file: !190, line: 97, baseType: !3283, size: 64, offset: 320)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3285)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !197, line: 286, size: 1472, elements: !3286)
!3286 = !{!3287, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3285, file: !197, line: 287, baseType: !3288, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!98, !3251}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3285, file: !197, line: 288, baseType: !3279, size: 64, offset: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3285, file: !197, line: 289, baseType: !3288, size: 64, offset: 128)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3285, file: !197, line: 290, baseType: !3288, size: 64, offset: 192)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3285, file: !197, line: 291, baseType: !3288, size: 64, offset: 256)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3285, file: !197, line: 292, baseType: !3288, size: 64, offset: 320)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3285, file: !197, line: 293, baseType: !3288, size: 64, offset: 384)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3285, file: !197, line: 294, baseType: !3288, size: 64, offset: 448)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3285, file: !197, line: 295, baseType: !3288, size: 64, offset: 512)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3285, file: !197, line: 296, baseType: !3288, size: 64, offset: 576)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3285, file: !197, line: 297, baseType: !3288, size: 64, offset: 640)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3285, file: !197, line: 298, baseType: !3288, size: 64, offset: 704)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3285, file: !197, line: 299, baseType: !3288, size: 64, offset: 768)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3285, file: !197, line: 300, baseType: !3288, size: 64, offset: 832)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3285, file: !197, line: 301, baseType: !3288, size: 64, offset: 896)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3285, file: !197, line: 302, baseType: !3288, size: 64, offset: 960)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3285, file: !197, line: 303, baseType: !3288, size: 64, offset: 1024)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3285, file: !197, line: 304, baseType: !3288, size: 64, offset: 1088)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3285, file: !197, line: 305, baseType: !3288, size: 64, offset: 1152)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3285, file: !197, line: 306, baseType: !3288, size: 64, offset: 1216)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3285, file: !197, line: 307, baseType: !3288, size: 64, offset: 1280)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3285, file: !197, line: 308, baseType: !3288, size: 64, offset: 1344)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3285, file: !197, line: 309, baseType: !3288, size: 64, offset: 1408)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3252, file: !190, line: 714, baseType: !3314, size: 64, offset: 768)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3316)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3317, line: 80, size: 1344, elements: !3318)
!3317 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!3318 = !{!3319, !3320, !3321, !3322, !3323, !3324, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3382}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3316, file: !3317, line: 81, baseType: !92, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3316, file: !3317, line: 82, baseType: !92, size: 64, offset: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3316, file: !3317, line: 83, baseType: !507, size: 64, offset: 128)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3316, file: !3317, line: 84, baseType: !507, size: 64, offset: 192)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3316, file: !3317, line: 85, baseType: !507, size: 64, offset: 256)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3316, file: !3317, line: 87, baseType: !3325, size: 64, offset: 320)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!98, !3251, !3328}
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !184, line: 96, size: 1152, elements: !3330)
!3330 = !{!3331, !3332, !3333, !3334, !3335, !3336, !3337, !3341, !3345, !3346, !3347, !3348, !3349, !3357, !3358, !3359, !3360, !3361, !3362}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3329, file: !184, line: 97, baseType: !92, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3329, file: !184, line: 98, baseType: !3314, size: 64, offset: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3329, file: !184, line: 100, baseType: !408, size: 64, offset: 128)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3329, file: !184, line: 101, baseType: !92, size: 64, offset: 192)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3329, file: !184, line: 103, baseType: !1436, size: 8, offset: 256)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3329, file: !184, line: 104, baseType: !183, size: 32, offset: 288)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3329, file: !184, line: 106, baseType: !3338, size: 64, offset: 320)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3340)
!3340 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !184, line: 106, flags: DIFlagFwdDecl)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3329, file: !184, line: 107, baseType: !3342, size: 64, offset: 384)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3344)
!3344 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !184, line: 107, flags: DIFlagFwdDecl)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3329, file: !184, line: 109, baseType: !3288, size: 64, offset: 448)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3329, file: !184, line: 110, baseType: !3279, size: 64, offset: 512)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3329, file: !184, line: 111, baseType: !3288, size: 64, offset: 576)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3329, file: !184, line: 112, baseType: !3279, size: 64, offset: 640)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3329, file: !184, line: 113, baseType: !3350, size: 64, offset: 704)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!98, !3251, !3353}
!3353 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !197, line: 60, baseType: !3354)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !197, line: 58, size: 32, elements: !3355)
!3355 = !{!3356}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3354, file: !197, line: 59, baseType: !98, size: 32)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3329, file: !184, line: 114, baseType: !3288, size: 64, offset: 768)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3329, file: !184, line: 115, baseType: !507, size: 64, offset: 832)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3329, file: !184, line: 116, baseType: !507, size: 64, offset: 896)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3329, file: !184, line: 118, baseType: !3283, size: 64, offset: 960)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3329, file: !184, line: 119, baseType: !3279, size: 64, offset: 1024)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3329, file: !184, line: 121, baseType: !3363, size: 64, offset: 1088)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !184, line: 121, flags: DIFlagFwdDecl)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3316, file: !3317, line: 88, baseType: !3268, size: 64, offset: 384)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3316, file: !3317, line: 89, baseType: !3288, size: 64, offset: 448)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3316, file: !3317, line: 90, baseType: !3279, size: 64, offset: 512)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3316, file: !3317, line: 91, baseType: !3279, size: 64, offset: 576)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3316, file: !3317, line: 92, baseType: !3279, size: 64, offset: 640)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3316, file: !3317, line: 94, baseType: !3288, size: 64, offset: 704)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3316, file: !3317, line: 95, baseType: !3288, size: 64, offset: 768)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3316, file: !3317, line: 97, baseType: !3350, size: 64, offset: 832)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3316, file: !3317, line: 98, baseType: !3288, size: 64, offset: 896)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3316, file: !3317, line: 100, baseType: !3288, size: 64, offset: 960)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3316, file: !3317, line: 102, baseType: !3288, size: 64, offset: 1024)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !3316, file: !3317, line: 103, baseType: !3279, size: 64, offset: 1088)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3316, file: !3317, line: 105, baseType: !3283, size: 64, offset: 1152)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3316, file: !3317, line: 107, baseType: !3379, size: 64, offset: 1216)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3381)
!3381 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3317, line: 107, flags: DIFlagFwdDecl)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3316, file: !3317, line: 109, baseType: !1436, size: 8, offset: 1280)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3252, file: !190, line: 715, baseType: !3328, size: 64, offset: 832)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3252, file: !190, line: 717, baseType: !96, size: 64, offset: 896)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3252, file: !190, line: 719, baseType: !96, size: 64, offset: 960)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3252, file: !190, line: 721, baseType: !802, size: 256, offset: 1024)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3252, file: !190, line: 725, baseType: !3388, size: 448, offset: 1280)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !190, line: 517, size: 448, elements: !3389)
!3389 = !{!3390, !3391, !3392, !3393}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3388, file: !190, line: 518, baseType: !173, size: 128)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3388, file: !190, line: 519, baseType: !173, size: 128, offset: 128)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3388, file: !190, line: 520, baseType: !173, size: 128, offset: 256)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3388, file: !190, line: 521, baseType: !189, size: 32, offset: 384)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3252, file: !190, line: 726, baseType: !3395, size: 2496, offset: 1728)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !197, line: 663, size: 2496, elements: !3396)
!3396 = !{!3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3479, !3483}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3395, file: !197, line: 664, baseType: !3353, size: 32)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3395, file: !197, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3395, file: !197, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3395, file: !197, line: 667, baseType: !1436, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3395, file: !197, line: 668, baseType: !1436, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3395, file: !197, line: 669, baseType: !1436, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3395, file: !197, line: 670, baseType: !1436, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3395, file: !197, line: 671, baseType: !1436, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3395, file: !197, line: 672, baseType: !1436, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3395, file: !197, line: 673, baseType: !1436, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3395, file: !197, line: 674, baseType: !1436, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3395, file: !197, line: 675, baseType: !312, size: 32, offset: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3395, file: !197, line: 676, baseType: !135, size: 32, offset: 96)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3395, file: !197, line: 678, baseType: !173, size: 128, offset: 128)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3395, file: !197, line: 679, baseType: !1590, size: 256, offset: 256)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3395, file: !197, line: 680, baseType: !3413, size: 64, offset: 512)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3415, line: 43, size: 1536, elements: !3416)
!3415 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3416 = !{!3417, !3418, !3419, !3420, !3421, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3414, file: !3415, line: 44, baseType: !92, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3414, file: !3415, line: 45, baseType: !98, size: 32, offset: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3414, file: !3415, line: 46, baseType: !173, size: 128, offset: 128)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3414, file: !3415, line: 47, baseType: !135, size: 32, offset: 256)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3414, file: !3415, line: 48, baseType: !3422, size: 64, offset: 320)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !197, line: 629, flags: DIFlagFwdDecl)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3414, file: !3415, line: 49, baseType: !2358, size: 320, offset: 384)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3414, file: !3415, line: 50, baseType: !115, size: 64, offset: 704)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3414, file: !3415, line: 51, baseType: !1072, size: 64, offset: 768)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3414, file: !3415, line: 52, baseType: !1072, size: 64, offset: 832)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3414, file: !3415, line: 53, baseType: !1072, size: 64, offset: 896)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3414, file: !3415, line: 54, baseType: !1072, size: 64, offset: 960)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3414, file: !3415, line: 55, baseType: !1072, size: 64, offset: 1024)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3414, file: !3415, line: 56, baseType: !115, size: 64, offset: 1088)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3414, file: !3415, line: 57, baseType: !115, size: 64, offset: 1152)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3414, file: !3415, line: 58, baseType: !115, size: 64, offset: 1216)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3414, file: !3415, line: 59, baseType: !115, size: 64, offset: 1280)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3414, file: !3415, line: 60, baseType: !115, size: 64, offset: 1344)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3414, file: !3415, line: 61, baseType: !3251, size: 64, offset: 1408)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3414, file: !3415, line: 62, baseType: !1436, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3414, file: !3415, line: 63, baseType: !1436, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3395, file: !197, line: 681, baseType: !1436, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3395, file: !197, line: 682, baseType: !1436, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3395, file: !197, line: 683, baseType: !1436, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3395, file: !197, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3395, file: !197, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3395, file: !197, line: 690, baseType: !1064, size: 512, offset: 640)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3395, file: !197, line: 691, baseType: !298, size: 64, offset: 1152)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3395, file: !197, line: 692, baseType: !1551, size: 256, offset: 1216)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3395, file: !197, line: 693, baseType: !130, size: 192, offset: 1472)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3395, file: !197, line: 694, baseType: !3422, size: 64, offset: 1664)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3395, file: !197, line: 695, baseType: !125, size: 32, offset: 1728)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3395, file: !197, line: 696, baseType: !125, size: 32, offset: 1760)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3395, file: !197, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3395, file: !197, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3395, file: !197, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3395, file: !197, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3395, file: !197, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3395, file: !197, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3395, file: !197, line: 703, baseType: !1436, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3395, file: !197, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3395, file: !197, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3395, file: !197, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3395, file: !197, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3395, file: !197, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3395, file: !197, line: 709, baseType: !7, size: 32, offset: 1824)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3395, file: !197, line: 710, baseType: !196, size: 32, offset: 1856)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3395, file: !197, line: 711, baseType: !204, size: 32, offset: 1888)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3395, file: !197, line: 712, baseType: !204, size: 32, offset: 1920)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3395, file: !197, line: 713, baseType: !98, size: 32, offset: 1952)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3395, file: !197, line: 714, baseType: !98, size: 32, offset: 1984)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3395, file: !197, line: 715, baseType: !298, size: 64, offset: 2048)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3395, file: !197, line: 716, baseType: !298, size: 64, offset: 2112)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3395, file: !197, line: 717, baseType: !298, size: 64, offset: 2176)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3395, file: !197, line: 718, baseType: !298, size: 64, offset: 2240)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3395, file: !197, line: 720, baseType: !3474, size: 64, offset: 2304)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !197, line: 632, size: 64, elements: !3476)
!3476 = !{!3477, !3478}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3475, file: !197, line: 633, baseType: !135, size: 32)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3475, file: !197, line: 634, baseType: !7, size: 32, offset: 32)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3395, file: !197, line: 721, baseType: !3480, size: 64, offset: 2368)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{null, !3251, !383}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3395, file: !197, line: 722, baseType: !3484, size: 64, offset: 2432)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !197, line: 722, flags: DIFlagFwdDecl)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3252, file: !190, line: 727, baseType: !3487, size: 64, offset: 4224)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !197, line: 742, size: 1792, elements: !3489)
!3489 = !{!3490, !3491, !3492, !3496, !3497, !3498}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3488, file: !197, line: 743, baseType: !3285, size: 1472)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3488, file: !197, line: 744, baseType: !3288, size: 64, offset: 1472)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3488, file: !197, line: 745, baseType: !3493, size: 64, offset: 1536)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{null, !3251, !1436}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3488, file: !197, line: 746, baseType: !3288, size: 64, offset: 1600)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3488, file: !197, line: 747, baseType: !3279, size: 64, offset: 1664)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3488, file: !197, line: 748, baseType: !3279, size: 64, offset: 1728)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3252, file: !190, line: 736, baseType: !3500, size: 128, offset: 4288)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !190, line: 529, size: 128, elements: !3501)
!3501 = !{!3502, !3506}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3500, file: !190, line: 531, baseType: !3503, size: 64)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3505, line: 13, flags: DIFlagFwdDecl)
!3505 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3500, file: !190, line: 532, baseType: !3507, size: 64, offset: 64)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !190, line: 49, flags: DIFlagFwdDecl)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3252, file: !190, line: 738, baseType: !3510, size: 64, offset: 4416)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3512)
!3512 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !190, line: 738, flags: DIFlagFwdDecl)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3252, file: !190, line: 740, baseType: !3514, size: 64, offset: 4480)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3252, file: !190, line: 741, baseType: !298, size: 64, offset: 4544)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3252, file: !190, line: 746, baseType: !298, size: 64, offset: 4608)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3252, file: !190, line: 747, baseType: !3518, size: 64, offset: 4672)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3520)
!3520 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !190, line: 747, flags: DIFlagFwdDecl)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3252, file: !190, line: 749, baseType: !3522, size: 64, offset: 4736)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !190, line: 428, size: 128, elements: !3524)
!3524 = !{!3525, !3526, !3527}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3523, file: !190, line: 433, baseType: !7, size: 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3523, file: !190, line: 434, baseType: !7, size: 32, offset: 32)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3523, file: !190, line: 435, baseType: !115, size: 64, offset: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3252, file: !190, line: 751, baseType: !173, size: 128, offset: 4800)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !3252, file: !190, line: 762, baseType: !3530, size: 64, offset: 4928)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !190, line: 762, flags: DIFlagFwdDecl)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3252, file: !190, line: 770, baseType: !3533, offset: 4992)
!3533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3534, line: 5, elements: !722)
!3534 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3252, file: !190, line: 772, baseType: !3536, size: 64, offset: 4992)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3538, line: 18, flags: DIFlagFwdDecl)
!3538 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3252, file: !190, line: 773, baseType: !3540, size: 64, offset: 5056)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3317, line: 22, flags: DIFlagFwdDecl)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3252, file: !190, line: 776, baseType: !98, size: 32, offset: 5120)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3252, file: !190, line: 778, baseType: !686, size: 32, offset: 5152)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3252, file: !190, line: 779, baseType: !312, size: 32, offset: 5184)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3252, file: !190, line: 781, baseType: !135, size: 32, offset: 5216)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3252, file: !190, line: 782, baseType: !173, size: 128, offset: 5248)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3252, file: !190, line: 784, baseType: !3548, size: 64, offset: 5376)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3550)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3551, line: 52, size: 768, elements: !3552)
!3551 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3552 = !{!3553, !3554, !3555, !3556, !3557, !3561, !3565, !3566, !3567, !3595, !3599, !3603}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3550, file: !3551, line: 53, baseType: !92, size: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3550, file: !3551, line: 55, baseType: !507, size: 64, offset: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3550, file: !3551, line: 56, baseType: !507, size: 64, offset: 128)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3550, file: !3551, line: 58, baseType: !3268, size: 64, offset: 192)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3550, file: !3551, line: 59, baseType: !3558, size: 64, offset: 256)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!462, !3271, !3277}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3550, file: !3551, line: 61, baseType: !3562, size: 64, offset: 320)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{null, !3548}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3550, file: !3551, line: 62, baseType: !3279, size: 64, offset: 384)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3550, file: !3551, line: 64, baseType: !3288, size: 64, offset: 448)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3550, file: !3551, line: 66, baseType: !3568, size: 64, offset: 512)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3570)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !14, line: 39, size: 384, elements: !3571)
!3571 = !{!3572, !3573, !3577, !3581, !3587, !3591}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3570, file: !14, line: 40, baseType: !13, size: 32)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3570, file: !14, line: 41, baseType: !3574, size: 64, offset: 64)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!1436}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3570, file: !14, line: 42, baseType: !3578, size: 64, offset: 128)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{!96}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3570, file: !14, line: 43, baseType: !3582, size: 64, offset: 192)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!1365, !3585}
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !14, line: 19, flags: DIFlagFwdDecl)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3570, file: !14, line: 44, baseType: !3588, size: 64, offset: 256)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!1365}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3570, file: !14, line: 45, baseType: !3592, size: 64, offset: 320)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{null, !96}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3550, file: !3551, line: 67, baseType: !3596, size: 64, offset: 576)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!1365, !3271}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3550, file: !3551, line: 69, baseType: !3600, size: 64, offset: 640)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{null, !3271, !1615, !1616}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3550, file: !3551, line: 71, baseType: !3283, size: 64, offset: 704)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3252, file: !190, line: 785, baseType: !507, size: 64, offset: 5440)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3252, file: !190, line: 787, baseType: !3279, size: 64, offset: 5504)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3252, file: !190, line: 788, baseType: !3607, size: 64, offset: 5568)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !190, line: 46, flags: DIFlagFwdDecl)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3252, file: !190, line: 789, baseType: !3610, size: 64, offset: 5632)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !190, line: 48, flags: DIFlagFwdDecl)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !3252, file: !190, line: 791, baseType: !3613, size: 64, offset: 5696)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !190, line: 597, size: 128, elements: !3615)
!3615 = !{!3616, !3617, !3618, !3619, !3620}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3614, file: !190, line: 598, baseType: !211, size: 32)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3614, file: !190, line: 599, baseType: !220, size: 32, offset: 32)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3614, file: !190, line: 600, baseType: !225, size: 32, offset: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3614, file: !190, line: 601, baseType: !1436, size: 8, offset: 96)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3614, file: !190, line: 602, baseType: !1436, size: 8, offset: 104)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3252, file: !190, line: 793, baseType: !230, size: 32, offset: 5760)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3252, file: !190, line: 795, baseType: !1436, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3252, file: !190, line: 796, baseType: !1436, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3252, file: !190, line: 797, baseType: !1436, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3252, file: !190, line: 798, baseType: !1436, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !3252, file: !190, line: 799, baseType: !1436, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3246, file: !237, line: 307, baseType: !3251, size: 64, offset: 256)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !3246, file: !237, line: 308, baseType: !507, size: 64, offset: 320)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !3246, file: !237, line: 309, baseType: !507, size: 64, offset: 384)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3246, file: !237, line: 310, baseType: !92, size: 64, offset: 448)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3246, file: !237, line: 311, baseType: !98, size: 32, offset: 512)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3246, file: !237, line: 316, baseType: !98, size: 32, offset: 544)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !3246, file: !237, line: 318, baseType: !352, size: 64, offset: 576)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !3246, file: !237, line: 319, baseType: !3635, size: 64, offset: 640)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !237, line: 977, size: 1856, elements: !3637)
!3637 = !{!3638, !3653, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3636, file: !237, line: 978, baseType: !3639, size: 896)
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !237, line: 873, size: 896, elements: !3640)
!3640 = !{!3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3639, file: !237, line: 874, baseType: !3245, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3639, file: !237, line: 875, baseType: !3005, size: 64, offset: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3639, file: !237, line: 877, baseType: !173, size: 128, offset: 128)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3639, file: !237, line: 879, baseType: !173, size: 128, offset: 256)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3639, file: !237, line: 880, baseType: !173, size: 128, offset: 384)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3639, file: !237, line: 883, baseType: !7, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3639, file: !237, line: 885, baseType: !7, size: 32, offset: 544)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3639, file: !237, line: 886, baseType: !7, size: 32, offset: 576)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3639, file: !237, line: 888, baseType: !125, size: 32, offset: 608)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3639, file: !237, line: 889, baseType: !859, size: 128, align: 64, offset: 640)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3639, file: !237, line: 891, baseType: !96, size: 64, offset: 768)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3639, file: !237, line: 898, baseType: !98, size: 32, offset: 832)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3636, file: !237, line: 979, baseType: !3654, size: 64, offset: 896)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3636, file: !237, line: 981, baseType: !173, size: 128, offset: 960)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3636, file: !237, line: 982, baseType: !98, size: 32, offset: 1088)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3636, file: !237, line: 984, baseType: !98, size: 32, offset: 1120)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3636, file: !237, line: 985, baseType: !98, size: 32, offset: 1152)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3636, file: !237, line: 987, baseType: !815, size: 32, offset: 1184)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3636, file: !237, line: 988, baseType: !1064, size: 512, offset: 1216)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3636, file: !237, line: 989, baseType: !1072, size: 64, offset: 1728)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3636, file: !237, line: 990, baseType: !7, size: 32, offset: 1792)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !3246, file: !237, line: 320, baseType: !125, size: 32, offset: 704)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !3246, file: !237, line: 321, baseType: !98, size: 32, offset: 736)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !3246, file: !237, line: 322, baseType: !98, size: 32, offset: 768)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !3246, file: !237, line: 325, baseType: !7, size: 32, offset: 800)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !3246, file: !237, line: 331, baseType: !3668, size: 64, offset: 832)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{null, !3245}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !3246, file: !237, line: 332, baseType: !3668, size: 64, offset: 896)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !3246, file: !237, line: 350, baseType: !3673, size: 64, offset: 960)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!98, !3228}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !3246, file: !237, line: 356, baseType: !3677, size: 64, offset: 1024)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{null, !3228, !1233}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !3246, file: !237, line: 357, baseType: !3677, size: 64, offset: 1088)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !3246, file: !237, line: 385, baseType: !3682, size: 64, offset: 1152)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!98, !3228, !98}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !3246, file: !237, line: 386, baseType: !3686, size: 64, offset: 1216)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{null, !3228, !98}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3246, file: !237, line: 406, baseType: !3686, size: 64, offset: 1280)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3246, file: !237, line: 407, baseType: !3686, size: 64, offset: 1344)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3246, file: !237, line: 415, baseType: !3692, size: 64, offset: 1408)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{null, !3228}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !3246, file: !237, line: 427, baseType: !3696, size: 64, offset: 1472)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{null, !3245, !7}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !3246, file: !237, line: 436, baseType: !3700, size: 64, offset: 1536)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!98, !3245}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !3246, file: !237, line: 443, baseType: !3668, size: 64, offset: 1600)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !3246, file: !237, line: 450, baseType: !3673, size: 64, offset: 1664)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !3246, file: !237, line: 455, baseType: !3706, size: 64, offset: 1728)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{null, !3654, !1436}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !3246, file: !237, line: 461, baseType: !3710, size: 64, offset: 1792)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3712, line: 11, flags: DIFlagFwdDecl)
!3712 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !3246, file: !237, line: 469, baseType: !3714, size: 64, offset: 1856)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{null, !3654, !3654}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !3246, file: !237, line: 476, baseType: !3718, size: 64, offset: 1920)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!96, !3228, !3721, !98, !1436}
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !3246, file: !237, line: 483, baseType: !3592, size: 64, offset: 1984)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !3246, file: !237, line: 494, baseType: !3724, size: 64, offset: 2048)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!387, !3228, !3727, !115}
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !237, line: 1014, size: 448, elements: !3729)
!3729 = !{!3730, !3731, !3734, !3735, !3736, !3737, !3742}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3728, file: !237, line: 1015, baseType: !3228, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3728, file: !237, line: 1016, baseType: !3732, size: 64, offset: 64)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !237, line: 641, flags: DIFlagFwdDecl)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3728, file: !237, line: 1017, baseType: !115, size: 64, offset: 128)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3728, file: !237, line: 1018, baseType: !115, size: 64, offset: 192)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3728, file: !237, line: 1019, baseType: !298, size: 64, offset: 256)
!3737 = !DIDerivedType(tag: DW_TAG_member, scope: !3728, file: !237, line: 1020, baseType: !3738, size: 64, offset: 320)
!3738 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3728, file: !237, line: 1020, size: 64, elements: !3739)
!3739 = !{!3740, !3741}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3738, file: !237, line: 1021, baseType: !96, size: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3738, file: !237, line: 1022, baseType: !115, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3728, file: !237, line: 1024, baseType: !98, size: 32, offset: 384)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !3246, file: !237, line: 506, baseType: !3744, size: 64, offset: 2112)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!98, !176}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !3246, file: !237, line: 520, baseType: !3692, size: 64, offset: 2176)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !3246, file: !237, line: 530, baseType: !3673, size: 64, offset: 2240)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3246, file: !237, line: 537, baseType: !3750, size: 64, offset: 2304)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{!1436, !3245, !98}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !3246, file: !237, line: 542, baseType: !3754, size: 64, offset: 2368)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!98, !3228, !298}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !3229, file: !237, line: 715, baseType: !96, size: 64, offset: 1280)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3229, file: !237, line: 717, baseType: !236, size: 32, offset: 1344)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !3229, file: !237, line: 718, baseType: !7, size: 32, offset: 1376)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3229, file: !237, line: 719, baseType: !3761, size: 64, offset: 1408)
!3761 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3762, line: 26, baseType: !3763)
!3762 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3763 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3762, line: 24, size: 64, elements: !3764)
!3764 = !{!3765}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3763, file: !3762, line: 25, baseType: !3037, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3229, file: !237, line: 720, baseType: !808, size: 64, offset: 1472)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !3229, file: !237, line: 728, baseType: !298, size: 64, offset: 1536)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !3229, file: !237, line: 729, baseType: !298, size: 64, offset: 1600)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !3229, file: !237, line: 730, baseType: !298, size: 64, offset: 1664)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3229, file: !237, line: 732, baseType: !3771, size: 1088, offset: 1728)
!3771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3772, line: 385, size: 1088, elements: !3773)
!3772 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3773 = !{!3774, !3775, !3776, !3777, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3827, !3828, !3835, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3771, file: !3772, line: 390, baseType: !313, size: 32)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3771, file: !3772, line: 395, baseType: !313, size: 32, offset: 32)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3771, file: !3772, line: 400, baseType: !299, size: 64, offset: 64)
!3777 = !DIDerivedType(tag: DW_TAG_member, scope: !3771, file: !3772, line: 402, baseType: !3778, size: 64, offset: 128)
!3778 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3771, file: !3772, line: 402, size: 64, elements: !3779)
!3779 = !{!3780, !3781}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3778, file: !3772, line: 403, baseType: !299, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3778, file: !3772, line: 404, baseType: !299, size: 64)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3771, file: !3772, line: 407, baseType: !299, size: 64, offset: 192)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3771, file: !3772, line: 408, baseType: !299, size: 64, offset: 256)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3771, file: !3772, line: 410, baseType: !299, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3771, file: !3772, line: 411, baseType: !299, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3771, file: !3772, line: 412, baseType: !299, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3771, file: !3772, line: 413, baseType: !299, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3771, file: !3772, line: 414, baseType: !299, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3771, file: !3772, line: 415, baseType: !299, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3771, file: !3772, line: 416, baseType: !299, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3771, file: !3772, line: 417, baseType: !299, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3771, file: !3772, line: 418, baseType: !299, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3771, file: !3772, line: 419, baseType: !299, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3771, file: !3772, line: 420, baseType: !299, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3771, file: !3772, line: 421, baseType: !299, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3771, file: !3772, line: 422, baseType: !299, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3771, file: !3772, line: 423, baseType: !299, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3771, file: !3772, line: 424, baseType: !299, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3771, file: !3772, line: 435, baseType: !299, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3771, file: !3772, line: 436, baseType: !299, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3771, file: !3772, line: 437, baseType: !299, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3771, file: !3772, line: 439, baseType: !299, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3771, file: !3772, line: 440, baseType: !299, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3771, file: !3772, line: 442, baseType: !299, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3771, file: !3772, line: 443, baseType: !299, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3771, file: !3772, line: 444, baseType: !299, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3771, file: !3772, line: 445, baseType: !299, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3771, file: !3772, line: 446, baseType: !299, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3771, file: !3772, line: 447, baseType: !299, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3771, file: !3772, line: 448, baseType: !299, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3771, file: !3772, line: 449, baseType: !299, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3771, file: !3772, line: 450, baseType: !299, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3771, file: !3772, line: 451, baseType: !299, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3771, file: !3772, line: 452, baseType: !299, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3771, file: !3772, line: 453, baseType: !299, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3771, file: !3772, line: 454, baseType: !299, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3771, file: !3772, line: 455, baseType: !299, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3771, file: !3772, line: 456, baseType: !299, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3771, file: !3772, line: 457, baseType: !299, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3771, file: !3772, line: 458, baseType: !299, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3771, file: !3772, line: 459, baseType: !299, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3822 = !DIDerivedType(tag: DW_TAG_member, scope: !3771, file: !3772, line: 461, baseType: !3823, size: 32, offset: 384)
!3823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3771, file: !3772, line: 461, size: 32, elements: !3824)
!3824 = !{!3825, !3826}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3823, file: !3772, line: 462, baseType: !313, size: 32)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3823, file: !3772, line: 463, baseType: !313, size: 32)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3771, file: !3772, line: 466, baseType: !313, size: 32, offset: 416)
!3828 = !DIDerivedType(tag: DW_TAG_member, scope: !3771, file: !3772, line: 467, baseType: !3829, size: 64, offset: 448)
!3829 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3771, file: !3772, line: 467, size: 64, elements: !3830)
!3830 = !{!3831, !3832, !3833, !3834}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3829, file: !3772, line: 468, baseType: !299, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3829, file: !3772, line: 469, baseType: !299, size: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3829, file: !3772, line: 470, baseType: !299, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3829, file: !3772, line: 471, baseType: !299, size: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, scope: !3771, file: !3772, line: 473, baseType: !3836, size: 64, offset: 512)
!3836 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3771, file: !3772, line: 473, size: 64, elements: !3837)
!3837 = !{!3838, !3839, !3840, !3841}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3836, file: !3772, line: 474, baseType: !299, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3836, file: !3772, line: 475, baseType: !299, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3836, file: !3772, line: 476, baseType: !299, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3836, file: !3772, line: 477, baseType: !299, size: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3771, file: !3772, line: 479, baseType: !299, size: 64, offset: 576)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3771, file: !3772, line: 485, baseType: !299, size: 64, offset: 640)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3771, file: !3772, line: 490, baseType: !313, size: 32, offset: 704)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3771, file: !3772, line: 492, baseType: !384, size: 32, offset: 736)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3771, file: !3772, line: 501, baseType: !299, size: 64, offset: 768)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3771, file: !3772, line: 506, baseType: !313, size: 32, offset: 832)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3771, file: !3772, line: 507, baseType: !170, size: 16, offset: 864)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3771, file: !3772, line: 508, baseType: !170, size: 16, offset: 880)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3771, file: !3772, line: 509, baseType: !313, size: 32, offset: 896)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3771, file: !3772, line: 510, baseType: !313, size: 32, offset: 928)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3771, file: !3772, line: 518, baseType: !299, size: 64, offset: 960)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3771, file: !3772, line: 520, baseType: !299, size: 64, offset: 1024)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !3229, file: !237, line: 733, baseType: !169, size: 16, offset: 2816)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !3229, file: !237, line: 734, baseType: !169, size: 16, offset: 2832)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !3229, file: !237, line: 735, baseType: !169, size: 16, offset: 2848)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !3229, file: !237, line: 736, baseType: !3858, size: 1536, offset: 2880)
!3858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !237, line: 155, size: 1536, elements: !3859)
!3859 = !{!3860, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3944, !3945, !3946, !3947}
!3860 = !DIDerivedType(tag: DW_TAG_member, scope: !3858, file: !237, line: 157, baseType: !3861, size: 768)
!3861 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3858, file: !237, line: 157, size: 768, elements: !3862)
!3862 = !{!3863, !3882, !3886, !3890, !3895, !3917}
!3863 = !DIDerivedType(tag: DW_TAG_member, scope: !3861, file: !237, line: 158, baseType: !3864, size: 768)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3861, file: !237, line: 158, size: 768, elements: !3865)
!3865 = !{!3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3881}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3864, file: !237, line: 159, baseType: !298, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !3864, file: !237, line: 160, baseType: !298, size: 64, offset: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !3864, file: !237, line: 161, baseType: !115, size: 64, offset: 128)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !3864, file: !237, line: 162, baseType: !115, size: 64, offset: 192)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !3864, file: !237, line: 163, baseType: !98, size: 32, offset: 256)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3864, file: !237, line: 164, baseType: !98, size: 32, offset: 288)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3864, file: !237, line: 165, baseType: !98, size: 32, offset: 320)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3864, file: !237, line: 166, baseType: !98, size: 32, offset: 352)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !3864, file: !237, line: 168, baseType: !3875, size: 192, offset: 384)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !237, line: 134, size: 192, elements: !3876)
!3876 = !{!3877, !3878, !3879, !3880}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3875, file: !237, line: 135, baseType: !298, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3875, file: !237, line: 136, baseType: !7, size: 32, offset: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3875, file: !237, line: 137, baseType: !98, size: 32, offset: 96)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3875, file: !237, line: 138, baseType: !98, size: 32, offset: 128)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !3864, file: !237, line: 169, baseType: !3875, size: 192, offset: 576)
!3882 = !DIDerivedType(tag: DW_TAG_member, scope: !3861, file: !237, line: 171, baseType: !3883, size: 512)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3861, file: !237, line: 171, size: 512, elements: !3884)
!3884 = !{!3885}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3883, file: !237, line: 172, baseType: !1064, size: 512)
!3886 = !DIDerivedType(tag: DW_TAG_member, scope: !3861, file: !237, line: 174, baseType: !3887, size: 128)
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3861, file: !237, line: 174, size: 128, elements: !3888)
!3888 = !{!3889}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !3887, file: !237, line: 176, baseType: !173, size: 128)
!3890 = !DIDerivedType(tag: DW_TAG_member, scope: !3861, file: !237, line: 178, baseType: !3891, size: 128)
!3891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3861, file: !237, line: 178, size: 128, elements: !3892)
!3892 = !{!3893, !3894}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !3891, file: !237, line: 179, baseType: !298, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !3891, file: !237, line: 180, baseType: !298, size: 64, offset: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, scope: !3861, file: !237, line: 183, baseType: !3896, size: 320)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3861, file: !237, line: 183, size: 320, elements: !3897)
!3897 = !{!3898, !3906}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3896, file: !237, line: 189, baseType: !3899, size: 192)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !3900, line: 14, size: 192, elements: !3901)
!3900 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!3901 = !{!3902, !3903, !3904, !3905}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3899, file: !3900, line: 15, baseType: !115, size: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3899, file: !3900, line: 16, baseType: !115, size: 64, offset: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3899, file: !3900, line: 17, baseType: !159, size: 8, offset: 128)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3899, file: !3900, line: 18, baseType: !159, size: 8, offset: 136)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !3896, file: !237, line: 190, baseType: !3907, size: 128, offset: 192)
!3907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !3908, line: 21, size: 128, elements: !3909)
!3908 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!3909 = !{!3910, !3915}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !3907, file: !3908, line: 22, baseType: !3911, size: 64)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !3908, line: 17, size: 64, elements: !3912)
!3912 = !{!3913}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3911, file: !3908, line: 18, baseType: !3914, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3907, file: !3908, line: 23, baseType: !3916, size: 64, offset: 64)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, scope: !3861, file: !237, line: 193, baseType: !3918, size: 192)
!3918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3861, file: !237, line: 193, size: 192, elements: !3919)
!3919 = !{!3920, !3921, !3922, !3923, !3924}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !3918, file: !237, line: 194, baseType: !159, size: 8)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !3918, file: !237, line: 195, baseType: !159, size: 8, offset: 8)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3918, file: !237, line: 196, baseType: !169, size: 16, offset: 16)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !3918, file: !237, line: 197, baseType: !298, size: 64, offset: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !3918, file: !237, line: 198, baseType: !298, size: 64, offset: 128)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3858, file: !237, line: 205, baseType: !945, size: 64, offset: 768)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3858, file: !237, line: 211, baseType: !96, size: 64, offset: 832)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3858, file: !237, line: 214, baseType: !115, size: 64, offset: 896)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3858, file: !237, line: 223, baseType: !98, size: 32, offset: 960)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !3858, file: !237, line: 229, baseType: !3761, size: 64, offset: 1024)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3858, file: !237, line: 234, baseType: !298, size: 64, offset: 1088)
!3931 = !DIDerivedType(tag: DW_TAG_member, scope: !3858, file: !237, line: 236, baseType: !3932, size: 128, offset: 1152)
!3932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3858, file: !237, line: 236, size: 128, elements: !3933)
!3933 = !{!3934, !3939}
!3934 = !DIDerivedType(tag: DW_TAG_member, scope: !3932, file: !237, line: 237, baseType: !3935, size: 128)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3932, file: !237, line: 237, size: 128, elements: !3936)
!3936 = !{!3937, !3938}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !3935, file: !237, line: 241, baseType: !298, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !3935, file: !237, line: 249, baseType: !3761, size: 64, offset: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, scope: !3932, file: !237, line: 251, baseType: !3940, size: 128)
!3940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3932, file: !237, line: 251, size: 128, elements: !3941)
!3941 = !{!3942, !3943}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !3940, file: !237, line: 252, baseType: !298, size: 64)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !3940, file: !237, line: 253, baseType: !298, size: 64, offset: 64)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !3858, file: !237, line: 261, baseType: !298, size: 64, offset: 1280)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3858, file: !237, line: 262, baseType: !298, size: 64, offset: 1344)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !3858, file: !237, line: 268, baseType: !298, size: 64, offset: 1408)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !3858, file: !237, line: 269, baseType: !298, size: 64, offset: 1472)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3229, file: !237, line: 738, baseType: !3005, size: 64, offset: 4416)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !3229, file: !237, line: 744, baseType: !3654, size: 64, offset: 4480)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3229, file: !237, line: 745, baseType: !806, size: 64, offset: 4544)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !3229, file: !237, line: 751, baseType: !808, size: 64, offset: 4608)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !3229, file: !237, line: 752, baseType: !808, size: 64, offset: 4672)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !3229, file: !237, line: 757, baseType: !802, size: 256, offset: 4736)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !3229, file: !237, line: 758, baseType: !173, size: 128, offset: 4992)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3229, file: !237, line: 759, baseType: !3228, size: 64, offset: 5120)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !3229, file: !237, line: 761, baseType: !98, size: 32, offset: 5184)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3229, file: !237, line: 762, baseType: !98, size: 32, offset: 5216)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !3229, file: !237, line: 764, baseType: !173, size: 128, offset: 5248)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3229, file: !237, line: 765, baseType: !945, size: 64, offset: 5376)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !3229, file: !237, line: 768, baseType: !802, size: 256, offset: 5440)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !3229, file: !237, line: 769, baseType: !125, size: 32, offset: 5696)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3229, file: !237, line: 771, baseType: !3732, size: 64, offset: 5760)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !3229, file: !237, line: 772, baseType: !173, size: 128, offset: 5824)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !3229, file: !237, line: 773, baseType: !115, size: 64, offset: 5952)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !3229, file: !237, line: 774, baseType: !98, size: 32, offset: 6016)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !3229, file: !237, line: 777, baseType: !130, size: 192, offset: 6080)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3229, file: !237, line: 778, baseType: !3968, size: 64, offset: 6272)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !83, line: 1083, size: 384, elements: !3970)
!3970 = !{!3971, !3972, !3973, !3974, !3975, !3976}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3969, file: !83, line: 1084, baseType: !879, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3969, file: !83, line: 1085, baseType: !98, size: 32, offset: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3969, file: !83, line: 1086, baseType: !98, size: 32, offset: 96)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3969, file: !83, line: 1087, baseType: !3968, size: 64, offset: 128)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3969, file: !83, line: 1088, baseType: !1260, size: 64, offset: 192)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3969, file: !83, line: 1089, baseType: !859, size: 128, align: 64, offset: 256)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !3229, file: !237, line: 781, baseType: !7, size: 32, offset: 6336)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !3229, file: !237, line: 782, baseType: !7, size: 32, offset: 6368)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !3229, file: !237, line: 783, baseType: !7, size: 32, offset: 6400)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !3229, file: !237, line: 784, baseType: !7, size: 32, offset: 6432)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !3229, file: !237, line: 785, baseType: !115, size: 64, offset: 6464)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !3229, file: !237, line: 786, baseType: !3983, size: 256, offset: 6528)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !3984, line: 17, size: 256, elements: !3985)
!3984 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!3985 = !{!3986, !3987, !3992}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3983, file: !3984, line: 18, baseType: !964, size: 128)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3983, file: !3984, line: 19, baseType: !3988, size: 64, offset: 128)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{null, !3991}
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !3983, file: !3984, line: 20, baseType: !3993, size: 64, offset: 192)
!3993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3994, line: 16, size: 64, elements: !3995)
!3994 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3995 = !{!3996}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3993, file: !3994, line: 17, baseType: !945, size: 64)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !3229, file: !237, line: 787, baseType: !859, size: 128, align: 64, offset: 6784)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !3229, file: !237, line: 788, baseType: !7, size: 32, offset: 6912)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !3229, file: !237, line: 789, baseType: !3993, size: 64, offset: 6976)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !3229, file: !237, line: 791, baseType: !125, size: 32, offset: 7040)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3229, file: !237, line: 794, baseType: !4002, size: 192, offset: 7104)
!4002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !237, line: 579, size: 192, elements: !4003)
!4003 = !{!4004, !4005, !4006}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4002, file: !237, line: 580, baseType: !173, size: 128)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4002, file: !237, line: 581, baseType: !815, size: 32, offset: 128)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !4002, file: !237, line: 582, baseType: !7, size: 32, offset: 160)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !3229, file: !237, line: 796, baseType: !4008, size: 64, offset: 7296)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !237, line: 585, size: 128, elements: !4010)
!4010 = !{!4011, !4012}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4009, file: !237, line: 586, baseType: !115, size: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4009, file: !237, line: 587, baseType: !115, size: 64, offset: 64)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3229, file: !237, line: 797, baseType: !115, size: 64, offset: 7360)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !3229, file: !237, line: 800, baseType: !3228, size: 64, offset: 7424)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !3229, file: !237, line: 802, baseType: !3692, size: 64, offset: 7488)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3229, file: !237, line: 803, baseType: !859, size: 128, align: 64, offset: 7552)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3229, file: !237, line: 805, baseType: !924, size: 64, offset: 7680)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3229, file: !237, line: 806, baseType: !298, size: 64, offset: 7744)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !3229, file: !237, line: 808, baseType: !808, size: 64, offset: 7808)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !3229, file: !237, line: 810, baseType: !4021, size: 64, offset: 7872)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!298}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !3229, file: !237, line: 811, baseType: !4025, size: 64, offset: 7936)
!4025 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !237, line: 605, baseType: !4026)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{null, !3228, !4029, !4134}
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !237, line: 1148, size: 2048, align: 512, elements: !4031)
!4031 = !{!4032, !4033, !4034, !4035, !4036, !4041, !4042, !4043, !4048, !4049, !4056, !4077, !4099, !4109, !4127, !4128, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !4030, file: !237, line: 1153, baseType: !298, size: 64)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4030, file: !237, line: 1154, baseType: !298, size: 64, offset: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !4030, file: !237, line: 1155, baseType: !298, size: 64, offset: 128)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4030, file: !237, line: 1161, baseType: !298, size: 64, offset: 192)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !4030, file: !237, line: 1165, baseType: !4037, size: 64, offset: 256)
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4030, file: !237, line: 1162, size: 64, elements: !4038)
!4038 = !{!4039, !4040}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4037, file: !237, line: 1163, baseType: !312, size: 32)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !4037, file: !237, line: 1164, baseType: !312, size: 32, offset: 32)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4030, file: !237, line: 1166, baseType: !298, size: 64, offset: 320)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4030, file: !237, line: 1167, baseType: !298, size: 64, offset: 384)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !4030, file: !237, line: 1171, baseType: !4044, size: 64, offset: 448)
!4044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4030, file: !237, line: 1168, size: 64, elements: !4045)
!4045 = !{!4046, !4047}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4044, file: !237, line: 1169, baseType: !312, size: 32)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4044, file: !237, line: 1170, baseType: !312, size: 32, offset: 32)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4030, file: !237, line: 1177, baseType: !298, size: 64, offset: 512)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !4030, file: !237, line: 1178, baseType: !4050, size: 64, offset: 576)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !237, line: 67, size: 64, elements: !4052)
!4052 = !{!4053, !4054}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4051, file: !237, line: 68, baseType: !299, size: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4051, file: !237, line: 69, baseType: !4055, offset: 64)
!4055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, elements: !332)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !4030, file: !237, line: 1179, baseType: !4057, size: 64, offset: 640)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !237, line: 93, size: 256, elements: !4059)
!4059 = !{!4060, !4076}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !4058, file: !237, line: 94, baseType: !4061, size: 224)
!4061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !237, line: 83, size: 224, elements: !4062)
!4062 = !{!4063, !4069, !4074, !4075}
!4063 = !DIDerivedType(tag: DW_TAG_member, scope: !4061, file: !237, line: 84, baseType: !4064, size: 64)
!4064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4061, file: !237, line: 84, size: 64, elements: !4065)
!4065 = !{!4066, !4068}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4064, file: !237, line: 85, baseType: !4067, size: 64)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !4064, file: !237, line: 86, baseType: !115, size: 64)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !4061, file: !237, line: 88, baseType: !4070, size: 64, offset: 64)
!4070 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !237, line: 80, baseType: !4071)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!115, !96, !1365, !115, !115}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4061, file: !237, line: 89, baseType: !96, size: 64, offset: 128)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4061, file: !237, line: 90, baseType: !312, size: 32, offset: 192)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4058, file: !237, line: 95, baseType: !312, size: 32, offset: 224)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !4030, file: !237, line: 1180, baseType: !4078, size: 64, offset: 704)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !237, line: 123, size: 128, elements: !4080)
!4080 = !{!4081, !4082, !4083}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4079, file: !237, line: 124, baseType: !299, size: 64)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !4079, file: !237, line: 125, baseType: !299, size: 64, offset: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !4079, file: !237, line: 126, baseType: !4084, offset: 128)
!4084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4085, elements: !332)
!4085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3772, line: 1415, size: 192, elements: !4086)
!4086 = !{!4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !4085, file: !3772, line: 1416, baseType: !299, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !4085, file: !3772, line: 1417, baseType: !299, size: 64, offset: 64)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !4085, file: !3772, line: 1418, baseType: !299, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !4085, file: !3772, line: 1419, baseType: !299, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !4085, file: !3772, line: 1420, baseType: !299, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !4085, file: !3772, line: 1421, baseType: !299, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !4085, file: !3772, line: 1422, baseType: !299, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4085, file: !3772, line: 1423, baseType: !299, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !4085, file: !3772, line: 1424, baseType: !299, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !4085, file: !3772, line: 1425, baseType: !299, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4085, file: !3772, line: 1426, baseType: !299, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4085, file: !3772, line: 1427, baseType: !299, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !4030, file: !237, line: 1181, baseType: !4100, size: 64, offset: 768)
!4100 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3772, line: 1430, size: 64, elements: !4101)
!4101 = !{!4102, !4103}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !4100, file: !3772, line: 1431, baseType: !299, size: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, scope: !4100, file: !3772, line: 1433, baseType: !4104, size: 64)
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4100, file: !3772, line: 1433, size: 64, elements: !4105)
!4105 = !{!4106, !4107, !4108}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !4104, file: !3772, line: 1434, baseType: !313, size: 32)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !4104, file: !3772, line: 1435, baseType: !170, size: 16, offset: 32)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !4104, file: !3772, line: 1436, baseType: !170, size: 16, offset: 48)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !4030, file: !237, line: 1182, baseType: !4110, size: 64, offset: 832)
!4110 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3772, line: 1267, size: 64, elements: !4111)
!4111 = !{!4112, !4113}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4110, file: !3772, line: 1268, baseType: !299, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, scope: !4110, file: !3772, line: 1269, baseType: !4114, size: 64)
!4114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4110, file: !3772, line: 1269, size: 64, elements: !4115)
!4115 = !{!4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !4114, file: !3772, line: 1270, baseType: !299, size: 5, flags: DIFlagBitField, extraData: i64 0)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !4114, file: !3772, line: 1271, baseType: !299, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !4114, file: !3772, line: 1272, baseType: !299, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !4114, file: !3772, line: 1273, baseType: !299, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !4114, file: !3772, line: 1274, baseType: !299, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !4114, file: !3772, line: 1275, baseType: !299, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !4114, file: !3772, line: 1276, baseType: !299, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !4114, file: !3772, line: 1277, baseType: !299, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !4114, file: !3772, line: 1278, baseType: !299, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !4114, file: !3772, line: 1279, baseType: !299, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !4114, file: !3772, line: 1280, baseType: !299, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !4030, file: !237, line: 1183, baseType: !298, size: 64, offset: 896)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !4030, file: !237, line: 1185, baseType: !4129, size: 128, offset: 960)
!4129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !4130, line: 7, size: 128, elements: !4131)
!4130 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!4131 = !{!4132, !4133}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !4129, file: !4130, line: 8, baseType: !299, size: 64)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4129, file: !4130, line: 9, baseType: !4134, size: 64, offset: 64)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4136, line: 103, size: 1344, elements: !4137)
!4136 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4137 = !{!4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4166, !4167, !4168}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4135, file: !4136, line: 109, baseType: !115, size: 64)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4135, file: !4136, line: 110, baseType: !115, size: 64, offset: 64)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4135, file: !4136, line: 111, baseType: !115, size: 64, offset: 128)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4135, file: !4136, line: 112, baseType: !115, size: 64, offset: 192)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4135, file: !4136, line: 113, baseType: !115, size: 64, offset: 256)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4135, file: !4136, line: 114, baseType: !115, size: 64, offset: 320)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4135, file: !4136, line: 117, baseType: !115, size: 64, offset: 384)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4135, file: !4136, line: 118, baseType: !115, size: 64, offset: 448)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4135, file: !4136, line: 119, baseType: !115, size: 64, offset: 512)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4135, file: !4136, line: 120, baseType: !115, size: 64, offset: 576)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4135, file: !4136, line: 121, baseType: !115, size: 64, offset: 640)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4135, file: !4136, line: 122, baseType: !115, size: 64, offset: 704)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4135, file: !4136, line: 123, baseType: !115, size: 64, offset: 768)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4135, file: !4136, line: 124, baseType: !115, size: 64, offset: 832)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4135, file: !4136, line: 125, baseType: !115, size: 64, offset: 896)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4135, file: !4136, line: 139, baseType: !115, size: 64, offset: 960)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4135, file: !4136, line: 142, baseType: !115, size: 64, offset: 1024)
!4155 = !DIDerivedType(tag: DW_TAG_member, scope: !4135, file: !4136, line: 144, baseType: !4156, size: 64, offset: 1088)
!4156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4135, file: !4136, line: 144, size: 64, elements: !4157)
!4157 = !{!4158, !4159, !4160}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4156, file: !4136, line: 146, baseType: !169, size: 16)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4156, file: !4136, line: 148, baseType: !298, size: 64)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4156, file: !4136, line: 150, baseType: !4161, size: 64)
!4161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4136, line: 59, size: 64, elements: !4162)
!4162 = !{!4163, !4164, !4165}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4161, file: !4136, line: 61, baseType: !298, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4161, file: !4136, line: 63, baseType: !298, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4161, file: !4136, line: 65, baseType: !298, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4135, file: !4136, line: 153, baseType: !115, size: 64, offset: 1152)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4135, file: !4136, line: 154, baseType: !115, size: 64, offset: 1216)
!4168 = !DIDerivedType(tag: DW_TAG_member, scope: !4135, file: !4136, line: 156, baseType: !4169, size: 64, offset: 1280)
!4169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4135, file: !4136, line: 156, size: 64, elements: !4170)
!4170 = !{!4171, !4172, !4173}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4169, file: !4136, line: 158, baseType: !169, size: 16)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4169, file: !4136, line: 160, baseType: !298, size: 64)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4169, file: !4136, line: 162, baseType: !4174, size: 64)
!4174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4136, line: 69, size: 64, elements: !4175)
!4175 = !{!4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4174, file: !4136, line: 71, baseType: !298, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4174, file: !4136, line: 73, baseType: !298, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4174, file: !4136, line: 75, baseType: !298, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4174, file: !4136, line: 77, baseType: !298, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4174, file: !4136, line: 80, baseType: !298, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4174, file: !4136, line: 83, baseType: !298, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4174, file: !4136, line: 86, baseType: !298, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4174, file: !4136, line: 88, baseType: !298, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4174, file: !4136, line: 93, baseType: !298, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4174, file: !4136, line: 100, baseType: !298, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !4030, file: !237, line: 1186, baseType: !4129, size: 128, offset: 1088)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !4030, file: !237, line: 1187, baseType: !298, size: 64, offset: 1216)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4030, file: !237, line: 1189, baseType: !298, size: 64, offset: 1280)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !4030, file: !237, line: 1190, baseType: !298, size: 64, offset: 1344)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4030, file: !237, line: 1191, baseType: !298, size: 64, offset: 1408)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4030, file: !237, line: 1192, baseType: !298, size: 64, offset: 1472)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !4030, file: !237, line: 1193, baseType: !298, size: 64, offset: 1536)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !4030, file: !237, line: 1194, baseType: !298, size: 64, offset: 1600)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !4030, file: !237, line: 1195, baseType: !298, size: 64, offset: 1664)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !3229, file: !237, line: 812, baseType: !96, size: 64, offset: 8000)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !3229, file: !237, line: 820, baseType: !4197, size: 64, offset: 8064)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !246, line: 372, size: 1024, elements: !4199)
!4199 = !{!4200, !4201, !4242, !4248, !4320, !4321, !4324, !4329, !4330, !4331, !4332, !4333, !4334}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4198, file: !246, line: 373, baseType: !173, size: 128)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4198, file: !246, line: 374, baseType: !4202, size: 64, offset: 128)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !246, line: 291, size: 576, elements: !4204)
!4204 = !{!4205, !4206, !4207, !4208, !4212, !4236, !4240, !4241}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4203, file: !246, line: 292, baseType: !92, size: 64)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4203, file: !246, line: 293, baseType: !96, size: 64, offset: 64)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !4203, file: !246, line: 295, baseType: !96, size: 64, offset: 128)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !4203, file: !246, line: 297, baseType: !4209, size: 64, offset: 192)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{!98, !4197, !245, !96}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !4203, file: !246, line: 299, baseType: !4213, size: 64, offset: 256)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !246, line: 275, size: 320, elements: !4215)
!4215 = !{!4216, !4217}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4214, file: !246, line: 276, baseType: !92, size: 64)
!4217 = !DIDerivedType(tag: DW_TAG_member, scope: !4214, file: !246, line: 277, baseType: !4218, size: 256, offset: 64)
!4218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4214, file: !246, line: 277, size: 256, elements: !4219)
!4219 = !{!4220, !4232}
!4220 = !DIDerivedType(tag: DW_TAG_member, scope: !4218, file: !246, line: 278, baseType: !4221, size: 256)
!4221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4218, file: !246, line: 278, size: 256, elements: !4222)
!4222 = !{!4223, !4224, !4226, !4227, !4229, !4230, !4231}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4221, file: !246, line: 279, baseType: !92, size: 64)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4221, file: !246, line: 280, baseType: !4225, size: 32, offset: 64)
!4225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !4221, file: !246, line: 281, baseType: !4225, size: 32, offset: 96)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !4221, file: !246, line: 282, baseType: !4228, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!4228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !4221, file: !246, line: 283, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !4221, file: !246, line: 284, baseType: !4225, size: 32, offset: 160)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4221, file: !246, line: 285, baseType: !4225, size: 32, offset: 192)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !4218, file: !246, line: 287, baseType: !4233, size: 64)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!98, !4197}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !4203, file: !246, line: 300, baseType: !4237, size: 64, offset: 320)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!176, !4197}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !4203, file: !246, line: 301, baseType: !173, size: 128, offset: 384)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !4203, file: !246, line: 302, baseType: !4233, size: 64, offset: 512)
!4242 = !DIDerivedType(tag: DW_TAG_member, scope: !4198, file: !246, line: 375, baseType: !4243, size: 64, offset: 192)
!4243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4198, file: !246, line: 375, size: 64, elements: !4244)
!4244 = !{!4245, !4246}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4243, file: !246, line: 376, baseType: !92, size: 64)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !4243, file: !246, line: 378, baseType: !4247, size: 64)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4198, file: !246, line: 380, baseType: !4249, size: 256, offset: 256)
!4249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !246, line: 148, size: 256, elements: !4250)
!4250 = !{!4251, !4252, !4253}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4249, file: !246, line: 149, baseType: !339, size: 128)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4249, file: !246, line: 150, baseType: !98, size: 32, offset: 128)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4249, file: !246, line: 151, baseType: !4254, size: 64, offset: 192)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !246, line: 141, size: 256, elements: !4256)
!4256 = !{!4257, !4317, !4318, !4319}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !4255, file: !246, line: 142, baseType: !4258, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !246, line: 138, baseType: !4259)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{!256, !4262, !98, !4316}
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !246, line: 93, size: 67776, elements: !4264)
!4264 = !{!4265, !4268, !4271, !4274, !4275, !4276, !4277, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4302, !4305, !4306, !4307, !4309, !4310, !4311, !4312, !4313, !4314, !4315}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !4263, file: !246, line: 94, baseType: !4266, size: 64)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !246, line: 13, flags: DIFlagFwdDecl)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !4263, file: !246, line: 95, baseType: !4269, size: 64, offset: 64)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !246, line: 15, flags: DIFlagFwdDecl)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !4263, file: !246, line: 96, baseType: !4272, size: 64, offset: 128)
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !246, line: 14, flags: DIFlagFwdDecl)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4263, file: !246, line: 97, baseType: !96, size: 64, offset: 192)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !4263, file: !246, line: 98, baseType: !98, size: 32, offset: 256)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4263, file: !246, line: 99, baseType: !802, size: 256, offset: 320)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !4263, file: !246, line: 100, baseType: !4278, size: 64, offset: 576)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !4281, line: 10, flags: DIFlagFwdDecl)
!4281 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !4263, file: !246, line: 101, baseType: !115, size: 64, offset: 640)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !4263, file: !246, line: 102, baseType: !96, size: 64, offset: 704)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !4263, file: !246, line: 103, baseType: !7, size: 32, offset: 768)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !4263, file: !246, line: 104, baseType: !462, size: 64, offset: 832)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !4263, file: !246, line: 105, baseType: !7, size: 32, offset: 896)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !4263, file: !246, line: 106, baseType: !387, size: 64, offset: 960)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !4263, file: !246, line: 109, baseType: !4289, size: 33088, offset: 1024)
!4289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !4290, line: 14, size: 33088, elements: !4291)
!4290 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!4291 = !{!4292, !4293, !4300, !4301}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4289, file: !4290, line: 15, baseType: !2393, size: 32768)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !4289, file: !4290, line: 16, baseType: !4294, size: 192, offset: 32768)
!4294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !4295, line: 18, size: 192, elements: !4296)
!4295 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!4296 = !{!4297, !4298, !4299}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4294, file: !4295, line: 19, baseType: !462, size: 64)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4294, file: !4295, line: 20, baseType: !111, size: 64, offset: 64)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4294, file: !4295, line: 21, baseType: !111, size: 64, offset: 128)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !4289, file: !4290, line: 17, baseType: !111, size: 64, offset: 32960)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !4289, file: !4290, line: 18, baseType: !98, size: 32, offset: 33024)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !4263, file: !246, line: 111, baseType: !4303, size: 64, offset: 34112)
!4303 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !356, line: 913, baseType: !4304)
!4304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 64, elements: !360)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !4263, file: !246, line: 114, baseType: !1436, size: 8, offset: 34176)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !4263, file: !246, line: 117, baseType: !4289, size: 33088, offset: 34240)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !4263, file: !246, line: 118, baseType: !4308, size: 64, offset: 67328)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !4263, file: !246, line: 119, baseType: !115, size: 64, offset: 67392)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !4263, file: !246, line: 120, baseType: !98, size: 32, offset: 67456)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !4263, file: !246, line: 121, baseType: !98, size: 32, offset: 67488)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4263, file: !246, line: 122, baseType: !98, size: 32, offset: 67520)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !4263, file: !246, line: 123, baseType: !298, size: 64, offset: 67584)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4263, file: !246, line: 125, baseType: !117, size: 64, offset: 67648)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !4263, file: !246, line: 126, baseType: !387, size: 64, offset: 67712)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !4255, file: !246, line: 143, baseType: !4258, size: 64, offset: 64)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !4255, file: !246, line: 144, baseType: !4258, size: 64, offset: 128)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !4255, file: !246, line: 145, baseType: !4258, size: 64, offset: 192)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !4198, file: !246, line: 381, baseType: !462, size: 64, offset: 512)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4198, file: !246, line: 382, baseType: !4322, size: 64, offset: 576)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !237, line: 821, flags: DIFlagFwdDecl)
!4324 = !DIDerivedType(tag: DW_TAG_member, scope: !4198, file: !246, line: 387, baseType: !4325, size: 64, offset: 640)
!4325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4198, file: !246, line: 387, size: 64, elements: !4326)
!4326 = !{!4327, !4328}
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4325, file: !246, line: 388, baseType: !96, size: 64)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4325, file: !246, line: 389, baseType: !125, size: 32)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4198, file: !246, line: 391, baseType: !96, size: 64, offset: 704)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4198, file: !246, line: 394, baseType: !98, size: 32, offset: 768)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !4198, file: !246, line: 397, baseType: !98, size: 32, offset: 800)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !4198, file: !246, line: 398, baseType: !334, size: 64, offset: 832)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !4198, file: !246, line: 399, baseType: !347, size: 64, offset: 896)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !4198, file: !246, line: 401, baseType: !4335, size: 64, offset: 960)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!98, !4197, !3228}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3229, file: !237, line: 821, baseType: !4322, size: 64, offset: 8128)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3229, file: !237, line: 828, baseType: !4340, size: 64, offset: 8192)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !237, line: 1046, size: 1664, elements: !4342)
!4342 = !{!4343, !4344}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !4341, file: !237, line: 1047, baseType: !1945, size: 1600)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4341, file: !237, line: 1048, baseType: !4345, size: 64, offset: 1600)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !237, line: 1039, size: 256, elements: !4347)
!4347 = !{!4348, !4349, !4350, !4351}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4346, file: !237, line: 1040, baseType: !298, size: 64)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4346, file: !237, line: 1041, baseType: !298, size: 64, offset: 64)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !4346, file: !237, line: 1042, baseType: !298, size: 64, offset: 128)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4346, file: !237, line: 1043, baseType: !98, size: 32, offset: 192)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3229, file: !237, line: 832, baseType: !96, size: 64, offset: 8256)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !3229, file: !237, line: 834, baseType: !173, size: 128, offset: 8320)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !3229, file: !237, line: 842, baseType: !313, size: 32, offset: 8448)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3198, file: !3199, line: 461, baseType: !115, size: 64, offset: 704)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3198, file: !3199, line: 463, baseType: !115, size: 64, offset: 768)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3198, file: !3199, line: 465, baseType: !115, size: 64, offset: 832)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3198, file: !3199, line: 466, baseType: !115, size: 64, offset: 896)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3198, file: !3199, line: 467, baseType: !115, size: 64, offset: 960)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3198, file: !3199, line: 473, baseType: !4361, size: 64, offset: 1024)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3199, line: 10, flags: DIFlagFwdDecl)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3198, file: !3199, line: 480, baseType: !115, size: 64, offset: 1088)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3198, file: !3199, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3198, file: !3199, line: 491, baseType: !312, size: 32, offset: 1184)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3198, file: !3199, line: 501, baseType: !4367, size: 33792, offset: 1536)
!4367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4368, line: 448, size: 33792, elements: !4369)
!4368 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4369 = !{!4370, !4371, !4372, !4480, !4481, !4487, !4488}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4367, file: !4368, line: 461, baseType: !7, size: 32)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4367, file: !4368, line: 468, baseType: !115, size: 64, offset: 64)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4367, file: !4368, line: 476, baseType: !4373, size: 64, offset: 128)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4368, line: 356, size: 33280, align: 512, elements: !4375)
!4375 = !{!4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4374, file: !4368, line: 358, baseType: !7, size: 32)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4374, file: !4368, line: 361, baseType: !7, size: 32, offset: 32)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4374, file: !4368, line: 364, baseType: !298, size: 64, offset: 64)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4374, file: !4368, line: 367, baseType: !298, size: 64, offset: 128)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4374, file: !4368, line: 370, baseType: !298, size: 64, offset: 192)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4374, file: !4368, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4374, file: !4368, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4374, file: !4368, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4374, file: !4368, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4374, file: !4368, line: 397, baseType: !4386, size: 32768, offset: 512)
!4386 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4368, line: 348, size: 32768, elements: !4387)
!4387 = !{!4388, !4403, !4440, !4465, !4478}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4386, file: !4368, line: 349, baseType: !4389, size: 896)
!4389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4368, line: 12, size: 896, elements: !4390)
!4390 = !{!4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4402}
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4389, file: !4368, line: 13, baseType: !312, size: 32)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4389, file: !4368, line: 14, baseType: !312, size: 32, offset: 32)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4389, file: !4368, line: 15, baseType: !312, size: 32, offset: 64)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4389, file: !4368, line: 16, baseType: !312, size: 32, offset: 96)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4389, file: !4368, line: 17, baseType: !312, size: 32, offset: 128)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4389, file: !4368, line: 18, baseType: !312, size: 32, offset: 160)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4389, file: !4368, line: 19, baseType: !312, size: 32, offset: 192)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4389, file: !4368, line: 22, baseType: !4399, size: 640, offset: 224)
!4399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 640, elements: !4400)
!4400 = !{!4401}
!4401 = !DISubrange(count: 20)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4389, file: !4368, line: 25, baseType: !312, size: 32, offset: 864)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4386, file: !4368, line: 350, baseType: !4404, size: 4096, align: 128)
!4404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4368, line: 34, size: 4096, align: 128, elements: !4405)
!4405 = !{!4406, !4407, !4408, !4409, !4410, !4425, !4426, !4427, !4429, !4431, !4435}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4404, file: !4368, line: 35, baseType: !169, size: 16)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4404, file: !4368, line: 36, baseType: !169, size: 16, offset: 16)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4404, file: !4368, line: 37, baseType: !169, size: 16, offset: 32)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4404, file: !4368, line: 38, baseType: !169, size: 16, offset: 48)
!4410 = !DIDerivedType(tag: DW_TAG_member, scope: !4404, file: !4368, line: 39, baseType: !4411, size: 128, offset: 64)
!4411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4404, file: !4368, line: 39, size: 128, elements: !4412)
!4412 = !{!4413, !4418}
!4413 = !DIDerivedType(tag: DW_TAG_member, scope: !4411, file: !4368, line: 40, baseType: !4414, size: 128)
!4414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4411, file: !4368, line: 40, size: 128, elements: !4415)
!4415 = !{!4416, !4417}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4414, file: !4368, line: 41, baseType: !298, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4414, file: !4368, line: 42, baseType: !298, size: 64, offset: 64)
!4418 = !DIDerivedType(tag: DW_TAG_member, scope: !4411, file: !4368, line: 44, baseType: !4419, size: 128)
!4419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4411, file: !4368, line: 44, size: 128, elements: !4420)
!4420 = !{!4421, !4422, !4423, !4424}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4419, file: !4368, line: 45, baseType: !312, size: 32)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4419, file: !4368, line: 46, baseType: !312, size: 32, offset: 32)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4419, file: !4368, line: 47, baseType: !312, size: 32, offset: 64)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4419, file: !4368, line: 48, baseType: !312, size: 32, offset: 96)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4404, file: !4368, line: 51, baseType: !312, size: 32, offset: 192)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4404, file: !4368, line: 52, baseType: !312, size: 32, offset: 224)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4404, file: !4368, line: 55, baseType: !4428, size: 1024, offset: 256)
!4428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 1024, elements: !612)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4404, file: !4368, line: 58, baseType: !4430, size: 2048, offset: 1280)
!4430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 2048, elements: !467)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4404, file: !4368, line: 60, baseType: !4432, size: 384, offset: 3328)
!4432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 384, elements: !4433)
!4433 = !{!4434}
!4434 = !DISubrange(count: 12)
!4435 = !DIDerivedType(tag: DW_TAG_member, scope: !4404, file: !4368, line: 62, baseType: !4436, size: 384, offset: 3712)
!4436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4404, file: !4368, line: 62, size: 384, elements: !4437)
!4437 = !{!4438, !4439}
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4436, file: !4368, line: 63, baseType: !4432, size: 384)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4436, file: !4368, line: 64, baseType: !4432, size: 384)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4386, file: !4368, line: 351, baseType: !4441, size: 1088)
!4441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4368, line: 79, size: 1088, elements: !4442)
!4442 = !{!4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4464}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4441, file: !4368, line: 80, baseType: !312, size: 32)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4441, file: !4368, line: 81, baseType: !312, size: 32, offset: 32)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4441, file: !4368, line: 82, baseType: !312, size: 32, offset: 64)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4441, file: !4368, line: 83, baseType: !312, size: 32, offset: 96)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4441, file: !4368, line: 84, baseType: !312, size: 32, offset: 128)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4441, file: !4368, line: 85, baseType: !312, size: 32, offset: 160)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4441, file: !4368, line: 86, baseType: !312, size: 32, offset: 192)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4441, file: !4368, line: 88, baseType: !4399, size: 640, offset: 224)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4441, file: !4368, line: 89, baseType: !159, size: 8, offset: 864)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4441, file: !4368, line: 90, baseType: !159, size: 8, offset: 872)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4441, file: !4368, line: 91, baseType: !159, size: 8, offset: 880)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4441, file: !4368, line: 92, baseType: !159, size: 8, offset: 888)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4441, file: !4368, line: 93, baseType: !159, size: 8, offset: 896)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4441, file: !4368, line: 94, baseType: !159, size: 8, offset: 904)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4441, file: !4368, line: 95, baseType: !4458, size: 64, offset: 960)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4460, line: 11, size: 128, elements: !4461)
!4460 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4461 = !{!4462, !4463}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4459, file: !4460, line: 12, baseType: !387, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4459, file: !4460, line: 13, baseType: !4134, size: 64, offset: 64)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4441, file: !4368, line: 96, baseType: !312, size: 32, offset: 1024)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4386, file: !4368, line: 352, baseType: !4466, size: 4608, align: 512)
!4466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4368, line: 333, size: 4608, align: 512, elements: !4467)
!4467 = !{!4468, !4469, !4476}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4466, file: !4368, line: 334, baseType: !4404, size: 4096, align: 128)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4466, file: !4368, line: 335, baseType: !4470, size: 512, offset: 4096)
!4470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4368, line: 312, size: 512, elements: !4471)
!4471 = !{!4472, !4473, !4474}
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4470, file: !4368, line: 313, baseType: !298, size: 64)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4470, file: !4368, line: 314, baseType: !298, size: 64, offset: 64)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4470, file: !4368, line: 315, baseType: !4475, size: 384, offset: 128)
!4475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 384, elements: !1491)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4466, file: !4368, line: 336, baseType: !4477, offset: 4608)
!4477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, elements: !332)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4386, file: !4368, line: 353, baseType: !4479, size: 32768)
!4479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 32768, elements: !2394)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4367, file: !4368, line: 484, baseType: !4373, size: 64, offset: 192)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4367, file: !4368, line: 491, baseType: !4482, size: 128, offset: 256)
!4482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4368, line: 404, size: 128, elements: !4483)
!4483 = !{!4484, !4485, !4486}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4482, file: !4368, line: 424, baseType: !298, size: 64)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4482, file: !4368, line: 432, baseType: !7, size: 32, offset: 64)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4482, file: !4368, line: 440, baseType: !7, size: 32, offset: 96)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4367, file: !4368, line: 498, baseType: !4482, size: 128, offset: 384)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4367, file: !4368, line: 508, baseType: !4374, size: 33280, align: 512, offset: 512)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !925, file: !926, line: 31, baseType: !3710, size: 64, offset: 448)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !925, file: !926, line: 32, baseType: !7, size: 32, offset: 512)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !925, file: !926, line: 33, baseType: !924, size: 64, offset: 576)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !925, file: !926, line: 35, baseType: !4493, size: 64, offset: 640)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !926, line: 17, flags: DIFlagFwdDecl)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !925, file: !926, line: 37, baseType: !1391, size: 64, offset: 704)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !925, file: !926, line: 38, baseType: !1634, size: 64, offset: 768)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !925, file: !926, line: 39, baseType: !98, size: 32, offset: 832)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !925, file: !926, line: 40, baseType: !1424, size: 192, offset: 896)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !925, file: !926, line: 42, baseType: !98, size: 32, offset: 1088)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !876, file: !83, line: 951, baseType: !50, size: 32, offset: 128)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !876, file: !83, line: 952, baseType: !541, size: 32, offset: 160)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !876, file: !83, line: 952, baseType: !541, size: 32, offset: 192)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !876, file: !83, line: 953, baseType: !98, size: 32, offset: 224)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !847, file: !83, line: 1012, baseType: !1806, size: 64, offset: 896)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !847, file: !83, line: 1013, baseType: !4506, size: 256, offset: 960)
!4506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !83, line: 970, size: 256, elements: !4507)
!4507 = !{!4508, !4509, !4510, !4511, !4512, !4513}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4506, file: !83, line: 971, baseType: !115, size: 64)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4506, file: !83, line: 972, baseType: !7, size: 32, offset: 64)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !4506, file: !83, line: 973, baseType: !7, size: 32, offset: 96)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4506, file: !83, line: 974, baseType: !7, size: 32, offset: 128)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !4506, file: !83, line: 975, baseType: !7, size: 32, offset: 160)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !4506, file: !83, line: 976, baseType: !117, size: 64, offset: 192)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !847, file: !83, line: 1014, baseType: !4515, size: 128, offset: 1216)
!4515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !4516, line: 8, size: 128, elements: !4517)
!4516 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!4517 = !{!4518, !4519}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !4515, file: !4516, line: 9, baseType: !675, size: 64)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !4515, file: !4516, line: 10, baseType: !570, size: 64, offset: 64)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !847, file: !83, line: 1015, baseType: !535, size: 64, offset: 1344)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !847, file: !83, line: 1016, baseType: !4522, size: 64, offset: 1408)
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4523, size: 64)
!4523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4524)
!4524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !83, line: 1914, size: 2112, elements: !4525)
!4525 = !{!4526, !4527, !4531, !4535, !4539, !4567, !4568, !4574, !4587, !4591, !4595, !4596, !4600, !4601, !4605, !4610, !4611, !4615, !4619, !4625, !4626, !4630, !4631, !4635, !4639, !4643, !4648, !4652, !4656, !4660, !4664, !4665, !4671}
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4524, file: !83, line: 1915, baseType: !408, size: 64)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4524, file: !83, line: 1916, baseType: !4528, size: 64, offset: 64)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DISubroutineType(types: !4530)
!4530 = !{!117, !1260, !117, !98}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4524, file: !83, line: 1917, baseType: !4532, size: 64, offset: 128)
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4533, size: 64)
!4533 = !DISubroutineType(types: !4534)
!4534 = !{!494, !1260, !462, !111, !116}
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4524, file: !83, line: 1918, baseType: !4536, size: 64, offset: 192)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{!494, !1260, !92, !111, !116}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4524, file: !83, line: 1919, baseType: !4540, size: 64, offset: 256)
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{!494, !4543, !4565}
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !83, line: 373, size: 384, elements: !4545)
!4545 = !{!4546, !4547, !4548, !4552, !4553, !4554, !4555}
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !4544, file: !83, line: 374, baseType: !1260, size: 64)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !4544, file: !83, line: 375, baseType: !117, size: 64, offset: 64)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !4544, file: !83, line: 376, baseType: !4549, size: 64, offset: 128)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{null, !4543, !387}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4544, file: !83, line: 377, baseType: !96, size: 64, offset: 192)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !4544, file: !83, line: 378, baseType: !98, size: 32, offset: 256)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !4544, file: !83, line: 379, baseType: !169, size: 16, offset: 288)
!4555 = !DIDerivedType(tag: DW_TAG_member, scope: !4544, file: !83, line: 380, baseType: !4556, size: 64, offset: 320)
!4556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4544, file: !83, line: 380, size: 64, elements: !4557)
!4557 = !{!4558, !4561}
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !4556, file: !83, line: 386, baseType: !4559, size: 64)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !83, line: 386, flags: DIFlagFwdDecl)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !4556, file: !83, line: 395, baseType: !4562, size: 64)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4563, size: 64)
!4563 = !DISubroutineType(types: !4564)
!4564 = !{!494, !96}
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !83, line: 69, flags: DIFlagFwdDecl)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4524, file: !83, line: 1920, baseType: !4540, size: 64, offset: 320)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4524, file: !83, line: 1921, baseType: !4569, size: 64, offset: 384)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{!98, !4543, !4572, !7}
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !83, line: 53, flags: DIFlagFwdDecl)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4524, file: !83, line: 1923, baseType: !4575, size: 64, offset: 448)
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4576 = !DISubroutineType(types: !4577)
!4577 = !{!98, !1260, !4578}
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !83, line: 1858, size: 128, elements: !4580)
!4580 = !{!4581, !4586}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4579, file: !83, line: 1859, baseType: !4582, size: 64)
!4582 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !83, line: 1855, baseType: !4583)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!1436, !4578, !92, !98, !117, !298, !7}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4579, file: !83, line: 1860, baseType: !117, size: 64, offset: 64)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4524, file: !83, line: 1924, baseType: !4588, size: 64, offset: 512)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!2322, !1260, !2324}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4524, file: !83, line: 1925, baseType: !4592, size: 64, offset: 576)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!387, !1260, !7, !115}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4524, file: !83, line: 1926, baseType: !4592, size: 64, offset: 640)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4524, file: !83, line: 1927, baseType: !4597, size: 64, offset: 704)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{!98, !1260, !2027}
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4524, file: !83, line: 1928, baseType: !115, size: 64, offset: 768)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4524, file: !83, line: 1929, baseType: !4602, size: 64, offset: 832)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{!98, !535, !1260}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4524, file: !83, line: 1930, baseType: !4606, size: 64, offset: 896)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{!98, !1260, !4609}
!4609 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !83, line: 1061, baseType: !96)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4524, file: !83, line: 1931, baseType: !4602, size: 64, offset: 960)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4524, file: !83, line: 1932, baseType: !4612, size: 64, offset: 1024)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{!98, !1260, !117, !117, !98}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4524, file: !83, line: 1933, baseType: !4616, size: 64, offset: 1088)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = !DISubroutineType(types: !4618)
!4618 = !{!98, !98, !1260, !98}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4524, file: !83, line: 1934, baseType: !4620, size: 64, offset: 1152)
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = !DISubroutineType(types: !4622)
!4622 = !{!98, !1260, !98, !4623}
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !83, line: 1063, flags: DIFlagFwdDecl)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4524, file: !83, line: 1935, baseType: !1257, size: 64, offset: 1216)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4524, file: !83, line: 1936, baseType: !4627, size: 64, offset: 1280)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{!98, !98}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4524, file: !83, line: 1937, baseType: !4620, size: 64, offset: 1344)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4524, file: !83, line: 1938, baseType: !4632, size: 64, offset: 1408)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!494, !3079, !1260, !116, !111, !7}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4524, file: !83, line: 1939, baseType: !4636, size: 64, offset: 1472)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{!494, !1260, !116, !3079, !111, !7}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4524, file: !83, line: 1940, baseType: !4640, size: 64, offset: 1536)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = !DISubroutineType(types: !4642)
!4642 = !{null, !1260}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4524, file: !83, line: 1941, baseType: !4644, size: 64, offset: 1600)
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4645, size: 64)
!4645 = !DISubroutineType(types: !4646)
!4646 = !{!98, !1260, !98, !4647, !3721}
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4524, file: !83, line: 1942, baseType: !4649, size: 64, offset: 1664)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{!387, !1260, !98, !117, !117}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4524, file: !83, line: 1944, baseType: !4653, size: 64, offset: 1728)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = !DISubroutineType(types: !4655)
!4655 = !{null, !790, !1260}
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4524, file: !83, line: 1948, baseType: !4657, size: 64, offset: 1792)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{!494, !1260, !117, !1260, !117, !111, !7}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4524, file: !83, line: 1950, baseType: !4661, size: 64, offset: 1856)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{!117, !1260, !117, !1260, !117, !117, !7}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4524, file: !83, line: 1953, baseType: !4612, size: 64, offset: 1920)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4524, file: !83, line: 1954, baseType: !4666, size: 64, offset: 1984)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{!98, !4669, !7}
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !83, line: 1911, flags: DIFlagFwdDecl)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4524, file: !83, line: 1955, baseType: !4672, size: 64, offset: 2048)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = !DISubroutineType(types: !4674)
!4674 = !{!98, !4669, !4572, !7}
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !847, file: !83, line: 1018, baseType: !298, size: 64, offset: 1472)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !847, file: !83, line: 1020, baseType: !96, size: 64, offset: 1536)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !847, file: !83, line: 1023, baseType: !96, size: 64, offset: 1600)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !847, file: !83, line: 1027, baseType: !334, size: 64, offset: 1664)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !847, file: !83, line: 1029, baseType: !531, size: 64, offset: 1728)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !847, file: !83, line: 1030, baseType: !4681, size: 32, offset: 1792)
!4681 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !4682, line: 8, baseType: !312)
!4682 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !847, file: !83, line: 1031, baseType: !4681, size: 32, offset: 1824)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !791, file: !792, line: 29, baseType: !96, size: 64, offset: 896)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !734, file: !83, line: 2077, baseType: !787, size: 64, offset: 1088)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !734, file: !83, line: 2078, baseType: !787, size: 64, offset: 1152)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !734, file: !83, line: 2079, baseType: !787, size: 64, offset: 1216)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !734, file: !83, line: 2081, baseType: !4689, size: 64, offset: 1280)
!4689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4690, size: 64)
!4690 = !DISubroutineType(types: !4691)
!4691 = !{!494, !681, !98, !462, !111, !117}
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !734, file: !83, line: 2082, baseType: !4693, size: 64, offset: 1344)
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = !DISubroutineType(types: !4695)
!4695 = !{!494, !681, !98, !92, !111, !117}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !734, file: !83, line: 2083, baseType: !4697, size: 64, offset: 1408)
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = !DISubroutineType(types: !4699)
!4699 = !{!4700, !535}
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !59, line: 296, size: 1664, elements: !4703)
!4703 = !{!4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4728, !4729, !4730}
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4702, file: !59, line: 297, baseType: !339, size: 128)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4702, file: !59, line: 298, baseType: !173, size: 128, offset: 128)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4702, file: !59, line: 299, baseType: !173, size: 128, offset: 256)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4702, file: !59, line: 300, baseType: !173, size: 128, offset: 384)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4702, file: !59, line: 301, baseType: !802, size: 256, offset: 512)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4702, file: !59, line: 302, baseType: !135, size: 32, offset: 768)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4702, file: !59, line: 303, baseType: !125, size: 32, offset: 800)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4702, file: !59, line: 304, baseType: !681, size: 64, offset: 832)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4702, file: !59, line: 305, baseType: !4713, size: 64, offset: 896)
!4713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !59, line: 68, size: 64, elements: !4714)
!4714 = !{!4715, !4727}
!4715 = !DIDerivedType(tag: DW_TAG_member, scope: !4713, file: !59, line: 69, baseType: !4716, size: 32)
!4716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4713, file: !59, line: 69, size: 32, elements: !4717)
!4717 = !{!4718, !4719, !4720}
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4716, file: !59, line: 70, baseType: !541, size: 32)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4716, file: !59, line: 71, baseType: !550, size: 32)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4716, file: !59, line: 72, baseType: !4721, size: 32)
!4721 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4722, line: 24, baseType: !4723)
!4722 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4723 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4722, line: 22, size: 32, elements: !4724)
!4724 = !{!4725}
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4723, file: !4722, line: 23, baseType: !4726, size: 32)
!4726 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4722, line: 20, baseType: !547)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4713, file: !59, line: 74, baseType: !58, size: 32, offset: 32)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4702, file: !59, line: 306, baseType: !117, size: 64, offset: 960)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4702, file: !59, line: 307, baseType: !115, size: 64, offset: 1024)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4702, file: !59, line: 308, baseType: !4731, size: 576, offset: 1088)
!4731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !59, line: 205, size: 576, elements: !4732)
!4732 = !{!4733, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4731, file: !59, line: 206, baseType: !4734, size: 64)
!4734 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !59, line: 66, baseType: !119)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4731, file: !59, line: 207, baseType: !4734, size: 64, offset: 64)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4731, file: !59, line: 208, baseType: !4734, size: 64, offset: 128)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4731, file: !59, line: 209, baseType: !4734, size: 64, offset: 192)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4731, file: !59, line: 210, baseType: !4734, size: 64, offset: 256)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4731, file: !59, line: 211, baseType: !4734, size: 64, offset: 320)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4731, file: !59, line: 212, baseType: !4734, size: 64, offset: 384)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4731, file: !59, line: 213, baseType: !1462, size: 64, offset: 448)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4731, file: !59, line: 214, baseType: !1462, size: 64, offset: 512)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !734, file: !83, line: 2085, baseType: !4744, size: 64, offset: 1472)
!4744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4745, size: 64)
!4745 = !DISubroutineType(types: !4746)
!4746 = !{!387, !681, !4747}
!4747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4748, size: 64)
!4748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4749, line: 15, size: 256, elements: !4750)
!4749 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4750 = !{!4751, !4752, !4753, !4754, !4755}
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4748, file: !4749, line: 16, baseType: !938, size: 32)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4748, file: !4749, line: 19, baseType: !98, size: 32, offset: 32)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4748, file: !4749, line: 26, baseType: !115, size: 64, offset: 64)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4748, file: !4749, line: 33, baseType: !115, size: 64, offset: 128)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4748, file: !4749, line: 36, baseType: !4756, size: 64, offset: 192)
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4757, size: 64)
!4757 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !20, line: 33, flags: DIFlagFwdDecl)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !734, file: !83, line: 2087, baseType: !4744, size: 64, offset: 1536)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !734, file: !83, line: 2089, baseType: !713, size: 64, offset: 1600)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !682, file: !83, line: 1198, baseType: !4761, size: 64, offset: 448)
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4762, size: 64)
!4762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4763)
!4763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !59, line: 324, size: 704, elements: !4764)
!4764 = !{!4765, !4769, !4773, !4777, !4778, !4779, !4780, !4781, !4786, !4791, !4795}
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4763, file: !59, line: 325, baseType: !4766, size: 64)
!4766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4767, size: 64)
!4767 = !DISubroutineType(types: !4768)
!4768 = !{!98, !4701}
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4763, file: !59, line: 326, baseType: !4770, size: 64, offset: 64)
!4770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4771, size: 64)
!4771 = !DISubroutineType(types: !4772)
!4772 = !{!4701, !681, !98}
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4763, file: !59, line: 327, baseType: !4774, size: 64, offset: 128)
!4774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4775, size: 64)
!4775 = !DISubroutineType(types: !4776)
!4776 = !{null, !4701}
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4763, file: !59, line: 328, baseType: !4766, size: 64, offset: 192)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4763, file: !59, line: 329, baseType: !4766, size: 64, offset: 256)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4763, file: !59, line: 330, baseType: !4766, size: 64, offset: 320)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4763, file: !59, line: 331, baseType: !762, size: 64, offset: 384)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4763, file: !59, line: 334, baseType: !4782, size: 64, offset: 448)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = !DISubroutineType(types: !4784)
!4784 = !{!4785, !535}
!4785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4763, file: !59, line: 335, baseType: !4787, size: 64, offset: 512)
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = !DISubroutineType(types: !4789)
!4789 = !{!98, !535, !4790}
!4790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4763, file: !59, line: 337, baseType: !4792, size: 64, offset: 576)
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4793, size: 64)
!4793 = !DISubroutineType(types: !4794)
!4794 = !{!98, !535, !4785}
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4763, file: !59, line: 339, baseType: !4796, size: 64, offset: 640)
!4796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4797, size: 64)
!4797 = !DISubroutineType(types: !4798)
!4798 = !{!98, !681, !4799}
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !682, file: !83, line: 1199, baseType: !4801, size: 64, offset: 512)
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4803)
!4803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !59, line: 430, size: 704, elements: !4804)
!4804 = !{!4805, !4811, !4812, !4816, !4817, !4818, !4833, !4856, !4860, !4861, !4884}
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4803, file: !59, line: 431, baseType: !4806, size: 64)
!4806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4807, size: 64)
!4807 = !DISubroutineType(types: !4808)
!4808 = !{!98, !681, !98, !98, !4809}
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4515)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4803, file: !59, line: 432, baseType: !762, size: 64, offset: 64)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4803, file: !59, line: 433, baseType: !4813, size: 64, offset: 128)
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{!98, !681, !7}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4803, file: !59, line: 434, baseType: !4813, size: 64, offset: 192)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4803, file: !59, line: 435, baseType: !762, size: 64, offset: 256)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4803, file: !59, line: 436, baseType: !4819, size: 64, offset: 320)
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4820 = !DISubroutineType(types: !4821)
!4821 = !{!98, !681, !98, !4822}
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 64)
!4823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !59, line: 417, size: 256, elements: !4824)
!4824 = !{!4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832}
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4823, file: !59, line: 418, baseType: !98, size: 32)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4823, file: !59, line: 419, baseType: !7, size: 32, offset: 32)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4823, file: !59, line: 420, baseType: !7, size: 32, offset: 64)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4823, file: !59, line: 422, baseType: !7, size: 32, offset: 96)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4823, file: !59, line: 423, baseType: !7, size: 32, offset: 128)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4823, file: !59, line: 424, baseType: !7, size: 32, offset: 160)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4823, file: !59, line: 425, baseType: !7, size: 32, offset: 192)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4823, file: !59, line: 426, baseType: !7, size: 32, offset: 224)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4803, file: !59, line: 437, baseType: !4834, size: 64, offset: 384)
!4834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4835, size: 64)
!4835 = !DISubroutineType(types: !4836)
!4836 = !{!98, !681, !4713, !4837}
!4837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4838, size: 64)
!4838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !59, line: 345, size: 960, elements: !4839)
!4839 = !{!4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855}
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4838, file: !59, line: 346, baseType: !98, size: 32)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4838, file: !59, line: 347, baseType: !298, size: 64, offset: 64)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4838, file: !59, line: 348, baseType: !298, size: 64, offset: 128)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4838, file: !59, line: 349, baseType: !298, size: 64, offset: 192)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4838, file: !59, line: 350, baseType: !298, size: 64, offset: 256)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4838, file: !59, line: 351, baseType: !298, size: 64, offset: 320)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4838, file: !59, line: 352, baseType: !298, size: 64, offset: 384)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4838, file: !59, line: 353, baseType: !812, size: 64, offset: 448)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4838, file: !59, line: 355, baseType: !812, size: 64, offset: 512)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4838, file: !59, line: 356, baseType: !98, size: 32, offset: 576)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4838, file: !59, line: 357, baseType: !98, size: 32, offset: 608)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4838, file: !59, line: 358, baseType: !298, size: 64, offset: 640)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4838, file: !59, line: 359, baseType: !298, size: 64, offset: 704)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4838, file: !59, line: 360, baseType: !298, size: 64, offset: 768)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4838, file: !59, line: 361, baseType: !812, size: 64, offset: 832)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4838, file: !59, line: 362, baseType: !98, size: 32, offset: 896)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4803, file: !59, line: 438, baseType: !4857, size: 64, offset: 448)
!4857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4858, size: 64)
!4858 = !DISubroutineType(types: !4859)
!4859 = !{!98, !681, !4799, !4837}
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4803, file: !59, line: 440, baseType: !4834, size: 64, offset: 512)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4803, file: !59, line: 441, baseType: !4862, size: 64, offset: 576)
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = !DISubroutineType(types: !4864)
!4864 = !{!98, !681, !4865}
!4865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4866, size: 64)
!4866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !59, line: 411, size: 1408, elements: !4867)
!4867 = !{!4868, !4869}
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4866, file: !59, line: 412, baseType: !7, size: 32)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4866, file: !59, line: 413, baseType: !4870, size: 1344, offset: 64)
!4870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4871, size: 1344, elements: !463)
!4871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !59, line: 397, size: 448, elements: !4872)
!4872 = !{!4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4883}
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4871, file: !59, line: 398, baseType: !7, size: 32)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4871, file: !59, line: 399, baseType: !7, size: 32, offset: 32)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4871, file: !59, line: 401, baseType: !7, size: 32, offset: 64)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4871, file: !59, line: 402, baseType: !7, size: 32, offset: 96)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4871, file: !59, line: 403, baseType: !7, size: 32, offset: 128)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4871, file: !59, line: 404, baseType: !7, size: 32, offset: 160)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4871, file: !59, line: 405, baseType: !7, size: 32, offset: 192)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4871, file: !59, line: 406, baseType: !300, size: 64, offset: 256)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4871, file: !59, line: 407, baseType: !4882, size: 64, offset: 320)
!4882 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !101, line: 132, baseType: !298)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4871, file: !59, line: 408, baseType: !4882, size: 64, offset: 384)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4803, file: !59, line: 442, baseType: !4813, size: 64, offset: 640)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !682, file: !83, line: 1200, baseType: !4886, size: 64, offset: 576)
!4886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4887, size: 64)
!4887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4888)
!4888 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !83, line: 54, flags: DIFlagFwdDecl)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !682, file: !83, line: 1201, baseType: !115, size: 64, offset: 640)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !682, file: !83, line: 1202, baseType: !115, size: 64, offset: 704)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !682, file: !83, line: 1203, baseType: !115, size: 64, offset: 768)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !682, file: !83, line: 1204, baseType: !570, size: 64, offset: 832)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !682, file: !83, line: 1205, baseType: !1288, size: 320, offset: 896)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !682, file: !83, line: 1206, baseType: !98, size: 32, offset: 1216)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !682, file: !83, line: 1207, baseType: !125, size: 32, offset: 1248)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !682, file: !83, line: 1209, baseType: !96, size: 64, offset: 1280)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !682, file: !83, line: 1211, baseType: !4898, size: 64, offset: 1344)
!4898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4899, size: 64)
!4899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4900, size: 64)
!4900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4901)
!4901 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !83, line: 1211, flags: DIFlagFwdDecl)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !682, file: !83, line: 1223, baseType: !4903, size: 64, offset: 1408)
!4903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !587, line: 34, size: 64, elements: !4904)
!4904 = !{!4905}
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4903, file: !587, line: 35, baseType: !590, size: 64)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !682, file: !83, line: 1224, baseType: !173, size: 128, offset: 1472)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !682, file: !83, line: 1225, baseType: !4908, size: 64, offset: 1600)
!4908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4909, size: 64)
!4909 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !83, line: 1225, flags: DIFlagFwdDecl)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !682, file: !83, line: 1226, baseType: !4911, size: 64, offset: 1664)
!4911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4912, size: 64)
!4912 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !83, line: 1226, flags: DIFlagFwdDecl)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !682, file: !83, line: 1227, baseType: !4914, size: 64, offset: 1728)
!4914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4915, size: 64)
!4915 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !83, line: 50, flags: DIFlagFwdDecl)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !682, file: !83, line: 1228, baseType: !4917, size: 64, offset: 1792)
!4917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4918, size: 64)
!4918 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !83, line: 1228, flags: DIFlagFwdDecl)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !682, file: !83, line: 1229, baseType: !339, size: 128, offset: 1856)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !682, file: !83, line: 1230, baseType: !7, size: 32, offset: 1984)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !682, file: !83, line: 1231, baseType: !4922, size: 2496, offset: 2048)
!4922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !59, line: 521, size: 2496, elements: !4923)
!4923 = !{!4924, !4925, !4926, !4928, !4960}
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4922, file: !59, line: 522, baseType: !7, size: 32)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4922, file: !59, line: 523, baseType: !1288, size: 320, offset: 64)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4922, file: !59, line: 524, baseType: !4927, size: 192, offset: 384)
!4927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !535, size: 192, elements: !463)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4922, file: !59, line: 525, baseType: !4929, size: 1728, offset: 576)
!4929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4930, size: 1728, elements: !463)
!4930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !59, line: 222, size: 576, elements: !4931)
!4931 = !{!4932, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959}
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4930, file: !59, line: 223, baseType: !4933, size: 64)
!4933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4934, size: 64)
!4934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !59, line: 445, size: 256, elements: !4935)
!4935 = !{!4936, !4937, !4950, !4951}
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4934, file: !59, line: 446, baseType: !98, size: 32)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4934, file: !59, line: 447, baseType: !4938, size: 64, offset: 64)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4940)
!4940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !59, line: 312, size: 512, elements: !4941)
!4941 = !{!4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949}
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4940, file: !59, line: 313, baseType: !762, size: 64)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4940, file: !59, line: 314, baseType: !762, size: 64, offset: 64)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4940, file: !59, line: 315, baseType: !762, size: 64, offset: 128)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4940, file: !59, line: 316, baseType: !762, size: 64, offset: 192)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4940, file: !59, line: 317, baseType: !4766, size: 64, offset: 256)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4940, file: !59, line: 318, baseType: !4766, size: 64, offset: 320)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4940, file: !59, line: 319, baseType: !4766, size: 64, offset: 384)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4940, file: !59, line: 320, baseType: !4796, size: 64, offset: 448)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4934, file: !59, line: 448, baseType: !408, size: 64, offset: 128)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4934, file: !59, line: 449, baseType: !4933, size: 64, offset: 192)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4930, file: !59, line: 224, baseType: !98, size: 32, offset: 64)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4930, file: !59, line: 226, baseType: !173, size: 128, offset: 128)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4930, file: !59, line: 227, baseType: !115, size: 64, offset: 256)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4930, file: !59, line: 228, baseType: !7, size: 32, offset: 320)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4930, file: !59, line: 229, baseType: !7, size: 32, offset: 352)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4930, file: !59, line: 230, baseType: !4734, size: 64, offset: 384)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4930, file: !59, line: 231, baseType: !4734, size: 64, offset: 448)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4930, file: !59, line: 232, baseType: !96, size: 64, offset: 512)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4922, file: !59, line: 526, baseType: !4961, size: 192, offset: 2304)
!4961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4938, size: 192, elements: !463)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !682, file: !83, line: 1233, baseType: !4963, size: 2368, offset: 4544)
!4963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !83, line: 1184, size: 2368, elements: !4964)
!4964 = !{!4965, !4966, !4967}
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4963, file: !83, line: 1185, baseType: !102, size: 16)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4963, file: !83, line: 1186, baseType: !102, size: 16, offset: 16)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4963, file: !83, line: 1187, baseType: !4968, size: 2304, offset: 64)
!4968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4969, size: 2304, elements: !463)
!4969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4970, line: 12, size: 768, elements: !4971)
!4970 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4971 = !{!4972, !4980, !4982, !4983, !4984}
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4969, file: !4970, line: 13, baseType: !4973, size: 384)
!4973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4974, line: 17, size: 384, elements: !4975)
!4974 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4975 = !{!4976, !4977, !4978, !4979}
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4973, file: !4974, line: 18, baseType: !98, size: 32)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4973, file: !4974, line: 19, baseType: !98, size: 32, offset: 32)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4973, file: !4974, line: 20, baseType: !130, size: 192, offset: 64)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4973, file: !4974, line: 22, baseType: !859, size: 128, align: 64, offset: 256)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4969, file: !4970, line: 14, baseType: !4981, size: 64, offset: 384)
!4981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4969, file: !4970, line: 15, baseType: !3993, size: 64, offset: 448)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4969, file: !4970, line: 16, baseType: !130, size: 192, offset: 512)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4969, file: !4970, line: 17, baseType: !125, size: 32, offset: 704)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !682, file: !83, line: 1240, baseType: !96, size: 64, offset: 6912)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !682, file: !83, line: 1243, baseType: !312, size: 32, offset: 6976)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !682, file: !83, line: 1245, baseType: !1462, size: 64, offset: 7040)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !682, file: !83, line: 1246, baseType: !1462, size: 64, offset: 7104)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !682, file: !83, line: 1248, baseType: !313, size: 32, offset: 7168)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !682, file: !83, line: 1249, baseType: !4991, size: 64, offset: 7232)
!4991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4992, size: 64)
!4992 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !83, line: 634, flags: DIFlagFwdDecl)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !682, file: !83, line: 1252, baseType: !2743, size: 256, offset: 7296)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !682, file: !83, line: 1253, baseType: !4995, size: 128, offset: 7552)
!4995 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4996, line: 21, baseType: !4997)
!4996 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4997 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4996, line: 19, size: 128, elements: !4998)
!4998 = !{!4999}
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4997, file: !4996, line: 20, baseType: !5000, size: 128)
!5000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 128, elements: !1880)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !682, file: !83, line: 1255, baseType: !7, size: 32, offset: 7680)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !682, file: !83, line: 1261, baseType: !802, size: 256, offset: 7744)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !682, file: !83, line: 1267, baseType: !92, size: 64, offset: 8000)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !682, file: !83, line: 1269, baseType: !628, size: 64, offset: 8064)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !682, file: !83, line: 1271, baseType: !5006, size: 448, offset: 8128)
!5006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4749, line: 63, size: 448, elements: !5007)
!5007 = !{!5008, !5013, !5014, !5015, !5016, !5017, !5018}
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !5006, file: !4749, line: 64, baseType: !5009, size: 64)
!5009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5010, size: 64)
!5010 = !DISubroutineType(types: !5011)
!5011 = !{!115, !5012, !4747}
!5012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5006, size: 64)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !5006, file: !4749, line: 66, baseType: !5009, size: 64, offset: 64)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !5006, file: !4749, line: 69, baseType: !387, size: 64, offset: 128)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !5006, file: !4749, line: 70, baseType: !98, size: 32, offset: 192)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5006, file: !4749, line: 71, baseType: !7, size: 32, offset: 224)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5006, file: !4749, line: 74, baseType: !173, size: 128, offset: 256)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !5006, file: !4749, line: 85, baseType: !5019, size: 64, offset: 384)
!5019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !682, file: !83, line: 1274, baseType: !806, size: 64, offset: 8576)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !682, file: !83, line: 1280, baseType: !806, size: 64, offset: 8640)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !682, file: !83, line: 1283, baseType: !98, size: 32, offset: 8704)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !682, file: !83, line: 1286, baseType: !4681, size: 32, offset: 8736)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !682, file: !83, line: 1289, baseType: !2573, size: 64, offset: 8768)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !682, file: !83, line: 1290, baseType: !335, size: 64, offset: 8832)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !682, file: !83, line: 1297, baseType: !1391, size: 64, offset: 8896)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !682, file: !83, line: 1304, baseType: !5028, size: 64, offset: 8960)
!5028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !5029, line: 49, size: 64, elements: !5030)
!5029 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!5030 = !{!5031}
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5028, file: !5029, line: 50, baseType: !5032, size: 64)
!5032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5033, size: 64)
!5033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !5029, line: 41, size: 512, align: 512, elements: !5034)
!5034 = !{!5035, !5036, !5041}
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5033, file: !5029, line: 43, baseType: !135, size: 32)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5033, file: !5029, line: 45, baseType: !5037, size: 192, offset: 64)
!5037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !5029, line: 29, size: 192, elements: !5038)
!5038 = !{!5039, !5040}
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5037, file: !5029, line: 30, baseType: !173, size: 128)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !5037, file: !5029, line: 32, baseType: !387, size: 64, offset: 128)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !5033, file: !5029, line: 46, baseType: !387, size: 64, offset: 256)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !682, file: !83, line: 1305, baseType: !5028, size: 64, offset: 9024)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !682, file: !83, line: 1306, baseType: !859, size: 128, align: 64, offset: 9088)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !682, file: !83, line: 1307, baseType: !1551, size: 256, offset: 9216)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !682, file: !83, line: 1309, baseType: !802, size: 256, offset: 9472)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !682, file: !83, line: 1314, baseType: !98, size: 32, offset: 9728)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !682, file: !83, line: 1317, baseType: !135, size: 32, align: 512, offset: 10240)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !682, file: !83, line: 1318, baseType: !173, size: 128, offset: 10304)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !682, file: !83, line: 1320, baseType: !135, size: 32, offset: 10432)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !682, file: !83, line: 1321, baseType: !173, size: 128, offset: 10496)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !676, file: !677, line: 73, baseType: !98, size: 32, offset: 128)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !676, file: !677, line: 74, baseType: !5053, size: 64, offset: 192)
!5053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5054, size: 64)
!5054 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1823, line: 42, flags: DIFlagFwdDecl)
!5055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4515, size: 64)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !630, file: !572, line: 141, baseType: !5057, size: 64, offset: 704)
!5057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5058, size: 64)
!5058 = !DISubroutineType(types: !5059)
!5059 = !{!98, !4809, !1436}
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !630, file: !572, line: 142, baseType: !5061, size: 64, offset: 768)
!5061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5062, size: 64)
!5062 = !DISubroutineType(types: !5063)
!5063 = !{!570, !570, !5064}
!5064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5065, size: 64)
!5065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !536)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !571, file: !572, line: 96, baseType: !681, size: 64, offset: 832)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !571, file: !572, line: 97, baseType: !115, size: 64, offset: 896)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !571, file: !572, line: 98, baseType: !96, size: 64, offset: 960)
!5069 = !DIDerivedType(tag: DW_TAG_member, scope: !571, file: !572, line: 100, baseType: !5070, size: 128, offset: 1024)
!5070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !571, file: !572, line: 100, size: 128, elements: !5071)
!5071 = !{!5072, !5073}
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !5070, file: !572, line: 101, baseType: !173, size: 128)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !5070, file: !572, line: 102, baseType: !2333, size: 64)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !571, file: !572, line: 104, baseType: !173, size: 128, offset: 1152)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !571, file: !572, line: 105, baseType: !173, size: 128, offset: 1280)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !571, file: !572, line: 113, baseType: !5077, size: 128, offset: 1408)
!5077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !571, file: !572, line: 109, size: 128, elements: !5078)
!5078 = !{!5079, !5080, !5081}
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !5077, file: !572, line: 110, baseType: !339, size: 128)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !5077, file: !572, line: 111, baseType: !586, size: 128)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !5077, file: !572, line: 112, baseType: !859, size: 128, align: 64)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !564, file: !83, line: 1968, baseType: !5083, size: 64, offset: 64)
!5083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5084, size: 64)
!5084 = !DISubroutineType(types: !5085)
!5085 = !{!92, !570, !535, !5086}
!5086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5087, size: 64)
!5087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !5088, line: 10, size: 128, elements: !5089)
!5088 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!5089 = !{!5090, !5091}
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !5087, file: !5088, line: 11, baseType: !3592, size: 64)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5087, file: !5088, line: 12, baseType: !96, size: 64, offset: 64)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !564, file: !83, line: 1969, baseType: !5093, size: 64, offset: 128)
!5093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5094, size: 64)
!5094 = !DISubroutineType(types: !5095)
!5095 = !{!98, !5053, !535, !98}
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !564, file: !83, line: 1970, baseType: !5097, size: 64, offset: 192)
!5097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5098, size: 64)
!5098 = !DISubroutineType(types: !5099)
!5099 = !{!558, !535, !98, !1436}
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !564, file: !83, line: 1972, baseType: !5101, size: 64, offset: 256)
!5101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5102, size: 64)
!5102 = !DISubroutineType(types: !5103)
!5103 = !{!98, !570, !462, !98}
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !564, file: !83, line: 1974, baseType: !5105, size: 64, offset: 320)
!5105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5106, size: 64)
!5106 = !DISubroutineType(types: !5107)
!5107 = !{!98, !5053, !535, !570, !100, !1436}
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !564, file: !83, line: 1976, baseType: !5109, size: 64, offset: 384)
!5109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5110, size: 64)
!5110 = !DISubroutineType(types: !5111)
!5111 = !{!98, !570, !535, !570}
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !564, file: !83, line: 1977, baseType: !5113, size: 64, offset: 448)
!5113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5114, size: 64)
!5114 = !DISubroutineType(types: !5115)
!5115 = !{!98, !535, !570}
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !564, file: !83, line: 1978, baseType: !5117, size: 64, offset: 512)
!5117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5118, size: 64)
!5118 = !DISubroutineType(types: !5119)
!5119 = !{!98, !5053, !535, !570, !92}
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !564, file: !83, line: 1980, baseType: !5121, size: 64, offset: 576)
!5121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5122, size: 64)
!5122 = !DISubroutineType(types: !5123)
!5123 = !{!98, !5053, !535, !570, !100}
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !564, file: !83, line: 1982, baseType: !5113, size: 64, offset: 640)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !564, file: !83, line: 1983, baseType: !5126, size: 64, offset: 704)
!5126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5127, size: 64)
!5127 = !DISubroutineType(types: !5128)
!5128 = !{!98, !5053, !535, !570, !100, !686}
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !564, file: !83, line: 1985, baseType: !5130, size: 64, offset: 768)
!5130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5131, size: 64)
!5131 = !DISubroutineType(types: !5132)
!5132 = !{!98, !5053, !535, !570, !535, !570, !7}
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !564, file: !83, line: 1987, baseType: !5134, size: 64, offset: 832)
!5134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5135, size: 64)
!5135 = !DISubroutineType(types: !5136)
!5136 = !{!98, !5053, !570, !5137}
!5137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5138, size: 64)
!5138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !83, line: 226, size: 640, elements: !5139)
!5139 = !{!5140, !5141, !5142, !5152, !5161, !5162, !5167, !5168, !5169}
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !5138, file: !83, line: 227, baseType: !7, size: 32)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !5138, file: !83, line: 228, baseType: !100, size: 16, offset: 32)
!5142 = !DIDerivedType(tag: DW_TAG_member, scope: !5138, file: !83, line: 241, baseType: !5143, size: 32, offset: 64)
!5143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5138, file: !83, line: 241, size: 32, elements: !5144)
!5144 = !{!5145, !5146}
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !5143, file: !83, line: 242, baseType: !541, size: 32)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !5143, file: !83, line: 243, baseType: !5147, size: 32)
!5147 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !5148, line: 16, baseType: !5149)
!5148 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!5149 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5148, line: 14, size: 32, elements: !5150)
!5150 = !{!5151}
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5149, file: !5148, line: 15, baseType: !546, size: 32)
!5152 = !DIDerivedType(tag: DW_TAG_member, scope: !5138, file: !83, line: 245, baseType: !5153, size: 32, offset: 96)
!5153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5138, file: !83, line: 245, size: 32, elements: !5154)
!5154 = !{!5155, !5156}
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !5153, file: !83, line: 246, baseType: !550, size: 32)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !5153, file: !83, line: 247, baseType: !5157, size: 32)
!5157 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !5148, line: 20, baseType: !5158)
!5158 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5148, line: 18, size: 32, elements: !5159)
!5159 = !{!5160}
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5158, file: !5148, line: 19, baseType: !554, size: 32)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !5138, file: !83, line: 249, baseType: !117, size: 64, offset: 128)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !5138, file: !83, line: 250, baseType: !5163, size: 128, offset: 192)
!5163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1463, line: 13, size: 128, elements: !5164)
!5164 = !{!5165, !5166}
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5163, file: !1463, line: 14, baseType: !1462, size: 64)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5163, file: !1463, line: 15, baseType: !387, size: 64, offset: 64)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !5138, file: !83, line: 251, baseType: !5163, size: 128, offset: 320)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !5138, file: !83, line: 252, baseType: !5163, size: 128, offset: 448)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !5138, file: !83, line: 259, baseType: !1260, size: 64, offset: 576)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !564, file: !83, line: 1988, baseType: !5171, size: 64, offset: 896)
!5171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5172, size: 64)
!5172 = !DISubroutineType(types: !5173)
!5173 = !{!98, !5053, !4809, !5174, !312, !7}
!5174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5175, size: 64)
!5175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !5176, line: 22, size: 1280, elements: !5177)
!5176 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!5177 = !{!5178, !5179, !5180, !5181, !5182, !5183, !5184, !5185, !5186, !5187, !5188, !5189, !5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197, !5198}
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !5175, file: !5176, line: 23, baseType: !312, size: 32)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5175, file: !5176, line: 24, baseType: !100, size: 16, offset: 32)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !5175, file: !5176, line: 25, baseType: !7, size: 32, offset: 64)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !5175, file: !5176, line: 26, baseType: !1470, size: 32, offset: 96)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !5175, file: !5176, line: 27, baseType: !298, size: 64, offset: 128)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !5175, file: !5176, line: 28, baseType: !298, size: 64, offset: 192)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !5175, file: !5176, line: 41, baseType: !298, size: 64, offset: 256)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5175, file: !5176, line: 42, baseType: !686, size: 32, offset: 320)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !5175, file: !5176, line: 43, baseType: !686, size: 32, offset: 352)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5175, file: !5176, line: 44, baseType: !541, size: 32, offset: 384)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !5175, file: !5176, line: 45, baseType: !550, size: 32, offset: 416)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5175, file: !5176, line: 46, baseType: !117, size: 64, offset: 448)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !5175, file: !5176, line: 47, baseType: !5163, size: 128, offset: 512)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !5175, file: !5176, line: 48, baseType: !5163, size: 128, offset: 640)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !5175, file: !5176, line: 49, baseType: !5163, size: 128, offset: 768)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !5175, file: !5176, line: 50, baseType: !5163, size: 128, offset: 896)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !5175, file: !5176, line: 51, baseType: !298, size: 64, offset: 1024)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !5175, file: !5176, line: 52, baseType: !298, size: 64, offset: 1088)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !5175, file: !5176, line: 53, baseType: !312, size: 32, offset: 1152)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !5175, file: !5176, line: 54, baseType: !312, size: 32, offset: 1184)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !5175, file: !5176, line: 55, baseType: !298, size: 64, offset: 1216)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !564, file: !83, line: 1990, baseType: !5200, size: 64, offset: 960)
!5200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5201, size: 64)
!5201 = !DISubroutineType(types: !5202)
!5202 = !{!494, !570, !462, !111}
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !564, file: !83, line: 1991, baseType: !5204, size: 64, offset: 1024)
!5204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5205, size: 64)
!5205 = !DISubroutineType(types: !5206)
!5206 = !{!98, !535, !5207, !298, !298}
!5207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5208, size: 64)
!5208 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !83, line: 55, flags: DIFlagFwdDecl)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !564, file: !83, line: 1993, baseType: !5210, size: 64, offset: 1088)
!5210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5211, size: 64)
!5211 = !DISubroutineType(types: !5212)
!5212 = !{!98, !535, !98}
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !564, file: !83, line: 1994, baseType: !5214, size: 64, offset: 1152)
!5214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5215, size: 64)
!5215 = !DISubroutineType(types: !5216)
!5216 = !{!98, !535, !570, !1260, !7, !100}
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !564, file: !83, line: 1997, baseType: !5218, size: 64, offset: 1216)
!5218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5219, size: 64)
!5219 = !DISubroutineType(types: !5220)
!5220 = !{!98, !5053, !535, !1260, !100}
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !564, file: !83, line: 1999, baseType: !5222, size: 64, offset: 1280)
!5222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5223, size: 64)
!5223 = !DISubroutineType(types: !5224)
!5224 = !{!558, !5053, !570, !98}
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !564, file: !83, line: 2001, baseType: !5226, size: 64, offset: 1344)
!5226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5227, size: 64)
!5227 = !DISubroutineType(types: !5228)
!5228 = !{!98, !5053, !570, !558, !98}
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !564, file: !83, line: 2003, baseType: !5230, size: 64, offset: 1408)
!5230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5231, size: 64)
!5231 = !DISubroutineType(types: !5232)
!5232 = !{!98, !5053, !570, !5233}
!5233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5234, size: 64)
!5234 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !83, line: 76, flags: DIFlagFwdDecl)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !564, file: !83, line: 2005, baseType: !5236, size: 64, offset: 1472)
!5236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5237, size: 64)
!5237 = !DISubroutineType(types: !5238)
!5238 = !{!98, !570, !5233}
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !564, file: !83, line: 2006, baseType: !5240, size: 64, offset: 1536)
!5240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5241, size: 64)
!5241 = !DISubroutineType(types: !5242)
!5242 = !{!5243, !535}
!5243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5244, size: 64)
!5244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !83, line: 3192, size: 192, elements: !5245)
!5245 = !{!5246, !5247}
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5244, file: !83, line: 3193, baseType: !933, size: 128)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !5244, file: !83, line: 3194, baseType: !312, size: 32, offset: 128)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !536, file: !83, line: 655, baseType: !681, size: 64, offset: 448)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !536, file: !83, line: 656, baseType: !531, size: 64, offset: 512)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !536, file: !83, line: 659, baseType: !96, size: 64, offset: 576)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !536, file: !83, line: 663, baseType: !115, size: 64, offset: 640)
!5252 = !DIDerivedType(tag: DW_TAG_member, scope: !536, file: !83, line: 671, baseType: !5253, size: 32, offset: 704)
!5253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !536, file: !83, line: 671, size: 32, elements: !5254)
!5254 = !{!5255, !5256}
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !5253, file: !83, line: 672, baseType: !4228, size: 32)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !5253, file: !83, line: 673, baseType: !7, size: 32)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !536, file: !83, line: 675, baseType: !686, size: 32, offset: 736)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !536, file: !83, line: 676, baseType: !117, size: 64, offset: 768)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !536, file: !83, line: 677, baseType: !5163, size: 128, offset: 832)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !536, file: !83, line: 678, baseType: !5163, size: 128, offset: 960)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !536, file: !83, line: 679, baseType: !5163, size: 128, offset: 1088)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !536, file: !83, line: 680, baseType: !135, size: 32, offset: 1216)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !536, file: !83, line: 681, baseType: !102, size: 16, offset: 1248)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !536, file: !83, line: 682, baseType: !159, size: 8, offset: 1264)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !536, file: !83, line: 683, baseType: !159, size: 8, offset: 1272)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !536, file: !83, line: 684, baseType: !4882, size: 64, offset: 1280)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !536, file: !83, line: 691, baseType: !115, size: 64, offset: 1344)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !536, file: !83, line: 692, baseType: !1288, size: 320, offset: 1408)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !536, file: !83, line: 694, baseType: !115, size: 64, offset: 1728)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !536, file: !83, line: 695, baseType: !115, size: 64, offset: 1792)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !536, file: !83, line: 697, baseType: !339, size: 128, offset: 1856)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !536, file: !83, line: 698, baseType: !173, size: 128, offset: 1984)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !536, file: !83, line: 707, baseType: !173, size: 128, offset: 2112)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !536, file: !83, line: 708, baseType: !173, size: 128, offset: 2240)
!5275 = !DIDerivedType(tag: DW_TAG_member, scope: !536, file: !83, line: 709, baseType: !5276, size: 128, offset: 2368)
!5276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !536, file: !83, line: 709, size: 128, elements: !5277)
!5277 = !{!5278, !5279}
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5276, file: !83, line: 710, baseType: !335, size: 64)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5276, file: !83, line: 711, baseType: !859, size: 128, align: 64)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !536, file: !83, line: 713, baseType: !808, size: 64, offset: 2496)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !536, file: !83, line: 714, baseType: !808, size: 64, offset: 2560)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !536, file: !83, line: 715, baseType: !125, size: 32, offset: 2624)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !536, file: !83, line: 716, baseType: !125, size: 32, offset: 2656)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !536, file: !83, line: 717, baseType: !125, size: 32, offset: 2688)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !536, file: !83, line: 719, baseType: !125, size: 32, offset: 2720)
!5286 = !DIDerivedType(tag: DW_TAG_member, scope: !536, file: !83, line: 721, baseType: !5287, size: 64, offset: 2752)
!5287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !536, file: !83, line: 721, size: 64, elements: !5288)
!5288 = !{!5289, !5290}
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5287, file: !83, line: 722, baseType: !4522, size: 64)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5287, file: !83, line: 723, baseType: !741, size: 64)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !536, file: !83, line: 725, baseType: !5292, size: 64, offset: 2816)
!5292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5293, size: 64)
!5293 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !83, line: 725, flags: DIFlagFwdDecl)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !536, file: !83, line: 726, baseType: !532, size: 1536, align: 64, offset: 2880)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !536, file: !83, line: 727, baseType: !173, size: 128, offset: 4416)
!5296 = !DIDerivedType(tag: DW_TAG_member, scope: !536, file: !83, line: 728, baseType: !5297, size: 64, offset: 4544)
!5297 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !536, file: !83, line: 728, size: 64, elements: !5298)
!5298 = !{!5299, !5300, !5303, !5304}
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5297, file: !83, line: 729, baseType: !3079, size: 64)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5297, file: !83, line: 730, baseType: !5301, size: 64)
!5301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5302, size: 64)
!5302 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !83, line: 730, flags: DIFlagFwdDecl)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5297, file: !83, line: 731, baseType: !462, size: 64)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5297, file: !83, line: 732, baseType: !7, size: 32)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !536, file: !83, line: 735, baseType: !313, size: 32, offset: 4608)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !536, file: !83, line: 738, baseType: !313, size: 32, offset: 4640)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !536, file: !83, line: 739, baseType: !4991, size: 64, offset: 4672)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !536, file: !83, line: 750, baseType: !96, size: 64, offset: 4736)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !532, file: !83, line: 474, baseType: !933, size: 128, offset: 64)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !532, file: !83, line: 475, baseType: !1288, size: 320, offset: 192)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !532, file: !83, line: 476, baseType: !938, size: 32, offset: 512)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !532, file: !83, line: 477, baseType: !125, size: 32, offset: 544)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !532, file: !83, line: 482, baseType: !1123, size: 128, offset: 576)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !532, file: !83, line: 483, baseType: !115, size: 64, offset: 704)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !532, file: !83, line: 484, baseType: !115, size: 64, offset: 768)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !532, file: !83, line: 485, baseType: !5317, size: 64, offset: 832)
!5317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5318, size: 64)
!5318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5319)
!5319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !83, line: 404, size: 1280, elements: !5320)
!5320 = !{!5321, !5325, !5395, !5399, !5403, !5409, !5414, !5418, !5423, !5427, !5431, !5435, !5436, !5440, !5444, !5448, !5453, !5457, !5464, !5465}
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !5319, file: !83, line: 405, baseType: !5322, size: 64)
!5322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5323, size: 64)
!5323 = !DISubroutineType(types: !5324)
!5324 = !{!98, !2134, !753}
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !5319, file: !83, line: 406, baseType: !5326, size: 64, offset: 64)
!5326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5327, size: 64)
!5327 = !DISubroutineType(types: !5328)
!5328 = !{!98, !1260, !5329}
!5329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5330, size: 64)
!5330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !20, line: 293, size: 1536, elements: !5331)
!5331 = !{!5332, !5362, !5376}
!5332 = !DIDerivedType(tag: DW_TAG_member, scope: !5330, file: !20, line: 295, baseType: !5333, size: 512)
!5333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5330, file: !20, line: 295, size: 512, elements: !5334)
!5334 = !{!5335, !5361}
!5335 = !DIDerivedType(tag: DW_TAG_member, scope: !5333, file: !20, line: 296, baseType: !5336, size: 448)
!5336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5333, file: !20, line: 296, size: 448, elements: !5337)
!5337 = !{!5338, !5339, !5348, !5349, !5350, !5359, !5360}
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5336, file: !20, line: 298, baseType: !115, size: 64)
!5339 = !DIDerivedType(tag: DW_TAG_member, scope: !5336, file: !20, line: 299, baseType: !5340, size: 128, offset: 64)
!5340 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5336, file: !20, line: 299, size: 128, elements: !5341)
!5341 = !{!5342, !5343}
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5340, file: !20, line: 300, baseType: !173, size: 128)
!5343 = !DIDerivedType(tag: DW_TAG_member, scope: !5340, file: !20, line: 302, baseType: !5344, size: 128)
!5344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5340, file: !20, line: 302, size: 128, elements: !5345)
!5345 = !{!5346, !5347}
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !5344, file: !20, line: 303, baseType: !96, size: 64)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !5344, file: !20, line: 305, baseType: !7, size: 32, offset: 64)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !5336, file: !20, line: 310, baseType: !531, size: 64, offset: 192)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5336, file: !20, line: 311, baseType: !115, size: 64, offset: 256)
!5350 = !DIDerivedType(tag: DW_TAG_member, scope: !5336, file: !20, line: 312, baseType: !5351, size: 64, offset: 320)
!5351 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5336, file: !20, line: 312, size: 64, elements: !5352)
!5352 = !{!5353, !5354}
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5351, file: !20, line: 313, baseType: !96, size: 64)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !5351, file: !20, line: 314, baseType: !5355, size: 64)
!5355 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !20, line: 257, baseType: !5356)
!5356 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 255, size: 64, elements: !5357)
!5357 = !{!5358}
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5356, file: !20, line: 256, baseType: !115, size: 64)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !5336, file: !20, line: 316, baseType: !125, size: 32, offset: 384)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !5336, file: !20, line: 317, baseType: !125, size: 32, offset: 416)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5333, file: !20, line: 323, baseType: !2135, size: 512, align: 128)
!5362 = !DIDerivedType(tag: DW_TAG_member, scope: !5330, file: !20, line: 325, baseType: !5363, size: 512, offset: 512)
!5363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5330, file: !20, line: 325, size: 512, elements: !5364)
!5364 = !{!5365, !5375}
!5365 = !DIDerivedType(tag: DW_TAG_member, scope: !5363, file: !20, line: 326, baseType: !5366, size: 320)
!5366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5363, file: !20, line: 326, size: 320, elements: !5367)
!5367 = !{!5368, !5369, !5370, !5371, !5372, !5373, !5374}
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !5366, file: !20, line: 327, baseType: !115, size: 64)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !5366, file: !20, line: 328, baseType: !115, size: 64, offset: 64)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !5366, file: !20, line: 329, baseType: !115, size: 64, offset: 128)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !5366, file: !20, line: 331, baseType: !125, size: 32, offset: 192)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !5366, file: !20, line: 332, baseType: !125, size: 32, offset: 224)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !5366, file: !20, line: 333, baseType: !125, size: 32, offset: 256)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !5366, file: !20, line: 335, baseType: !7, size: 32, offset: 288)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !5363, file: !20, line: 339, baseType: !2135, size: 512, align: 128)
!5376 = !DIDerivedType(tag: DW_TAG_member, scope: !5330, file: !20, line: 341, baseType: !5377, size: 512, offset: 1024)
!5377 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5330, file: !20, line: 341, size: 512, elements: !5378)
!5378 = !{!5379, !5388, !5394}
!5379 = !DIDerivedType(tag: DW_TAG_member, scope: !5377, file: !20, line: 342, baseType: !5380, size: 384)
!5380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5377, file: !20, line: 342, size: 384, elements: !5381)
!5381 = !{!5382, !5383, !5384, !5385, !5386, !5387}
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !5380, file: !20, line: 343, baseType: !115, size: 64)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !5380, file: !20, line: 344, baseType: !115, size: 64, offset: 64)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !5380, file: !20, line: 346, baseType: !96, size: 64, offset: 128)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !5380, file: !20, line: 347, baseType: !96, size: 64, offset: 192)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !5380, file: !20, line: 348, baseType: !96, size: 64, offset: 256)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !5380, file: !20, line: 349, baseType: !96, size: 64, offset: 320)
!5388 = !DIDerivedType(tag: DW_TAG_member, scope: !5377, file: !20, line: 352, baseType: !5389, size: 256)
!5389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5377, file: !20, line: 352, size: 256, elements: !5390)
!5390 = !{!5391, !5392, !5393}
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !5389, file: !20, line: 353, baseType: !115, size: 64)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !5389, file: !20, line: 354, baseType: !115, size: 64, offset: 64)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !5389, file: !20, line: 356, baseType: !173, size: 128, offset: 128)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !5377, file: !20, line: 359, baseType: !2135, size: 512, align: 128)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !5319, file: !83, line: 409, baseType: !5396, size: 64, offset: 128)
!5396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5397, size: 64)
!5397 = !DISubroutineType(types: !5398)
!5398 = !{!98, !531, !753}
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !5319, file: !83, line: 412, baseType: !5400, size: 64, offset: 192)
!5400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5401, size: 64)
!5401 = !DISubroutineType(types: !5402)
!5402 = !{!1436, !531, !5329}
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !5319, file: !83, line: 414, baseType: !5404, size: 64, offset: 256)
!5404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5405, size: 64)
!5405 = !DISubroutineType(types: !5406)
!5406 = !{null, !5407}
!5407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5408, size: 64)
!5408 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !83, line: 310, flags: DIFlagFwdDecl)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !5319, file: !83, line: 416, baseType: !5410, size: 64, offset: 320)
!5410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5411, size: 64)
!5411 = !DISubroutineType(types: !5412)
!5412 = !{!98, !1260, !531, !117, !7, !5413, !3721}
!5413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !5319, file: !83, line: 419, baseType: !5415, size: 64, offset: 384)
!5415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5416, size: 64)
!5416 = !DISubroutineType(types: !5417)
!5417 = !{!98, !1260, !531, !117, !7, !7, !2134, !96}
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !5319, file: !83, line: 424, baseType: !5419, size: 64, offset: 448)
!5419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5420, size: 64)
!5420 = !DISubroutineType(types: !5421)
!5421 = !{!5422, !531, !5422}
!5422 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !101, line: 131, baseType: !298)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !5319, file: !83, line: 425, baseType: !5424, size: 64, offset: 512)
!5424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5425, size: 64)
!5425 = !DISubroutineType(types: !5426)
!5426 = !{null, !5329, !111, !111}
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !5319, file: !83, line: 426, baseType: !5428, size: 64, offset: 576)
!5428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5429, size: 64)
!5429 = !DISubroutineType(types: !5430)
!5430 = !{!1436, !5329, !938}
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !5319, file: !83, line: 427, baseType: !5432, size: 64, offset: 640)
!5432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5433, size: 64)
!5433 = !DISubroutineType(types: !5434)
!5434 = !{null, !5329}
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !5319, file: !83, line: 428, baseType: !4540, size: 64, offset: 704)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !5319, file: !83, line: 433, baseType: !5437, size: 64, offset: 768)
!5437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5438, size: 64)
!5438 = !DISubroutineType(types: !5439)
!5439 = !{!98, !531, !5329, !5329, !43}
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !5319, file: !83, line: 435, baseType: !5441, size: 64, offset: 832)
!5441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5442, size: 64)
!5442 = !DISubroutineType(types: !5443)
!5443 = !{!98, !5329}
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !5319, file: !83, line: 436, baseType: !5445, size: 64, offset: 896)
!5445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5446, size: 64)
!5446 = !DISubroutineType(types: !5447)
!5447 = !{!1436, !5329, !111, !111}
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !5319, file: !83, line: 438, baseType: !5449, size: 64, offset: 960)
!5449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5450, size: 64)
!5450 = !DISubroutineType(types: !5451)
!5451 = !{null, !5329, !5452, !5452}
!5452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !5319, file: !83, line: 439, baseType: !5454, size: 64, offset: 1024)
!5454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5455, size: 64)
!5455 = !DISubroutineType(types: !5456)
!5456 = !{!98, !531, !2134}
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !5319, file: !83, line: 442, baseType: !5458, size: 64, offset: 1088)
!5458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5459, size: 64)
!5459 = !DISubroutineType(types: !5460)
!5460 = !{!98, !5461, !1260, !5463}
!5461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5462, size: 64)
!5462 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !83, line: 66, flags: DIFlagFwdDecl)
!5463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5422, size: 64)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !5319, file: !83, line: 444, baseType: !4640, size: 64, offset: 1152)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !5319, file: !83, line: 445, baseType: !5466, size: 64, offset: 1216)
!5466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5467, size: 64)
!5467 = !DISubroutineType(types: !5468)
!5468 = !{!98, !4543, !4565}
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !532, file: !83, line: 486, baseType: !115, size: 64, offset: 896)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !532, file: !83, line: 487, baseType: !1288, size: 320, offset: 960)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !532, file: !83, line: 488, baseType: !4681, size: 32, offset: 1280)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !532, file: !83, line: 489, baseType: !135, size: 32, offset: 1312)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !532, file: !83, line: 490, baseType: !173, size: 128, offset: 1344)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !532, file: !83, line: 491, baseType: !96, size: 64, offset: 1472)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !522, file: !488, line: 180, baseType: !5476, size: 64, offset: 320)
!5476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5477, size: 64)
!5477 = !DISubroutineType(types: !5478)
!5478 = !{!494, !1260, !427, !521, !462, !117, !111}
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !522, file: !488, line: 182, baseType: !5476, size: 64, offset: 384)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !522, file: !488, line: 184, baseType: !5481, size: 64, offset: 448)
!5481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5482, size: 64)
!5482 = !DISubroutineType(types: !5483)
!5483 = !{!98, !1260, !427, !521, !2027}
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !510, file: !488, line: 90, baseType: !5485, size: 64, offset: 192)
!5485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !510, file: !488, line: 91, baseType: !5487, size: 64, offset: 256)
!5487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !478, file: !422, line: 120, baseType: !5489, size: 64, offset: 192)
!5489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5490, size: 64)
!5490 = !DISubroutineType(types: !5491)
!5491 = !{!3568, !445}
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !478, file: !422, line: 121, baseType: !5493, size: 64, offset: 256)
!5493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5494, size: 64)
!5494 = !DISubroutineType(types: !5495)
!5495 = !{!1365, !445}
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !478, file: !422, line: 122, baseType: !5497, size: 64, offset: 320)
!5497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5498, size: 64)
!5498 = !DISubroutineType(types: !5499)
!5499 = !{null, !445, !1615, !1616}
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !421, file: !422, line: 70, baseType: !1964, size: 64, offset: 384)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !421, file: !422, line: 71, baseType: !5502, size: 32, offset: 448)
!5502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !5503, line: 19, size: 32, elements: !5504)
!5503 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!5504 = !{!5505}
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5502, file: !5503, line: 20, baseType: !904, size: 32)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !421, file: !422, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !421, file: !422, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !421, file: !422, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !421, file: !422, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !421, file: !422, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !418, file: !6, line: 47, baseType: !408, size: 64, offset: 512)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !418, file: !6, line: 48, baseType: !427, size: 64, offset: 576)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !418, file: !6, line: 49, baseType: !5514, size: 64, offset: 640)
!5514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5515, size: 64)
!5515 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !418, file: !6, line: 50, baseType: !1589, size: 64, offset: 704)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !409, file: !6, line: 418, baseType: !5518, size: 64, offset: 1408)
!5518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5519, size: 64)
!5519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !5520)
!5520 = !{!5521, !5522, !5527, !5531, !5535, !5539}
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5519, file: !6, line: 54, baseType: !498, size: 128)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5519, file: !6, line: 55, baseType: !5523, size: 64, offset: 128)
!5523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5524, size: 64)
!5524 = !DISubroutineType(types: !5525)
!5525 = !{!494, !5518, !5526, !462}
!5526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5519, file: !6, line: 57, baseType: !5528, size: 64, offset: 192)
!5528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5529, size: 64)
!5529 = !DISubroutineType(types: !5530)
!5530 = !{!494, !5518, !5526, !92, !111}
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !5519, file: !6, line: 59, baseType: !5532, size: 64, offset: 256)
!5532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5533, size: 64)
!5533 = !DISubroutineType(types: !5534)
!5534 = !{null, !408, !92}
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !5519, file: !6, line: 60, baseType: !5536, size: 64, offset: 320)
!5536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5537, size: 64)
!5537 = !DISubroutineType(types: !5538)
!5538 = !{!98, !408}
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5519, file: !6, line: 61, baseType: !5540, size: 64, offset: 384)
!5540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5541, size: 64)
!5541 = !DISubroutineType(types: !5542)
!5542 = !{null, !408}
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !409, file: !6, line: 419, baseType: !92, size: 64, offset: 1472)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !409, file: !6, line: 420, baseType: !92, size: 64, offset: 1536)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !409, file: !6, line: 421, baseType: !427, size: 64, offset: 1600)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !409, file: !6, line: 424, baseType: !5547, size: 64, offset: 1664)
!5547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5548, size: 64)
!5548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5549)
!5549 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !409, file: !6, line: 425, baseType: !5551, size: 64, offset: 1728)
!5551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5552, size: 64)
!5552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !409, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !409, file: !6, line: 435, baseType: !802, size: 256, offset: 1856)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !409, file: !6, line: 437, baseType: !5556, size: 64, offset: 2112)
!5556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5557, size: 64)
!5557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !5558, line: 69, size: 320, elements: !5559)
!5558 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!5559 = !{!5560, !5561, !5562, !5579, !5581, !5585, !5586}
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5557, file: !5558, line: 70, baseType: !92, size: 64)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !5557, file: !5558, line: 71, baseType: !408, size: 64, offset: 64)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5557, file: !5558, line: 72, baseType: !5563, size: 64, offset: 128)
!5563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5564, size: 64)
!5564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5565)
!5565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !5558, line: 47, size: 256, elements: !5566)
!5566 = !{!5567, !5568, !5574, !5578}
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5565, file: !5558, line: 49, baseType: !7, size: 32)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !5565, file: !5558, line: 51, baseType: !5569, size: 64, offset: 64)
!5569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5570, size: 64)
!5570 = !DISubroutineType(types: !5571)
!5571 = !{!98, !92, !5572}
!5572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5573, size: 64)
!5573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5557)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !5565, file: !5558, line: 53, baseType: !5575, size: 64, offset: 128)
!5575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5576, size: 64)
!5576 = !DISubroutineType(types: !5577)
!5577 = !{!98, !462, !5572}
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5565, file: !5558, line: 55, baseType: !3592, size: 64, offset: 192)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5557, file: !5558, line: 73, baseType: !5580, size: 16, offset: 192)
!5580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5557, file: !5558, line: 74, baseType: !5582, size: 8, offset: 208)
!5582 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !160, line: 16, baseType: !5583)
!5583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !162, line: 20, baseType: !5584)
!5584 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5557, file: !5558, line: 75, baseType: !159, size: 8, offset: 216)
!5586 = !DIDerivedType(tag: DW_TAG_member, scope: !5557, file: !5558, line: 76, baseType: !5587, size: 64, offset: 256)
!5587 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5557, file: !5558, line: 76, size: 64, elements: !5588)
!5588 = !{!5589, !5590, !5597}
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5587, file: !5558, line: 77, baseType: !96, size: 64)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !5587, file: !5558, line: 78, baseType: !5591, size: 64)
!5591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5592, size: 64)
!5592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5593)
!5593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !5558, line: 86, size: 128, elements: !5594)
!5594 = !{!5595, !5596}
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !5593, file: !5558, line: 87, baseType: !7, size: 32)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5593, file: !5558, line: 88, baseType: !462, size: 64, offset: 64)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !5587, file: !5558, line: 79, baseType: !5598, size: 64)
!5598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5599, size: 64)
!5599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5600)
!5600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !5558, line: 92, size: 256, elements: !5601)
!5601 = !{!5602, !5603, !5604, !5605, !5606}
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5600, file: !5558, line: 94, baseType: !7, size: 32)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !5600, file: !5558, line: 95, baseType: !7, size: 32, offset: 32)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !5600, file: !5558, line: 96, baseType: !4981, size: 64, offset: 64)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5600, file: !5558, line: 97, baseType: !5563, size: 64, offset: 128)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !5600, file: !5558, line: 98, baseType: !96, size: 64, offset: 192)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !409, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !409, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !409, file: !6, line: 442, baseType: !5547, size: 64, offset: 2240)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !409, file: !6, line: 443, baseType: !5551, size: 64, offset: 2304)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !409, file: !6, line: 444, baseType: !1436, size: 8, offset: 2368)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !409, file: !6, line: 451, baseType: !1436, size: 8, offset: 2376)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !409, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !409, file: !6, line: 455, baseType: !5615, size: 64, offset: 2432)
!5615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5616, size: 64)
!5616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !5617, line: 23, size: 96, elements: !5618)
!5617 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!5618 = !{!5619, !5620, !5621}
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5616, file: !5617, line: 24, baseType: !98, size: 32)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !5616, file: !5617, line: 24, baseType: !98, size: 32, offset: 32)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5616, file: !5617, line: 24, baseType: !98, size: 32, offset: 64)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !409, file: !6, line: 458, baseType: !5623, size: 64, offset: 2496)
!5623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5624, size: 64)
!5624 = !DISubroutineType(types: !5625)
!5625 = !{!98}
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !409, file: !6, line: 460, baseType: !5627, size: 4032, align: 512, offset: 2560)
!5627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5628, size: 4032, elements: !5642)
!5628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !5629)
!5629 = !{!5630, !5631, !5632}
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5628, file: !6, line: 363, baseType: !96, size: 64)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5628, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !5628, file: !6, line: 367, baseType: !5633, size: 448, offset: 128)
!5633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !5634)
!5634 = !{!5635, !5636}
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !5633, file: !6, line: 320, baseType: !408, size: 64)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5633, file: !6, line: 321, baseType: !5637, size: 384, offset: 64)
!5637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !5638, line: 40, size: 384, elements: !5639)
!5638 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!5639 = !{!5640}
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5637, file: !5638, line: 41, baseType: !5641, size: 384, align: 64)
!5641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !994, size: 384, align: 64, elements: !2650)
!5642 = !{!5643}
!5643 = !DISubrange(count: 7)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !409, file: !6, line: 463, baseType: !5645, size: 192, offset: 6592)
!5645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !5646, line: 8, size: 192, elements: !5647)
!5646 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!5647 = !{!5648, !5649, !5650}
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !5645, file: !5646, line: 10, baseType: !7, size: 32)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !5645, file: !5646, line: 11, baseType: !352, size: 64, offset: 64)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !5645, file: !5646, line: 12, baseType: !5651, size: 64, offset: 128)
!5651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5652, size: 64)
!5652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !5653, line: 59, size: 48, elements: !5654)
!5653 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!5654 = !{!5655, !5656, !5657, !5658, !5659, !5660}
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !5652, file: !5653, line: 60, baseType: !1382, size: 16)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !5652, file: !5653, line: 61, baseType: !1382, size: 16, offset: 16)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !5652, file: !5653, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !5652, file: !5653, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5652, file: !5653, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5652, file: !5653, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !409, file: !6, line: 465, baseType: !115, size: 64, offset: 6784)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !409, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !409, file: !6, line: 470, baseType: !173, size: 128, offset: 6912)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !409, file: !6, line: 471, baseType: !5665, size: 64, offset: 7040)
!5665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5666, size: 64)
!5666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !5667, line: 33, size: 96, elements: !5668)
!5667 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!5668 = !{!5669, !5670, !5671, !5672}
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !5666, file: !5667, line: 37, baseType: !98, size: 32)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !5666, file: !5667, line: 43, baseType: !98, size: 32, offset: 32)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !5666, file: !5667, line: 45, baseType: !102, size: 16, offset: 64)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5666, file: !5667, line: 47, baseType: !102, size: 16, offset: 80)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !409, file: !6, line: 476, baseType: !5674, size: 64, offset: 7104)
!5674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5675, size: 64)
!5675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !5676)
!5676 = !{!5677, !5693, !5694, !5695}
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !5675, file: !6, line: 379, baseType: !5678, size: 64)
!5678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5679, size: 64)
!5679 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !5680, line: 204, baseType: !5681)
!5680 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!5681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !5680, line: 197, size: 192, elements: !5682)
!5682 = !{!5683, !5685, !5686, !5687, !5689, !5691}
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !5681, file: !5680, line: 198, baseType: !5684, size: 32)
!5684 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !5680, line: 21, baseType: !313)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !5681, file: !5680, line: 199, baseType: !163, size: 8, offset: 32)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !5681, file: !5680, line: 200, baseType: !163, size: 8, offset: 40)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !5681, file: !5680, line: 201, baseType: !5688, size: 16, offset: 48)
!5688 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !5680, line: 17, baseType: !170)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !5681, file: !5680, line: 202, baseType: !5690, size: 64, offset: 64)
!5690 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !5680, line: 16, baseType: !299)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5681, file: !5680, line: 203, baseType: !5692, size: 64, offset: 128)
!5692 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !5680, line: 22, baseType: !299)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !5675, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !5675, file: !6, line: 381, baseType: !462, size: 64, offset: 128)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !5675, file: !6, line: 382, baseType: !462, size: 64, offset: 192)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !409, file: !6, line: 477, baseType: !5675, size: 256, offset: 7168)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !409, file: !6, line: 480, baseType: !5698, size: 64, offset: 7424)
!5698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5699, size: 64)
!5699 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !409, file: !6, line: 483, baseType: !5701, size: 64, offset: 7488)
!5701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5702, size: 64)
!5702 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !409, file: !6, line: 488, baseType: !462, size: 64, offset: 7552)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !409, file: !6, line: 492, baseType: !96, size: 64, offset: 7616)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !409, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !409, file: !6, line: 495, baseType: !96, size: 64, offset: 7744)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !409, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !409, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !409, file: !6, line: 500, baseType: !5710, size: 64, offset: 7872)
!5710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5711, size: 64)
!5711 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !287, line: 45, baseType: !4225)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !409, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !409, file: !6, line: 504, baseType: !5714, size: 64, offset: 8000)
!5714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5715, size: 64)
!5715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5716, size: 64)
!5716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !5717, line: 96, size: 192, elements: !5718)
!5717 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!5718 = !{!5719, !5720, !5762, !5764}
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !5716, file: !5717, line: 97, baseType: !7, size: 32)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !5716, file: !5717, line: 98, baseType: !5721, size: 64, offset: 64)
!5721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5722, size: 64)
!5722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !5717, line: 24, size: 3072, elements: !5723)
!5723 = !{!5724, !5726, !5727, !5728, !5729, !5742, !5743, !5744, !5745, !5746, !5747, !5748, !5759, !5760, !5761}
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !5722, file: !5717, line: 26, baseType: !5725, size: 128)
!5725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !806, size: 128, elements: !2650)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !5722, file: !5717, line: 27, baseType: !5725, size: 128, offset: 128)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !5722, file: !5717, line: 28, baseType: !98, size: 32, offset: 256)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5722, file: !5717, line: 31, baseType: !135, size: 32, align: 512, offset: 512)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !5722, file: !5717, line: 32, baseType: !5730, size: 960, offset: 576)
!5730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !5731, line: 206, size: 960, elements: !5732)
!5731 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!5732 = !{!5733, !5734, !5737, !5739, !5740, !5741}
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5730, file: !5731, line: 207, baseType: !862, size: 64)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !5730, file: !5731, line: 208, baseType: !5735, size: 256, offset: 64)
!5735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5736, size: 256, elements: !913)
!5736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !5730, file: !5731, line: 209, baseType: !5738, size: 256, offset: 320)
!5738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 256, elements: !913)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5730, file: !5731, line: 213, baseType: !387, size: 64, offset: 576)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !5730, file: !5731, line: 215, baseType: !1650, size: 256, offset: 640)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5730, file: !5731, line: 216, baseType: !159, size: 8, offset: 896)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !5722, file: !5717, line: 33, baseType: !115, size: 64, offset: 1536)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5722, file: !5717, line: 34, baseType: !115, size: 64, offset: 1600)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !5722, file: !5717, line: 35, baseType: !1436, size: 8, offset: 1664)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !5722, file: !5717, line: 36, baseType: !2358, size: 320, offset: 1728)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5722, file: !5717, line: 37, baseType: !1551, size: 256, offset: 2048)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !5722, file: !5717, line: 38, baseType: !859, size: 128, align: 64, offset: 2304)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !5722, file: !5717, line: 39, baseType: !5749, size: 64, offset: 2432)
!5749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5750, size: 64)
!5750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !5717, line: 49, size: 768, elements: !5751)
!5751 = !{!5752, !5753, !5754, !5755, !5756, !5757, !5758}
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5750, file: !5717, line: 50, baseType: !135, size: 32)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !5750, file: !5717, line: 51, baseType: !5738, size: 256, offset: 64)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !5750, file: !5717, line: 53, baseType: !5738, size: 256, offset: 320)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5750, file: !5717, line: 54, baseType: !115, size: 64, offset: 576)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !5750, file: !5717, line: 55, baseType: !5749, size: 64, offset: 640)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !5750, file: !5717, line: 56, baseType: !98, size: 32, offset: 704)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !5750, file: !5717, line: 57, baseType: !98, size: 32, offset: 736)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !5722, file: !5717, line: 40, baseType: !115, size: 64, offset: 2496)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5722, file: !5717, line: 42, baseType: !98, size: 32, offset: 2560)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !5722, file: !5717, line: 43, baseType: !5715, size: 64, offset: 2624)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !5716, file: !5717, line: 99, baseType: !5763, offset: 128)
!5763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !721, line: 211, elements: !722)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !5716, file: !5717, line: 100, baseType: !5765, size: 64, offset: 128)
!5765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5766, size: 64)
!5766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !5717, line: 63, size: 3008, elements: !5767)
!5767 = !{!5768, !5769, !5771, !5772, !5773, !5774, !5775, !5776, !5777, !5778, !5779, !5780, !5781, !5782, !5783, !5784, !5785, !5786, !5787, !5788, !5789, !5790, !5797}
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5766, file: !5717, line: 64, baseType: !5749, size: 64)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5766, file: !5717, line: 65, baseType: !5770, size: 192, offset: 64)
!5770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5749, size: 192, elements: !463)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !5766, file: !5717, line: 67, baseType: !98, size: 32, offset: 256)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !5766, file: !5717, line: 68, baseType: !802, size: 256, offset: 320)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5766, file: !5717, line: 69, baseType: !135, size: 32, offset: 576)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !5766, file: !5717, line: 70, baseType: !802, size: 256, offset: 640)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !5766, file: !5717, line: 71, baseType: !115, size: 64, offset: 896)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !5766, file: !5717, line: 72, baseType: !115, size: 64, offset: 960)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5766, file: !5717, line: 73, baseType: !115, size: 64, offset: 1024)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !5766, file: !5717, line: 74, baseType: !115, size: 64, offset: 1088)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !5766, file: !5717, line: 75, baseType: !115, size: 64, offset: 1152)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !5766, file: !5717, line: 76, baseType: !115, size: 64, offset: 1216)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !5766, file: !5717, line: 77, baseType: !115, size: 64, offset: 1280)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !5766, file: !5717, line: 78, baseType: !115, size: 64, offset: 1344)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !5766, file: !5717, line: 79, baseType: !1436, size: 8, offset: 1408)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !5766, file: !5717, line: 80, baseType: !115, size: 64, offset: 1472)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !5766, file: !5717, line: 81, baseType: !802, size: 256, offset: 1536)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !5766, file: !5717, line: 82, baseType: !1590, size: 256, offset: 1792)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !5766, file: !5717, line: 84, baseType: !125, size: 32, offset: 2048)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !5766, file: !5717, line: 87, baseType: !115, size: 64, offset: 2112)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !5766, file: !5717, line: 88, baseType: !115, size: 64, offset: 2176)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5766, file: !5717, line: 89, baseType: !5791, size: 704, offset: 2240)
!5791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1552, line: 111, size: 704, elements: !5792)
!5792 = !{!5793, !5794, !5795, !5796}
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5791, file: !1552, line: 112, baseType: !1551, size: 256)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !5791, file: !1552, line: 113, baseType: !2358, size: 320, offset: 256)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !5791, file: !1552, line: 116, baseType: !2573, size: 64, offset: 576)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5791, file: !1552, line: 117, baseType: !98, size: 32, offset: 640)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !5766, file: !5717, line: 90, baseType: !5715, size: 64, offset: 2944)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !409, file: !6, line: 515, baseType: !379, size: 64, offset: 8064)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !409, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !409, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !409, file: !6, line: 520, baseType: !5802, size: 64, offset: 8192)
!5802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !409, file: !6, line: 523, baseType: !5804, size: 64, offset: 8256)
!5804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !409, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !409, file: !6, line: 525, baseType: !5807, size: 64, offset: 8384)
!5807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5808, size: 64)
!5808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5809, size: 64)
!5809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !5810, line: 28, size: 192, elements: !5811)
!5810 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!5811 = !{!5812, !5813, !5814}
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !5809, file: !5810, line: 29, baseType: !92, size: 64)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !5809, file: !5810, line: 30, baseType: !92, size: 64, offset: 64)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !5809, file: !5810, line: 31, baseType: !115, size: 64, offset: 128)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !409, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !409, file: !6, line: 533, baseType: !96, size: 64, offset: 8512)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !409, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !409, file: !6, line: 535, baseType: !362, size: 64, offset: 8640)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !409, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !409, file: !6, line: 539, baseType: !98, size: 32, offset: 8736)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !409, file: !6, line: 540, baseType: !5822, size: 64, offset: 8768)
!5822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5823, size: 64)
!5823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !394, line: 32, size: 64, elements: !5824)
!5824 = !{!5825, !5826}
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5823, file: !394, line: 33, baseType: !383, size: 32)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5823, file: !394, line: 34, baseType: !383, size: 32, offset: 32)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !409, file: !6, line: 563, baseType: !173, size: 128, offset: 8832)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !409, file: !6, line: 565, baseType: !173, size: 128, offset: 8960)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !409, file: !6, line: 568, baseType: !2492, size: 64, offset: 9088)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !409, file: !6, line: 570, baseType: !125, size: 32, offset: 9152)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !403, file: !404, line: 172, baseType: !5822, size: 64, offset: 128)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !398, file: !394, line: 67, baseType: !5822, size: 64)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !366, file: !287, line: 36, baseType: !96, size: 64, offset: 256)
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !366, file: !287, line: 37, baseType: !96, size: 64, offset: 320)
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !366, file: !287, line: 38, baseType: !96, size: 64, offset: 384)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !366, file: !287, line: 39, baseType: !5623, size: 64, offset: 448)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !366, file: !287, line: 40, baseType: !2492, size: 64, offset: 512)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !366, file: !287, line: 41, baseType: !285, size: 64, offset: 576)
!5839 = !DIGlobalVariableExpression(var: !5840, expr: !DIExpression())
!5840 = distinct !DIGlobalVariable(name: "__SCK__tp_func_read_msr", scope: !2, file: !318, line: 40, type: !393, isLocal: false, isDefinition: true)
!5841 = !DIGlobalVariableExpression(var: !5842, expr: !DIExpression())
!5842 = distinct !DIGlobalVariable(name: "__tracepoint_write_msr", scope: !2, file: !318, line: 45, type: !366, isLocal: false, isDefinition: true)
!5843 = !DIGlobalVariableExpression(var: !5844, expr: !DIExpression())
!5844 = distinct !DIGlobalVariable(name: "__SCK__tp_func_write_msr", scope: !2, file: !318, line: 45, type: !393, isLocal: false, isDefinition: true)
!5845 = !DIGlobalVariableExpression(var: !5846, expr: !DIExpression())
!5846 = distinct !DIGlobalVariable(name: "__tracepoint_rdpmc", scope: !2, file: !318, line: 50, type: !366, isLocal: false, isDefinition: true)
!5847 = !DIGlobalVariableExpression(var: !5848, expr: !DIExpression())
!5848 = distinct !DIGlobalVariable(name: "__SCK__tp_func_rdpmc", scope: !2, file: !318, line: 50, type: !393, isLocal: false, isDefinition: true)
!5849 = !DIGlobalVariableExpression(var: !5850, expr: !DIExpression())
!5850 = distinct !DIGlobalVariable(name: "event_class_msr_trace_class", scope: !2, file: !318, line: 21, type: !4203, isLocal: true, isDefinition: true)
!5851 = !DIGlobalVariableExpression(var: !5852, expr: !DIExpression())
!5852 = distinct !DIGlobalVariable(name: "event_read_msr", scope: !2, file: !318, line: 40, type: !4198, isLocal: true, isDefinition: true, align: 32)
!5853 = !DIGlobalVariableExpression(var: !5854, expr: !DIExpression())
!5854 = distinct !DIGlobalVariable(name: "__event_read_msr", scope: !2, file: !318, line: 40, type: !4197, isLocal: true, isDefinition: true)
!5855 = !DIGlobalVariableExpression(var: !5856, expr: !DIExpression())
!5856 = distinct !DIGlobalVariable(name: "event_write_msr", scope: !2, file: !318, line: 45, type: !4198, isLocal: true, isDefinition: true, align: 32)
!5857 = !DIGlobalVariableExpression(var: !5858, expr: !DIExpression())
!5858 = distinct !DIGlobalVariable(name: "__event_write_msr", scope: !2, file: !318, line: 45, type: !4197, isLocal: true, isDefinition: true)
!5859 = !DIGlobalVariableExpression(var: !5860, expr: !DIExpression())
!5860 = distinct !DIGlobalVariable(name: "event_rdpmc", scope: !2, file: !318, line: 50, type: !4198, isLocal: true, isDefinition: true, align: 32)
!5861 = !DIGlobalVariableExpression(var: !5862, expr: !DIExpression())
!5862 = distinct !DIGlobalVariable(name: "__event_rdpmc", scope: !2, file: !318, line: 50, type: !4197, isLocal: true, isDefinition: true)
!5863 = !DIGlobalVariableExpression(var: !5864, expr: !DIExpression())
!5864 = distinct !DIGlobalVariable(scope: null, file: !3, line: 15, type: !5865, isLocal: true, isDefinition: true)
!5865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 232, elements: !5866)
!5866 = !{!5867}
!5867 = !DISubrange(count: 29)
!5868 = !DIGlobalVariableExpression(var: !5869, expr: !DIExpression())
!5869 = distinct !DIGlobalVariable(scope: null, file: !3, line: 15, type: !5870, isLocal: true, isDefinition: true)
!5870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 88, elements: !5871)
!5871 = !{!5872}
!5872 = !DISubrange(count: 11)
!5873 = !DIGlobalVariableExpression(var: !5874, expr: !DIExpression())
!5874 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_msrs_alloc347", scope: !2, file: !3, line: 21, type: !96, isLocal: true, isDefinition: true)
!5875 = !DIGlobalVariableExpression(var: !5876, expr: !DIExpression())
!5876 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_msrs_free348", scope: !2, file: !3, line: 27, type: !96, isLocal: true, isDefinition: true)
!5877 = !DIGlobalVariableExpression(var: !5878, expr: !DIExpression())
!5878 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_do_trace_write_msr349", scope: !2, file: !3, line: 127, type: !96, isLocal: true, isDefinition: true)
!5879 = !DIGlobalVariableExpression(var: !5880, expr: !DIExpression())
!5880 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___tracepoint_write_msr350", scope: !2, file: !3, line: 128, type: !96, isLocal: true, isDefinition: true)
!5881 = !DIGlobalVariableExpression(var: !5882, expr: !DIExpression())
!5882 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___traceiter_write_msr351", scope: !2, file: !3, line: 128, type: !96, isLocal: true, isDefinition: true)
!5883 = !DIGlobalVariableExpression(var: !5884, expr: !DIExpression())
!5884 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_write_msr352", scope: !2, file: !3, line: 128, type: !96, isLocal: true, isDefinition: true)
!5885 = !DIGlobalVariableExpression(var: !5886, expr: !DIExpression())
!5886 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCT__tp_func_write_msr353", scope: !2, file: !3, line: 128, type: !96, isLocal: true, isDefinition: true)
!5887 = !DIGlobalVariableExpression(var: !5888, expr: !DIExpression())
!5888 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_do_trace_read_msr354", scope: !2, file: !3, line: 134, type: !96, isLocal: true, isDefinition: true)
!5889 = !DIGlobalVariableExpression(var: !5890, expr: !DIExpression())
!5890 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___tracepoint_read_msr355", scope: !2, file: !3, line: 135, type: !96, isLocal: true, isDefinition: true)
!5891 = !DIGlobalVariableExpression(var: !5892, expr: !DIExpression())
!5892 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___traceiter_read_msr356", scope: !2, file: !3, line: 135, type: !96, isLocal: true, isDefinition: true)
!5893 = !DIGlobalVariableExpression(var: !5894, expr: !DIExpression())
!5894 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_read_msr357", scope: !2, file: !3, line: 135, type: !96, isLocal: true, isDefinition: true)
!5895 = !DIGlobalVariableExpression(var: !5896, expr: !DIExpression())
!5896 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCT__tp_func_read_msr358", scope: !2, file: !3, line: 135, type: !96, isLocal: true, isDefinition: true)
!5897 = !DIGlobalVariableExpression(var: !5898, expr: !DIExpression())
!5898 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_do_trace_rdpmc359", scope: !2, file: !3, line: 141, type: !96, isLocal: true, isDefinition: true)
!5899 = !DIGlobalVariableExpression(var: !5900, expr: !DIExpression())
!5900 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___tracepoint_rdpmc360", scope: !2, file: !3, line: 142, type: !96, isLocal: true, isDefinition: true)
!5901 = !DIGlobalVariableExpression(var: !5902, expr: !DIExpression())
!5902 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___traceiter_rdpmc361", scope: !2, file: !3, line: 142, type: !96, isLocal: true, isDefinition: true)
!5903 = !DIGlobalVariableExpression(var: !5904, expr: !DIExpression())
!5904 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_rdpmc362", scope: !2, file: !3, line: 142, type: !96, isLocal: true, isDefinition: true)
!5905 = !DIGlobalVariableExpression(var: !5906, expr: !DIExpression())
!5906 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCT__tp_func_rdpmc363", scope: !2, file: !3, line: 142, type: !96, isLocal: true, isDefinition: true)
!5907 = !DIGlobalVariableExpression(var: !5908, expr: !DIExpression())
!5908 = distinct !DIGlobalVariable(name: "__tpstrtab_write_msr", scope: !2, file: !318, line: 45, type: !5909, isLocal: true, isDefinition: true)
!5909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 80, elements: !1643)
!5910 = !DIGlobalVariableExpression(var: !5911, expr: !DIExpression())
!5911 = distinct !DIGlobalVariable(name: "__tpstrtab_rdpmc", scope: !2, file: !318, line: 50, type: !5912, isLocal: true, isDefinition: true)
!5912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 48, elements: !1491)
!5913 = !DIGlobalVariableExpression(var: !5914, expr: !DIExpression())
!5914 = distinct !DIGlobalVariable(name: "str__msr__trace_system_name", scope: !2, file: !5915, line: 11, type: !5916, isLocal: true, isDefinition: true)
!5915 = !DIFile(filename: "./include/trace/stages/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b6fe39f4189f752573bd7bb8760fdf7e")
!5916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 32, elements: !913)
!5917 = !DIGlobalVariableExpression(var: !5918, expr: !DIExpression())
!5918 = distinct !DIGlobalVariable(scope: null, file: !318, line: 21, type: !5919, isLocal: true, isDefinition: true)
!5919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 72, elements: !5920)
!5920 = !{!5921}
!5921 = !DISubrange(count: 9)
!5922 = !DIGlobalVariableExpression(var: !5923, expr: !DIExpression())
!5923 = distinct !DIGlobalVariable(scope: null, file: !318, line: 21, type: !5924, isLocal: true, isDefinition: true)
!5924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 32, elements: !913)
!5925 = !DIGlobalVariableExpression(var: !5926, expr: !DIExpression())
!5926 = distinct !DIGlobalVariable(scope: null, file: !318, line: 21, type: !5924, isLocal: true, isDefinition: true)
!5927 = !DIGlobalVariableExpression(var: !5928, expr: !DIExpression())
!5928 = distinct !DIGlobalVariable(scope: null, file: !318, line: 21, type: !5924, isLocal: true, isDefinition: true)
!5929 = !DIGlobalVariableExpression(var: !5930, expr: !DIExpression())
!5930 = distinct !DIGlobalVariable(scope: null, file: !318, line: 21, type: !5924, isLocal: true, isDefinition: true)
!5931 = !DIGlobalVariableExpression(var: !5932, expr: !DIExpression())
!5932 = distinct !DIGlobalVariable(scope: null, file: !318, line: 21, type: !5933, isLocal: true, isDefinition: true)
!5933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 56, elements: !5642)
!5934 = !DIGlobalVariableExpression(var: !5935, expr: !DIExpression())
!5935 = distinct !DIGlobalVariable(name: "trace_event_fields_msr_trace_class", scope: !2, file: !318, line: 21, type: !5936, isLocal: true, isDefinition: true)
!5936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4214, size: 1280, elements: !913)
!5937 = !DIGlobalVariableExpression(var: !5938, expr: !DIExpression())
!5938 = distinct !DIGlobalVariable(name: "trace_event_type_funcs_msr_trace_class", scope: !2, file: !318, line: 21, type: !4255, isLocal: true, isDefinition: true)
!5939 = !DIGlobalVariableExpression(var: !5940, expr: !DIExpression())
!5940 = distinct !DIGlobalVariable(scope: null, file: !318, line: 21, type: !5941, isLocal: true, isDefinition: true)
!5941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 144, elements: !5942)
!5942 = !{!5943}
!5943 = !DISubrange(count: 18)
!5944 = !DIGlobalVariableExpression(var: !5945, expr: !DIExpression())
!5945 = distinct !DIGlobalVariable(scope: null, file: !318, line: 21, type: !5946, isLocal: true, isDefinition: true)
!5946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 40, elements: !1409)
!5947 = !DIGlobalVariableExpression(var: !5948, expr: !DIExpression())
!5948 = distinct !DIGlobalVariable(scope: null, file: !318, line: 21, type: !5949, isLocal: true, isDefinition: true)
!5949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 8, elements: !360)
!5950 = !DIGlobalVariableExpression(var: !5951, expr: !DIExpression())
!5951 = distinct !DIGlobalVariable(name: "print_fmt_msr_trace_class", scope: !2, file: !318, line: 21, type: !5952, isLocal: true, isDefinition: true)
!5952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 528, elements: !5953)
!5953 = !{!5954}
!5954 = !DISubrange(count: 66)
!5955 = !DIGlobalVariableExpression(var: !5956, expr: !DIExpression())
!5956 = distinct !DIGlobalVariable(scope: null, file: !318, line: 45, type: !5957, isLocal: true, isDefinition: true)
!5957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 264, elements: !5958)
!5958 = !{!5959}
!5959 = !DISubrange(count: 33)
!5960 = !DIGlobalVariableExpression(var: !5961, expr: !DIExpression())
!5961 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_write_msr213", scope: !5962, file: !318, line: 45, type: !96, isLocal: true, isDefinition: true)
!5962 = distinct !DISubprogram(name: "trace_write_msr", scope: !318, file: !318, line: 45, type: !5963, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5965)
!5963 = !DISubroutineType(types: !5964)
!5964 = !{null, !7, !298, !98}
!5965 = !{!5966, !5967, !5968, !5969, !5972, !5975, !5977, !5979, !5982, !5985, !5987, !5988}
!5966 = !DILocalVariable(name: "msr", arg: 1, scope: !5962, file: !318, line: 45, type: !7)
!5967 = !DILocalVariable(name: "val", arg: 2, scope: !5962, file: !318, line: 45, type: !298)
!5968 = !DILocalVariable(name: "failed", arg: 3, scope: !5962, file: !318, line: 45, type: !98)
!5969 = !DILocalVariable(name: "__idx", scope: !5970, file: !318, line: 45, type: !98)
!5970 = distinct !DILexicalBlock(scope: !5971, file: !318, line: 45, column: 1)
!5971 = distinct !DILexicalBlock(scope: !5962, file: !318, line: 45, column: 1)
!5972 = !DILocalVariable(name: "pscr_ret__", scope: !5973, file: !318, line: 45, type: !98)
!5973 = distinct !DILexicalBlock(scope: !5974, file: !318, line: 45, column: 1)
!5974 = distinct !DILexicalBlock(scope: !5970, file: !318, line: 45, column: 1)
!5975 = !DILocalVariable(name: "__vpp_verify", scope: !5976, file: !318, line: 45, type: !1365)
!5976 = distinct !DILexicalBlock(scope: !5973, file: !318, line: 45, column: 1)
!5977 = !DILocalVariable(name: "pfo_val__", scope: !5978, file: !318, line: 45, type: !312)
!5978 = distinct !DILexicalBlock(scope: !5973, file: !318, line: 45, column: 1)
!5979 = !DILocalVariable(name: "__ret_warn_on", scope: !5980, file: !318, line: 45, type: !98)
!5980 = distinct !DILexicalBlock(scope: !5981, file: !318, line: 45, column: 1)
!5981 = distinct !DILexicalBlock(scope: !5970, file: !318, line: 45, column: 1)
!5982 = !DILocalVariable(name: "__flags", scope: !5983, file: !318, line: 45, type: !98)
!5983 = distinct !DILexicalBlock(scope: !5984, file: !318, line: 45, column: 1)
!5984 = distinct !DILexicalBlock(scope: !5980, file: !318, line: 45, column: 1)
!5985 = !DILocalVariable(name: "it_func_ptr", scope: !5986, file: !318, line: 45, type: !285)
!5986 = distinct !DILexicalBlock(scope: !5970, file: !318, line: 45, column: 1)
!5987 = !DILocalVariable(name: "__data", scope: !5986, file: !318, line: 45, type: !96)
!5988 = !DILocalVariable(name: "__UNIQUE_ID_rcu211", scope: !5989, file: !318, line: 45, type: !285)
!5989 = distinct !DILexicalBlock(scope: !5986, file: !318, line: 45, column: 1)
!5990 = !DIGlobalVariableExpression(var: !5991, expr: !DIExpression())
!5991 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace214", scope: !5962, file: !318, line: 45, type: !96, isLocal: true, isDefinition: true)
!5992 = !DIGlobalVariableExpression(var: !5993, expr: !DIExpression())
!5993 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_read_msr205", scope: !5994, file: !318, line: 40, type: !96, isLocal: true, isDefinition: true)
!5994 = distinct !DISubprogram(name: "trace_read_msr", scope: !318, file: !318, line: 40, type: !5963, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5995)
!5995 = !{!5996, !5997, !5998, !5999, !6002, !6005, !6007, !6009, !6012, !6015, !6017, !6018}
!5996 = !DILocalVariable(name: "msr", arg: 1, scope: !5994, file: !318, line: 40, type: !7)
!5997 = !DILocalVariable(name: "val", arg: 2, scope: !5994, file: !318, line: 40, type: !298)
!5998 = !DILocalVariable(name: "failed", arg: 3, scope: !5994, file: !318, line: 40, type: !98)
!5999 = !DILocalVariable(name: "__idx", scope: !6000, file: !318, line: 40, type: !98)
!6000 = distinct !DILexicalBlock(scope: !6001, file: !318, line: 40, column: 1)
!6001 = distinct !DILexicalBlock(scope: !5994, file: !318, line: 40, column: 1)
!6002 = !DILocalVariable(name: "pscr_ret__", scope: !6003, file: !318, line: 40, type: !98)
!6003 = distinct !DILexicalBlock(scope: !6004, file: !318, line: 40, column: 1)
!6004 = distinct !DILexicalBlock(scope: !6000, file: !318, line: 40, column: 1)
!6005 = !DILocalVariable(name: "__vpp_verify", scope: !6006, file: !318, line: 40, type: !1365)
!6006 = distinct !DILexicalBlock(scope: !6003, file: !318, line: 40, column: 1)
!6007 = !DILocalVariable(name: "pfo_val__", scope: !6008, file: !318, line: 40, type: !312)
!6008 = distinct !DILexicalBlock(scope: !6003, file: !318, line: 40, column: 1)
!6009 = !DILocalVariable(name: "__ret_warn_on", scope: !6010, file: !318, line: 40, type: !98)
!6010 = distinct !DILexicalBlock(scope: !6011, file: !318, line: 40, column: 1)
!6011 = distinct !DILexicalBlock(scope: !6000, file: !318, line: 40, column: 1)
!6012 = !DILocalVariable(name: "__flags", scope: !6013, file: !318, line: 40, type: !98)
!6013 = distinct !DILexicalBlock(scope: !6014, file: !318, line: 40, column: 1)
!6014 = distinct !DILexicalBlock(scope: !6010, file: !318, line: 40, column: 1)
!6015 = !DILocalVariable(name: "it_func_ptr", scope: !6016, file: !318, line: 40, type: !285)
!6016 = distinct !DILexicalBlock(scope: !6000, file: !318, line: 40, column: 1)
!6017 = !DILocalVariable(name: "__data", scope: !6016, file: !318, line: 40, type: !96)
!6018 = !DILocalVariable(name: "__UNIQUE_ID_rcu203", scope: !6019, file: !318, line: 40, type: !285)
!6019 = distinct !DILexicalBlock(scope: !6016, file: !318, line: 40, column: 1)
!6020 = !DIGlobalVariableExpression(var: !6021, expr: !DIExpression())
!6021 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace206", scope: !5994, file: !318, line: 40, type: !96, isLocal: true, isDefinition: true)
!6022 = !DIGlobalVariableExpression(var: !6023, expr: !DIExpression())
!6023 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_rdpmc221", scope: !6024, file: !318, line: 50, type: !96, isLocal: true, isDefinition: true)
!6024 = distinct !DISubprogram(name: "trace_rdpmc", scope: !318, file: !318, line: 50, type: !5963, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6025)
!6025 = !{!6026, !6027, !6028, !6029, !6032, !6035, !6037, !6039, !6042, !6045, !6047, !6048}
!6026 = !DILocalVariable(name: "msr", arg: 1, scope: !6024, file: !318, line: 50, type: !7)
!6027 = !DILocalVariable(name: "val", arg: 2, scope: !6024, file: !318, line: 50, type: !298)
!6028 = !DILocalVariable(name: "failed", arg: 3, scope: !6024, file: !318, line: 50, type: !98)
!6029 = !DILocalVariable(name: "__idx", scope: !6030, file: !318, line: 50, type: !98)
!6030 = distinct !DILexicalBlock(scope: !6031, file: !318, line: 50, column: 1)
!6031 = distinct !DILexicalBlock(scope: !6024, file: !318, line: 50, column: 1)
!6032 = !DILocalVariable(name: "pscr_ret__", scope: !6033, file: !318, line: 50, type: !98)
!6033 = distinct !DILexicalBlock(scope: !6034, file: !318, line: 50, column: 1)
!6034 = distinct !DILexicalBlock(scope: !6030, file: !318, line: 50, column: 1)
!6035 = !DILocalVariable(name: "__vpp_verify", scope: !6036, file: !318, line: 50, type: !1365)
!6036 = distinct !DILexicalBlock(scope: !6033, file: !318, line: 50, column: 1)
!6037 = !DILocalVariable(name: "pfo_val__", scope: !6038, file: !318, line: 50, type: !312)
!6038 = distinct !DILexicalBlock(scope: !6033, file: !318, line: 50, column: 1)
!6039 = !DILocalVariable(name: "__ret_warn_on", scope: !6040, file: !318, line: 50, type: !98)
!6040 = distinct !DILexicalBlock(scope: !6041, file: !318, line: 50, column: 1)
!6041 = distinct !DILexicalBlock(scope: !6030, file: !318, line: 50, column: 1)
!6042 = !DILocalVariable(name: "__flags", scope: !6043, file: !318, line: 50, type: !98)
!6043 = distinct !DILexicalBlock(scope: !6044, file: !318, line: 50, column: 1)
!6044 = distinct !DILexicalBlock(scope: !6040, file: !318, line: 50, column: 1)
!6045 = !DILocalVariable(name: "it_func_ptr", scope: !6046, file: !318, line: 50, type: !285)
!6046 = distinct !DILexicalBlock(scope: !6030, file: !318, line: 50, column: 1)
!6047 = !DILocalVariable(name: "__data", scope: !6046, file: !318, line: 50, type: !96)
!6048 = !DILocalVariable(name: "__UNIQUE_ID_rcu219", scope: !6049, file: !318, line: 50, type: !285)
!6049 = distinct !DILexicalBlock(scope: !6046, file: !318, line: 50, column: 1)
!6050 = !DIGlobalVariableExpression(var: !6051, expr: !DIExpression())
!6051 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace222", scope: !6024, file: !318, line: 50, type: !96, isLocal: true, isDefinition: true)
!6052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 72, elements: !5920)
!6053 = !{!"rsp"}
!6054 = !{i32 7, !"Dwarf Version", i32 5}
!6055 = !{i32 2, !"Debug Info Version", i32 3}
!6056 = !{i32 1, !"wchar_size", i32 2}
!6057 = !{i32 8, !"cf-protection-branch", i32 1}
!6058 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6059 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6060 = !{i32 1, !"Code Model", i32 2}
!6061 = !{i32 1, !"override-stack-alignment", i32 8}
!6062 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6063 = distinct !DISubprogram(name: "__traceiter_read_msr", scope: !318, file: !318, line: 40, type: !6064, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6066)
!6064 = !DISubroutineType(types: !6065)
!6065 = !{!98, !96, !7, !298, !98}
!6066 = !{!6067, !6068, !6069, !6070, !6071, !6072, !6073}
!6067 = !DILocalVariable(name: "__data", arg: 1, scope: !6063, file: !318, line: 40, type: !96)
!6068 = !DILocalVariable(name: "msr", arg: 2, scope: !6063, file: !318, line: 40, type: !7)
!6069 = !DILocalVariable(name: "val", arg: 3, scope: !6063, file: !318, line: 40, type: !298)
!6070 = !DILocalVariable(name: "failed", arg: 4, scope: !6063, file: !318, line: 40, type: !98)
!6071 = !DILocalVariable(name: "it_func_ptr", scope: !6063, file: !318, line: 40, type: !285)
!6072 = !DILocalVariable(name: "it_func", scope: !6063, file: !318, line: 40, type: !96)
!6073 = !DILocalVariable(name: "__UNIQUE_ID_rcu227", scope: !6074, file: !318, line: 40, type: !285)
!6074 = distinct !DILexicalBlock(scope: !6063, file: !318, line: 40, column: 1)
!6075 = !DILocation(line: 40, column: 1, scope: !6063)
!6076 = !DILocation(line: 40, column: 1, scope: !6074)
!6077 = !DILocation(line: 40, column: 1, scope: !6078)
!6078 = distinct !DILexicalBlock(scope: !6074, file: !318, line: 40, column: 1)
!6079 = !DILocation(line: 40, column: 1, scope: !6080)
!6080 = distinct !DILexicalBlock(scope: !6078, file: !318, line: 40, column: 1)
!6081 = !DILocation(line: 40, column: 1, scope: !6082)
!6082 = distinct !DILexicalBlock(scope: !6063, file: !318, line: 40, column: 1)
!6083 = !DILocation(line: 40, column: 1, scope: !6084)
!6084 = distinct !DILexicalBlock(scope: !6082, file: !318, line: 40, column: 1)
!6085 = !DILocation(line: 40, column: 1, scope: !6086)
!6086 = distinct !DILexicalBlock(scope: !6087, file: !318, line: 40, column: 1)
!6087 = distinct !DILexicalBlock(scope: !6084, file: !318, line: 40, column: 1)
!6088 = !DILocation(line: 40, column: 1, scope: !6089)
!6089 = distinct !DILexicalBlock(scope: !6086, file: !318, line: 40, column: 1)
!6090 = !DILocation(line: 40, column: 1, scope: !6087)
!6091 = distinct !{!6091, !6083, !6083, !6092, !6093}
!6092 = !{!"llvm.loop.mustprogress"}
!6093 = !{!"llvm.loop.unroll.disable"}
!6094 = distinct !DISubprogram(name: "__probestub_read_msr", scope: !318, file: !318, line: 40, type: !296, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6095)
!6095 = !{!6096, !6097, !6098, !6099}
!6096 = !DILocalVariable(name: "__data", arg: 1, scope: !6094, file: !318, line: 40, type: !96)
!6097 = !DILocalVariable(name: "msr", arg: 2, scope: !6094, file: !318, line: 40, type: !7)
!6098 = !DILocalVariable(name: "val", arg: 3, scope: !6094, file: !318, line: 40, type: !298)
!6099 = !DILocalVariable(name: "failed", arg: 4, scope: !6094, file: !318, line: 40, type: !98)
!6100 = !DILocation(line: 40, column: 1, scope: !6094)
!6101 = distinct !DISubprogram(name: "__traceiter_write_msr", scope: !318, file: !318, line: 45, type: !6064, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6102)
!6102 = !{!6103, !6104, !6105, !6106, !6107, !6108, !6109}
!6103 = !DILocalVariable(name: "__data", arg: 1, scope: !6101, file: !318, line: 45, type: !96)
!6104 = !DILocalVariable(name: "msr", arg: 2, scope: !6101, file: !318, line: 45, type: !7)
!6105 = !DILocalVariable(name: "val", arg: 3, scope: !6101, file: !318, line: 45, type: !298)
!6106 = !DILocalVariable(name: "failed", arg: 4, scope: !6101, file: !318, line: 45, type: !98)
!6107 = !DILocalVariable(name: "it_func_ptr", scope: !6101, file: !318, line: 45, type: !285)
!6108 = !DILocalVariable(name: "it_func", scope: !6101, file: !318, line: 45, type: !96)
!6109 = !DILocalVariable(name: "__UNIQUE_ID_rcu230", scope: !6110, file: !318, line: 45, type: !285)
!6110 = distinct !DILexicalBlock(scope: !6101, file: !318, line: 45, column: 1)
!6111 = !DILocation(line: 45, column: 1, scope: !6101)
!6112 = !DILocation(line: 45, column: 1, scope: !6110)
!6113 = !DILocation(line: 45, column: 1, scope: !6114)
!6114 = distinct !DILexicalBlock(scope: !6110, file: !318, line: 45, column: 1)
!6115 = !DILocation(line: 45, column: 1, scope: !6116)
!6116 = distinct !DILexicalBlock(scope: !6114, file: !318, line: 45, column: 1)
!6117 = !DILocation(line: 45, column: 1, scope: !6118)
!6118 = distinct !DILexicalBlock(scope: !6101, file: !318, line: 45, column: 1)
!6119 = !DILocation(line: 45, column: 1, scope: !6120)
!6120 = distinct !DILexicalBlock(scope: !6118, file: !318, line: 45, column: 1)
!6121 = !DILocation(line: 45, column: 1, scope: !6122)
!6122 = distinct !DILexicalBlock(scope: !6123, file: !318, line: 45, column: 1)
!6123 = distinct !DILexicalBlock(scope: !6120, file: !318, line: 45, column: 1)
!6124 = !DILocation(line: 45, column: 1, scope: !6125)
!6125 = distinct !DILexicalBlock(scope: !6122, file: !318, line: 45, column: 1)
!6126 = !DILocation(line: 45, column: 1, scope: !6123)
!6127 = distinct !{!6127, !6119, !6119, !6092, !6093}
!6128 = distinct !DISubprogram(name: "__probestub_write_msr", scope: !318, file: !318, line: 45, type: !296, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6129)
!6129 = !{!6130, !6131, !6132, !6133}
!6130 = !DILocalVariable(name: "__data", arg: 1, scope: !6128, file: !318, line: 45, type: !96)
!6131 = !DILocalVariable(name: "msr", arg: 2, scope: !6128, file: !318, line: 45, type: !7)
!6132 = !DILocalVariable(name: "val", arg: 3, scope: !6128, file: !318, line: 45, type: !298)
!6133 = !DILocalVariable(name: "failed", arg: 4, scope: !6128, file: !318, line: 45, type: !98)
!6134 = !DILocation(line: 45, column: 1, scope: !6128)
!6135 = distinct !DISubprogram(name: "__traceiter_rdpmc", scope: !318, file: !318, line: 50, type: !6064, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6136)
!6136 = !{!6137, !6138, !6139, !6140, !6141, !6142, !6143}
!6137 = !DILocalVariable(name: "__data", arg: 1, scope: !6135, file: !318, line: 50, type: !96)
!6138 = !DILocalVariable(name: "msr", arg: 2, scope: !6135, file: !318, line: 50, type: !7)
!6139 = !DILocalVariable(name: "val", arg: 3, scope: !6135, file: !318, line: 50, type: !298)
!6140 = !DILocalVariable(name: "failed", arg: 4, scope: !6135, file: !318, line: 50, type: !98)
!6141 = !DILocalVariable(name: "it_func_ptr", scope: !6135, file: !318, line: 50, type: !285)
!6142 = !DILocalVariable(name: "it_func", scope: !6135, file: !318, line: 50, type: !96)
!6143 = !DILocalVariable(name: "__UNIQUE_ID_rcu233", scope: !6144, file: !318, line: 50, type: !285)
!6144 = distinct !DILexicalBlock(scope: !6135, file: !318, line: 50, column: 1)
!6145 = !DILocation(line: 50, column: 1, scope: !6135)
!6146 = !DILocation(line: 50, column: 1, scope: !6144)
!6147 = !DILocation(line: 50, column: 1, scope: !6148)
!6148 = distinct !DILexicalBlock(scope: !6144, file: !318, line: 50, column: 1)
!6149 = !DILocation(line: 50, column: 1, scope: !6150)
!6150 = distinct !DILexicalBlock(scope: !6148, file: !318, line: 50, column: 1)
!6151 = !DILocation(line: 50, column: 1, scope: !6152)
!6152 = distinct !DILexicalBlock(scope: !6135, file: !318, line: 50, column: 1)
!6153 = !DILocation(line: 50, column: 1, scope: !6154)
!6154 = distinct !DILexicalBlock(scope: !6152, file: !318, line: 50, column: 1)
!6155 = !DILocation(line: 50, column: 1, scope: !6156)
!6156 = distinct !DILexicalBlock(scope: !6157, file: !318, line: 50, column: 1)
!6157 = distinct !DILexicalBlock(scope: !6154, file: !318, line: 50, column: 1)
!6158 = !DILocation(line: 50, column: 1, scope: !6159)
!6159 = distinct !DILexicalBlock(scope: !6156, file: !318, line: 50, column: 1)
!6160 = !DILocation(line: 50, column: 1, scope: !6157)
!6161 = distinct !{!6161, !6153, !6153, !6092, !6093}
!6162 = distinct !DISubprogram(name: "__probestub_rdpmc", scope: !318, file: !318, line: 50, type: !296, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6163)
!6163 = !{!6164, !6165, !6166, !6167}
!6164 = !DILocalVariable(name: "__data", arg: 1, scope: !6162, file: !318, line: 50, type: !96)
!6165 = !DILocalVariable(name: "msr", arg: 2, scope: !6162, file: !318, line: 50, type: !7)
!6166 = !DILocalVariable(name: "val", arg: 3, scope: !6162, file: !318, line: 50, type: !298)
!6167 = !DILocalVariable(name: "failed", arg: 4, scope: !6162, file: !318, line: 50, type: !98)
!6168 = !DILocation(line: 50, column: 1, scope: !6162)
!6169 = distinct !DISubprogram(name: "trace_event_raw_event_msr_trace_class", scope: !318, file: !318, line: 21, type: !296, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6170)
!6170 = !{!6171, !6172, !6173, !6174}
!6171 = !DILocalVariable(name: "__data", arg: 1, scope: !6169, file: !318, line: 21, type: !96)
!6172 = !DILocalVariable(name: "msr", arg: 2, scope: !6169, file: !318, line: 21, type: !7)
!6173 = !DILocalVariable(name: "val", arg: 3, scope: !6169, file: !318, line: 21, type: !298)
!6174 = !DILocalVariable(name: "failed", arg: 4, scope: !6169, file: !318, line: 21, type: !98)
!6175 = !DILocation(line: 21, column: 1, scope: !6169)
!6176 = distinct !DISubprogram(name: "perf_trace_msr_trace_class", scope: !318, file: !318, line: 21, type: !296, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6177)
!6177 = !{!6178, !6179, !6180, !6181, !6182, !6183, !6185, !6186, !6187, !6188, !6189, !6190, !6191, !6192, !6193, !6196}
!6178 = !DILocalVariable(name: "__data", arg: 1, scope: !6176, file: !318, line: 21, type: !96)
!6179 = !DILocalVariable(name: "msr", arg: 2, scope: !6176, file: !318, line: 21, type: !7)
!6180 = !DILocalVariable(name: "val", arg: 3, scope: !6176, file: !318, line: 21, type: !298)
!6181 = !DILocalVariable(name: "failed", arg: 4, scope: !6176, file: !318, line: 21, type: !98)
!6182 = !DILocalVariable(name: "event_call", scope: !6176, file: !318, line: 21, type: !4197)
!6183 = !DILocalVariable(name: "__data_offsets", scope: !6176, file: !318, line: 21, type: !6184)
!6184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_data_offsets_msr_trace_class", file: !318, line: 21, elements: !722)
!6185 = !DILocalVariable(name: "entry", scope: !6176, file: !318, line: 21, type: !316)
!6186 = !DILocalVariable(name: "__regs", scope: !6176, file: !318, line: 21, type: !4134)
!6187 = !DILocalVariable(name: "__count", scope: !6176, file: !318, line: 21, type: !298)
!6188 = !DILocalVariable(name: "__task", scope: !6176, file: !318, line: 21, type: !945)
!6189 = !DILocalVariable(name: "head", scope: !6176, file: !318, line: 21, type: !334)
!6190 = !DILocalVariable(name: "__entry_size", scope: !6176, file: !318, line: 21, type: !98)
!6191 = !DILocalVariable(name: "__data_size", scope: !6176, file: !318, line: 21, type: !98)
!6192 = !DILocalVariable(name: "rctx", scope: !6176, file: !318, line: 21, type: !98)
!6193 = !DILocalVariable(name: "__vpp_verify", scope: !6194, file: !318, line: 21, type: !1365)
!6194 = distinct !DILexicalBlock(scope: !6195, file: !318, line: 21, column: 1)
!6195 = distinct !DILexicalBlock(scope: !6176, file: !318, line: 21, column: 1)
!6196 = !DILocalVariable(name: "tcp_ptr__", scope: !6197, file: !318, line: 21, type: !115)
!6197 = distinct !DILexicalBlock(scope: !6195, file: !318, line: 21, column: 1)
!6198 = !DILocation(line: 21, column: 1, scope: !6176)
!6199 = !DILocation(line: 21, column: 1, scope: !6195)
!6200 = !DILocation(line: 21, column: 1, scope: !6194)
!6201 = !DILocation(line: 21, column: 1, scope: !6197)
!6202 = !{i64 2155841695}
!6203 = !DILocation(line: 21, column: 1, scope: !6204)
!6204 = distinct !DILexicalBlock(scope: !6176, file: !318, line: 21, column: 1)
!6205 = !DILocation(line: 21, column: 1, scope: !6206)
!6206 = distinct !DILexicalBlock(scope: !6176, file: !318, line: 21, column: 1)
!6207 = !DILocation(line: 21, column: 1, scope: !6208)
!6208 = distinct !DILexicalBlock(scope: !6176, file: !318, line: 21, column: 1)
!6209 = distinct !DISubprogram(name: "msrs_alloc", scope: !3, file: !3, line: 9, type: !6210, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6212)
!6210 = !DISubroutineType(types: !6211)
!6211 = !{!301}
!6212 = !{!6213}
!6213 = !DILocalVariable(name: "msrs", scope: !6209, file: !3, line: 11, type: !301)
!6214 = !DILocation(line: 11, column: 2, scope: !6209)
!6215 = !DILocation(line: 11, column: 14, scope: !6209)
!6216 = !DILocation(line: 13, column: 9, scope: !6209)
!6217 = !DILocation(line: 13, column: 7, scope: !6209)
!6218 = !DILocation(line: 14, column: 7, scope: !6219)
!6219 = distinct !DILexicalBlock(scope: !6209, file: !3, line: 14, column: 6)
!6220 = !DILocation(line: 14, column: 6, scope: !6209)
!6221 = !DILocation(line: 15, column: 3, scope: !6222)
!6222 = distinct !DILexicalBlock(scope: !6223, file: !3, line: 15, column: 3)
!6223 = distinct !DILexicalBlock(scope: !6219, file: !3, line: 14, column: 13)
!6224 = !DILocation(line: 15, column: 3, scope: !6225)
!6225 = distinct !DILexicalBlock(scope: !6222, file: !3, line: 15, column: 3)
!6226 = !DILocation(line: 16, column: 3, scope: !6223)
!6227 = !DILocation(line: 19, column: 9, scope: !6209)
!6228 = !DILocation(line: 19, column: 2, scope: !6209)
!6229 = !DILocation(line: 20, column: 1, scope: !6209)
!6230 = !DISubprogram(name: "__alloc_percpu", scope: !6231, file: !6231, line: 133, type: !6232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6231 = !DIFile(filename: "./include/linux/percpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5b443d1a4673980cdbec5f10c6cbbaa")
!6232 = !DISubroutineType(types: !6233)
!6233 = !{!96, !111, !111}
!6234 = !DISubprogram(name: "_printk", scope: !6235, file: !6235, line: 153, type: !6236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6235 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6236 = !DISubroutineType(types: !6237)
!6237 = !{!98, !92, null}
!6238 = distinct !DISubprogram(name: "msrs_free", scope: !3, file: !3, line: 23, type: !6239, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6241)
!6239 = !DISubroutineType(types: !6240)
!6240 = !{null, !301}
!6241 = !{!6242}
!6242 = !DILocalVariable(name: "msrs", arg: 1, scope: !6238, file: !3, line: 23, type: !301)
!6243 = !DILocation(line: 23, column: 28, scope: !6238)
!6244 = !DILocation(line: 25, column: 14, scope: !6238)
!6245 = !DILocation(line: 25, column: 2, scope: !6238)
!6246 = !DILocation(line: 26, column: 1, scope: !6238)
!6247 = !DISubprogram(name: "free_percpu", scope: !6231, file: !6231, line: 134, type: !3593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6248 = distinct !DISubprogram(name: "msr_set_bit", scope: !3, file: !3, line: 102, type: !6249, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6251)
!6249 = !DISubroutineType(types: !6250)
!6250 = !{!98, !312, !159}
!6251 = !{!6252, !6253}
!6252 = !DILocalVariable(name: "msr", arg: 1, scope: !6248, file: !3, line: 102, type: !312)
!6253 = !DILocalVariable(name: "bit", arg: 2, scope: !6248, file: !3, line: 102, type: !159)
!6254 = !DILocation(line: 102, column: 21, scope: !6248)
!6255 = !DILocation(line: 102, column: 29, scope: !6248)
!6256 = !DILocation(line: 104, column: 20, scope: !6248)
!6257 = !DILocation(line: 104, column: 25, scope: !6248)
!6258 = !DILocation(line: 104, column: 9, scope: !6248)
!6259 = !DILocation(line: 104, column: 2, scope: !6248)
!6260 = distinct !DISubprogram(name: "__flip_bit", scope: !3, file: !3, line: 64, type: !6261, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6263)
!6261 = !DISubroutineType(types: !6262)
!6262 = !{!98, !312, !159, !1436}
!6263 = !{!6264, !6265, !6266, !6267, !6268, !6269}
!6264 = !DILocalVariable(name: "msr", arg: 1, scope: !6260, file: !3, line: 64, type: !312)
!6265 = !DILocalVariable(name: "bit", arg: 2, scope: !6260, file: !3, line: 64, type: !159)
!6266 = !DILocalVariable(name: "set", arg: 3, scope: !6260, file: !3, line: 64, type: !1436)
!6267 = !DILocalVariable(name: "m", scope: !6260, file: !3, line: 66, type: !302)
!6268 = !DILocalVariable(name: "m1", scope: !6260, file: !3, line: 66, type: !302)
!6269 = !DILocalVariable(name: "err", scope: !6260, file: !3, line: 67, type: !98)
!6270 = !DILocation(line: 64, column: 34, scope: !6260)
!6271 = !DILocation(line: 64, column: 42, scope: !6260)
!6272 = !DILocation(line: 64, column: 52, scope: !6260)
!6273 = !DILocation(line: 66, column: 2, scope: !6260)
!6274 = !DILocation(line: 66, column: 13, scope: !6260)
!6275 = !DILocation(line: 66, column: 16, scope: !6260)
!6276 = !DILocation(line: 67, column: 2, scope: !6260)
!6277 = !DILocation(line: 67, column: 6, scope: !6260)
!6278 = !DILocation(line: 69, column: 6, scope: !6279)
!6279 = distinct !DILexicalBlock(scope: !6260, file: !3, line: 69, column: 6)
!6280 = !DILocation(line: 69, column: 10, scope: !6279)
!6281 = !DILocation(line: 69, column: 6, scope: !6260)
!6282 = !DILocation(line: 70, column: 10, scope: !6279)
!6283 = !DILocation(line: 70, column: 3, scope: !6279)
!6284 = !DILocation(line: 72, column: 17, scope: !6260)
!6285 = !DILocation(line: 72, column: 8, scope: !6260)
!6286 = !DILocation(line: 72, column: 6, scope: !6260)
!6287 = !DILocation(line: 73, column: 6, scope: !6288)
!6288 = distinct !DILexicalBlock(scope: !6260, file: !3, line: 73, column: 6)
!6289 = !DILocation(line: 73, column: 6, scope: !6260)
!6290 = !DILocation(line: 74, column: 10, scope: !6288)
!6291 = !DILocation(line: 74, column: 3, scope: !6288)
!6292 = !DILocation(line: 76, column: 7, scope: !6260)
!6293 = !DILocation(line: 77, column: 6, scope: !6294)
!6294 = distinct !DILexicalBlock(scope: !6260, file: !3, line: 77, column: 6)
!6295 = !{i8 0, i8 2}
!6296 = !DILocation(line: 77, column: 6, scope: !6260)
!6297 = !DILocation(line: 78, column: 12, scope: !6294)
!6298 = !DILocation(line: 78, column: 6, scope: !6294)
!6299 = !DILocation(line: 78, column: 8, scope: !6294)
!6300 = !DILocation(line: 78, column: 3, scope: !6294)
!6301 = !DILocation(line: 80, column: 12, scope: !6294)
!6302 = !DILocation(line: 80, column: 11, scope: !6294)
!6303 = !DILocation(line: 80, column: 6, scope: !6294)
!6304 = !DILocation(line: 80, column: 8, scope: !6294)
!6305 = !DILocation(line: 82, column: 9, scope: !6306)
!6306 = distinct !DILexicalBlock(scope: !6260, file: !3, line: 82, column: 6)
!6307 = !DILocation(line: 82, column: 16, scope: !6306)
!6308 = !DILocation(line: 82, column: 11, scope: !6306)
!6309 = !DILocation(line: 82, column: 6, scope: !6260)
!6310 = !DILocation(line: 83, column: 3, scope: !6306)
!6311 = !DILocation(line: 85, column: 18, scope: !6260)
!6312 = !DILocation(line: 85, column: 8, scope: !6260)
!6313 = !DILocation(line: 85, column: 6, scope: !6260)
!6314 = !DILocation(line: 86, column: 6, scope: !6315)
!6315 = distinct !DILexicalBlock(scope: !6260, file: !3, line: 86, column: 6)
!6316 = !DILocation(line: 86, column: 6, scope: !6260)
!6317 = !DILocation(line: 87, column: 10, scope: !6315)
!6318 = !DILocation(line: 87, column: 3, scope: !6315)
!6319 = !DILocation(line: 89, column: 2, scope: !6260)
!6320 = !DILocation(line: 90, column: 1, scope: !6260)
!6321 = distinct !DISubprogram(name: "msr_clear_bit", scope: !3, file: !3, line: 117, type: !6249, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6322)
!6322 = !{!6323, !6324}
!6323 = !DILocalVariable(name: "msr", arg: 1, scope: !6321, file: !3, line: 117, type: !312)
!6324 = !DILocalVariable(name: "bit", arg: 2, scope: !6321, file: !3, line: 117, type: !159)
!6325 = !DILocation(line: 117, column: 23, scope: !6321)
!6326 = !DILocation(line: 117, column: 31, scope: !6321)
!6327 = !DILocation(line: 119, column: 20, scope: !6321)
!6328 = !DILocation(line: 119, column: 25, scope: !6321)
!6329 = !DILocation(line: 119, column: 9, scope: !6321)
!6330 = !DILocation(line: 119, column: 2, scope: !6321)
!6331 = distinct !DISubprogram(name: "do_trace_write_msr", scope: !3, file: !3, line: 123, type: !5963, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6332)
!6332 = !{!6333, !6334, !6335}
!6333 = !DILocalVariable(name: "msr", arg: 1, scope: !6331, file: !3, line: 123, type: !7)
!6334 = !DILocalVariable(name: "val", arg: 2, scope: !6331, file: !3, line: 123, type: !298)
!6335 = !DILocalVariable(name: "failed", arg: 3, scope: !6331, file: !3, line: 123, type: !98)
!6336 = !DILocation(line: 123, column: 38, scope: !6331)
!6337 = !DILocation(line: 123, column: 47, scope: !6331)
!6338 = !DILocation(line: 123, column: 56, scope: !6331)
!6339 = !DILocation(line: 125, column: 18, scope: !6331)
!6340 = !DILocation(line: 125, column: 23, scope: !6331)
!6341 = !DILocation(line: 125, column: 28, scope: !6331)
!6342 = !DILocation(line: 125, column: 2, scope: !6331)
!6343 = !DILocation(line: 126, column: 1, scope: !6331)
!6344 = !DILocation(line: 45, column: 1, scope: !5962)
!6345 = !DILocation(line: 45, column: 1, scope: !5971)
!6346 = !DILocation(line: 45, column: 1, scope: !5970)
!6347 = !DILocation(line: 45, column: 1, scope: !5973)
!6348 = !DILocation(line: 45, column: 1, scope: !5976)
!6349 = !DILocation(line: 45, column: 1, scope: !5978)
!6350 = !{i64 2152663891}
!6351 = !DILocation(line: 45, column: 1, scope: !5974)
!6352 = !DILocation(line: 45, column: 1, scope: !5980)
!6353 = !DILocation(line: 45, column: 1, scope: !5984)
!6354 = !DILocation(line: 45, column: 1, scope: !5983)
!6355 = !DILocation(line: 45, column: 1, scope: !6356)
!6356 = distinct !DILexicalBlock(scope: !5983, file: !318, line: 45, column: 1)
!6357 = !DILocation(line: 45, column: 1, scope: !6358)
!6358 = distinct !DILexicalBlock(scope: !5983, file: !318, line: 45, column: 1)
!6359 = !{i64 2152665096, i64 2152665125, i64 2152665171, i64 2152665229, i64 2152665283, i64 2152665337, i64 2152665392, i64 2152665423, i64 2152665731, i64 2152665737, i64 2152665784, i64 2152665807, i64 2152665833}
!6360 = !DILocation(line: 45, column: 1, scope: !6361)
!6361 = distinct !DILexicalBlock(scope: !5983, file: !318, line: 45, column: 1)
!6362 = !DILocation(line: 45, column: 1, scope: !5981)
!6363 = !DILocation(line: 45, column: 1, scope: !6364)
!6364 = distinct !DILexicalBlock(scope: !5970, file: !318, line: 45, column: 1)
!6365 = !{i64 2152666189}
!6366 = !DILocation(line: 45, column: 1, scope: !5986)
!6367 = !DILocation(line: 45, column: 1, scope: !5989)
!6368 = !DILocation(line: 45, column: 1, scope: !6369)
!6369 = distinct !DILexicalBlock(scope: !5989, file: !318, line: 45, column: 1)
!6370 = !DILocation(line: 45, column: 1, scope: !6371)
!6371 = distinct !DILexicalBlock(scope: !6369, file: !318, line: 45, column: 1)
!6372 = !DILocation(line: 45, column: 1, scope: !6373)
!6373 = distinct !DILexicalBlock(scope: !5986, file: !318, line: 45, column: 1)
!6374 = !DILocation(line: 45, column: 1, scope: !6375)
!6375 = distinct !DILexicalBlock(scope: !6373, file: !318, line: 45, column: 1)
!6376 = !DILocation(line: 45, column: 1, scope: !6377)
!6377 = distinct !DILexicalBlock(scope: !6375, file: !318, line: 45, column: 1)
!6378 = !DILocation(line: 45, column: 1, scope: !6379)
!6379 = distinct !DILexicalBlock(scope: !5970, file: !318, line: 45, column: 1)
!6380 = !{i64 2152676318}
!6381 = !DILocation(line: 45, column: 1, scope: !6382)
!6382 = distinct !DILexicalBlock(scope: !6379, file: !318, line: 45, column: 1)
!6383 = !DILocation(line: 45, column: 1, scope: !6384)
!6384 = distinct !DILexicalBlock(scope: !6382, file: !318, line: 45, column: 1)
!6385 = !{i64 2152676477}
!6386 = distinct !DISubprogram(name: "do_trace_read_msr", scope: !3, file: !3, line: 130, type: !5963, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6387)
!6387 = !{!6388, !6389, !6390}
!6388 = !DILocalVariable(name: "msr", arg: 1, scope: !6386, file: !3, line: 130, type: !7)
!6389 = !DILocalVariable(name: "val", arg: 2, scope: !6386, file: !3, line: 130, type: !298)
!6390 = !DILocalVariable(name: "failed", arg: 3, scope: !6386, file: !3, line: 130, type: !98)
!6391 = !DILocation(line: 130, column: 37, scope: !6386)
!6392 = !DILocation(line: 130, column: 46, scope: !6386)
!6393 = !DILocation(line: 130, column: 55, scope: !6386)
!6394 = !DILocation(line: 132, column: 17, scope: !6386)
!6395 = !DILocation(line: 132, column: 22, scope: !6386)
!6396 = !DILocation(line: 132, column: 27, scope: !6386)
!6397 = !DILocation(line: 132, column: 2, scope: !6386)
!6398 = !DILocation(line: 133, column: 1, scope: !6386)
!6399 = !DILocation(line: 40, column: 1, scope: !5994)
!6400 = !DILocation(line: 40, column: 1, scope: !6001)
!6401 = !DILocation(line: 40, column: 1, scope: !6000)
!6402 = !DILocation(line: 40, column: 1, scope: !6003)
!6403 = !DILocation(line: 40, column: 1, scope: !6006)
!6404 = !DILocation(line: 40, column: 1, scope: !6008)
!6405 = !{i64 2152619356}
!6406 = !DILocation(line: 40, column: 1, scope: !6004)
!6407 = !DILocation(line: 40, column: 1, scope: !6010)
!6408 = !DILocation(line: 40, column: 1, scope: !6014)
!6409 = !DILocation(line: 40, column: 1, scope: !6013)
!6410 = !DILocation(line: 40, column: 1, scope: !6411)
!6411 = distinct !DILexicalBlock(scope: !6013, file: !318, line: 40, column: 1)
!6412 = !DILocation(line: 40, column: 1, scope: !6413)
!6413 = distinct !DILexicalBlock(scope: !6013, file: !318, line: 40, column: 1)
!6414 = !{i64 2152620560, i64 2152620589, i64 2152620635, i64 2152620693, i64 2152620747, i64 2152620801, i64 2152620856, i64 2152620887, i64 2152621195, i64 2152621201, i64 2152621248, i64 2152621271, i64 2152621297}
!6415 = !DILocation(line: 40, column: 1, scope: !6416)
!6416 = distinct !DILexicalBlock(scope: !6013, file: !318, line: 40, column: 1)
!6417 = !DILocation(line: 40, column: 1, scope: !6011)
!6418 = !DILocation(line: 40, column: 1, scope: !6419)
!6419 = distinct !DILexicalBlock(scope: !6000, file: !318, line: 40, column: 1)
!6420 = !{i64 2152621653}
!6421 = !DILocation(line: 40, column: 1, scope: !6016)
!6422 = !DILocation(line: 40, column: 1, scope: !6019)
!6423 = !DILocation(line: 40, column: 1, scope: !6424)
!6424 = distinct !DILexicalBlock(scope: !6019, file: !318, line: 40, column: 1)
!6425 = !DILocation(line: 40, column: 1, scope: !6426)
!6426 = distinct !DILexicalBlock(scope: !6424, file: !318, line: 40, column: 1)
!6427 = !DILocation(line: 40, column: 1, scope: !6428)
!6428 = distinct !DILexicalBlock(scope: !6016, file: !318, line: 40, column: 1)
!6429 = !DILocation(line: 40, column: 1, scope: !6430)
!6430 = distinct !DILexicalBlock(scope: !6428, file: !318, line: 40, column: 1)
!6431 = !DILocation(line: 40, column: 1, scope: !6432)
!6432 = distinct !DILexicalBlock(scope: !6430, file: !318, line: 40, column: 1)
!6433 = !DILocation(line: 40, column: 1, scope: !6434)
!6434 = distinct !DILexicalBlock(scope: !6000, file: !318, line: 40, column: 1)
!6435 = !{i64 2152627660}
!6436 = !DILocation(line: 40, column: 1, scope: !6437)
!6437 = distinct !DILexicalBlock(scope: !6434, file: !318, line: 40, column: 1)
!6438 = !DILocation(line: 40, column: 1, scope: !6439)
!6439 = distinct !DILexicalBlock(scope: !6437, file: !318, line: 40, column: 1)
!6440 = !{i64 2152627819}
!6441 = distinct !DISubprogram(name: "do_trace_rdpmc", scope: !3, file: !3, line: 137, type: !5963, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6442)
!6442 = !{!6443, !6444, !6445}
!6443 = !DILocalVariable(name: "counter", arg: 1, scope: !6441, file: !3, line: 137, type: !7)
!6444 = !DILocalVariable(name: "val", arg: 2, scope: !6441, file: !3, line: 137, type: !298)
!6445 = !DILocalVariable(name: "failed", arg: 3, scope: !6441, file: !3, line: 137, type: !98)
!6446 = !DILocation(line: 137, column: 30, scope: !6441)
!6447 = !DILocation(line: 137, column: 43, scope: !6441)
!6448 = !DILocation(line: 137, column: 52, scope: !6441)
!6449 = !DILocation(line: 139, column: 14, scope: !6441)
!6450 = !DILocation(line: 139, column: 23, scope: !6441)
!6451 = !DILocation(line: 139, column: 28, scope: !6441)
!6452 = !DILocation(line: 139, column: 2, scope: !6441)
!6453 = !DILocation(line: 140, column: 1, scope: !6441)
!6454 = !DILocation(line: 50, column: 1, scope: !6024)
!6455 = !DILocation(line: 50, column: 1, scope: !6031)
!6456 = !DILocation(line: 50, column: 1, scope: !6030)
!6457 = !DILocation(line: 50, column: 1, scope: !6033)
!6458 = !DILocation(line: 50, column: 1, scope: !6036)
!6459 = !DILocation(line: 50, column: 1, scope: !6038)
!6460 = !{i64 2152712481}
!6461 = !DILocation(line: 50, column: 1, scope: !6034)
!6462 = !DILocation(line: 50, column: 1, scope: !6040)
!6463 = !DILocation(line: 50, column: 1, scope: !6044)
!6464 = !DILocation(line: 50, column: 1, scope: !6043)
!6465 = !DILocation(line: 50, column: 1, scope: !6466)
!6466 = distinct !DILexicalBlock(scope: !6043, file: !318, line: 50, column: 1)
!6467 = !DILocation(line: 50, column: 1, scope: !6468)
!6468 = distinct !DILexicalBlock(scope: !6043, file: !318, line: 50, column: 1)
!6469 = !{i64 2152713682, i64 2152713711, i64 2152713757, i64 2152713815, i64 2152713869, i64 2152713923, i64 2152713978, i64 2152714009, i64 2152714317, i64 2152714323, i64 2152714370, i64 2152714393, i64 2152714419}
!6470 = !DILocation(line: 50, column: 1, scope: !6471)
!6471 = distinct !DILexicalBlock(scope: !6043, file: !318, line: 50, column: 1)
!6472 = !DILocation(line: 50, column: 1, scope: !6041)
!6473 = !DILocation(line: 50, column: 1, scope: !6474)
!6474 = distinct !DILexicalBlock(scope: !6030, file: !318, line: 50, column: 1)
!6475 = !{i64 2152714775}
!6476 = !DILocation(line: 50, column: 1, scope: !6046)
!6477 = !DILocation(line: 50, column: 1, scope: !6049)
!6478 = !DILocation(line: 50, column: 1, scope: !6479)
!6479 = distinct !DILexicalBlock(scope: !6049, file: !318, line: 50, column: 1)
!6480 = !DILocation(line: 50, column: 1, scope: !6481)
!6481 = distinct !DILexicalBlock(scope: !6479, file: !318, line: 50, column: 1)
!6482 = !DILocation(line: 50, column: 1, scope: !6483)
!6483 = distinct !DILexicalBlock(scope: !6046, file: !318, line: 50, column: 1)
!6484 = !DILocation(line: 50, column: 1, scope: !6485)
!6485 = distinct !DILexicalBlock(scope: !6483, file: !318, line: 50, column: 1)
!6486 = !DILocation(line: 50, column: 1, scope: !6487)
!6487 = distinct !DILexicalBlock(scope: !6485, file: !318, line: 50, column: 1)
!6488 = !DILocation(line: 50, column: 1, scope: !6489)
!6489 = distinct !DILexicalBlock(scope: !6030, file: !318, line: 50, column: 1)
!6490 = !{i64 2152720599}
!6491 = !DILocation(line: 50, column: 1, scope: !6492)
!6492 = distinct !DILexicalBlock(scope: !6489, file: !318, line: 50, column: 1)
!6493 = !DILocation(line: 50, column: 1, scope: !6494)
!6494 = distinct !DILexicalBlock(scope: !6492, file: !318, line: 50, column: 1)
!6495 = !{i64 2152720758}
!6496 = distinct !DISubprogram(name: "do_trace_event_raw_event_msr_trace_class", scope: !318, file: !318, line: 21, type: !296, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6497)
!6497 = !{!6498, !6499, !6500, !6501, !6502, !6521, !6522, !6540, !6541}
!6498 = !DILocalVariable(name: "__data", arg: 1, scope: !6496, file: !318, line: 21, type: !96)
!6499 = !DILocalVariable(name: "msr", arg: 2, scope: !6496, file: !318, line: 21, type: !7)
!6500 = !DILocalVariable(name: "val", arg: 3, scope: !6496, file: !318, line: 21, type: !298)
!6501 = !DILocalVariable(name: "failed", arg: 4, scope: !6496, file: !318, line: 21, type: !98)
!6502 = !DILocalVariable(name: "trace_file", scope: !6496, file: !318, line: 21, type: !6503)
!6503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6504, size: 64)
!6504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_file", file: !246, line: 655, size: 768, elements: !6505)
!6505 = !{!6506, !6507, !6508, !6509, !6512, !6513, !6516, !6517, !6518, !6519, !6520}
!6506 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !6504, file: !246, line: 656, baseType: !173, size: 128)
!6507 = !DIDerivedType(tag: DW_TAG_member, name: "event_call", scope: !6504, file: !246, line: 657, baseType: !4197, size: 64, offset: 128)
!6508 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !6504, file: !246, line: 658, baseType: !4322, size: 64, offset: 192)
!6509 = !DIDerivedType(tag: DW_TAG_member, name: "ei", scope: !6504, file: !246, line: 659, baseType: !6510, size: 64, offset: 256)
!6510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6511, size: 64)
!6511 = !DICompositeType(tag: DW_TAG_structure_type, name: "eventfs_inode", file: !246, line: 659, flags: DIFlagFwdDecl)
!6512 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !6504, file: !246, line: 660, baseType: !4266, size: 64, offset: 320)
!6513 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !6504, file: !246, line: 661, baseType: !6514, size: 64, offset: 384)
!6514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6515, size: 64)
!6515 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_subsystem_dir", file: !246, line: 485, flags: DIFlagFwdDecl)
!6516 = !DIDerivedType(tag: DW_TAG_member, name: "triggers", scope: !6504, file: !246, line: 662, baseType: !173, size: 128, offset: 448)
!6517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6504, file: !246, line: 680, baseType: !115, size: 64, offset: 576)
!6518 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !6504, file: !246, line: 681, baseType: !125, size: 32, offset: 640)
!6519 = !DIDerivedType(tag: DW_TAG_member, name: "sm_ref", scope: !6504, file: !246, line: 682, baseType: !125, size: 32, offset: 672)
!6520 = !DIDerivedType(tag: DW_TAG_member, name: "tm_ref", scope: !6504, file: !246, line: 683, baseType: !125, size: 32, offset: 704)
!6521 = !DILocalVariable(name: "__data_offsets", scope: !6496, file: !318, line: 21, type: !6184)
!6522 = !DILocalVariable(name: "fbuffer", scope: !6496, file: !318, line: 21, type: !6523)
!6523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_buffer", file: !246, line: 308, size: 384, elements: !6524)
!6524 = !{!6525, !6528, !6536, !6537, !6538, !6539}
!6525 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !6523, file: !246, line: 309, baseType: !6526, size: 64)
!6526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6527, size: 64)
!6527 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_buffer", file: !4281, line: 9, flags: DIFlagFwdDecl)
!6528 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !6523, file: !246, line: 310, baseType: !6529, size: 64, offset: 64)
!6529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6530, size: 64)
!6530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_event", file: !4281, line: 15, size: 32, elements: !6531)
!6531 = !{!6532, !6533, !6534}
!6532 = !DIDerivedType(tag: DW_TAG_member, name: "type_len", scope: !6530, file: !4281, line: 16, baseType: !312, size: 5, flags: DIFlagBitField, extraData: i64 0)
!6533 = !DIDerivedType(tag: DW_TAG_member, name: "time_delta", scope: !6530, file: !4281, line: 16, baseType: !312, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!6534 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !6530, file: !4281, line: 18, baseType: !6535, offset: 32)
!6535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, elements: !332)
!6536 = !DIDerivedType(tag: DW_TAG_member, name: "trace_file", scope: !6523, file: !246, line: 311, baseType: !6503, size: 64, offset: 128)
!6537 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !6523, file: !246, line: 312, baseType: !96, size: 64, offset: 192)
!6538 = !DIDerivedType(tag: DW_TAG_member, name: "trace_ctx", scope: !6523, file: !246, line: 313, baseType: !7, size: 32, offset: 256)
!6539 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !6523, file: !246, line: 314, baseType: !4134, size: 64, offset: 320)
!6540 = !DILocalVariable(name: "entry", scope: !6496, file: !318, line: 21, type: !316)
!6541 = !DILocalVariable(name: "__data_size", scope: !6496, file: !318, line: 21, type: !98)
!6542 = !DILocation(line: 21, column: 1, scope: !6496)
!6543 = !DILocation(line: 21, column: 1, scope: !6544)
!6544 = distinct !DILexicalBlock(scope: !6496, file: !318, line: 21, column: 1)
!6545 = !DILocation(line: 21, column: 1, scope: !6546)
!6546 = distinct !DILexicalBlock(scope: !6496, file: !318, line: 21, column: 1)
!6547 = !DILocation(line: 21, column: 1, scope: !6548)
!6548 = distinct !DILexicalBlock(scope: !6496, file: !318, line: 21, column: 1)
!6549 = distinct !DISubprogram(name: "trace_trigger_soft_disabled", scope: !246, file: !246, line: 746, type: !6550, scopeLine: 747, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6552)
!6550 = !DISubroutineType(types: !6551)
!6551 = !{!1436, !6503}
!6552 = !{!6553, !6554}
!6553 = !DILocalVariable(name: "file", arg: 1, scope: !6549, file: !246, line: 746, type: !6503)
!6554 = !DILocalVariable(name: "eflags", scope: !6549, file: !246, line: 748, type: !115)
!6555 = !DILocation(line: 746, column: 54, scope: !6549)
!6556 = !DILocation(line: 748, column: 2, scope: !6549)
!6557 = !DILocation(line: 748, column: 16, scope: !6549)
!6558 = !DILocation(line: 748, column: 25, scope: !6549)
!6559 = !DILocation(line: 748, column: 31, scope: !6549)
!6560 = !DILocation(line: 750, column: 6, scope: !6561)
!6561 = distinct !DILexicalBlock(scope: !6549, file: !246, line: 750, column: 6)
!6562 = !DILocation(line: 750, column: 6, scope: !6549)
!6563 = !DILocation(line: 753, column: 3, scope: !6561)
!6564 = !DILocation(line: 755, column: 6, scope: !6565)
!6565 = distinct !DILexicalBlock(scope: !6549, file: !246, line: 755, column: 6)
!6566 = !DILocation(line: 755, column: 6, scope: !6549)
!6567 = !DILocation(line: 756, column: 3, scope: !6565)
!6568 = !DILocation(line: 758, column: 39, scope: !6549)
!6569 = !DILocation(line: 758, column: 9, scope: !6549)
!6570 = !DILocation(line: 758, column: 2, scope: !6549)
!6571 = !DILocation(line: 759, column: 1, scope: !6549)
!6572 = distinct !DISubprogram(name: "trace_event_get_offsets_msr_trace_class", scope: !318, file: !318, line: 21, type: !6573, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6576)
!6573 = !DISubroutineType(types: !6574)
!6574 = !{!98, !6575, !7, !298, !98}
!6575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6184, size: 64)
!6576 = !{!6577, !6578, !6579, !6580, !6581, !6582, !6583}
!6577 = !DILocalVariable(name: "__data_offsets", arg: 1, scope: !6572, file: !318, line: 21, type: !6575)
!6578 = !DILocalVariable(name: "msr", arg: 2, scope: !6572, file: !318, line: 21, type: !7)
!6579 = !DILocalVariable(name: "val", arg: 3, scope: !6572, file: !318, line: 21, type: !298)
!6580 = !DILocalVariable(name: "failed", arg: 4, scope: !6572, file: !318, line: 21, type: !98)
!6581 = !DILocalVariable(name: "__data_size", scope: !6572, file: !318, line: 21, type: !98)
!6582 = !DILocalVariable(name: "__item_length", scope: !6572, file: !318, line: 21, type: !98)
!6583 = !DILocalVariable(name: "entry", scope: !6572, file: !318, line: 21, type: !316)
!6584 = !DILocation(line: 21, column: 1, scope: !6572)
!6585 = !DISubprogram(name: "trace_event_buffer_reserve", scope: !246, file: !246, line: 317, type: !6586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6586 = !DISubroutineType(types: !6587)
!6587 = !{!96, !6588, !6503, !115}
!6588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6523, size: 64)
!6589 = !DISubprogram(name: "trace_event_buffer_commit", scope: !246, file: !246, line: 321, type: !6590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6590 = !DISubroutineType(types: !6591)
!6591 = !{null, !6588}
!6592 = !DISubprogram(name: "__trace_trigger_soft_disabled", scope: !246, file: !246, line: 734, type: !6550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6593 = distinct !DISubprogram(name: "trace_raw_output_msr_trace_class", scope: !318, file: !318, line: 21, type: !4260, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6594)
!6594 = !{!6595, !6596, !6597, !6598, !6600, !6601, !6602}
!6595 = !DILocalVariable(name: "iter", arg: 1, scope: !6593, file: !318, line: 21, type: !4262)
!6596 = !DILocalVariable(name: "flags", arg: 2, scope: !6593, file: !318, line: 21, type: !98)
!6597 = !DILocalVariable(name: "trace_event", arg: 3, scope: !6593, file: !318, line: 21, type: !4316)
!6598 = !DILocalVariable(name: "s", scope: !6593, file: !318, line: 21, type: !6599)
!6599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!6600 = !DILocalVariable(name: "p", scope: !6593, file: !318, line: 21, type: !6599)
!6601 = !DILocalVariable(name: "field", scope: !6593, file: !318, line: 21, type: !316)
!6602 = !DILocalVariable(name: "ret", scope: !6593, file: !318, line: 21, type: !98)
!6603 = !DILocation(line: 21, column: 1, scope: !6593)
!6604 = !DILocation(line: 21, column: 1, scope: !6605)
!6605 = distinct !DILexicalBlock(scope: !6593, file: !318, line: 21, column: 1)
!6606 = !DISubprogram(name: "trace_raw_output_prep", scope: !246, file: !246, line: 57, type: !6607, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6607 = !DISubroutineType(types: !6608)
!6608 = !{!98, !4262, !4316}
!6609 = !DISubprogram(name: "trace_event_printf", scope: !246, file: !246, line: 60, type: !6610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6610 = !DISubroutineType(types: !6611)
!6611 = !{null, !4262, !92, null}
!6612 = !DISubprogram(name: "trace_handle_return", scope: !246, file: !246, line: 165, type: !6613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6613 = !DISubroutineType(types: !6614)
!6614 = !{!256, !6599}
!6615 = distinct !DISubprogram(name: "bpf_prog_array_valid", scope: !246, file: !246, line: 443, type: !6616, scopeLine: 444, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6618)
!6616 = !DISubroutineType(types: !6617)
!6617 = !{!1436, !4197}
!6618 = !{!6619}
!6619 = !DILocalVariable(name: "call", arg: 1, scope: !6615, file: !246, line: 443, type: !4197)
!6620 = !DILocation(line: 443, column: 66, scope: !6615)
!6621 = !DILocation(line: 462, column: 11, scope: !6622)
!6622 = distinct !DILexicalBlock(scope: !6615, file: !246, line: 462, column: 11)
!6623 = !DILocation(line: 462, column: 11, scope: !6624)
!6624 = distinct !DILexicalBlock(scope: !6622, file: !246, line: 462, column: 11)
!6625 = !DILocation(line: 462, column: 10, scope: !6615)
!6626 = !DILocation(line: 462, column: 9, scope: !6615)
!6627 = !DILocation(line: 462, column: 2, scope: !6615)
!6628 = distinct !DISubprogram(name: "hlist_empty", scope: !6629, file: !6629, line: 970, type: !6630, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6634)
!6629 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6630 = !DISubroutineType(types: !6631)
!6631 = !{!98, !6632}
!6632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6633, size: 64)
!6633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!6634 = !{!6635}
!6635 = !DILocalVariable(name: "h", arg: 1, scope: !6628, file: !6629, line: 970, type: !6632)
!6636 = !DILocation(line: 970, column: 56, scope: !6628)
!6637 = !DILocation(line: 972, column: 10, scope: !6638)
!6638 = distinct !DILexicalBlock(scope: !6628, file: !6629, line: 972, column: 10)
!6639 = !DILocation(line: 972, column: 10, scope: !6640)
!6640 = distinct !DILexicalBlock(scope: !6638, file: !6629, line: 972, column: 10)
!6641 = !DILocation(line: 972, column: 9, scope: !6628)
!6642 = !DILocation(line: 972, column: 2, scope: !6628)
!6643 = !DISubprogram(name: "perf_trace_buf_alloc", scope: !246, file: !246, line: 904, type: !6644, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6644 = !DISubroutineType(types: !6645)
!6645 = !{!96, !98, !6646, !352}
!6646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!6647 = distinct !DISubprogram(name: "perf_fetch_caller_regs", scope: !237, file: !237, line: 1427, type: !6648, scopeLine: 1428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6650)
!6648 = !DISubroutineType(types: !6649)
!6649 = !{null, !4134}
!6650 = !{!6651}
!6651 = !DILocalVariable(name: "regs", arg: 1, scope: !6647, file: !237, line: 1427, type: !4134)
!6652 = !DILocation(line: 1427, column: 59, scope: !6647)
!6653 = !DILocation(line: 1429, column: 2, scope: !6654)
!6654 = distinct !DILexicalBlock(scope: !6647, file: !237, line: 1429, column: 2)
!6655 = !DILocation(line: 1430, column: 1, scope: !6647)
!6656 = !DISubprogram(name: "perf_trace_run_bpf_submit", scope: !246, file: !246, line: 936, type: !6657, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6657 = !DISubroutineType(types: !6658)
!6658 = !{null, !96, !98, !98, !4197, !298, !4134, !334, !945}
!6659 = distinct !DISubprogram(name: "msr_read", scope: !3, file: !3, line: 39, type: !6660, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6662)
!6660 = !DISubroutineType(types: !6661)
!6661 = !{!98, !312, !301}
!6662 = !{!6663, !6664, !6665, !6666}
!6663 = !DILocalVariable(name: "msr", arg: 1, scope: !6659, file: !3, line: 39, type: !312)
!6664 = !DILocalVariable(name: "m", arg: 2, scope: !6659, file: !3, line: 39, type: !301)
!6665 = !DILocalVariable(name: "err", scope: !6659, file: !3, line: 41, type: !98)
!6666 = !DILocalVariable(name: "val", scope: !6659, file: !3, line: 42, type: !298)
!6667 = !DILocation(line: 39, column: 25, scope: !6659)
!6668 = !DILocation(line: 39, column: 42, scope: !6659)
!6669 = !DILocation(line: 41, column: 2, scope: !6659)
!6670 = !DILocation(line: 41, column: 6, scope: !6659)
!6671 = !DILocation(line: 42, column: 2, scope: !6659)
!6672 = !DILocation(line: 42, column: 6, scope: !6659)
!6673 = !DILocation(line: 44, column: 20, scope: !6659)
!6674 = !DILocation(line: 44, column: 8, scope: !6659)
!6675 = !DILocation(line: 44, column: 6, scope: !6659)
!6676 = !DILocation(line: 45, column: 7, scope: !6677)
!6677 = distinct !DILexicalBlock(scope: !6659, file: !3, line: 45, column: 6)
!6678 = !DILocation(line: 45, column: 6, scope: !6659)
!6679 = !DILocation(line: 46, column: 10, scope: !6677)
!6680 = !DILocation(line: 46, column: 3, scope: !6677)
!6681 = !DILocation(line: 46, column: 6, scope: !6677)
!6682 = !DILocation(line: 46, column: 8, scope: !6677)
!6683 = !DILocation(line: 48, column: 9, scope: !6659)
!6684 = !DILocation(line: 49, column: 1, scope: !6659)
!6685 = !DILocation(line: 48, column: 2, scope: !6659)
!6686 = distinct !DISubprogram(name: "msr_write", scope: !3, file: !3, line: 59, type: !6660, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6687)
!6687 = !{!6688, !6689}
!6688 = !DILocalVariable(name: "msr", arg: 1, scope: !6686, file: !3, line: 59, type: !312)
!6689 = !DILocalVariable(name: "m", arg: 2, scope: !6686, file: !3, line: 59, type: !301)
!6690 = !DILocation(line: 59, column: 26, scope: !6686)
!6691 = !DILocation(line: 59, column: 43, scope: !6686)
!6692 = !DILocation(line: 61, column: 21, scope: !6686)
!6693 = !DILocation(line: 61, column: 26, scope: !6686)
!6694 = !DILocation(line: 61, column: 29, scope: !6686)
!6695 = !DILocation(line: 61, column: 9, scope: !6686)
!6696 = !DILocation(line: 61, column: 2, scope: !6686)
!6697 = distinct !DISubprogram(name: "rdmsrl_safe", scope: !6698, file: !6698, line: 281, type: !6699, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6702)
!6698 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!6699 = !DISubroutineType(types: !6700)
!6700 = !{!98, !7, !6701}
!6701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!6702 = !{!6703, !6704, !6705}
!6703 = !DILocalVariable(name: "msr", arg: 1, scope: !6697, file: !6698, line: 281, type: !7)
!6704 = !DILocalVariable(name: "p", arg: 2, scope: !6697, file: !6698, line: 281, type: !6701)
!6705 = !DILocalVariable(name: "err", scope: !6697, file: !6698, line: 283, type: !98)
!6706 = !DILocation(line: 281, column: 44, scope: !6697)
!6707 = !DILocation(line: 281, column: 69, scope: !6697)
!6708 = !DILocation(line: 283, column: 2, scope: !6697)
!6709 = !DILocation(line: 283, column: 6, scope: !6697)
!6710 = !DILocation(line: 285, column: 28, scope: !6697)
!6711 = !DILocation(line: 285, column: 7, scope: !6697)
!6712 = !DILocation(line: 285, column: 3, scope: !6697)
!6713 = !DILocation(line: 285, column: 5, scope: !6697)
!6714 = !DILocation(line: 286, column: 9, scope: !6697)
!6715 = !DILocation(line: 287, column: 1, scope: !6697)
!6716 = !DILocation(line: 286, column: 2, scope: !6697)
!6717 = distinct !DISubprogram(name: "native_read_msr_safe", scope: !6698, file: !6698, line: 126, type: !6718, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6720)
!6718 = !DISubroutineType(types: !6719)
!6719 = !{!300, !7, !352}
!6720 = !{!6721, !6722, !6723, !6724}
!6721 = !DILocalVariable(name: "msr", arg: 1, scope: !6717, file: !6698, line: 126, type: !7)
!6722 = !DILocalVariable(name: "err", arg: 2, scope: !6717, file: !6698, line: 127, type: !352)
!6723 = !DILocalVariable(name: "low", scope: !6717, file: !6698, line: 129, type: !115)
!6724 = !DILocalVariable(name: "high", scope: !6717, file: !6698, line: 129, type: !115)
!6725 = !DILocation(line: 126, column: 68, scope: !6717)
!6726 = !DILocation(line: 127, column: 18, scope: !6717)
!6727 = !DILocation(line: 129, column: 2, scope: !6717)
!6728 = !DILocation(line: 134, column: 23, scope: !6717)
!6729 = !DILocation(line: 135, column: 15, scope: !6717)
!6730 = !DILocation(line: 131, column: 2, scope: !6717)
!6731 = !{i64 1125213, i64 1125254, i64 1125258, i64 2149323107, i64 2149323132, i64 2149323167, i64 2149323384, i64 2149323437, i64 2149323468, i64 2149323499, i64 2149323577, i64 2149323611, i64 2149323649, i64 2149323692, i64 2149323715, i64 2149323753, i64 2149323775, i64 2149323806, i64 2149323891, i64 2149323925, i64 2149323963, i64 2149324006, i64 2149324029, i64 2149324067, i64 2149324089, i64 2149324123, i64 2149324185, i64 2149324208, i64 2149323233, i64 2149324282, i64 2149323344}
!6732 = !DILocation(line: 136, column: 6, scope: !6733)
!6733 = distinct !DILexicalBlock(scope: !6717, file: !6698, line: 136, column: 6)
!6734 = !DILocation(line: 136, column: 6, scope: !6717)
!6735 = !DILocation(line: 137, column: 21, scope: !6733)
!6736 = !DILocation(line: 137, column: 26, scope: !6733)
!6737 = !DILocation(line: 137, column: 56, scope: !6733)
!6738 = !DILocation(line: 137, column: 55, scope: !6733)
!6739 = !DILocation(line: 137, column: 3, scope: !6733)
!6740 = !DILocation(line: 138, column: 9, scope: !6717)
!6741 = !DILocation(line: 139, column: 1, scope: !6717)
!6742 = !DILocation(line: 138, column: 2, scope: !6717)
!6743 = distinct !DISubprogram(name: "static_key_false", scope: !371, file: !371, line: 205, type: !6744, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6747)
!6744 = !DISubroutineType(types: !6745)
!6745 = !{!1436, !6746}
!6746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!6747 = !{!6748}
!6748 = !DILocalVariable(name: "key", arg: 1, scope: !6743, file: !371, line: 205, type: !6746)
!6749 = !DILocation(line: 205, column: 65, scope: !6743)
!6750 = !DILocation(line: 207, column: 28, scope: !6743)
!6751 = !DILocation(line: 207, column: 9, scope: !6743)
!6752 = !DILocation(line: 207, column: 2, scope: !6743)
!6753 = distinct !DISubprogram(name: "arch_static_branch", scope: !6754, file: !6754, line: 25, type: !6755, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6757)
!6754 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!6755 = !DISubroutineType(types: !6756)
!6756 = !{!1436, !6746, !1436}
!6757 = !{!6758, !6759, !6760}
!6758 = !DILocalVariable(name: "key", arg: 1, scope: !6753, file: !6754, line: 25, type: !6746)
!6759 = !DILocalVariable(name: "branch", arg: 2, scope: !6753, file: !6754, line: 25, type: !1436)
!6760 = !DILabel(scope: !6753, name: "l_yes", file: !6754, line: 33)
!6761 = !DILocation(line: 25, column: 67, scope: !6753)
!6762 = !DILocation(line: 25, column: 77, scope: !6753)
!6763 = !DILocation(line: 30, column: 13, scope: !6753)
!6764 = !DILocation(line: 30, column: 28, scope: !6753)
!6765 = !DILocation(line: 30, column: 26, scope: !6753)
!6766 = !DILocation(line: 27, column: 2, scope: !6753)
!6767 = !{i64 1028489, i64 1028533, i64 2148513216, i64 2148513237, i64 2148513263, i64 2148513296, i64 2148513330, i64 2148513354}
!6768 = !DILocation(line: 32, column: 2, scope: !6753)
!6769 = !DILocation(line: 33, column: 1, scope: !6753)
!6770 = !DILocation(line: 34, column: 2, scope: !6753)
!6771 = !DILocation(line: 35, column: 1, scope: !6753)
!6772 = distinct !DISubprogram(name: "wrmsrl_safe", scope: !6698, file: !6698, line: 303, type: !6773, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6775)
!6773 = !DISubroutineType(types: !6774)
!6774 = !{!98, !312, !298}
!6775 = !{!6776, !6777}
!6776 = !DILocalVariable(name: "msr", arg: 1, scope: !6772, file: !6698, line: 303, type: !312)
!6777 = !DILocalVariable(name: "val", arg: 2, scope: !6772, file: !6698, line: 303, type: !298)
!6778 = !DILocation(line: 303, column: 35, scope: !6772)
!6779 = !DILocation(line: 303, column: 44, scope: !6772)
!6780 = !DILocation(line: 305, column: 20, scope: !6772)
!6781 = !DILocation(line: 305, column: 30, scope: !6772)
!6782 = !DILocation(line: 305, column: 25, scope: !6772)
!6783 = !DILocation(line: 305, column: 42, scope: !6772)
!6784 = !DILocation(line: 305, column: 46, scope: !6772)
!6785 = !DILocation(line: 305, column: 36, scope: !6772)
!6786 = !DILocation(line: 305, column: 9, scope: !6772)
!6787 = !DILocation(line: 305, column: 2, scope: !6772)
!6788 = distinct !DISubprogram(name: "wrmsr_safe", scope: !6698, file: !6698, line: 266, type: !6789, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6791)
!6789 = !DISubroutineType(types: !6790)
!6790 = !{!98, !7, !312, !312}
!6791 = !{!6792, !6793, !6794}
!6792 = !DILocalVariable(name: "msr", arg: 1, scope: !6788, file: !6698, line: 266, type: !7)
!6793 = !DILocalVariable(name: "low", arg: 2, scope: !6788, file: !6698, line: 266, type: !312)
!6794 = !DILocalVariable(name: "high", arg: 3, scope: !6788, file: !6698, line: 266, type: !312)
!6795 = !DILocation(line: 266, column: 43, scope: !6788)
!6796 = !DILocation(line: 266, column: 52, scope: !6788)
!6797 = !DILocation(line: 266, column: 61, scope: !6788)
!6798 = !DILocation(line: 268, column: 31, scope: !6788)
!6799 = !DILocation(line: 268, column: 36, scope: !6788)
!6800 = !DILocation(line: 268, column: 41, scope: !6788)
!6801 = !DILocation(line: 268, column: 9, scope: !6788)
!6802 = !DILocation(line: 268, column: 2, scope: !6788)
!6803 = distinct !DISubprogram(name: "native_write_msr_safe", scope: !6698, file: !6698, line: 153, type: !6789, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6804)
!6804 = !{!6805, !6806, !6807, !6808}
!6805 = !DILocalVariable(name: "msr", arg: 1, scope: !6803, file: !6698, line: 153, type: !7)
!6806 = !DILocalVariable(name: "low", arg: 2, scope: !6803, file: !6698, line: 153, type: !312)
!6807 = !DILocalVariable(name: "high", arg: 3, scope: !6803, file: !6698, line: 153, type: !312)
!6808 = !DILocalVariable(name: "err", scope: !6803, file: !6698, line: 155, type: !98)
!6809 = !DILocation(line: 153, column: 36, scope: !6803)
!6810 = !DILocation(line: 153, column: 45, scope: !6803)
!6811 = !DILocation(line: 153, column: 54, scope: !6803)
!6812 = !DILocation(line: 155, column: 2, scope: !6803)
!6813 = !DILocation(line: 155, column: 6, scope: !6803)
!6814 = !DILocation(line: 161, column: 15, scope: !6803)
!6815 = !DILocation(line: 161, column: 26, scope: !6803)
!6816 = !DILocation(line: 161, column: 37, scope: !6803)
!6817 = !DILocation(line: 157, column: 2, scope: !6803)
!6818 = !{i64 1125964, i64 1126005, i64 1126009, i64 2149325014, i64 2149325039, i64 2149325074, i64 2149325291, i64 2149325344, i64 2149325375, i64 2149325406, i64 2149325484, i64 2149325518, i64 2149325556, i64 2149325599, i64 2149325622, i64 2149325660, i64 2149325682, i64 2149325713, i64 2149325798, i64 2149325832, i64 2149325870, i64 2149325913, i64 2149325936, i64 2149325974, i64 2149325996, i64 2149326030, i64 2149326092, i64 2149326115, i64 2149325140, i64 2149326189, i64 2149325251}
!6819 = !DILocation(line: 163, column: 6, scope: !6820)
!6820 = distinct !DILexicalBlock(scope: !6803, file: !6698, line: 163, column: 6)
!6821 = !DILocation(line: 163, column: 6, scope: !6803)
!6822 = !DILocation(line: 164, column: 22, scope: !6820)
!6823 = !DILocation(line: 164, column: 33, scope: !6820)
!6824 = !DILocation(line: 164, column: 28, scope: !6820)
!6825 = !DILocation(line: 164, column: 38, scope: !6820)
!6826 = !DILocation(line: 164, column: 46, scope: !6820)
!6827 = !DILocation(line: 164, column: 44, scope: !6820)
!6828 = !DILocation(line: 164, column: 52, scope: !6820)
!6829 = !DILocation(line: 164, column: 3, scope: !6820)
!6830 = !DILocation(line: 165, column: 9, scope: !6803)
!6831 = !DILocation(line: 166, column: 1, scope: !6803)
!6832 = !DILocation(line: 165, column: 2, scope: !6803)
!6833 = distinct !DISubprogram(name: "cpu_online", scope: !356, file: !356, line: 1080, type: !6834, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6836)
!6834 = !DISubroutineType(types: !6835)
!6835 = !{!1436, !7}
!6836 = !{!6837}
!6837 = !DILocalVariable(name: "cpu", arg: 1, scope: !6833, file: !356, line: 1080, type: !7)
!6838 = !DILocation(line: 1080, column: 44, scope: !6833)
!6839 = !DILocation(line: 1082, column: 26, scope: !6833)
!6840 = !DILocation(line: 1082, column: 9, scope: !6833)
!6841 = !DILocation(line: 1082, column: 2, scope: !6833)
!6842 = distinct !DISubprogram(name: "__preempt_count_add", scope: !6843, file: !6843, line: 78, type: !2817, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6844)
!6843 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!6844 = !{!6845, !6846, !6848}
!6845 = !DILocalVariable(name: "val", arg: 1, scope: !6842, file: !6843, line: 78, type: !98)
!6846 = !DILocalVariable(name: "pao_ID__", scope: !6847, file: !6843, line: 80, type: !4225)
!6847 = distinct !DILexicalBlock(scope: !6842, file: !6843, line: 80, column: 2)
!6848 = !DILocalVariable(name: "pto_val__", scope: !6849, file: !6843, line: 80, type: !312)
!6849 = distinct !DILexicalBlock(scope: !6850, file: !6843, line: 80, column: 2)
!6850 = distinct !DILexicalBlock(scope: !6851, file: !6843, line: 80, column: 2)
!6851 = distinct !DILexicalBlock(scope: !6847, file: !6843, line: 80, column: 2)
!6852 = !DILocation(line: 78, column: 53, scope: !6842)
!6853 = !DILocation(line: 80, column: 2, scope: !6842)
!6854 = !DILocation(line: 80, column: 2, scope: !6847)
!6855 = !DILocation(line: 80, column: 2, scope: !6851)
!6856 = !DILocation(line: 80, column: 2, scope: !6857)
!6857 = distinct !DILexicalBlock(scope: !6851, file: !6843, line: 80, column: 2)
!6858 = !{i64 2149436423}
!6859 = !DILocation(line: 80, column: 2, scope: !6850)
!6860 = !DILocation(line: 80, column: 2, scope: !6861)
!6861 = distinct !DILexicalBlock(scope: !6850, file: !6843, line: 80, column: 2)
!6862 = !{i64 2149436718}
!6863 = !DILocation(line: 80, column: 2, scope: !6849)
!6864 = !{i64 2149437423}
!6865 = !DILocation(line: 81, column: 1, scope: !6842)
!6866 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !6843, file: !6843, line: 93, type: !3575, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6867)
!6867 = !{!6868}
!6868 = !DILocalVariable(name: "c", scope: !6869, file: !6843, line: 95, type: !1436)
!6869 = distinct !DILexicalBlock(scope: !6866, file: !6843, line: 95, column: 9)
!6870 = !DILocation(line: 95, column: 9, scope: !6869)
!6871 = !{i64 2149440779, i64 2149440872}
!6872 = !DILocation(line: 95, column: 9, scope: !6866)
!6873 = !DILocation(line: 95, column: 2, scope: !6866)
!6874 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !356, file: !356, line: 502, type: !6875, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6877)
!6875 = !DISubroutineType(types: !6876)
!6876 = !{!1436, !98, !353}
!6877 = !{!6878, !6879}
!6878 = !DILocalVariable(name: "cpu", arg: 1, scope: !6874, file: !356, line: 502, type: !98)
!6879 = !DILocalVariable(name: "cpumask", arg: 2, scope: !6874, file: !356, line: 502, type: !353)
!6880 = !DILocation(line: 502, column: 50, scope: !6874)
!6881 = !DILocation(line: 502, column: 77, scope: !6874)
!6882 = !DILocation(line: 504, column: 9, scope: !6874)
!6883 = !DILocation(line: 504, column: 2, scope: !6874)
!6884 = distinct !DISubprogram(name: "_test_bit", scope: !6885, file: !6885, line: 139, type: !6886, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6891)
!6885 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6886 = !DISubroutineType(types: !6887)
!6887 = !{!1436, !115, !6888}
!6888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6889, size: 64)
!6889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6890)
!6890 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !115)
!6891 = !{!6892, !6893}
!6892 = !DILocalVariable(name: "nr", arg: 1, scope: !6884, file: !6885, line: 139, type: !115)
!6893 = !DILocalVariable(name: "addr", arg: 2, scope: !6884, file: !6885, line: 139, type: !6888)
!6894 = !DILocation(line: 139, column: 25, scope: !6884)
!6895 = !DILocation(line: 139, column: 59, scope: !6884)
!6896 = !DILocation(line: 141, column: 25, scope: !6884)
!6897 = !DILocation(line: 141, column: 32, scope: !6884)
!6898 = !DILocation(line: 141, column: 30, scope: !6884)
!6899 = !DILocation(line: 141, column: 2, scope: !6884)
!6900 = !DILocation(line: 142, column: 23, scope: !6884)
!6901 = !DILocation(line: 142, column: 27, scope: !6884)
!6902 = !DILocation(line: 142, column: 9, scope: !6884)
!6903 = !DILocation(line: 142, column: 2, scope: !6884)
!6904 = distinct !DISubprogram(name: "cpumask_check", scope: !356, file: !356, line: 148, type: !6905, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6907)
!6905 = !DISubroutineType(types: !6906)
!6906 = !{!7, !7}
!6907 = !{!6908}
!6908 = !DILocalVariable(name: "cpu", arg: 1, scope: !6904, file: !356, line: 148, type: !7)
!6909 = !DILocation(line: 148, column: 64, scope: !6904)
!6910 = !DILocation(line: 150, column: 20, scope: !6904)
!6911 = !DILocation(line: 150, column: 2, scope: !6904)
!6912 = !DILocation(line: 151, column: 9, scope: !6904)
!6913 = !DILocation(line: 151, column: 2, scope: !6904)
!6914 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6915, file: !6915, line: 66, type: !6916, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6921)
!6915 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6916 = !DISubroutineType(types: !6917)
!6917 = !{null, !6918, !111}
!6918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6919, size: 64)
!6919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6920)
!6920 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6921 = !{!6922, !6923}
!6922 = !DILocalVariable(name: "v", arg: 1, scope: !6914, file: !6915, line: 66, type: !6918)
!6923 = !DILocalVariable(name: "size", arg: 2, scope: !6914, file: !6915, line: 66, type: !111)
!6924 = !DILocation(line: 66, column: 73, scope: !6914)
!6925 = !DILocation(line: 66, column: 83, scope: !6914)
!6926 = !DILocation(line: 68, column: 19, scope: !6914)
!6927 = !DILocation(line: 68, column: 22, scope: !6914)
!6928 = !DILocation(line: 68, column: 2, scope: !6914)
!6929 = !DILocation(line: 69, column: 2, scope: !6914)
!6930 = !DILocation(line: 70, column: 1, scope: !6914)
!6931 = distinct !DISubprogram(name: "arch_test_bit", scope: !6932, file: !6932, line: 237, type: !6886, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6933)
!6932 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6933 = !{!6934, !6935}
!6934 = !DILocalVariable(name: "nr", arg: 1, scope: !6931, file: !6932, line: 237, type: !115)
!6935 = !DILocalVariable(name: "addr", arg: 2, scope: !6931, file: !6932, line: 237, type: !6888)
!6936 = !DILocation(line: 237, column: 29, scope: !6931)
!6937 = !DILocation(line: 237, column: 63, scope: !6931)
!6938 = !DILocation(line: 239, column: 30, scope: !6931)
!6939 = !DILocation(line: 239, column: 9, scope: !6931)
!6940 = !DILocation(line: 239, column: 54, scope: !6931)
!6941 = !DILocation(line: 239, column: 58, scope: !6931)
!6942 = !DILocation(line: 239, column: 36, scope: !6931)
!6943 = !DILocation(line: 240, column: 26, scope: !6931)
!6944 = !DILocation(line: 240, column: 30, scope: !6931)
!6945 = !DILocation(line: 240, column: 8, scope: !6931)
!6946 = !DILocation(line: 239, column: 2, scope: !6931)
!6947 = distinct !DISubprogram(name: "kasan_check_read", scope: !6948, file: !6948, line: 40, type: !6949, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6951)
!6948 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6949 = !DISubroutineType(types: !6950)
!6950 = !{!1436, !6918, !7}
!6951 = !{!6952, !6953}
!6952 = !DILocalVariable(name: "p", arg: 1, scope: !6947, file: !6948, line: 40, type: !6918)
!6953 = !DILocalVariable(name: "size", arg: 2, scope: !6947, file: !6948, line: 40, type: !7)
!6954 = !DILocation(line: 40, column: 58, scope: !6947)
!6955 = !DILocation(line: 40, column: 74, scope: !6947)
!6956 = !DILocation(line: 42, column: 2, scope: !6947)
!6957 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6958, file: !6958, line: 229, type: !6959, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6961)
!6958 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6959 = !DISubroutineType(types: !6960)
!6960 = !{null, !6918, !111, !98}
!6961 = !{!6962, !6963, !6964}
!6962 = !DILocalVariable(name: "ptr", arg: 1, scope: !6957, file: !6958, line: 229, type: !6918)
!6963 = !DILocalVariable(name: "size", arg: 2, scope: !6957, file: !6958, line: 229, type: !111)
!6964 = !DILocalVariable(name: "type", arg: 3, scope: !6957, file: !6958, line: 230, type: !98)
!6965 = !DILocation(line: 229, column: 60, scope: !6957)
!6966 = !DILocation(line: 229, column: 72, scope: !6957)
!6967 = !DILocation(line: 230, column: 15, scope: !6957)
!6968 = !DILocation(line: 230, column: 23, scope: !6957)
!6969 = distinct !DISubprogram(name: "constant_test_bit", scope: !6932, file: !6932, line: 204, type: !6970, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6972)
!6970 = !DISubroutineType(types: !6971)
!6971 = !{!1436, !387, !6888}
!6972 = !{!6973, !6974}
!6973 = !DILocalVariable(name: "nr", arg: 1, scope: !6969, file: !6932, line: 204, type: !387)
!6974 = !DILocalVariable(name: "addr", arg: 2, scope: !6969, file: !6932, line: 204, type: !6888)
!6975 = !DILocation(line: 204, column: 52, scope: !6969)
!6976 = !DILocation(line: 204, column: 86, scope: !6969)
!6977 = !DILocation(line: 206, column: 19, scope: !6969)
!6978 = !DILocation(line: 206, column: 22, scope: !6969)
!6979 = !DILocation(line: 206, column: 15, scope: !6969)
!6980 = !DILocation(line: 207, column: 4, scope: !6969)
!6981 = !DILocation(line: 207, column: 9, scope: !6969)
!6982 = !DILocation(line: 207, column: 12, scope: !6969)
!6983 = !DILocation(line: 206, column: 44, scope: !6969)
!6984 = !DILocation(line: 207, column: 37, scope: !6969)
!6985 = !DILocation(line: 206, column: 2, scope: !6969)
!6986 = distinct !DISubprogram(name: "variable_test_bit", scope: !6932, file: !6932, line: 224, type: !6970, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6987)
!6987 = !{!6988, !6989, !6990}
!6988 = !DILocalVariable(name: "nr", arg: 1, scope: !6986, file: !6932, line: 224, type: !387)
!6989 = !DILocalVariable(name: "addr", arg: 2, scope: !6986, file: !6932, line: 224, type: !6888)
!6990 = !DILocalVariable(name: "oldbit", scope: !6986, file: !6932, line: 226, type: !1436)
!6991 = !DILocation(line: 224, column: 52, scope: !6986)
!6992 = !DILocation(line: 224, column: 86, scope: !6986)
!6993 = !DILocation(line: 226, column: 2, scope: !6986)
!6994 = !DILocation(line: 226, column: 7, scope: !6986)
!6995 = !DILocation(line: 231, column: 33, scope: !6986)
!6996 = !DILocation(line: 231, column: 46, scope: !6986)
!6997 = !DILocation(line: 228, column: 2, scope: !6986)
!6998 = !{i64 2148058977, i64 2148059051}
!6999 = !DILocation(line: 233, column: 9, scope: !6986)
!7000 = !DILocation(line: 234, column: 1, scope: !6986)
!7001 = !DILocation(line: 233, column: 2, scope: !6986)
!7002 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !356, file: !356, line: 140, type: !7003, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7005)
!7003 = !DISubroutineType(types: !7004)
!7004 = !{null, !7, !7}
!7005 = !{!7006, !7007}
!7006 = !DILocalVariable(name: "cpu", arg: 1, scope: !7002, file: !356, line: 140, type: !7)
!7007 = !DILocalVariable(name: "bits", arg: 2, scope: !7002, file: !356, line: 140, type: !7)
!7008 = !DILocation(line: 140, column: 60, scope: !7002)
!7009 = !DILocation(line: 140, column: 78, scope: !7002)
!7010 = !DILocation(line: 145, column: 1, scope: !7002)
