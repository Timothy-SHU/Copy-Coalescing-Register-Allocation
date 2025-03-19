; ModuleID = 'mm/mmap_lock.c'
source_filename = "mm/mmap_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "\09.section \22__tracepoints_ptrs\22, \22a\22\09\09"
module asm "\09.balign 4\09\09\09\09\09"
module asm "\09.long \09__tracepoint_mmap_lock_start_locking - .\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm ".pushsection .static_call.text, \22ax\22\09\09"
module asm ".align 4\09\09\09\09\09\09"
module asm ".globl __SCT__tp_func_mmap_lock_start_locking\09\09"
module asm "__SCT__tp_func_mmap_lock_start_locking:\09\09\09"
module asm "986: "
module asm "\09.pushsection .discard.noendbr"
module asm "\09.long 986b"
module asm "\09.popsection"
module asm "\09.byte 0xe9; .long __traceiter_mmap_lock_start_locking - (. + 4)\09\09\09\09\09\09"
module asm ".byte 0x0f, 0xb9, 0xcc\09\09\09\09"
module asm ".type __SCT__tp_func_mmap_lock_start_locking, @function\09"
module asm ".size __SCT__tp_func_mmap_lock_start_locking, . - __SCT__tp_func_mmap_lock_start_locking "
module asm ".popsection\09\09\09\09\09"
module asm "\09.section \22__tracepoints_ptrs\22, \22a\22\09\09"
module asm "\09.balign 4\09\09\09\09\09"
module asm "\09.long \09__tracepoint_mmap_lock_released - .\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm ".pushsection .static_call.text, \22ax\22\09\09"
module asm ".align 4\09\09\09\09\09\09"
module asm ".globl __SCT__tp_func_mmap_lock_released\09\09"
module asm "__SCT__tp_func_mmap_lock_released:\09\09\09"
module asm "986: "
module asm "\09.pushsection .discard.noendbr"
module asm "\09.long 986b"
module asm "\09.popsection"
module asm "\09.byte 0xe9; .long __traceiter_mmap_lock_released - (. + 4)\09\09\09\09\09\09"
module asm ".byte 0x0f, 0xb9, 0xcc\09\09\09\09"
module asm ".type __SCT__tp_func_mmap_lock_released, @function\09"
module asm ".size __SCT__tp_func_mmap_lock_released, . - __SCT__tp_func_mmap_lock_released "
module asm ".popsection\09\09\09\09\09"
module asm "\09.section \22__tracepoints_ptrs\22, \22a\22\09\09"
module asm "\09.balign 4\09\09\09\09\09"
module asm "\09.long \09__tracepoint_mmap_lock_acquire_returned - .\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm ".pushsection .static_call.text, \22ax\22\09\09"
module asm ".align 4\09\09\09\09\09\09"
module asm ".globl __SCT__tp_func_mmap_lock_acquire_returned\09\09"
module asm "__SCT__tp_func_mmap_lock_acquire_returned:\09\09\09"
module asm "986: "
module asm "\09.pushsection .discard.noendbr"
module asm "\09.long 986b"
module asm "\09.popsection"
module asm "\09.byte 0xe9; .long __traceiter_mmap_lock_acquire_returned - (. + 4)\09\09\09\09\09\09"
module asm ".byte 0x0f, 0xb9, 0xcc\09\09\09\09"
module asm ".type __SCT__tp_func_mmap_lock_acquire_returned, @function\09"
module asm ".size __SCT__tp_func_mmap_lock_acquire_returned, . - __SCT__tp_func_mmap_lock_acquire_returned "
module asm ".popsection\09\09\09\09\09"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___tracepoint_mmap_lock_start_locking: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __tracepoint_mmap_lock_start_locking ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___traceiter_mmap_lock_start_locking: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __traceiter_mmap_lock_start_locking ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___SCK__tp_func_mmap_lock_start_locking: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __SCK__tp_func_mmap_lock_start_locking ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___SCT__tp_func_mmap_lock_start_locking: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __SCT__tp_func_mmap_lock_start_locking ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___tracepoint_mmap_lock_acquire_returned: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __tracepoint_mmap_lock_acquire_returned ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___traceiter_mmap_lock_acquire_returned: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __traceiter_mmap_lock_acquire_returned ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___SCK__tp_func_mmap_lock_acquire_returned: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __SCK__tp_func_mmap_lock_acquire_returned ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___SCT__tp_func_mmap_lock_acquire_returned: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __SCT__tp_func_mmap_lock_acquire_returned ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___tracepoint_mmap_lock_released: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __tracepoint_mmap_lock_released ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___traceiter_mmap_lock_released: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __traceiter_mmap_lock_released ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___SCK__tp_func_mmap_lock_released: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __SCK__tp_func_mmap_lock_released ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___SCT__tp_func_mmap_lock_released: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __SCT__tp_func_mmap_lock_released ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___mmap_lock_do_trace_start_locking: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __mmap_lock_do_trace_start_locking ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___mmap_lock_do_trace_acquire_returned: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __mmap_lock_do_trace_acquire_returned ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___mmap_lock_do_trace_released: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __mmap_lock_do_trace_released ; .previous"

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
%struct.pcpu_hot = type { %union.anon.26 }
%union.anon.26 = type { %struct.anon.27, [16 x i8] }
%struct.anon.27 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.cpumask = type { [1 x i64] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_data_offsets_mmap_lock = type { i32 }
%struct.trace_event_raw_mmap_lock = type { %struct.trace_entry, ptr, i32, i8, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_data_offsets_mmap_lock_acquire_returned = type { i32 }
%struct.trace_event_raw_mmap_lock_acquire_returned = type { %struct.trace_entry, ptr, i32, i8, i8, [0 x i8] }
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

@__tpstrtab_mmap_lock_start_locking = internal constant [24 x i8] c"mmap_lock_start_locking\00", section "__tracepoints_strings", align 16, !dbg !0
@__SCK__tp_func_mmap_lock_start_locking = hidden global %struct.static_call_key { ptr @__traceiter_mmap_lock_start_locking, %union.anon.0 { i64 1 } }, align 8, !dbg !5964
@__tracepoint_mmap_lock_start_locking = hidden global %struct.tracepoint { ptr @__tpstrtab_mmap_lock_start_locking, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mmap_lock_start_locking, ptr @__SCT__tp_func_mmap_lock_start_locking, ptr @__traceiter_mmap_lock_start_locking, ptr @__probestub_mmap_lock_start_locking, ptr @trace_mmap_lock_reg, ptr @trace_mmap_lock_unreg, ptr null }, section "__tracepoints", align 8, !dbg !5962
@__tpstrtab_mmap_lock_released = internal constant [19 x i8] c"mmap_lock_released\00", section "__tracepoints_strings", align 16, !dbg !6023
@__SCK__tp_func_mmap_lock_released = hidden global %struct.static_call_key { ptr @__traceiter_mmap_lock_released, %union.anon.0 { i64 1 } }, align 8, !dbg !5968
@__tracepoint_mmap_lock_released = hidden global %struct.tracepoint { ptr @__tpstrtab_mmap_lock_released, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mmap_lock_released, ptr @__SCT__tp_func_mmap_lock_released, ptr @__traceiter_mmap_lock_released, ptr @__probestub_mmap_lock_released, ptr @trace_mmap_lock_reg, ptr @trace_mmap_lock_unreg, ptr null }, section "__tracepoints", align 8, !dbg !5966
@__tpstrtab_mmap_lock_acquire_returned = internal constant [27 x i8] c"mmap_lock_acquire_returned\00", section "__tracepoints_strings", align 16, !dbg !6028
@__SCK__tp_func_mmap_lock_acquire_returned = hidden global %struct.static_call_key { ptr @__traceiter_mmap_lock_acquire_returned, %union.anon.0 { i64 1 } }, align 8, !dbg !5972
@__tracepoint_mmap_lock_acquire_returned = hidden global %struct.tracepoint { ptr @__tpstrtab_mmap_lock_acquire_returned, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mmap_lock_acquire_returned, ptr @__SCT__tp_func_mmap_lock_acquire_returned, ptr @__traceiter_mmap_lock_acquire_returned, ptr @__probestub_mmap_lock_acquire_returned, ptr @trace_mmap_lock_reg, ptr @trace_mmap_lock_unreg, ptr null }, section "__tracepoints", align 8, !dbg !5970
@str__mmap_lock__trace_system_name = internal constant [10 x i8] c"mmap_lock\00", align 1, !dbg !6033
@trace_event_fields_mmap_lock = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.21 { %struct.anon.20 { ptr @.str.3, i32 8, i32 8, i8 0, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.21 { %struct.anon.20 { ptr @.str.5, i32 4, i32 4, i8 0, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.21 { %struct.anon.20 { ptr @.str.7, i32 1, i32 1, i8 0, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 16, !dbg !6061
@event_class_mmap_lock = internal global %struct.trace_event_class { ptr @str__mmap_lock__trace_system_name, ptr @trace_event_raw_event_mmap_lock, ptr @perf_trace_mmap_lock, ptr @trace_event_reg, ptr @trace_event_fields_mmap_lock, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mmap_lock, i64 48), ptr getelementptr (i8, ptr @event_class_mmap_lock, i64 48) }, ptr @trace_event_raw_init }, section ".ref.data", align 8, !dbg !5974
@trace_event_type_funcs_mmap_lock = internal global %struct.trace_event_functions { ptr @trace_raw_output_mmap_lock, ptr null, ptr null, ptr null }, align 8, !dbg !6064
@print_fmt_mmap_lock = internal global [94 x i8] c"\22mm=%p memcg_path=%s write=%s\22, REC->mm, __get_str(memcg_path), REC->write ? \22true\22 : \22false\22\00", align 16, !dbg !6075
@event_mmap_lock_start_locking = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mmap_lock, %union.anon.22 { ptr @__tracepoint_mmap_lock_start_locking }, %struct.trace_event { %struct.hlist_node zeroinitializer, i32 0, ptr @trace_event_type_funcs_mmap_lock }, ptr @print_fmt_mmap_lock, ptr null, %union.anon.23 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4, !dbg !5976
@__event_mmap_lock_start_locking = internal global ptr @event_mmap_lock_start_locking, section "_ftrace_events", align 8, !dbg !5978
@event_mmap_lock_released = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mmap_lock, %union.anon.22 { ptr @__tracepoint_mmap_lock_released }, %struct.trace_event { %struct.hlist_node zeroinitializer, i32 0, ptr @trace_event_type_funcs_mmap_lock }, ptr @print_fmt_mmap_lock, ptr null, %union.anon.23 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4, !dbg !5980
@__event_mmap_lock_released = internal global ptr @event_mmap_lock_released, section "_ftrace_events", align 8, !dbg !5982
@trace_event_fields_mmap_lock_acquire_returned = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.21 { %struct.anon.20 { ptr @.str.3, i32 8, i32 8, i8 0, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.21 { %struct.anon.20 { ptr @.str.5, i32 4, i32 4, i8 0, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.21 { %struct.anon.20 { ptr @.str.7, i32 1, i32 1, i8 0, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.21 { %struct.anon.20 { ptr @.str.11, i32 1, i32 1, i8 0, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 16, !dbg !6082
@event_class_mmap_lock_acquire_returned = internal global %struct.trace_event_class { ptr @str__mmap_lock__trace_system_name, ptr @trace_event_raw_event_mmap_lock_acquire_returned, ptr @perf_trace_mmap_lock_acquire_returned, ptr @trace_event_reg, ptr @trace_event_fields_mmap_lock_acquire_returned, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mmap_lock_acquire_returned, i64 48), ptr getelementptr (i8, ptr @event_class_mmap_lock_acquire_returned, i64 48) }, ptr @trace_event_raw_init }, section ".ref.data", align 8, !dbg !5984
@trace_event_type_funcs_mmap_lock_acquire_returned = internal global %struct.trace_event_functions { ptr @trace_raw_output_mmap_lock_acquire_returned, ptr null, ptr null, ptr null }, align 8, !dbg !6085
@print_fmt_mmap_lock_acquire_returned = internal global [138 x i8] c"\22mm=%p memcg_path=%s write=%s success=%s\22, REC->mm, __get_str(memcg_path), REC->write ? \22true\22 : \22false\22, REC->success ? \22true\22 : \22false\22\00", align 16, !dbg !6092
@event_mmap_lock_acquire_returned = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mmap_lock_acquire_returned, %union.anon.22 { ptr @__tracepoint_mmap_lock_acquire_returned }, %struct.trace_event { %struct.hlist_node zeroinitializer, i32 0, ptr @trace_event_type_funcs_mmap_lock_acquire_returned }, ptr @print_fmt_mmap_lock_acquire_returned, ptr null, %union.anon.23 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4, !dbg !5986
@__event_mmap_lock_acquire_returned = internal global ptr @event_mmap_lock_acquire_returned, section "_ftrace_events", align 8, !dbg !5988
@__UNIQUE_ID___addressable___tracepoint_mmap_lock_start_locking377 = internal global ptr @__tracepoint_mmap_lock_start_locking, section ".discard.addressable", align 8, !dbg !5990
@__UNIQUE_ID___addressable___traceiter_mmap_lock_start_locking378 = internal global ptr @__traceiter_mmap_lock_start_locking, section ".discard.addressable", align 8, !dbg !5992
@__UNIQUE_ID___addressable___SCK__tp_func_mmap_lock_start_locking379 = internal global ptr @__SCK__tp_func_mmap_lock_start_locking, section ".discard.addressable", align 8, !dbg !5994
@__UNIQUE_ID___addressable___SCT__tp_func_mmap_lock_start_locking380 = internal global ptr @__SCT__tp_func_mmap_lock_start_locking, section ".discard.addressable", align 8, !dbg !5996
@__UNIQUE_ID___addressable___tracepoint_mmap_lock_acquire_returned381 = internal global ptr @__tracepoint_mmap_lock_acquire_returned, section ".discard.addressable", align 8, !dbg !5998
@__UNIQUE_ID___addressable___traceiter_mmap_lock_acquire_returned382 = internal global ptr @__traceiter_mmap_lock_acquire_returned, section ".discard.addressable", align 8, !dbg !6000
@__UNIQUE_ID___addressable___SCK__tp_func_mmap_lock_acquire_returned383 = internal global ptr @__SCK__tp_func_mmap_lock_acquire_returned, section ".discard.addressable", align 8, !dbg !6002
@__UNIQUE_ID___addressable___SCT__tp_func_mmap_lock_acquire_returned384 = internal global ptr @__SCT__tp_func_mmap_lock_acquire_returned, section ".discard.addressable", align 8, !dbg !6004
@__UNIQUE_ID___addressable___tracepoint_mmap_lock_released385 = internal global ptr @__tracepoint_mmap_lock_released, section ".discard.addressable", align 8, !dbg !6006
@__UNIQUE_ID___addressable___traceiter_mmap_lock_released386 = internal global ptr @__traceiter_mmap_lock_released, section ".discard.addressable", align 8, !dbg !6008
@__UNIQUE_ID___addressable___SCK__tp_func_mmap_lock_released387 = internal global ptr @__SCK__tp_func_mmap_lock_released, section ".discard.addressable", align 8, !dbg !6010
@__UNIQUE_ID___addressable___SCT__tp_func_mmap_lock_released388 = internal global ptr @__SCT__tp_func_mmap_lock_released, section ".discard.addressable", align 8, !dbg !6012
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !6014
@__UNIQUE_ID___addressable___mmap_lock_do_trace_start_locking389 = internal global ptr @__mmap_lock_do_trace_start_locking, section ".discard.addressable", align 8, !dbg !6017
@__UNIQUE_ID___addressable___mmap_lock_do_trace_acquire_returned390 = internal global ptr @__mmap_lock_do_trace_acquire_returned, section ".discard.addressable", align 8, !dbg !6019
@__UNIQUE_ID___addressable___mmap_lock_do_trace_released391 = internal global ptr @__mmap_lock_do_trace_released, section ".discard.addressable", align 8, !dbg !6021
@.str.1 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1, !dbg !6037
@.str.2 = private unnamed_addr constant [19 x i8] c"struct mm_struct *\00", align 1, !dbg !6040
@.str.3 = private unnamed_addr constant [3 x i8] c"mm\00", align 1, !dbg !6043
@.str.4 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1, !dbg !6046
@.str.5 = private unnamed_addr constant [11 x i8] c"memcg_path\00", align 1, !dbg !6051
@.str.6 = private unnamed_addr constant [5 x i8] c"bool\00", align 1, !dbg !6056
@.str.7 = private unnamed_addr constant [6 x i8] c"write\00", align 1, !dbg !6059
@.str.8 = private unnamed_addr constant [30 x i8] c"mm=%p memcg_path=%s write=%s\0A\00", align 1, !dbg !6066
@.str.9 = private unnamed_addr constant [5 x i8] c"true\00", align 1, !dbg !6071
@.str.10 = private unnamed_addr constant [6 x i8] c"false\00", align 1, !dbg !6073
@.str.11 = private unnamed_addr constant [8 x i8] c"success\00", align 1, !dbg !6080
@.str.12 = private unnamed_addr constant [41 x i8] c"mm=%p memcg_path=%s write=%s success=%s\0A\00", align 1, !dbg !6087
@this_cpu_off = external dso_local global i64, section ".data..percpu..read_mostly", align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.13 = private unnamed_addr constant [33 x i8] c"include/trace/events/mmap_lock.h\00", align 1, !dbg !6097
@trace_mmap_lock_start_locking.__UNIQUE_ID___addressable___SCK__tp_func_mmap_lock_start_locking205 = internal global ptr @__SCK__tp_func_mmap_lock_start_locking, section ".discard.addressable", align 8, !dbg !6102
@trace_mmap_lock_start_locking.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace206 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !6132
@__SCK__preempt_schedule_notrace = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@trace_mmap_lock_acquire_returned.__UNIQUE_ID___addressable___SCK__tp_func_mmap_lock_acquire_returned221 = internal global ptr @__SCK__tp_func_mmap_lock_acquire_returned, section ".discard.addressable", align 8, !dbg !6134
@trace_mmap_lock_acquire_returned.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace222 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !6165
@trace_mmap_lock_released.__UNIQUE_ID___addressable___SCK__tp_func_mmap_lock_released213 = internal global ptr @__SCK__tp_func_mmap_lock_released, section ".discard.addressable", align 8, !dbg !6167
@trace_mmap_lock_released.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace214 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !6195
@llvm.compiler.used = appending global [32 x ptr] [ptr @__tracepoint_mmap_lock_start_locking, ptr @__tracepoint_mmap_lock_released, ptr @__tracepoint_mmap_lock_acquire_returned, ptr @event_class_mmap_lock, ptr @event_mmap_lock_start_locking, ptr @__event_mmap_lock_start_locking, ptr @event_mmap_lock_released, ptr @__event_mmap_lock_released, ptr @event_class_mmap_lock_acquire_returned, ptr @event_mmap_lock_acquire_returned, ptr @__event_mmap_lock_acquire_returned, ptr @__UNIQUE_ID___addressable___tracepoint_mmap_lock_start_locking377, ptr @__UNIQUE_ID___addressable___traceiter_mmap_lock_start_locking378, ptr @__UNIQUE_ID___addressable___SCK__tp_func_mmap_lock_start_locking379, ptr @__UNIQUE_ID___addressable___SCT__tp_func_mmap_lock_start_locking380, ptr @__UNIQUE_ID___addressable___tracepoint_mmap_lock_acquire_returned381, ptr @__UNIQUE_ID___addressable___traceiter_mmap_lock_acquire_returned382, ptr @__UNIQUE_ID___addressable___SCK__tp_func_mmap_lock_acquire_returned383, ptr @__UNIQUE_ID___addressable___SCT__tp_func_mmap_lock_acquire_returned384, ptr @__UNIQUE_ID___addressable___tracepoint_mmap_lock_released385, ptr @__UNIQUE_ID___addressable___traceiter_mmap_lock_released386, ptr @__UNIQUE_ID___addressable___SCK__tp_func_mmap_lock_released387, ptr @__UNIQUE_ID___addressable___SCT__tp_func_mmap_lock_released388, ptr @__UNIQUE_ID___addressable___mmap_lock_do_trace_start_locking389, ptr @__UNIQUE_ID___addressable___mmap_lock_do_trace_acquire_returned390, ptr @__UNIQUE_ID___addressable___mmap_lock_do_trace_released391, ptr @trace_mmap_lock_start_locking.__UNIQUE_ID___addressable___SCK__tp_func_mmap_lock_start_locking205, ptr @trace_mmap_lock_start_locking.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace206, ptr @trace_mmap_lock_acquire_returned.__UNIQUE_ID___addressable___SCK__tp_func_mmap_lock_acquire_returned221, ptr @trace_mmap_lock_acquire_returned.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace222, ptr @trace_mmap_lock_released.__UNIQUE_ID___addressable___SCK__tp_func_mmap_lock_released213, ptr @trace_mmap_lock_released.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace214], section "llvm.metadata"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_mmap_lock_start_locking(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__traceiter_mmap_lock_start_locking(ptr noundef %__data, ptr noundef %mm, ptr noundef %memcg_path, i1 noundef zeroext %write) #1 align 16 !dbg !6210 {
entry:
  %__data.addr = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %memcg_path.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  %it_func_ptr = alloca ptr, align 8
  %it_func = alloca ptr, align 8
  %__UNIQUE_ID_rcu227 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6214, metadata !DIExpression()), !dbg !6222
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6215, metadata !DIExpression()), !dbg !6222
  store ptr %memcg_path, ptr %memcg_path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memcg_path.addr, metadata !6216, metadata !DIExpression()), !dbg !6222
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6217, metadata !DIExpression()), !dbg !6222
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #11, !dbg !6222
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !6218, metadata !DIExpression()), !dbg !6222
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func) #11, !dbg !6222
  call void @llvm.dbg.declare(metadata ptr %it_func, metadata !6219, metadata !DIExpression()), !dbg !6222
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu227) #11, !dbg !6223
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu227, metadata !6220, metadata !DIExpression()), !dbg !6223
  br label %do.body, !dbg !6224

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6226

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6226

do.end:                                           ; preds = %do.cond
  %0 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 8), align 8, !dbg !6224
  store ptr %0, ptr %tmp, align 8, !dbg !6226
  %1 = load ptr, ptr %tmp, align 8, !dbg !6224
  store ptr %1, ptr %__UNIQUE_ID_rcu227, align 8, !dbg !6223
  %2 = load ptr, ptr %__UNIQUE_ID_rcu227, align 8, !dbg !6223
  store ptr %2, ptr %tmp1, align 8, !dbg !6223
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu227) #11, !dbg !6222
  %3 = load ptr, ptr %tmp1, align 8, !dbg !6223
  store ptr %3, ptr %it_func_ptr, align 8, !dbg !6222
  %4 = load ptr, ptr %it_func_ptr, align 8, !dbg !6228
  %tobool = icmp ne ptr %4, null, !dbg !6228
  br i1 %tobool, label %if.then, label %if.end, !dbg !6222

if.then:                                          ; preds = %do.end
  br label %do.body2, !dbg !6230

do.body2:                                         ; preds = %do.cond8, %if.then
  br label %do.body3, !dbg !6232

do.body3:                                         ; preds = %do.body2
  br label %do.cond4, !dbg !6235

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !6235

do.end5:                                          ; preds = %do.cond4
  %5 = load ptr, ptr %it_func_ptr, align 8, !dbg !6232
  %func = getelementptr inbounds %struct.tracepoint_func, ptr %5, i32 0, i32 0, !dbg !6232
  %6 = load volatile ptr, ptr %func, align 8, !dbg !6232
  store ptr %6, ptr %tmp6, align 8, !dbg !6235
  %7 = load ptr, ptr %tmp6, align 8, !dbg !6232
  store ptr %7, ptr %it_func, align 8, !dbg !6237
  %8 = load ptr, ptr %it_func_ptr, align 8, !dbg !6237
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1, !dbg !6237
  %9 = load ptr, ptr %data, align 8, !dbg !6237
  store ptr %9, ptr %__data.addr, align 8, !dbg !6237
  %10 = load ptr, ptr %it_func, align 8, !dbg !6237
  %11 = load ptr, ptr %__data.addr, align 8, !dbg !6237
  %12 = load ptr, ptr %mm.addr, align 8, !dbg !6237
  %13 = load ptr, ptr %memcg_path.addr, align 8, !dbg !6237
  %14 = load i8, ptr %write.addr, align 1, !dbg !6237, !range !6238, !noundef !336
  %tobool7 = trunc i8 %14 to i1, !dbg !6237
  call void %10(ptr noundef %11, ptr noundef %12, ptr noundef %13, i1 noundef zeroext %tobool7) #12, !dbg !6237
  br label %do.cond8, !dbg !6237

do.cond8:                                         ; preds = %do.end5
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !6230
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %15, i32 1, !dbg !6230
  store ptr %incdec.ptr, ptr %it_func_ptr, align 8, !dbg !6230
  %func9 = getelementptr inbounds %struct.tracepoint_func, ptr %incdec.ptr, i32 0, i32 0, !dbg !6230
  %16 = load ptr, ptr %func9, align 8, !dbg !6230
  %tobool10 = icmp ne ptr %16, null, !dbg !6237
  br i1 %tobool10, label %do.body2, label %do.end11, !dbg !6237, !llvm.loop !6239

do.end11:                                         ; preds = %do.cond8
  br label %if.end, !dbg !6230

if.end:                                           ; preds = %do.end11, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func) #11, !dbg !6222
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #11, !dbg !6222
  ret i32 0, !dbg !6222
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__probestub_mmap_lock_start_locking(ptr noundef %__data, ptr noundef %mm, ptr noundef %memcg_path, i1 noundef zeroext %write) #1 align 16 !dbg !6242 {
entry:
  %__data.addr = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %memcg_path.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6244, metadata !DIExpression()), !dbg !6248
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6245, metadata !DIExpression()), !dbg !6248
  store ptr %memcg_path, ptr %memcg_path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memcg_path.addr, metadata !6246, metadata !DIExpression()), !dbg !6248
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6247, metadata !DIExpression()), !dbg !6248
  ret void, !dbg !6248
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @trace_mmap_lock_reg() #1 align 16 !dbg !6249 {
entry:
  ret i32 0, !dbg !6250
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @trace_mmap_lock_unreg() #1 align 16 !dbg !6251 {
entry:
  ret void, !dbg !6252
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_mmap_lock_released(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__traceiter_mmap_lock_released(ptr noundef %__data, ptr noundef %mm, ptr noundef %memcg_path, i1 noundef zeroext %write) #1 align 16 !dbg !6253 {
entry:
  %__data.addr = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %memcg_path.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  %it_func_ptr = alloca ptr, align 8
  %it_func = alloca ptr, align 8
  %__UNIQUE_ID_rcu230 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6255, metadata !DIExpression()), !dbg !6263
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6256, metadata !DIExpression()), !dbg !6263
  store ptr %memcg_path, ptr %memcg_path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memcg_path.addr, metadata !6257, metadata !DIExpression()), !dbg !6263
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6258, metadata !DIExpression()), !dbg !6263
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #11, !dbg !6263
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !6259, metadata !DIExpression()), !dbg !6263
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func) #11, !dbg !6263
  call void @llvm.dbg.declare(metadata ptr %it_func, metadata !6260, metadata !DIExpression()), !dbg !6263
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu230) #11, !dbg !6264
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu230, metadata !6261, metadata !DIExpression()), !dbg !6264
  br label %do.body, !dbg !6265

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6267

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6267

do.end:                                           ; preds = %do.cond
  %0 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 8), align 8, !dbg !6265
  store ptr %0, ptr %tmp, align 8, !dbg !6267
  %1 = load ptr, ptr %tmp, align 8, !dbg !6265
  store ptr %1, ptr %__UNIQUE_ID_rcu230, align 8, !dbg !6264
  %2 = load ptr, ptr %__UNIQUE_ID_rcu230, align 8, !dbg !6264
  store ptr %2, ptr %tmp1, align 8, !dbg !6264
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu230) #11, !dbg !6263
  %3 = load ptr, ptr %tmp1, align 8, !dbg !6264
  store ptr %3, ptr %it_func_ptr, align 8, !dbg !6263
  %4 = load ptr, ptr %it_func_ptr, align 8, !dbg !6269
  %tobool = icmp ne ptr %4, null, !dbg !6269
  br i1 %tobool, label %if.then, label %if.end, !dbg !6263

if.then:                                          ; preds = %do.end
  br label %do.body2, !dbg !6271

do.body2:                                         ; preds = %do.cond8, %if.then
  br label %do.body3, !dbg !6273

do.body3:                                         ; preds = %do.body2
  br label %do.cond4, !dbg !6276

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !6276

do.end5:                                          ; preds = %do.cond4
  %5 = load ptr, ptr %it_func_ptr, align 8, !dbg !6273
  %func = getelementptr inbounds %struct.tracepoint_func, ptr %5, i32 0, i32 0, !dbg !6273
  %6 = load volatile ptr, ptr %func, align 8, !dbg !6273
  store ptr %6, ptr %tmp6, align 8, !dbg !6276
  %7 = load ptr, ptr %tmp6, align 8, !dbg !6273
  store ptr %7, ptr %it_func, align 8, !dbg !6278
  %8 = load ptr, ptr %it_func_ptr, align 8, !dbg !6278
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1, !dbg !6278
  %9 = load ptr, ptr %data, align 8, !dbg !6278
  store ptr %9, ptr %__data.addr, align 8, !dbg !6278
  %10 = load ptr, ptr %it_func, align 8, !dbg !6278
  %11 = load ptr, ptr %__data.addr, align 8, !dbg !6278
  %12 = load ptr, ptr %mm.addr, align 8, !dbg !6278
  %13 = load ptr, ptr %memcg_path.addr, align 8, !dbg !6278
  %14 = load i8, ptr %write.addr, align 1, !dbg !6278, !range !6238, !noundef !336
  %tobool7 = trunc i8 %14 to i1, !dbg !6278
  call void %10(ptr noundef %11, ptr noundef %12, ptr noundef %13, i1 noundef zeroext %tobool7) #12, !dbg !6278
  br label %do.cond8, !dbg !6278

do.cond8:                                         ; preds = %do.end5
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !6271
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %15, i32 1, !dbg !6271
  store ptr %incdec.ptr, ptr %it_func_ptr, align 8, !dbg !6271
  %func9 = getelementptr inbounds %struct.tracepoint_func, ptr %incdec.ptr, i32 0, i32 0, !dbg !6271
  %16 = load ptr, ptr %func9, align 8, !dbg !6271
  %tobool10 = icmp ne ptr %16, null, !dbg !6278
  br i1 %tobool10, label %do.body2, label %do.end11, !dbg !6278, !llvm.loop !6279

do.end11:                                         ; preds = %do.cond8
  br label %if.end, !dbg !6271

if.end:                                           ; preds = %do.end11, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func) #11, !dbg !6263
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #11, !dbg !6263
  ret i32 0, !dbg !6263
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__probestub_mmap_lock_released(ptr noundef %__data, ptr noundef %mm, ptr noundef %memcg_path, i1 noundef zeroext %write) #1 align 16 !dbg !6280 {
entry:
  %__data.addr = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %memcg_path.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6282, metadata !DIExpression()), !dbg !6286
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6283, metadata !DIExpression()), !dbg !6286
  store ptr %memcg_path, ptr %memcg_path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memcg_path.addr, metadata !6284, metadata !DIExpression()), !dbg !6286
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6285, metadata !DIExpression()), !dbg !6286
  ret void, !dbg !6286
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_mmap_lock_acquire_returned(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__traceiter_mmap_lock_acquire_returned(ptr noundef %__data, ptr noundef %mm, ptr noundef %memcg_path, i1 noundef zeroext %write, i1 noundef zeroext %success) #1 align 16 !dbg !6287 {
entry:
  %__data.addr = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %memcg_path.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  %success.addr = alloca i8, align 1
  %it_func_ptr = alloca ptr, align 8
  %it_func = alloca ptr, align 8
  %__UNIQUE_ID_rcu233 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6291, metadata !DIExpression()), !dbg !6300
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6292, metadata !DIExpression()), !dbg !6300
  store ptr %memcg_path, ptr %memcg_path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memcg_path.addr, metadata !6293, metadata !DIExpression()), !dbg !6300
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6294, metadata !DIExpression()), !dbg !6300
  %frombool1 = zext i1 %success to i8
  store i8 %frombool1, ptr %success.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %success.addr, metadata !6295, metadata !DIExpression()), !dbg !6300
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #11, !dbg !6300
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !6296, metadata !DIExpression()), !dbg !6300
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func) #11, !dbg !6300
  call void @llvm.dbg.declare(metadata ptr %it_func, metadata !6297, metadata !DIExpression()), !dbg !6300
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu233) #11, !dbg !6301
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu233, metadata !6298, metadata !DIExpression()), !dbg !6301
  br label %do.body, !dbg !6302

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6304

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6304

do.end:                                           ; preds = %do.cond
  %0 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 8), align 8, !dbg !6302
  store ptr %0, ptr %tmp, align 8, !dbg !6304
  %1 = load ptr, ptr %tmp, align 8, !dbg !6302
  store ptr %1, ptr %__UNIQUE_ID_rcu233, align 8, !dbg !6301
  %2 = load ptr, ptr %__UNIQUE_ID_rcu233, align 8, !dbg !6301
  store ptr %2, ptr %tmp2, align 8, !dbg !6301
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu233) #11, !dbg !6300
  %3 = load ptr, ptr %tmp2, align 8, !dbg !6301
  store ptr %3, ptr %it_func_ptr, align 8, !dbg !6300
  %4 = load ptr, ptr %it_func_ptr, align 8, !dbg !6306
  %tobool = icmp ne ptr %4, null, !dbg !6306
  br i1 %tobool, label %if.then, label %if.end, !dbg !6300

if.then:                                          ; preds = %do.end
  br label %do.body3, !dbg !6308

do.body3:                                         ; preds = %do.cond10, %if.then
  br label %do.body4, !dbg !6310

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !6313

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6313

do.end6:                                          ; preds = %do.cond5
  %5 = load ptr, ptr %it_func_ptr, align 8, !dbg !6310
  %func = getelementptr inbounds %struct.tracepoint_func, ptr %5, i32 0, i32 0, !dbg !6310
  %6 = load volatile ptr, ptr %func, align 8, !dbg !6310
  store ptr %6, ptr %tmp7, align 8, !dbg !6313
  %7 = load ptr, ptr %tmp7, align 8, !dbg !6310
  store ptr %7, ptr %it_func, align 8, !dbg !6315
  %8 = load ptr, ptr %it_func_ptr, align 8, !dbg !6315
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1, !dbg !6315
  %9 = load ptr, ptr %data, align 8, !dbg !6315
  store ptr %9, ptr %__data.addr, align 8, !dbg !6315
  %10 = load ptr, ptr %it_func, align 8, !dbg !6315
  %11 = load ptr, ptr %__data.addr, align 8, !dbg !6315
  %12 = load ptr, ptr %mm.addr, align 8, !dbg !6315
  %13 = load ptr, ptr %memcg_path.addr, align 8, !dbg !6315
  %14 = load i8, ptr %write.addr, align 1, !dbg !6315, !range !6238, !noundef !336
  %tobool8 = trunc i8 %14 to i1, !dbg !6315
  %15 = load i8, ptr %success.addr, align 1, !dbg !6315, !range !6238, !noundef !336
  %tobool9 = trunc i8 %15 to i1, !dbg !6315
  call void %10(ptr noundef %11, ptr noundef %12, ptr noundef %13, i1 noundef zeroext %tobool8, i1 noundef zeroext %tobool9) #12, !dbg !6315
  br label %do.cond10, !dbg !6315

do.cond10:                                        ; preds = %do.end6
  %16 = load ptr, ptr %it_func_ptr, align 8, !dbg !6308
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %16, i32 1, !dbg !6308
  store ptr %incdec.ptr, ptr %it_func_ptr, align 8, !dbg !6308
  %func11 = getelementptr inbounds %struct.tracepoint_func, ptr %incdec.ptr, i32 0, i32 0, !dbg !6308
  %17 = load ptr, ptr %func11, align 8, !dbg !6308
  %tobool12 = icmp ne ptr %17, null, !dbg !6315
  br i1 %tobool12, label %do.body3, label %do.end13, !dbg !6315, !llvm.loop !6316

do.end13:                                         ; preds = %do.cond10
  br label %if.end, !dbg !6308

if.end:                                           ; preds = %do.end13, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func) #11, !dbg !6300
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #11, !dbg !6300
  ret i32 0, !dbg !6300
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__probestub_mmap_lock_acquire_returned(ptr noundef %__data, ptr noundef %mm, ptr noundef %memcg_path, i1 noundef zeroext %write, i1 noundef zeroext %success) #1 align 16 !dbg !6317 {
entry:
  %__data.addr = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %memcg_path.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  %success.addr = alloca i8, align 1
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6319, metadata !DIExpression()), !dbg !6324
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6320, metadata !DIExpression()), !dbg !6324
  store ptr %memcg_path, ptr %memcg_path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memcg_path.addr, metadata !6321, metadata !DIExpression()), !dbg !6324
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6322, metadata !DIExpression()), !dbg !6324
  %frombool1 = zext i1 %success to i8
  store i8 %frombool1, ptr %success.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %success.addr, metadata !6323, metadata !DIExpression()), !dbg !6324
  ret void, !dbg !6324
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_event_raw_event_mmap_lock(ptr noundef %__data, ptr noundef %mm, ptr noundef %memcg_path, i1 noundef zeroext %write) #1 align 16 !dbg !6325 {
entry:
  %__data.addr = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %memcg_path.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6327, metadata !DIExpression()), !dbg !6331
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6328, metadata !DIExpression()), !dbg !6331
  store ptr %memcg_path, ptr %memcg_path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memcg_path.addr, metadata !6329, metadata !DIExpression()), !dbg !6331
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6330, metadata !DIExpression()), !dbg !6331
  %0 = load ptr, ptr %__data.addr, align 8, !dbg !6331
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !6331
  %2 = load ptr, ptr %memcg_path.addr, align 8, !dbg !6331
  %3 = load i8, ptr %write.addr, align 1, !dbg !6331, !range !6238, !noundef !336
  %tobool = trunc i8 %3 to i1, !dbg !6331
  call void @do_trace_event_raw_event_mmap_lock(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %tobool) #12, !dbg !6331
  ret void, !dbg !6331
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @perf_trace_mmap_lock(ptr noundef %__data, ptr noundef %mm, ptr noundef %memcg_path, i1 noundef zeroext %write) #1 align 16 !dbg !6332 {
entry:
  %__data.addr = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %memcg_path.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  %event_call = alloca ptr, align 8
  %__data_offsets = alloca %struct.trace_event_data_offsets_mmap_lock, align 4
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
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6334, metadata !DIExpression()), !dbg !6356
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6335, metadata !DIExpression()), !dbg !6356
  store ptr %memcg_path, ptr %memcg_path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memcg_path.addr, metadata !6336, metadata !DIExpression()), !dbg !6356
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6337, metadata !DIExpression()), !dbg !6356
  call void @llvm.lifetime.start.p0(i64 8, ptr %event_call) #11, !dbg !6356
  call void @llvm.dbg.declare(metadata ptr %event_call, metadata !6338, metadata !DIExpression()), !dbg !6356
  %0 = load ptr, ptr %__data.addr, align 8, !dbg !6356
  store ptr %0, ptr %event_call, align 8, !dbg !6356
  call void @llvm.lifetime.start.p0(i64 4, ptr %__data_offsets) #11, !dbg !6356
  call void @llvm.dbg.declare(metadata ptr %__data_offsets, metadata !6339, metadata !DIExpression()), !dbg !6356
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #11, !dbg !6356
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !6343, metadata !DIExpression()), !dbg !6356
  call void @llvm.lifetime.start.p0(i64 8, ptr %__regs) #11, !dbg !6356
  call void @llvm.dbg.declare(metadata ptr %__regs, metadata !6344, metadata !DIExpression()), !dbg !6356
  call void @llvm.lifetime.start.p0(i64 8, ptr %__count) #11, !dbg !6356
  call void @llvm.dbg.declare(metadata ptr %__count, metadata !6345, metadata !DIExpression()), !dbg !6356
  store i64 1, ptr %__count, align 8, !dbg !6356
  call void @llvm.lifetime.start.p0(i64 8, ptr %__task) #11, !dbg !6356
  call void @llvm.dbg.declare(metadata ptr %__task, metadata !6346, metadata !DIExpression()), !dbg !6356
  store ptr null, ptr %__task, align 8, !dbg !6356
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #11, !dbg !6356
  call void @llvm.dbg.declare(metadata ptr %head, metadata !6347, metadata !DIExpression()), !dbg !6356
  call void @llvm.lifetime.start.p0(i64 4, ptr %__entry_size) #11, !dbg !6356
  call void @llvm.dbg.declare(metadata ptr %__entry_size, metadata !6348, metadata !DIExpression()), !dbg !6356
  call void @llvm.lifetime.start.p0(i64 4, ptr %__data_size) #11, !dbg !6356
  call void @llvm.dbg.declare(metadata ptr %__data_size, metadata !6349, metadata !DIExpression()), !dbg !6356
  call void @llvm.lifetime.start.p0(i64 4, ptr %rctx) #11, !dbg !6356
  call void @llvm.dbg.declare(metadata ptr %rctx, metadata !6350, metadata !DIExpression()), !dbg !6356
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !6356
  %2 = load ptr, ptr %memcg_path.addr, align 8, !dbg !6356
  %3 = load i8, ptr %write.addr, align 1, !dbg !6356, !range !6238, !noundef !336
  %tobool = trunc i8 %3 to i1, !dbg !6356
  %call = call i32 @trace_event_get_offsets_mmap_lock(ptr noundef %__data_offsets, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %tobool) #12, !dbg !6356
  store i32 %call, ptr %__data_size, align 4, !dbg !6356
  br label %do.body, !dbg !6357

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !6358
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6351, metadata !DIExpression()), !dbg !6358
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6358
  %4 = load ptr, ptr %__vpp_verify, align 8, !dbg !6358
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !6357
  br label %do.cond, !dbg !6358

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6358

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #11, !dbg !6359
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !6354, metadata !DIExpression()), !dbg !6359
  %5 = load ptr, ptr %event_call, align 8, !dbg !6359
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %5, i32 0, i32 10, !dbg !6359
  %6 = load ptr, ptr %perf_events, align 8, !dbg !6359
  %7 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr %6) #13, !dbg !6359, !srcloc !6360
  store i64 %7, ptr %tcp_ptr__, align 8, !dbg !6359
  %8 = load i64, ptr %tcp_ptr__, align 8, !dbg !6359
  %9 = inttoptr i64 %8 to ptr, !dbg !6359
  store ptr %9, ptr %tmp2, align 8, !dbg !6359
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #11, !dbg !6357
  %10 = load ptr, ptr %tmp2, align 8, !dbg !6359
  store ptr %10, ptr %tmp, align 8, !dbg !6358
  %11 = load ptr, ptr %tmp, align 8, !dbg !6357
  store ptr %11, ptr %head, align 8, !dbg !6356
  %12 = load ptr, ptr %event_call, align 8, !dbg !6361
  %call3 = call zeroext i1 @bpf_prog_array_valid(ptr noundef %12) #12, !dbg !6361
  br i1 %call3, label %if.end, label %land.lhs.true, !dbg !6361

land.lhs.true:                                    ; preds = %do.end
  %13 = load ptr, ptr %__task, align 8, !dbg !6361
  %tobool4 = icmp ne ptr %13, null, !dbg !6361
  %lnot = xor i1 %tobool4, true, !dbg !6361
  %lnot.ext = zext i1 %lnot to i32, !dbg !6361
  %14 = call i1 @llvm.is.constant.i32(i32 %lnot.ext), !dbg !6361
  br i1 %14, label %land.lhs.true5, label %if.end, !dbg !6361

land.lhs.true5:                                   ; preds = %land.lhs.true
  %15 = load ptr, ptr %__task, align 8, !dbg !6361
  %tobool6 = icmp ne ptr %15, null, !dbg !6361
  br i1 %tobool6, label %if.end, label %land.lhs.true7, !dbg !6361

land.lhs.true7:                                   ; preds = %land.lhs.true5
  %16 = load ptr, ptr %head, align 8, !dbg !6361
  %call8 = call i32 @hlist_empty(ptr noundef %16) #12, !dbg !6361
  %tobool9 = icmp ne i32 %call8, 0, !dbg !6361
  br i1 %tobool9, label %if.then, label %if.end, !dbg !6356

if.then:                                          ; preds = %land.lhs.true7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6361

if.end:                                           ; preds = %land.lhs.true7, %land.lhs.true5, %land.lhs.true, %do.end
  %17 = load i32, ptr %__data_size, align 4, !dbg !6356
  %conv = sext i32 %17 to i64, !dbg !6356
  %add = add i64 %conv, 24, !dbg !6356
  %add10 = add i64 %add, 4, !dbg !6356
  %add11 = add i64 %add10, 7, !dbg !6356
  %and = and i64 %add11, -8, !dbg !6356
  %conv12 = trunc i64 %and to i32, !dbg !6356
  store i32 %conv12, ptr %__entry_size, align 4, !dbg !6356
  %18 = load i32, ptr %__entry_size, align 4, !dbg !6356
  %conv13 = sext i32 %18 to i64, !dbg !6356
  %sub = sub i64 %conv13, 4, !dbg !6356
  %conv14 = trunc i64 %sub to i32, !dbg !6356
  store i32 %conv14, ptr %__entry_size, align 4, !dbg !6356
  %19 = load i32, ptr %__entry_size, align 4, !dbg !6356
  %call15 = call ptr @perf_trace_buf_alloc(i32 noundef %19, ptr noundef %__regs, ptr noundef %rctx) #12, !dbg !6356
  store ptr %call15, ptr %entry1, align 8, !dbg !6356
  %20 = load ptr, ptr %entry1, align 8, !dbg !6363
  %tobool16 = icmp ne ptr %20, null, !dbg !6363
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !6356

if.then17:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6363

if.end18:                                         ; preds = %if.end
  %21 = load ptr, ptr %__regs, align 8, !dbg !6356
  call void @perf_fetch_caller_regs(ptr noundef %21) #12, !dbg !6356
  %memcg_path19 = getelementptr inbounds %struct.trace_event_data_offsets_mmap_lock, ptr %__data_offsets, i32 0, i32 0, !dbg !6356
  %22 = load i32, ptr %memcg_path19, align 4, !dbg !6356
  %23 = load ptr, ptr %entry1, align 8, !dbg !6356
  %__data_loc_memcg_path = getelementptr inbounds %struct.trace_event_raw_mmap_lock, ptr %23, i32 0, i32 2, !dbg !6356
  store i32 %22, ptr %__data_loc_memcg_path, align 8, !dbg !6356
  %24 = load ptr, ptr %mm.addr, align 8, !dbg !6365
  %25 = load ptr, ptr %entry1, align 8, !dbg !6365
  %mm20 = getelementptr inbounds %struct.trace_event_raw_mmap_lock, ptr %25, i32 0, i32 1, !dbg !6365
  store ptr %24, ptr %mm20, align 8, !dbg !6365
  %26 = load ptr, ptr %entry1, align 8, !dbg !6365
  %27 = load ptr, ptr %entry1, align 8, !dbg !6365
  %__data_loc_memcg_path21 = getelementptr inbounds %struct.trace_event_raw_mmap_lock, ptr %27, i32 0, i32 2, !dbg !6365
  %28 = load i32, ptr %__data_loc_memcg_path21, align 8, !dbg !6365
  %and22 = and i32 %28, 65535, !dbg !6365
  %idx.ext = zext i32 %and22 to i64, !dbg !6365
  %add.ptr = getelementptr i8, ptr %26, i64 %idx.ext, !dbg !6365
  %29 = load ptr, ptr %memcg_path.addr, align 8, !dbg !6365
  %tobool23 = icmp ne ptr %29, null, !dbg !6365
  br i1 %tobool23, label %cond.true, label %cond.false, !dbg !6365

cond.true:                                        ; preds = %if.end18
  %30 = load ptr, ptr %memcg_path.addr, align 8, !dbg !6365
  br label %cond.end, !dbg !6365

cond.false:                                       ; preds = %if.end18
  br label %cond.end, !dbg !6365

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %30, %cond.true ], [ @.str.1, %cond.false ], !dbg !6365
  %call24 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #12, !dbg !6365
  %31 = load i8, ptr %write.addr, align 1, !dbg !6365, !range !6238, !noundef !336
  %tobool25 = trunc i8 %31 to i1, !dbg !6365
  %32 = load ptr, ptr %entry1, align 8, !dbg !6365
  %write26 = getelementptr inbounds %struct.trace_event_raw_mmap_lock, ptr %32, i32 0, i32 3, !dbg !6365
  %frombool27 = zext i1 %tobool25 to i8, !dbg !6365
  store i8 %frombool27, ptr %write26, align 4, !dbg !6365
  %33 = load ptr, ptr %entry1, align 8, !dbg !6356
  %34 = load i32, ptr %__entry_size, align 4, !dbg !6356
  %35 = load i32, ptr %rctx, align 4, !dbg !6356
  %36 = load ptr, ptr %event_call, align 8, !dbg !6356
  %37 = load i64, ptr %__count, align 8, !dbg !6356
  %38 = load ptr, ptr %__regs, align 8, !dbg !6356
  %39 = load ptr, ptr %head, align 8, !dbg !6356
  %40 = load ptr, ptr %__task, align 8, !dbg !6356
  call void @perf_trace_run_bpf_submit(ptr noundef %33, i32 noundef %34, i32 noundef %35, ptr noundef %36, i64 noundef %37, ptr noundef %38, ptr noundef %39, ptr noundef %40) #12, !dbg !6356
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6356
  br label %cleanup, !dbg !6356

cleanup:                                          ; preds = %cond.end, %if.then17, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rctx) #11, !dbg !6356
  call void @llvm.lifetime.end.p0(i64 4, ptr %__data_size) #11, !dbg !6356
  call void @llvm.lifetime.end.p0(i64 4, ptr %__entry_size) #11, !dbg !6356
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #11, !dbg !6356
  call void @llvm.lifetime.end.p0(i64 8, ptr %__task) #11, !dbg !6356
  call void @llvm.lifetime.end.p0(i64 8, ptr %__count) #11, !dbg !6356
  call void @llvm.lifetime.end.p0(i64 8, ptr %__regs) #11, !dbg !6356
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #11, !dbg !6356
  call void @llvm.lifetime.end.p0(i64 4, ptr %__data_offsets) #11, !dbg !6356
  call void @llvm.lifetime.end.p0(i64 8, ptr %event_call) #11, !dbg !6356
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6356

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_event_raw_event_mmap_lock_acquire_returned(ptr noundef %__data, ptr noundef %mm, ptr noundef %memcg_path, i1 noundef zeroext %write, i1 noundef zeroext %success) #1 align 16 !dbg !6367 {
entry:
  %__data.addr = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %memcg_path.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  %success.addr = alloca i8, align 1
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6369, metadata !DIExpression()), !dbg !6374
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6370, metadata !DIExpression()), !dbg !6374
  store ptr %memcg_path, ptr %memcg_path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memcg_path.addr, metadata !6371, metadata !DIExpression()), !dbg !6374
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6372, metadata !DIExpression()), !dbg !6374
  %frombool1 = zext i1 %success to i8
  store i8 %frombool1, ptr %success.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %success.addr, metadata !6373, metadata !DIExpression()), !dbg !6374
  %0 = load ptr, ptr %__data.addr, align 8, !dbg !6374
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !6374
  %2 = load ptr, ptr %memcg_path.addr, align 8, !dbg !6374
  %3 = load i8, ptr %write.addr, align 1, !dbg !6374, !range !6238, !noundef !336
  %tobool = trunc i8 %3 to i1, !dbg !6374
  %4 = load i8, ptr %success.addr, align 1, !dbg !6374, !range !6238, !noundef !336
  %tobool2 = trunc i8 %4 to i1, !dbg !6374
  call void @do_trace_event_raw_event_mmap_lock_acquire_returned(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %tobool, i1 noundef zeroext %tobool2) #12, !dbg !6374
  ret void, !dbg !6374
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @perf_trace_mmap_lock_acquire_returned(ptr noundef %__data, ptr noundef %mm, ptr noundef %memcg_path, i1 noundef zeroext %write, i1 noundef zeroext %success) #1 align 16 !dbg !6375 {
entry:
  %__data.addr = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %memcg_path.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  %success.addr = alloca i8, align 1
  %event_call = alloca ptr, align 8
  %__data_offsets = alloca %struct.trace_event_data_offsets_mmap_lock_acquire_returned, align 4
  %entry2 = alloca ptr, align 8
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
  %tmp4 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6377, metadata !DIExpression()), !dbg !6400
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6378, metadata !DIExpression()), !dbg !6400
  store ptr %memcg_path, ptr %memcg_path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memcg_path.addr, metadata !6379, metadata !DIExpression()), !dbg !6400
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6380, metadata !DIExpression()), !dbg !6400
  %frombool1 = zext i1 %success to i8
  store i8 %frombool1, ptr %success.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %success.addr, metadata !6381, metadata !DIExpression()), !dbg !6400
  call void @llvm.lifetime.start.p0(i64 8, ptr %event_call) #11, !dbg !6400
  call void @llvm.dbg.declare(metadata ptr %event_call, metadata !6382, metadata !DIExpression()), !dbg !6400
  %0 = load ptr, ptr %__data.addr, align 8, !dbg !6400
  store ptr %0, ptr %event_call, align 8, !dbg !6400
  call void @llvm.lifetime.start.p0(i64 4, ptr %__data_offsets) #11, !dbg !6400
  call void @llvm.dbg.declare(metadata ptr %__data_offsets, metadata !6383, metadata !DIExpression()), !dbg !6400
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry2) #11, !dbg !6400
  call void @llvm.dbg.declare(metadata ptr %entry2, metadata !6387, metadata !DIExpression()), !dbg !6400
  call void @llvm.lifetime.start.p0(i64 8, ptr %__regs) #11, !dbg !6400
  call void @llvm.dbg.declare(metadata ptr %__regs, metadata !6388, metadata !DIExpression()), !dbg !6400
  call void @llvm.lifetime.start.p0(i64 8, ptr %__count) #11, !dbg !6400
  call void @llvm.dbg.declare(metadata ptr %__count, metadata !6389, metadata !DIExpression()), !dbg !6400
  store i64 1, ptr %__count, align 8, !dbg !6400
  call void @llvm.lifetime.start.p0(i64 8, ptr %__task) #11, !dbg !6400
  call void @llvm.dbg.declare(metadata ptr %__task, metadata !6390, metadata !DIExpression()), !dbg !6400
  store ptr null, ptr %__task, align 8, !dbg !6400
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #11, !dbg !6400
  call void @llvm.dbg.declare(metadata ptr %head, metadata !6391, metadata !DIExpression()), !dbg !6400
  call void @llvm.lifetime.start.p0(i64 4, ptr %__entry_size) #11, !dbg !6400
  call void @llvm.dbg.declare(metadata ptr %__entry_size, metadata !6392, metadata !DIExpression()), !dbg !6400
  call void @llvm.lifetime.start.p0(i64 4, ptr %__data_size) #11, !dbg !6400
  call void @llvm.dbg.declare(metadata ptr %__data_size, metadata !6393, metadata !DIExpression()), !dbg !6400
  call void @llvm.lifetime.start.p0(i64 4, ptr %rctx) #11, !dbg !6400
  call void @llvm.dbg.declare(metadata ptr %rctx, metadata !6394, metadata !DIExpression()), !dbg !6400
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !6400
  %2 = load ptr, ptr %memcg_path.addr, align 8, !dbg !6400
  %3 = load i8, ptr %write.addr, align 1, !dbg !6400, !range !6238, !noundef !336
  %tobool = trunc i8 %3 to i1, !dbg !6400
  %4 = load i8, ptr %success.addr, align 1, !dbg !6400, !range !6238, !noundef !336
  %tobool3 = trunc i8 %4 to i1, !dbg !6400
  %call = call i32 @trace_event_get_offsets_mmap_lock_acquire_returned(ptr noundef %__data_offsets, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %tobool, i1 noundef zeroext %tobool3) #12, !dbg !6400
  store i32 %call, ptr %__data_size, align 4, !dbg !6400
  br label %do.body, !dbg !6401

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !6402
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6395, metadata !DIExpression()), !dbg !6402
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6402
  %5 = load ptr, ptr %__vpp_verify, align 8, !dbg !6402
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !6401
  br label %do.cond, !dbg !6402

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6402

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #11, !dbg !6403
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !6398, metadata !DIExpression()), !dbg !6403
  %6 = load ptr, ptr %event_call, align 8, !dbg !6403
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %6, i32 0, i32 10, !dbg !6403
  %7 = load ptr, ptr %perf_events, align 8, !dbg !6403
  %8 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr %7) #13, !dbg !6403, !srcloc !6404
  store i64 %8, ptr %tcp_ptr__, align 8, !dbg !6403
  %9 = load i64, ptr %tcp_ptr__, align 8, !dbg !6403
  %10 = inttoptr i64 %9 to ptr, !dbg !6403
  store ptr %10, ptr %tmp4, align 8, !dbg !6403
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #11, !dbg !6401
  %11 = load ptr, ptr %tmp4, align 8, !dbg !6403
  store ptr %11, ptr %tmp, align 8, !dbg !6402
  %12 = load ptr, ptr %tmp, align 8, !dbg !6401
  store ptr %12, ptr %head, align 8, !dbg !6400
  %13 = load ptr, ptr %event_call, align 8, !dbg !6405
  %call5 = call zeroext i1 @bpf_prog_array_valid(ptr noundef %13) #12, !dbg !6405
  br i1 %call5, label %if.end, label %land.lhs.true, !dbg !6405

land.lhs.true:                                    ; preds = %do.end
  %14 = load ptr, ptr %__task, align 8, !dbg !6405
  %tobool6 = icmp ne ptr %14, null, !dbg !6405
  %lnot = xor i1 %tobool6, true, !dbg !6405
  %lnot.ext = zext i1 %lnot to i32, !dbg !6405
  %15 = call i1 @llvm.is.constant.i32(i32 %lnot.ext), !dbg !6405
  br i1 %15, label %land.lhs.true7, label %if.end, !dbg !6405

land.lhs.true7:                                   ; preds = %land.lhs.true
  %16 = load ptr, ptr %__task, align 8, !dbg !6405
  %tobool8 = icmp ne ptr %16, null, !dbg !6405
  br i1 %tobool8, label %if.end, label %land.lhs.true9, !dbg !6405

land.lhs.true9:                                   ; preds = %land.lhs.true7
  %17 = load ptr, ptr %head, align 8, !dbg !6405
  %call10 = call i32 @hlist_empty(ptr noundef %17) #12, !dbg !6405
  %tobool11 = icmp ne i32 %call10, 0, !dbg !6405
  br i1 %tobool11, label %if.then, label %if.end, !dbg !6400

if.then:                                          ; preds = %land.lhs.true9
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6405

if.end:                                           ; preds = %land.lhs.true9, %land.lhs.true7, %land.lhs.true, %do.end
  %18 = load i32, ptr %__data_size, align 4, !dbg !6400
  %conv = sext i32 %18 to i64, !dbg !6400
  %add = add i64 %conv, 24, !dbg !6400
  %add12 = add i64 %add, 4, !dbg !6400
  %add13 = add i64 %add12, 7, !dbg !6400
  %and = and i64 %add13, -8, !dbg !6400
  %conv14 = trunc i64 %and to i32, !dbg !6400
  store i32 %conv14, ptr %__entry_size, align 4, !dbg !6400
  %19 = load i32, ptr %__entry_size, align 4, !dbg !6400
  %conv15 = sext i32 %19 to i64, !dbg !6400
  %sub = sub i64 %conv15, 4, !dbg !6400
  %conv16 = trunc i64 %sub to i32, !dbg !6400
  store i32 %conv16, ptr %__entry_size, align 4, !dbg !6400
  %20 = load i32, ptr %__entry_size, align 4, !dbg !6400
  %call17 = call ptr @perf_trace_buf_alloc(i32 noundef %20, ptr noundef %__regs, ptr noundef %rctx) #12, !dbg !6400
  store ptr %call17, ptr %entry2, align 8, !dbg !6400
  %21 = load ptr, ptr %entry2, align 8, !dbg !6407
  %tobool18 = icmp ne ptr %21, null, !dbg !6407
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !6400

if.then19:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6407

if.end20:                                         ; preds = %if.end
  %22 = load ptr, ptr %__regs, align 8, !dbg !6400
  call void @perf_fetch_caller_regs(ptr noundef %22) #12, !dbg !6400
  %memcg_path21 = getelementptr inbounds %struct.trace_event_data_offsets_mmap_lock_acquire_returned, ptr %__data_offsets, i32 0, i32 0, !dbg !6400
  %23 = load i32, ptr %memcg_path21, align 4, !dbg !6400
  %24 = load ptr, ptr %entry2, align 8, !dbg !6400
  %__data_loc_memcg_path = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %24, i32 0, i32 2, !dbg !6400
  store i32 %23, ptr %__data_loc_memcg_path, align 8, !dbg !6400
  %25 = load ptr, ptr %mm.addr, align 8, !dbg !6409
  %26 = load ptr, ptr %entry2, align 8, !dbg !6409
  %mm22 = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %26, i32 0, i32 1, !dbg !6409
  store ptr %25, ptr %mm22, align 8, !dbg !6409
  %27 = load ptr, ptr %entry2, align 8, !dbg !6409
  %28 = load ptr, ptr %entry2, align 8, !dbg !6409
  %__data_loc_memcg_path23 = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %28, i32 0, i32 2, !dbg !6409
  %29 = load i32, ptr %__data_loc_memcg_path23, align 8, !dbg !6409
  %and24 = and i32 %29, 65535, !dbg !6409
  %idx.ext = zext i32 %and24 to i64, !dbg !6409
  %add.ptr = getelementptr i8, ptr %27, i64 %idx.ext, !dbg !6409
  %30 = load ptr, ptr %memcg_path.addr, align 8, !dbg !6409
  %tobool25 = icmp ne ptr %30, null, !dbg !6409
  br i1 %tobool25, label %cond.true, label %cond.false, !dbg !6409

cond.true:                                        ; preds = %if.end20
  %31 = load ptr, ptr %memcg_path.addr, align 8, !dbg !6409
  br label %cond.end, !dbg !6409

cond.false:                                       ; preds = %if.end20
  br label %cond.end, !dbg !6409

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %31, %cond.true ], [ @.str.1, %cond.false ], !dbg !6409
  %call26 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #12, !dbg !6409
  %32 = load i8, ptr %write.addr, align 1, !dbg !6409, !range !6238, !noundef !336
  %tobool27 = trunc i8 %32 to i1, !dbg !6409
  %33 = load ptr, ptr %entry2, align 8, !dbg !6409
  %write28 = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %33, i32 0, i32 3, !dbg !6409
  %frombool29 = zext i1 %tobool27 to i8, !dbg !6409
  store i8 %frombool29, ptr %write28, align 4, !dbg !6409
  %34 = load i8, ptr %success.addr, align 1, !dbg !6409, !range !6238, !noundef !336
  %tobool30 = trunc i8 %34 to i1, !dbg !6409
  %35 = load ptr, ptr %entry2, align 8, !dbg !6409
  %success31 = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %35, i32 0, i32 4, !dbg !6409
  %frombool32 = zext i1 %tobool30 to i8, !dbg !6409
  store i8 %frombool32, ptr %success31, align 1, !dbg !6409
  %36 = load ptr, ptr %entry2, align 8, !dbg !6400
  %37 = load i32, ptr %__entry_size, align 4, !dbg !6400
  %38 = load i32, ptr %rctx, align 4, !dbg !6400
  %39 = load ptr, ptr %event_call, align 8, !dbg !6400
  %40 = load i64, ptr %__count, align 8, !dbg !6400
  %41 = load ptr, ptr %__regs, align 8, !dbg !6400
  %42 = load ptr, ptr %head, align 8, !dbg !6400
  %43 = load ptr, ptr %__task, align 8, !dbg !6400
  call void @perf_trace_run_bpf_submit(ptr noundef %36, i32 noundef %37, i32 noundef %38, ptr noundef %39, i64 noundef %40, ptr noundef %41, ptr noundef %42, ptr noundef %43) #12, !dbg !6400
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6400
  br label %cleanup, !dbg !6400

cleanup:                                          ; preds = %cond.end, %if.then19, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rctx) #11, !dbg !6400
  call void @llvm.lifetime.end.p0(i64 4, ptr %__data_size) #11, !dbg !6400
  call void @llvm.lifetime.end.p0(i64 4, ptr %__entry_size) #11, !dbg !6400
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #11, !dbg !6400
  call void @llvm.lifetime.end.p0(i64 8, ptr %__task) #11, !dbg !6400
  call void @llvm.lifetime.end.p0(i64 8, ptr %__count) #11, !dbg !6400
  call void @llvm.lifetime.end.p0(i64 8, ptr %__regs) #11, !dbg !6400
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry2) #11, !dbg !6400
  call void @llvm.lifetime.end.p0(i64 4, ptr %__data_offsets) #11, !dbg !6400
  call void @llvm.lifetime.end.p0(i64 8, ptr %event_call) #11, !dbg !6400
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6400

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__mmap_lock_do_trace_start_locking(ptr noundef %mm, i1 noundef zeroext %write) #1 align 16 !dbg !6411 {
entry:
  %mm.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6415, metadata !DIExpression()), !dbg !6417
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6416, metadata !DIExpression()), !dbg !6418
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !6419
  %1 = load i8, ptr %write.addr, align 1, !dbg !6419, !range !6238, !noundef !336
  %tobool = trunc i8 %1 to i1, !dbg !6419
  call void @trace_mmap_lock_start_locking(ptr noundef %0, ptr noundef @.str, i1 noundef zeroext %tobool) #12, !dbg !6419
  ret void, !dbg !6420
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_mmap_lock_start_locking(ptr noundef %mm, ptr noundef %memcg_path, i1 noundef zeroext %write) #4 align 16 !dbg !6104 {
entry:
  %mm.addr = alloca ptr, align 8
  %memcg_path.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
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
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6108, metadata !DIExpression()), !dbg !6421
  store ptr %memcg_path, ptr %memcg_path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memcg_path.addr, metadata !6109, metadata !DIExpression()), !dbg !6421
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6110, metadata !DIExpression()), !dbg !6421
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1)) #12, !dbg !6422
  br i1 %call, label %if.then, label %if.end69, !dbg !6421

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6422

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #11, !dbg !6423
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !6111, metadata !DIExpression()), !dbg !6423
  store i32 0, ptr %__idx, align 4, !dbg !6423
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #11, !dbg !6424
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6114, metadata !DIExpression()), !dbg !6424
  br label %do.body1, !dbg !6424

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !6425
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6117, metadata !DIExpression()), !dbg !6425
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6425
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6425
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !6424
  br label %do.cond, !dbg !6425

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6425

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #11, !dbg !6426
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6119, metadata !DIExpression()), !dbg !6426
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.27, ptr @pcpu_hot, i32 0, i32 2)) #11, !dbg !6426, !srcloc !6427
  store i32 %1, ptr %pfo_val__, align 4, !dbg !6426
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !6426
  %conv = zext i32 %2 to i64, !dbg !6426
  %conv2 = trunc i64 %conv to i32, !dbg !6426
  store i32 %conv2, ptr %tmp, align 4, !dbg !6426
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #11, !dbg !6424
  %3 = load i32, ptr %tmp, align 4, !dbg !6426
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !6424
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !6424
  store i32 %4, ptr %tmp3, align 4, !dbg !6424
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #11, !dbg !6428
  %5 = load i32, ptr %tmp3, align 4, !dbg !6424
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #12, !dbg !6428
  br i1 %call4, label %if.end, label %if.then5, !dbg !6423

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6428

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !6429
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6121, metadata !DIExpression()), !dbg !6429
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !6429
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !6430
  %tobool = icmp ne i32 %6, 0, !dbg !6430
  %lnot = xor i1 %tobool, true, !dbg !6430
  %lnot6 = xor i1 %lnot, true, !dbg !6430
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !6430
  %conv7 = sext i32 %lnot.ext to i64, !dbg !6430
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !6430
  %tobool8 = icmp ne i64 %expval, 0, !dbg !6430
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !6429

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !6430

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !6431
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6124, metadata !DIExpression()), !dbg !6431
  store i32 2307, ptr %__flags, align 4, !dbg !6431
  br label %do.body11, !dbg !6431

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !6432

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6432

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !6431

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !6434
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.13, i32 49, i32 %7, i64 12) #11, !dbg !6434, !srcloc !6436
  br label %do.cond15, !dbg !6434

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !6434

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !6431

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !6437

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6437

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !6430
  br label %do.cond20, !dbg !6431

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !6431

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !6431

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !6429
  %tobool24 = icmp ne i32 %8, 0, !dbg !6429
  %lnot25 = xor i1 %tobool24, true, !dbg !6429
  %lnot27 = xor i1 %lnot25, true, !dbg !6429
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !6429
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !6429
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !6429
  store i64 %expval30, ptr %tmp23, align 8, !dbg !6430
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !6439
  %9 = load i64, ptr %tmp23, align 8, !dbg !6429
  %tobool31 = icmp ne i64 %9, 0, !dbg !6439
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !6423

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6439

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !6423

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #12, !dbg !6440
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !6440, !srcloc !6442
  br label %do.cond35, !dbg !6440

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !6440

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !6423

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #11, !dbg !6443
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !6127, metadata !DIExpression()), !dbg !6443
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #11, !dbg !6443
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !6129, metadata !DIExpression()), !dbg !6443
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu203) #11, !dbg !6444
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu203, metadata !6130, metadata !DIExpression()), !dbg !6444
  br label %do.body38, !dbg !6445

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !6447

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !6447

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 8), align 8, !dbg !6445
  store ptr %10, ptr %tmp41, align 8, !dbg !6447
  %11 = load ptr, ptr %tmp41, align 8, !dbg !6445
  store ptr %11, ptr %__UNIQUE_ID_rcu203, align 8, !dbg !6444
  %12 = load ptr, ptr %__UNIQUE_ID_rcu203, align 8, !dbg !6444
  store ptr %12, ptr %tmp42, align 8, !dbg !6444
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu203) #11, !dbg !6443
  %13 = load ptr, ptr %tmp42, align 8, !dbg !6444
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !6443
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !6449
  %tobool43 = icmp ne ptr %14, null, !dbg !6449
  br i1 %tobool43, label %if.then44, label %if.end48, !dbg !6443

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !6451
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !6451
  %16 = load ptr, ptr %data, align 8, !dbg !6451
  store ptr %16, ptr %__data, align 8, !dbg !6451
  store ptr @__SCT__tp_func_mmap_lock_start_locking, ptr %tmp45, align 8, !dbg !6453
  %17 = load ptr, ptr %tmp45, align 8, !dbg !6453
  %18 = load ptr, ptr %__data, align 8, !dbg !6451
  %19 = load ptr, ptr %mm.addr, align 8, !dbg !6451
  %20 = load ptr, ptr %memcg_path.addr, align 8, !dbg !6451
  %21 = load i8, ptr %write.addr, align 1, !dbg !6451, !range !6238, !noundef !336
  %tobool46 = trunc i8 %21 to i1, !dbg !6451
  %call47 = call i32 %17(ptr noundef %18, ptr noundef %19, ptr noundef %20, i1 noundef zeroext %tobool46) #12, !dbg !6451
  br label %if.end48, !dbg !6451

if.end48:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #11, !dbg !6423
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #11, !dbg !6423
  br label %do.cond49, !dbg !6443

do.cond49:                                        ; preds = %if.end48
  br label %do.end50, !dbg !6443

do.end50:                                         ; preds = %do.cond49
  br label %do.body51, !dbg !6423

do.body51:                                        ; preds = %do.end50
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !6455, !srcloc !6457
  %call52 = call zeroext i1 @__preempt_count_dec_and_test() #12, !dbg !6458
  %lnot53 = xor i1 %call52, true, !dbg !6458
  %lnot55 = xor i1 %lnot53, true, !dbg !6458
  %lnot.ext56 = zext i1 %lnot55 to i32, !dbg !6458
  %conv57 = sext i32 %lnot.ext56 to i64, !dbg !6458
  %expval58 = call i64 @llvm.expect.i64(i64 %conv57, i64 0), !dbg !6458
  %tobool59 = icmp ne i64 %expval58, 0, !dbg !6458
  br i1 %tobool59, label %if.then60, label %if.end64, !dbg !6455

if.then60:                                        ; preds = %do.body51
  br label %do.body61, !dbg !6458

do.body61:                                        ; preds = %if.then60
  %22 = call i64 @llvm.read_register.i64(metadata !6200), !dbg !6460
  %23 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %22) #11, !dbg !6460, !srcloc !6462
  call void @llvm.write_register.i64(metadata !6200, i64 %23), !dbg !6460
  br label %do.cond62, !dbg !6460

do.cond62:                                        ; preds = %do.body61
  br label %do.end63, !dbg !6460

do.end63:                                         ; preds = %do.cond62
  br label %if.end64, !dbg !6460

if.end64:                                         ; preds = %do.end63, %do.body51
  br label %do.cond65, !dbg !6455

do.cond65:                                        ; preds = %if.end64
  br label %do.end66, !dbg !6455

do.end66:                                         ; preds = %do.cond65
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6422
  br label %cleanup, !dbg !6422

cleanup:                                          ; preds = %do.end66, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #11, !dbg !6422
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end69
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end68, !dbg !6423

do.end68:                                         ; preds = %cleanup.cont
  br label %if.end69, !dbg !6423

if.end69:                                         ; preds = %cleanup, %do.end68, %entry
  ret void, !dbg !6421

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__mmap_lock_do_trace_acquire_returned(ptr noundef %mm, i1 noundef zeroext %write, i1 noundef zeroext %success) #1 align 16 !dbg !6463 {
entry:
  %mm.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  %success.addr = alloca i8, align 1
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6467, metadata !DIExpression()), !dbg !6470
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6468, metadata !DIExpression()), !dbg !6471
  %frombool1 = zext i1 %success to i8
  store i8 %frombool1, ptr %success.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %success.addr, metadata !6469, metadata !DIExpression()), !dbg !6472
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !6473
  %1 = load i8, ptr %write.addr, align 1, !dbg !6473, !range !6238, !noundef !336
  %tobool = trunc i8 %1 to i1, !dbg !6473
  %2 = load i8, ptr %success.addr, align 1, !dbg !6473, !range !6238, !noundef !336
  %tobool2 = trunc i8 %2 to i1, !dbg !6473
  call void @trace_mmap_lock_acquire_returned(ptr noundef %0, ptr noundef @.str, i1 noundef zeroext %tobool, i1 noundef zeroext %tobool2) #12, !dbg !6473
  ret void, !dbg !6474
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_mmap_lock_acquire_returned(ptr noundef %mm, ptr noundef %memcg_path, i1 noundef zeroext %write, i1 noundef zeroext %success) #4 align 16 !dbg !6136 {
entry:
  %mm.addr = alloca ptr, align 8
  %memcg_path.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  %success.addr = alloca i8, align 1
  %__idx = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp24 = alloca i64, align 8
  %it_func_ptr = alloca ptr, align 8
  %__data = alloca ptr, align 8
  %__UNIQUE_ID_rcu219 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp43 = alloca ptr, align 8
  %tmp46 = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6140, metadata !DIExpression()), !dbg !6475
  store ptr %memcg_path, ptr %memcg_path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memcg_path.addr, metadata !6141, metadata !DIExpression()), !dbg !6475
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6142, metadata !DIExpression()), !dbg !6475
  %frombool1 = zext i1 %success to i8
  store i8 %frombool1, ptr %success.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %success.addr, metadata !6143, metadata !DIExpression()), !dbg !6475
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1)) #12, !dbg !6476
  br i1 %call, label %if.then, label %if.end71, !dbg !6475

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6476

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #11, !dbg !6477
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !6144, metadata !DIExpression()), !dbg !6477
  store i32 0, ptr %__idx, align 4, !dbg !6477
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #11, !dbg !6478
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6147, metadata !DIExpression()), !dbg !6478
  br label %do.body2, !dbg !6478

do.body2:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !6479
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6150, metadata !DIExpression()), !dbg !6479
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6479
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6479
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !6478
  br label %do.cond, !dbg !6479

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !6479

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #11, !dbg !6480
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6152, metadata !DIExpression()), !dbg !6480
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.27, ptr @pcpu_hot, i32 0, i32 2)) #11, !dbg !6480, !srcloc !6481
  store i32 %1, ptr %pfo_val__, align 4, !dbg !6480
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !6480
  %conv = zext i32 %2 to i64, !dbg !6480
  %conv3 = trunc i64 %conv to i32, !dbg !6480
  store i32 %conv3, ptr %tmp, align 4, !dbg !6480
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #11, !dbg !6478
  %3 = load i32, ptr %tmp, align 4, !dbg !6480
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !6478
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !6478
  store i32 %4, ptr %tmp4, align 4, !dbg !6478
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #11, !dbg !6482
  %5 = load i32, ptr %tmp4, align 4, !dbg !6478
  %call5 = call zeroext i1 @cpu_online(i32 noundef %5) #12, !dbg !6482
  br i1 %call5, label %if.end, label %if.then6, !dbg !6477

if.then6:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6482

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !6483
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6154, metadata !DIExpression()), !dbg !6483
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !6483
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !6484
  %tobool = icmp ne i32 %6, 0, !dbg !6484
  %lnot = xor i1 %tobool, true, !dbg !6484
  %lnot7 = xor i1 %lnot, true, !dbg !6484
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !6484
  %conv8 = sext i32 %lnot.ext to i64, !dbg !6484
  %expval = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !6484
  %tobool9 = icmp ne i64 %expval, 0, !dbg !6484
  br i1 %tobool9, label %if.then10, label %if.end23, !dbg !6483

if.then10:                                        ; preds = %if.end
  br label %do.body11, !dbg !6484

do.body11:                                        ; preds = %if.then10
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !6485
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6157, metadata !DIExpression()), !dbg !6485
  store i32 2307, ptr %__flags, align 4, !dbg !6485
  br label %do.body12, !dbg !6485

do.body12:                                        ; preds = %do.body11
  br label %do.cond13, !dbg !6486

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6486

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !6485

do.body15:                                        ; preds = %do.end14
  %7 = load i32, ptr %__flags, align 4, !dbg !6488
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.13, i32 82, i32 %7, i64 12) #11, !dbg !6488, !srcloc !6490
  br label %do.cond16, !dbg !6488

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !6488

do.end17:                                         ; preds = %do.cond16
  br label %do.body18, !dbg !6485

do.body18:                                        ; preds = %do.end17
  br label %do.cond19, !dbg !6491

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !6491

do.end20:                                         ; preds = %do.cond19
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !6484
  br label %do.cond21, !dbg !6485

do.cond21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !6485

do.end22:                                         ; preds = %do.cond21
  br label %if.end23, !dbg !6485

if.end23:                                         ; preds = %do.end22, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !6483
  %tobool25 = icmp ne i32 %8, 0, !dbg !6483
  %lnot26 = xor i1 %tobool25, true, !dbg !6483
  %lnot28 = xor i1 %lnot26, true, !dbg !6483
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !6483
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !6483
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !6483
  store i64 %expval31, ptr %tmp24, align 8, !dbg !6484
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !6493
  %9 = load i64, ptr %tmp24, align 8, !dbg !6483
  %tobool32 = icmp ne i64 %9, 0, !dbg !6493
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !6477

if.then33:                                        ; preds = %if.end23
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6493

if.end34:                                         ; preds = %if.end23
  br label %do.body35, !dbg !6477

do.body35:                                        ; preds = %if.end34
  call void @__preempt_count_add(i32 noundef 1) #12, !dbg !6494
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !6494, !srcloc !6496
  br label %do.cond36, !dbg !6494

do.cond36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !6494

do.end37:                                         ; preds = %do.cond36
  br label %do.body38, !dbg !6477

do.body38:                                        ; preds = %do.end37
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #11, !dbg !6497
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !6160, metadata !DIExpression()), !dbg !6497
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #11, !dbg !6497
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !6162, metadata !DIExpression()), !dbg !6497
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu219) #11, !dbg !6498
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu219, metadata !6163, metadata !DIExpression()), !dbg !6498
  br label %do.body39, !dbg !6499

do.body39:                                        ; preds = %do.body38
  br label %do.cond40, !dbg !6501

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !6501

do.end41:                                         ; preds = %do.cond40
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 8), align 8, !dbg !6499
  store ptr %10, ptr %tmp42, align 8, !dbg !6501
  %11 = load ptr, ptr %tmp42, align 8, !dbg !6499
  store ptr %11, ptr %__UNIQUE_ID_rcu219, align 8, !dbg !6498
  %12 = load ptr, ptr %__UNIQUE_ID_rcu219, align 8, !dbg !6498
  store ptr %12, ptr %tmp43, align 8, !dbg !6498
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu219) #11, !dbg !6497
  %13 = load ptr, ptr %tmp43, align 8, !dbg !6498
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !6497
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !6503
  %tobool44 = icmp ne ptr %14, null, !dbg !6503
  br i1 %tobool44, label %if.then45, label %if.end50, !dbg !6497

if.then45:                                        ; preds = %do.end41
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !6505
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !6505
  %16 = load ptr, ptr %data, align 8, !dbg !6505
  store ptr %16, ptr %__data, align 8, !dbg !6505
  store ptr @__SCT__tp_func_mmap_lock_acquire_returned, ptr %tmp46, align 8, !dbg !6507
  %17 = load ptr, ptr %tmp46, align 8, !dbg !6507
  %18 = load ptr, ptr %__data, align 8, !dbg !6505
  %19 = load ptr, ptr %mm.addr, align 8, !dbg !6505
  %20 = load ptr, ptr %memcg_path.addr, align 8, !dbg !6505
  %21 = load i8, ptr %write.addr, align 1, !dbg !6505, !range !6238, !noundef !336
  %tobool47 = trunc i8 %21 to i1, !dbg !6505
  %22 = load i8, ptr %success.addr, align 1, !dbg !6505, !range !6238, !noundef !336
  %tobool48 = trunc i8 %22 to i1, !dbg !6505
  %call49 = call i32 %17(ptr noundef %18, ptr noundef %19, ptr noundef %20, i1 noundef zeroext %tobool47, i1 noundef zeroext %tobool48) #12, !dbg !6505
  br label %if.end50, !dbg !6505

if.end50:                                         ; preds = %if.then45, %do.end41
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #11, !dbg !6477
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #11, !dbg !6477
  br label %do.cond51, !dbg !6497

do.cond51:                                        ; preds = %if.end50
  br label %do.end52, !dbg !6497

do.end52:                                         ; preds = %do.cond51
  br label %do.body53, !dbg !6477

do.body53:                                        ; preds = %do.end52
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !6509, !srcloc !6511
  %call54 = call zeroext i1 @__preempt_count_dec_and_test() #12, !dbg !6512
  %lnot55 = xor i1 %call54, true, !dbg !6512
  %lnot57 = xor i1 %lnot55, true, !dbg !6512
  %lnot.ext58 = zext i1 %lnot57 to i32, !dbg !6512
  %conv59 = sext i32 %lnot.ext58 to i64, !dbg !6512
  %expval60 = call i64 @llvm.expect.i64(i64 %conv59, i64 0), !dbg !6512
  %tobool61 = icmp ne i64 %expval60, 0, !dbg !6512
  br i1 %tobool61, label %if.then62, label %if.end66, !dbg !6509

if.then62:                                        ; preds = %do.body53
  br label %do.body63, !dbg !6512

do.body63:                                        ; preds = %if.then62
  %23 = call i64 @llvm.read_register.i64(metadata !6200), !dbg !6514
  %24 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %23) #11, !dbg !6514, !srcloc !6516
  call void @llvm.write_register.i64(metadata !6200, i64 %24), !dbg !6514
  br label %do.cond64, !dbg !6514

do.cond64:                                        ; preds = %do.body63
  br label %do.end65, !dbg !6514

do.end65:                                         ; preds = %do.cond64
  br label %if.end66, !dbg !6514

if.end66:                                         ; preds = %do.end65, %do.body53
  br label %do.cond67, !dbg !6509

do.cond67:                                        ; preds = %if.end66
  br label %do.end68, !dbg !6509

do.end68:                                         ; preds = %do.cond67
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6476
  br label %cleanup, !dbg !6476

cleanup:                                          ; preds = %do.end68, %if.then33, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #11, !dbg !6476
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end71
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end70, !dbg !6477

do.end70:                                         ; preds = %cleanup.cont
  br label %if.end71, !dbg !6477

if.end71:                                         ; preds = %cleanup, %do.end70, %entry
  ret void, !dbg !6475

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__mmap_lock_do_trace_released(ptr noundef %mm, i1 noundef zeroext %write) #1 align 16 !dbg !6517 {
entry:
  %mm.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6519, metadata !DIExpression()), !dbg !6521
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6520, metadata !DIExpression()), !dbg !6522
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !6523
  %1 = load i8, ptr %write.addr, align 1, !dbg !6523, !range !6238, !noundef !336
  %tobool = trunc i8 %1 to i1, !dbg !6523
  call void @trace_mmap_lock_released(ptr noundef %0, ptr noundef @.str, i1 noundef zeroext %tobool) #12, !dbg !6523
  ret void, !dbg !6524
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_mmap_lock_released(ptr noundef %mm, ptr noundef %memcg_path, i1 noundef zeroext %write) #4 align 16 !dbg !6169 {
entry:
  %mm.addr = alloca ptr, align 8
  %memcg_path.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
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
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6171, metadata !DIExpression()), !dbg !6525
  store ptr %memcg_path, ptr %memcg_path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memcg_path.addr, metadata !6172, metadata !DIExpression()), !dbg !6525
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6173, metadata !DIExpression()), !dbg !6525
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1)) #12, !dbg !6526
  br i1 %call, label %if.then, label %if.end69, !dbg !6525

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6526

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #11, !dbg !6527
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !6174, metadata !DIExpression()), !dbg !6527
  store i32 0, ptr %__idx, align 4, !dbg !6527
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #11, !dbg !6528
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6177, metadata !DIExpression()), !dbg !6528
  br label %do.body1, !dbg !6528

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !6529
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6180, metadata !DIExpression()), !dbg !6529
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6529
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6529
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !6528
  br label %do.cond, !dbg !6529

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6529

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #11, !dbg !6530
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6182, metadata !DIExpression()), !dbg !6530
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.27, ptr @pcpu_hot, i32 0, i32 2)) #11, !dbg !6530, !srcloc !6531
  store i32 %1, ptr %pfo_val__, align 4, !dbg !6530
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !6530
  %conv = zext i32 %2 to i64, !dbg !6530
  %conv2 = trunc i64 %conv to i32, !dbg !6530
  store i32 %conv2, ptr %tmp, align 4, !dbg !6530
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #11, !dbg !6528
  %3 = load i32, ptr %tmp, align 4, !dbg !6530
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !6528
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !6528
  store i32 %4, ptr %tmp3, align 4, !dbg !6528
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #11, !dbg !6532
  %5 = load i32, ptr %tmp3, align 4, !dbg !6528
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #12, !dbg !6532
  br i1 %call4, label %if.end, label %if.then5, !dbg !6527

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6532

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !6533
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6184, metadata !DIExpression()), !dbg !6533
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !6533
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !6534
  %tobool = icmp ne i32 %6, 0, !dbg !6534
  %lnot = xor i1 %tobool, true, !dbg !6534
  %lnot6 = xor i1 %lnot, true, !dbg !6534
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !6534
  %conv7 = sext i32 %lnot.ext to i64, !dbg !6534
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !6534
  %tobool8 = icmp ne i64 %expval, 0, !dbg !6534
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !6533

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !6534

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !6535
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6187, metadata !DIExpression()), !dbg !6535
  store i32 2307, ptr %__flags, align 4, !dbg !6535
  br label %do.body11, !dbg !6535

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !6536

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6536

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !6535

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !6538
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.13, i32 50, i32 %7, i64 12) #11, !dbg !6538, !srcloc !6540
  br label %do.cond15, !dbg !6538

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !6538

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !6535

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !6541

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6541

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !6534
  br label %do.cond20, !dbg !6535

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !6535

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !6535

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !6533
  %tobool24 = icmp ne i32 %8, 0, !dbg !6533
  %lnot25 = xor i1 %tobool24, true, !dbg !6533
  %lnot27 = xor i1 %lnot25, true, !dbg !6533
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !6533
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !6533
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !6533
  store i64 %expval30, ptr %tmp23, align 8, !dbg !6534
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !6543
  %9 = load i64, ptr %tmp23, align 8, !dbg !6533
  %tobool31 = icmp ne i64 %9, 0, !dbg !6543
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !6527

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6543

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !6527

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #12, !dbg !6544
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !6544, !srcloc !6546
  br label %do.cond35, !dbg !6544

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !6544

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !6527

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #11, !dbg !6547
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !6190, metadata !DIExpression()), !dbg !6547
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #11, !dbg !6547
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !6192, metadata !DIExpression()), !dbg !6547
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu211) #11, !dbg !6548
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu211, metadata !6193, metadata !DIExpression()), !dbg !6548
  br label %do.body38, !dbg !6549

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !6551

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !6551

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 8), align 8, !dbg !6549
  store ptr %10, ptr %tmp41, align 8, !dbg !6551
  %11 = load ptr, ptr %tmp41, align 8, !dbg !6549
  store ptr %11, ptr %__UNIQUE_ID_rcu211, align 8, !dbg !6548
  %12 = load ptr, ptr %__UNIQUE_ID_rcu211, align 8, !dbg !6548
  store ptr %12, ptr %tmp42, align 8, !dbg !6548
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu211) #11, !dbg !6547
  %13 = load ptr, ptr %tmp42, align 8, !dbg !6548
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !6547
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !6553
  %tobool43 = icmp ne ptr %14, null, !dbg !6553
  br i1 %tobool43, label %if.then44, label %if.end48, !dbg !6547

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !6555
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !6555
  %16 = load ptr, ptr %data, align 8, !dbg !6555
  store ptr %16, ptr %__data, align 8, !dbg !6555
  store ptr @__SCT__tp_func_mmap_lock_released, ptr %tmp45, align 8, !dbg !6557
  %17 = load ptr, ptr %tmp45, align 8, !dbg !6557
  %18 = load ptr, ptr %__data, align 8, !dbg !6555
  %19 = load ptr, ptr %mm.addr, align 8, !dbg !6555
  %20 = load ptr, ptr %memcg_path.addr, align 8, !dbg !6555
  %21 = load i8, ptr %write.addr, align 1, !dbg !6555, !range !6238, !noundef !336
  %tobool46 = trunc i8 %21 to i1, !dbg !6555
  %call47 = call i32 %17(ptr noundef %18, ptr noundef %19, ptr noundef %20, i1 noundef zeroext %tobool46) #12, !dbg !6555
  br label %if.end48, !dbg !6555

if.end48:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #11, !dbg !6527
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #11, !dbg !6527
  br label %do.cond49, !dbg !6547

do.cond49:                                        ; preds = %if.end48
  br label %do.end50, !dbg !6547

do.end50:                                         ; preds = %do.cond49
  br label %do.body51, !dbg !6527

do.body51:                                        ; preds = %do.end50
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !6559, !srcloc !6561
  %call52 = call zeroext i1 @__preempt_count_dec_and_test() #12, !dbg !6562
  %lnot53 = xor i1 %call52, true, !dbg !6562
  %lnot55 = xor i1 %lnot53, true, !dbg !6562
  %lnot.ext56 = zext i1 %lnot55 to i32, !dbg !6562
  %conv57 = sext i32 %lnot.ext56 to i64, !dbg !6562
  %expval58 = call i64 @llvm.expect.i64(i64 %conv57, i64 0), !dbg !6562
  %tobool59 = icmp ne i64 %expval58, 0, !dbg !6562
  br i1 %tobool59, label %if.then60, label %if.end64, !dbg !6559

if.then60:                                        ; preds = %do.body51
  br label %do.body61, !dbg !6562

do.body61:                                        ; preds = %if.then60
  %22 = call i64 @llvm.read_register.i64(metadata !6200), !dbg !6564
  %23 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %22) #11, !dbg !6564, !srcloc !6566
  call void @llvm.write_register.i64(metadata !6200, i64 %23), !dbg !6564
  br label %do.cond62, !dbg !6564

do.cond62:                                        ; preds = %do.body61
  br label %do.end63, !dbg !6564

do.end63:                                         ; preds = %do.cond62
  br label %if.end64, !dbg !6564

if.end64:                                         ; preds = %do.end63, %do.body51
  br label %do.cond65, !dbg !6559

do.cond65:                                        ; preds = %if.end64
  br label %do.end66, !dbg !6559

do.end66:                                         ; preds = %do.cond65
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6526
  br label %cleanup, !dbg !6526

cleanup:                                          ; preds = %do.end66, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #11, !dbg !6526
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end69
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end68, !dbg !6527

do.end68:                                         ; preds = %cleanup.cont
  br label %if.end69, !dbg !6527

if.end69:                                         ; preds = %cleanup, %do.end68, %entry
  ret void, !dbg !6525

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_trace_event_raw_event_mmap_lock(ptr noundef %__data, ptr noundef %mm, ptr noundef %memcg_path, i1 noundef zeroext %write) #1 align 16 !dbg !6567 {
entry:
  %__data.addr = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %memcg_path.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  %trace_file = alloca ptr, align 8
  %__data_offsets = alloca %struct.trace_event_data_offsets_mmap_lock, align 4
  %fbuffer = alloca %struct.trace_event_buffer, align 8
  %entry1 = alloca ptr, align 8
  %__data_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6569, metadata !DIExpression()), !dbg !6613
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6570, metadata !DIExpression()), !dbg !6613
  store ptr %memcg_path, ptr %memcg_path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memcg_path.addr, metadata !6571, metadata !DIExpression()), !dbg !6613
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6572, metadata !DIExpression()), !dbg !6613
  call void @llvm.lifetime.start.p0(i64 8, ptr %trace_file) #11, !dbg !6613
  call void @llvm.dbg.declare(metadata ptr %trace_file, metadata !6573, metadata !DIExpression()), !dbg !6613
  %0 = load ptr, ptr %__data.addr, align 8, !dbg !6613
  store ptr %0, ptr %trace_file, align 8, !dbg !6613
  call void @llvm.lifetime.start.p0(i64 4, ptr %__data_offsets) #11, !dbg !6613
  call void @llvm.dbg.declare(metadata ptr %__data_offsets, metadata !6592, metadata !DIExpression()), !dbg !6613
  call void @llvm.lifetime.start.p0(i64 48, ptr %fbuffer) #11, !dbg !6613
  call void @llvm.dbg.declare(metadata ptr %fbuffer, metadata !6593, metadata !DIExpression()), !dbg !6613
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #11, !dbg !6613
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !6611, metadata !DIExpression()), !dbg !6613
  call void @llvm.lifetime.start.p0(i64 4, ptr %__data_size) #11, !dbg !6613
  call void @llvm.dbg.declare(metadata ptr %__data_size, metadata !6612, metadata !DIExpression()), !dbg !6613
  %1 = load ptr, ptr %trace_file, align 8, !dbg !6614
  %call = call zeroext i1 @trace_trigger_soft_disabled(ptr noundef %1) #12, !dbg !6614
  br i1 %call, label %if.then, label %if.end, !dbg !6613

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6614

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %mm.addr, align 8, !dbg !6613
  %3 = load ptr, ptr %memcg_path.addr, align 8, !dbg !6613
  %4 = load i8, ptr %write.addr, align 1, !dbg !6613, !range !6238, !noundef !336
  %tobool = trunc i8 %4 to i1, !dbg !6613
  %call2 = call i32 @trace_event_get_offsets_mmap_lock(ptr noundef %__data_offsets, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %tobool) #12, !dbg !6613
  store i32 %call2, ptr %__data_size, align 4, !dbg !6613
  %5 = load ptr, ptr %trace_file, align 8, !dbg !6613
  %6 = load i32, ptr %__data_size, align 4, !dbg !6613
  %conv = sext i32 %6 to i64, !dbg !6613
  %add = add i64 24, %conv, !dbg !6613
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef %fbuffer, ptr noundef %5, i64 noundef %add) #12, !dbg !6613
  store ptr %call3, ptr %entry1, align 8, !dbg !6613
  %7 = load ptr, ptr %entry1, align 8, !dbg !6616
  %tobool4 = icmp ne ptr %7, null, !dbg !6616
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !6613

if.then5:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6616

if.end6:                                          ; preds = %if.end
  %memcg_path7 = getelementptr inbounds %struct.trace_event_data_offsets_mmap_lock, ptr %__data_offsets, i32 0, i32 0, !dbg !6613
  %8 = load i32, ptr %memcg_path7, align 4, !dbg !6613
  %9 = load ptr, ptr %entry1, align 8, !dbg !6613
  %__data_loc_memcg_path = getelementptr inbounds %struct.trace_event_raw_mmap_lock, ptr %9, i32 0, i32 2, !dbg !6613
  store i32 %8, ptr %__data_loc_memcg_path, align 8, !dbg !6613
  %10 = load ptr, ptr %mm.addr, align 8, !dbg !6618
  %11 = load ptr, ptr %entry1, align 8, !dbg !6618
  %mm8 = getelementptr inbounds %struct.trace_event_raw_mmap_lock, ptr %11, i32 0, i32 1, !dbg !6618
  store ptr %10, ptr %mm8, align 8, !dbg !6618
  %12 = load ptr, ptr %entry1, align 8, !dbg !6618
  %13 = load ptr, ptr %entry1, align 8, !dbg !6618
  %__data_loc_memcg_path9 = getelementptr inbounds %struct.trace_event_raw_mmap_lock, ptr %13, i32 0, i32 2, !dbg !6618
  %14 = load i32, ptr %__data_loc_memcg_path9, align 8, !dbg !6618
  %and = and i32 %14, 65535, !dbg !6618
  %idx.ext = zext i32 %and to i64, !dbg !6618
  %add.ptr = getelementptr i8, ptr %12, i64 %idx.ext, !dbg !6618
  %15 = load ptr, ptr %memcg_path.addr, align 8, !dbg !6618
  %tobool10 = icmp ne ptr %15, null, !dbg !6618
  br i1 %tobool10, label %cond.true, label %cond.false, !dbg !6618

cond.true:                                        ; preds = %if.end6
  %16 = load ptr, ptr %memcg_path.addr, align 8, !dbg !6618
  br label %cond.end, !dbg !6618

cond.false:                                       ; preds = %if.end6
  br label %cond.end, !dbg !6618

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %16, %cond.true ], [ @.str.1, %cond.false ], !dbg !6618
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #12, !dbg !6618
  %17 = load i8, ptr %write.addr, align 1, !dbg !6618, !range !6238, !noundef !336
  %tobool12 = trunc i8 %17 to i1, !dbg !6618
  %18 = load ptr, ptr %entry1, align 8, !dbg !6618
  %write13 = getelementptr inbounds %struct.trace_event_raw_mmap_lock, ptr %18, i32 0, i32 3, !dbg !6618
  %frombool14 = zext i1 %tobool12 to i8, !dbg !6618
  store i8 %frombool14, ptr %write13, align 4, !dbg !6618
  call void @trace_event_buffer_commit(ptr noundef %fbuffer) #12, !dbg !6613
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6613
  br label %cleanup, !dbg !6613

cleanup:                                          ; preds = %cond.end, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %__data_size) #11, !dbg !6613
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #11, !dbg !6613
  call void @llvm.lifetime.end.p0(i64 48, ptr %fbuffer) #11, !dbg !6613
  call void @llvm.lifetime.end.p0(i64 4, ptr %__data_offsets) #11, !dbg !6613
  call void @llvm.lifetime.end.p0(i64 8, ptr %trace_file) #11, !dbg !6613
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6613

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @trace_trigger_soft_disabled(ptr noundef %file) #5 align 16 !dbg !6620 {
entry:
  %retval = alloca i1, align 1
  %file.addr = alloca ptr, align 8
  %eflags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6624, metadata !DIExpression()), !dbg !6626
  call void @llvm.lifetime.start.p0(i64 8, ptr %eflags) #11, !dbg !6627
  call void @llvm.dbg.declare(metadata ptr %eflags, metadata !6625, metadata !DIExpression()), !dbg !6628
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6629
  %flags = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7, !dbg !6630
  %1 = load i64, ptr %flags, align 8, !dbg !6630
  store i64 %1, ptr %eflags, align 8, !dbg !6628
  %2 = load i64, ptr %eflags, align 8, !dbg !6631
  %and = and i64 %2, 704, !dbg !6631
  %tobool = icmp ne i64 %and, 0, !dbg !6631
  %lnot = xor i1 %tobool, true, !dbg !6631
  %lnot1 = xor i1 %lnot, true, !dbg !6631
  %lnot2 = xor i1 %lnot1, true, !dbg !6631
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6631
  %conv = sext i32 %lnot.ext to i64, !dbg !6631
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6631
  %tobool3 = icmp ne i64 %expval, 0, !dbg !6631
  br i1 %tobool3, label %if.then, label %if.end, !dbg !6633

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6634
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6634

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %eflags, align 8, !dbg !6635
  %and4 = and i64 %3, 256, !dbg !6635
  %tobool5 = icmp ne i64 %and4, 0, !dbg !6635
  %lnot6 = xor i1 %tobool5, true, !dbg !6635
  %lnot8 = xor i1 %lnot6, true, !dbg !6635
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !6635
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !6635
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !6635
  %tobool12 = icmp ne i64 %expval11, 0, !dbg !6635
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !6637

if.then13:                                        ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !6638
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6638

if.end14:                                         ; preds = %if.end
  %4 = load ptr, ptr %file.addr, align 8, !dbg !6639
  %call = call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %4) #12, !dbg !6640
  store i1 %call, ptr %retval, align 1, !dbg !6641
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6641

cleanup:                                          ; preds = %if.end14, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %eflags) #11, !dbg !6642
  %5 = load i1, ptr %retval, align 1, !dbg !6642
  ret i1 %5, !dbg !6642
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trace_event_get_offsets_mmap_lock(ptr noundef %__data_offsets, ptr noundef %mm, ptr noundef %memcg_path, i1 noundef zeroext %write) #4 align 16 !dbg !6643 {
entry:
  %__data_offsets.addr = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %memcg_path.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  %__data_size = alloca i32, align 4
  %__item_length = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  store ptr %__data_offsets, ptr %__data_offsets.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data_offsets.addr, metadata !6648, metadata !DIExpression()), !dbg !6655
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6649, metadata !DIExpression()), !dbg !6655
  store ptr %memcg_path, ptr %memcg_path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memcg_path.addr, metadata !6650, metadata !DIExpression()), !dbg !6655
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6651, metadata !DIExpression()), !dbg !6655
  call void @llvm.lifetime.start.p0(i64 4, ptr %__data_size) #11, !dbg !6655
  call void @llvm.dbg.declare(metadata ptr %__data_size, metadata !6652, metadata !DIExpression()), !dbg !6655
  store i32 0, ptr %__data_size, align 4, !dbg !6655
  call void @llvm.lifetime.start.p0(i64 4, ptr %__item_length) #11, !dbg !6655
  call void @llvm.dbg.declare(metadata ptr %__item_length, metadata !6653, metadata !DIExpression()), !dbg !6655
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #11, !dbg !6655
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !6654, metadata !DIExpression()), !dbg !6655
  %0 = load ptr, ptr %memcg_path.addr, align 8, !dbg !6655
  %tobool = icmp ne ptr %0, null, !dbg !6655
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6655

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %memcg_path.addr, align 8, !dbg !6655
  br label %cond.end, !dbg !6655

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6655

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %1, %cond.true ], [ @.str.1, %cond.false ], !dbg !6655
  %call = call i64 @strlen(ptr noundef %cond) #12, !dbg !6655
  %add = add i64 %call, 1, !dbg !6655
  %mul = mul i64 %add, 1, !dbg !6655
  %conv = trunc i64 %mul to i32, !dbg !6655
  store i32 %conv, ptr %__item_length, align 4, !dbg !6655
  %2 = load i32, ptr %__data_size, align 4, !dbg !6655
  %conv2 = sext i32 %2 to i64, !dbg !6655
  %add3 = add i64 %conv2, 21, !dbg !6655
  %conv4 = trunc i64 %add3 to i32, !dbg !6655
  %3 = load ptr, ptr %__data_offsets.addr, align 8, !dbg !6655
  %memcg_path5 = getelementptr inbounds %struct.trace_event_data_offsets_mmap_lock, ptr %3, i32 0, i32 0, !dbg !6655
  store i32 %conv4, ptr %memcg_path5, align 4, !dbg !6655
  %4 = load i32, ptr %__item_length, align 4, !dbg !6655
  %shl = shl i32 %4, 16, !dbg !6655
  %5 = load ptr, ptr %__data_offsets.addr, align 8, !dbg !6655
  %memcg_path6 = getelementptr inbounds %struct.trace_event_data_offsets_mmap_lock, ptr %5, i32 0, i32 0, !dbg !6655
  %6 = load i32, ptr %memcg_path6, align 4, !dbg !6655
  %or = or i32 %6, %shl, !dbg !6655
  store i32 %or, ptr %memcg_path6, align 4, !dbg !6655
  %7 = load i32, ptr %__item_length, align 4, !dbg !6655
  %8 = load i32, ptr %__data_size, align 4, !dbg !6655
  %add7 = add i32 %8, %7, !dbg !6655
  store i32 %add7, ptr %__data_size, align 4, !dbg !6655
  %9 = load i32, ptr %__data_size, align 4, !dbg !6655
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #11, !dbg !6655
  call void @llvm.lifetime.end.p0(i64 4, ptr %__item_length) #11, !dbg !6655
  call void @llvm.lifetime.end.p0(i64 4, ptr %__data_size) #11, !dbg !6655
  ret i32 %9, !dbg !6655
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6656 dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6660 dso_local ptr @strcpy(ptr noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6664 dso_local void @trace_event_buffer_commit(ptr noundef) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6667 dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6668 dso_local i64 @strlen(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trace_raw_output_mmap_lock(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #1 align 16 !dbg !6671 {
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
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !6673, metadata !DIExpression()), !dbg !6681
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6674, metadata !DIExpression()), !dbg !6681
  store ptr %trace_event, ptr %trace_event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trace_event.addr, metadata !6675, metadata !DIExpression()), !dbg !6681
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #11, !dbg !6681
  call void @llvm.dbg.declare(metadata ptr %s, metadata !6676, metadata !DIExpression()), !dbg !6681
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !6681
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16, !dbg !6681
  store ptr %seq, ptr %s, align 8, !dbg !6681
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11, !dbg !6681
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6678, metadata !DIExpression()), !dbg !6681
  %1 = load ptr, ptr %iter.addr, align 8, !dbg !6681
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %1, i32 0, i32 13, !dbg !6681
  store ptr %tmp_seq, ptr %p, align 8, !dbg !6681
  call void @llvm.lifetime.start.p0(i64 8, ptr %field) #11, !dbg !6681
  call void @llvm.dbg.declare(metadata ptr %field, metadata !6679, metadata !DIExpression()), !dbg !6681
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !6681
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6680, metadata !DIExpression()), !dbg !6681
  %2 = load ptr, ptr %iter.addr, align 8, !dbg !6681
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %2, i32 0, i32 17, !dbg !6681
  %3 = load ptr, ptr %ent, align 8, !dbg !6681
  store ptr %3, ptr %field, align 8, !dbg !6681
  %4 = load ptr, ptr %iter.addr, align 8, !dbg !6681
  %5 = load ptr, ptr %trace_event.addr, align 8, !dbg !6681
  %call = call i32 @trace_raw_output_prep(ptr noundef %4, ptr noundef %5) #12, !dbg !6681
  store i32 %call, ptr %ret, align 4, !dbg !6681
  %6 = load i32, ptr %ret, align 4, !dbg !6682
  %cmp = icmp ne i32 %6, 1, !dbg !6682
  br i1 %cmp, label %if.then, label %if.end, !dbg !6681

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %ret, align 4, !dbg !6682
  store i32 %7, ptr %retval, align 4, !dbg !6682
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6682

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %iter.addr, align 8, !dbg !6681
  %9 = load ptr, ptr %field, align 8, !dbg !6681
  %mm = getelementptr inbounds %struct.trace_event_raw_mmap_lock, ptr %9, i32 0, i32 1, !dbg !6681
  %10 = load ptr, ptr %mm, align 8, !dbg !6681
  %11 = load ptr, ptr %field, align 8, !dbg !6681
  %12 = load ptr, ptr %field, align 8, !dbg !6681
  %__data_loc_memcg_path = getelementptr inbounds %struct.trace_event_raw_mmap_lock, ptr %12, i32 0, i32 2, !dbg !6681
  %13 = load i32, ptr %__data_loc_memcg_path, align 8, !dbg !6681
  %and = and i32 %13, 65535, !dbg !6681
  %idx.ext = zext i32 %and to i64, !dbg !6681
  %add.ptr = getelementptr i8, ptr %11, i64 %idx.ext, !dbg !6681
  %14 = load ptr, ptr %field, align 8, !dbg !6681
  %write = getelementptr inbounds %struct.trace_event_raw_mmap_lock, ptr %14, i32 0, i32 3, !dbg !6681
  %15 = load i8, ptr %write, align 4, !dbg !6681, !range !6238, !noundef !336
  %tobool = trunc i8 %15 to i1, !dbg !6681
  %16 = zext i1 %tobool to i64, !dbg !6681
  %cond = select i1 %tobool, ptr @.str.9, ptr @.str.10, !dbg !6681
  call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %8, ptr noundef @.str.8, ptr noundef %10, ptr noundef %add.ptr, ptr noundef %cond) #12, !dbg !6681
  %17 = load ptr, ptr %s, align 8, !dbg !6681
  %call1 = call i32 @trace_handle_return(ptr noundef %17) #12, !dbg !6681
  store i32 %call1, ptr %retval, align 4, !dbg !6681
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6681

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !6681
  call void @llvm.lifetime.end.p0(i64 8, ptr %field) #11, !dbg !6681
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11, !dbg !6681
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #11, !dbg !6681
  %18 = load i32, ptr %retval, align 4, !dbg !6681
  ret i32 %18, !dbg !6681
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6684 dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6687 dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6690 dso_local i32 @trace_handle_return(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_trace_event_raw_event_mmap_lock_acquire_returned(ptr noundef %__data, ptr noundef %mm, ptr noundef %memcg_path, i1 noundef zeroext %write, i1 noundef zeroext %success) #1 align 16 !dbg !6693 {
entry:
  %__data.addr = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %memcg_path.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  %success.addr = alloca i8, align 1
  %trace_file = alloca ptr, align 8
  %__data_offsets = alloca %struct.trace_event_data_offsets_mmap_lock_acquire_returned, align 4
  %fbuffer = alloca %struct.trace_event_buffer, align 8
  %entry2 = alloca ptr, align 8
  %__data_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6695, metadata !DIExpression()), !dbg !6705
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6696, metadata !DIExpression()), !dbg !6705
  store ptr %memcg_path, ptr %memcg_path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memcg_path.addr, metadata !6697, metadata !DIExpression()), !dbg !6705
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6698, metadata !DIExpression()), !dbg !6705
  %frombool1 = zext i1 %success to i8
  store i8 %frombool1, ptr %success.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %success.addr, metadata !6699, metadata !DIExpression()), !dbg !6705
  call void @llvm.lifetime.start.p0(i64 8, ptr %trace_file) #11, !dbg !6705
  call void @llvm.dbg.declare(metadata ptr %trace_file, metadata !6700, metadata !DIExpression()), !dbg !6705
  %0 = load ptr, ptr %__data.addr, align 8, !dbg !6705
  store ptr %0, ptr %trace_file, align 8, !dbg !6705
  call void @llvm.lifetime.start.p0(i64 4, ptr %__data_offsets) #11, !dbg !6705
  call void @llvm.dbg.declare(metadata ptr %__data_offsets, metadata !6701, metadata !DIExpression()), !dbg !6705
  call void @llvm.lifetime.start.p0(i64 48, ptr %fbuffer) #11, !dbg !6705
  call void @llvm.dbg.declare(metadata ptr %fbuffer, metadata !6702, metadata !DIExpression()), !dbg !6705
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry2) #11, !dbg !6705
  call void @llvm.dbg.declare(metadata ptr %entry2, metadata !6703, metadata !DIExpression()), !dbg !6705
  call void @llvm.lifetime.start.p0(i64 4, ptr %__data_size) #11, !dbg !6705
  call void @llvm.dbg.declare(metadata ptr %__data_size, metadata !6704, metadata !DIExpression()), !dbg !6705
  %1 = load ptr, ptr %trace_file, align 8, !dbg !6706
  %call = call zeroext i1 @trace_trigger_soft_disabled(ptr noundef %1) #12, !dbg !6706
  br i1 %call, label %if.then, label %if.end, !dbg !6705

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6706

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %mm.addr, align 8, !dbg !6705
  %3 = load ptr, ptr %memcg_path.addr, align 8, !dbg !6705
  %4 = load i8, ptr %write.addr, align 1, !dbg !6705, !range !6238, !noundef !336
  %tobool = trunc i8 %4 to i1, !dbg !6705
  %5 = load i8, ptr %success.addr, align 1, !dbg !6705, !range !6238, !noundef !336
  %tobool3 = trunc i8 %5 to i1, !dbg !6705
  %call4 = call i32 @trace_event_get_offsets_mmap_lock_acquire_returned(ptr noundef %__data_offsets, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %tobool, i1 noundef zeroext %tobool3) #12, !dbg !6705
  store i32 %call4, ptr %__data_size, align 4, !dbg !6705
  %6 = load ptr, ptr %trace_file, align 8, !dbg !6705
  %7 = load i32, ptr %__data_size, align 4, !dbg !6705
  %conv = sext i32 %7 to i64, !dbg !6705
  %add = add i64 24, %conv, !dbg !6705
  %call5 = call ptr @trace_event_buffer_reserve(ptr noundef %fbuffer, ptr noundef %6, i64 noundef %add) #12, !dbg !6705
  store ptr %call5, ptr %entry2, align 8, !dbg !6705
  %8 = load ptr, ptr %entry2, align 8, !dbg !6708
  %tobool6 = icmp ne ptr %8, null, !dbg !6708
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !6705

if.then7:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6708

if.end8:                                          ; preds = %if.end
  %memcg_path9 = getelementptr inbounds %struct.trace_event_data_offsets_mmap_lock_acquire_returned, ptr %__data_offsets, i32 0, i32 0, !dbg !6705
  %9 = load i32, ptr %memcg_path9, align 4, !dbg !6705
  %10 = load ptr, ptr %entry2, align 8, !dbg !6705
  %__data_loc_memcg_path = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %10, i32 0, i32 2, !dbg !6705
  store i32 %9, ptr %__data_loc_memcg_path, align 8, !dbg !6705
  %11 = load ptr, ptr %mm.addr, align 8, !dbg !6710
  %12 = load ptr, ptr %entry2, align 8, !dbg !6710
  %mm10 = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %12, i32 0, i32 1, !dbg !6710
  store ptr %11, ptr %mm10, align 8, !dbg !6710
  %13 = load ptr, ptr %entry2, align 8, !dbg !6710
  %14 = load ptr, ptr %entry2, align 8, !dbg !6710
  %__data_loc_memcg_path11 = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %14, i32 0, i32 2, !dbg !6710
  %15 = load i32, ptr %__data_loc_memcg_path11, align 8, !dbg !6710
  %and = and i32 %15, 65535, !dbg !6710
  %idx.ext = zext i32 %and to i64, !dbg !6710
  %add.ptr = getelementptr i8, ptr %13, i64 %idx.ext, !dbg !6710
  %16 = load ptr, ptr %memcg_path.addr, align 8, !dbg !6710
  %tobool12 = icmp ne ptr %16, null, !dbg !6710
  br i1 %tobool12, label %cond.true, label %cond.false, !dbg !6710

cond.true:                                        ; preds = %if.end8
  %17 = load ptr, ptr %memcg_path.addr, align 8, !dbg !6710
  br label %cond.end, !dbg !6710

cond.false:                                       ; preds = %if.end8
  br label %cond.end, !dbg !6710

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %17, %cond.true ], [ @.str.1, %cond.false ], !dbg !6710
  %call13 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #12, !dbg !6710
  %18 = load i8, ptr %write.addr, align 1, !dbg !6710, !range !6238, !noundef !336
  %tobool14 = trunc i8 %18 to i1, !dbg !6710
  %19 = load ptr, ptr %entry2, align 8, !dbg !6710
  %write15 = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %19, i32 0, i32 3, !dbg !6710
  %frombool16 = zext i1 %tobool14 to i8, !dbg !6710
  store i8 %frombool16, ptr %write15, align 4, !dbg !6710
  %20 = load i8, ptr %success.addr, align 1, !dbg !6710, !range !6238, !noundef !336
  %tobool17 = trunc i8 %20 to i1, !dbg !6710
  %21 = load ptr, ptr %entry2, align 8, !dbg !6710
  %success18 = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %21, i32 0, i32 4, !dbg !6710
  %frombool19 = zext i1 %tobool17 to i8, !dbg !6710
  store i8 %frombool19, ptr %success18, align 1, !dbg !6710
  call void @trace_event_buffer_commit(ptr noundef %fbuffer) #12, !dbg !6705
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6705
  br label %cleanup, !dbg !6705

cleanup:                                          ; preds = %cond.end, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %__data_size) #11, !dbg !6705
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry2) #11, !dbg !6705
  call void @llvm.lifetime.end.p0(i64 48, ptr %fbuffer) #11, !dbg !6705
  call void @llvm.lifetime.end.p0(i64 4, ptr %__data_offsets) #11, !dbg !6705
  call void @llvm.lifetime.end.p0(i64 8, ptr %trace_file) #11, !dbg !6705
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6705

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trace_event_get_offsets_mmap_lock_acquire_returned(ptr noundef %__data_offsets, ptr noundef %mm, ptr noundef %memcg_path, i1 noundef zeroext %write, i1 noundef zeroext %success) #4 align 16 !dbg !6712 {
entry:
  %__data_offsets.addr = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %memcg_path.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  %success.addr = alloca i8, align 1
  %__data_size = alloca i32, align 4
  %__item_length = alloca i32, align 4
  %entry2 = alloca ptr, align 8
  store ptr %__data_offsets, ptr %__data_offsets.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data_offsets.addr, metadata !6717, metadata !DIExpression()), !dbg !6725
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6718, metadata !DIExpression()), !dbg !6725
  store ptr %memcg_path, ptr %memcg_path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memcg_path.addr, metadata !6719, metadata !DIExpression()), !dbg !6725
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6720, metadata !DIExpression()), !dbg !6725
  %frombool1 = zext i1 %success to i8
  store i8 %frombool1, ptr %success.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %success.addr, metadata !6721, metadata !DIExpression()), !dbg !6725
  call void @llvm.lifetime.start.p0(i64 4, ptr %__data_size) #11, !dbg !6725
  call void @llvm.dbg.declare(metadata ptr %__data_size, metadata !6722, metadata !DIExpression()), !dbg !6725
  store i32 0, ptr %__data_size, align 4, !dbg !6725
  call void @llvm.lifetime.start.p0(i64 4, ptr %__item_length) #11, !dbg !6725
  call void @llvm.dbg.declare(metadata ptr %__item_length, metadata !6723, metadata !DIExpression()), !dbg !6725
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry2) #11, !dbg !6725
  call void @llvm.dbg.declare(metadata ptr %entry2, metadata !6724, metadata !DIExpression()), !dbg !6725
  %0 = load ptr, ptr %memcg_path.addr, align 8, !dbg !6725
  %tobool = icmp ne ptr %0, null, !dbg !6725
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6725

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %memcg_path.addr, align 8, !dbg !6725
  br label %cond.end, !dbg !6725

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6725

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %1, %cond.true ], [ @.str.1, %cond.false ], !dbg !6725
  %call = call i64 @strlen(ptr noundef %cond) #12, !dbg !6725
  %add = add i64 %call, 1, !dbg !6725
  %mul = mul i64 %add, 1, !dbg !6725
  %conv = trunc i64 %mul to i32, !dbg !6725
  store i32 %conv, ptr %__item_length, align 4, !dbg !6725
  %2 = load i32, ptr %__data_size, align 4, !dbg !6725
  %conv3 = sext i32 %2 to i64, !dbg !6725
  %add4 = add i64 %conv3, 22, !dbg !6725
  %conv5 = trunc i64 %add4 to i32, !dbg !6725
  %3 = load ptr, ptr %__data_offsets.addr, align 8, !dbg !6725
  %memcg_path6 = getelementptr inbounds %struct.trace_event_data_offsets_mmap_lock_acquire_returned, ptr %3, i32 0, i32 0, !dbg !6725
  store i32 %conv5, ptr %memcg_path6, align 4, !dbg !6725
  %4 = load i32, ptr %__item_length, align 4, !dbg !6725
  %shl = shl i32 %4, 16, !dbg !6725
  %5 = load ptr, ptr %__data_offsets.addr, align 8, !dbg !6725
  %memcg_path7 = getelementptr inbounds %struct.trace_event_data_offsets_mmap_lock_acquire_returned, ptr %5, i32 0, i32 0, !dbg !6725
  %6 = load i32, ptr %memcg_path7, align 4, !dbg !6725
  %or = or i32 %6, %shl, !dbg !6725
  store i32 %or, ptr %memcg_path7, align 4, !dbg !6725
  %7 = load i32, ptr %__item_length, align 4, !dbg !6725
  %8 = load i32, ptr %__data_size, align 4, !dbg !6725
  %add8 = add i32 %8, %7, !dbg !6725
  store i32 %add8, ptr %__data_size, align 4, !dbg !6725
  %9 = load i32, ptr %__data_size, align 4, !dbg !6725
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry2) #11, !dbg !6725
  call void @llvm.lifetime.end.p0(i64 4, ptr %__item_length) #11, !dbg !6725
  call void @llvm.lifetime.end.p0(i64 4, ptr %__data_size) #11, !dbg !6725
  ret i32 %9, !dbg !6725
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trace_raw_output_mmap_lock_acquire_returned(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #1 align 16 !dbg !6726 {
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
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !6728, metadata !DIExpression()), !dbg !6735
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6729, metadata !DIExpression()), !dbg !6735
  store ptr %trace_event, ptr %trace_event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trace_event.addr, metadata !6730, metadata !DIExpression()), !dbg !6735
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #11, !dbg !6735
  call void @llvm.dbg.declare(metadata ptr %s, metadata !6731, metadata !DIExpression()), !dbg !6735
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !6735
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16, !dbg !6735
  store ptr %seq, ptr %s, align 8, !dbg !6735
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11, !dbg !6735
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6732, metadata !DIExpression()), !dbg !6735
  %1 = load ptr, ptr %iter.addr, align 8, !dbg !6735
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %1, i32 0, i32 13, !dbg !6735
  store ptr %tmp_seq, ptr %p, align 8, !dbg !6735
  call void @llvm.lifetime.start.p0(i64 8, ptr %field) #11, !dbg !6735
  call void @llvm.dbg.declare(metadata ptr %field, metadata !6733, metadata !DIExpression()), !dbg !6735
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !6735
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6734, metadata !DIExpression()), !dbg !6735
  %2 = load ptr, ptr %iter.addr, align 8, !dbg !6735
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %2, i32 0, i32 17, !dbg !6735
  %3 = load ptr, ptr %ent, align 8, !dbg !6735
  store ptr %3, ptr %field, align 8, !dbg !6735
  %4 = load ptr, ptr %iter.addr, align 8, !dbg !6735
  %5 = load ptr, ptr %trace_event.addr, align 8, !dbg !6735
  %call = call i32 @trace_raw_output_prep(ptr noundef %4, ptr noundef %5) #12, !dbg !6735
  store i32 %call, ptr %ret, align 4, !dbg !6735
  %6 = load i32, ptr %ret, align 4, !dbg !6736
  %cmp = icmp ne i32 %6, 1, !dbg !6736
  br i1 %cmp, label %if.then, label %if.end, !dbg !6735

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %ret, align 4, !dbg !6736
  store i32 %7, ptr %retval, align 4, !dbg !6736
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6736

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %iter.addr, align 8, !dbg !6735
  %9 = load ptr, ptr %field, align 8, !dbg !6735
  %mm = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %9, i32 0, i32 1, !dbg !6735
  %10 = load ptr, ptr %mm, align 8, !dbg !6735
  %11 = load ptr, ptr %field, align 8, !dbg !6735
  %12 = load ptr, ptr %field, align 8, !dbg !6735
  %__data_loc_memcg_path = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %12, i32 0, i32 2, !dbg !6735
  %13 = load i32, ptr %__data_loc_memcg_path, align 8, !dbg !6735
  %and = and i32 %13, 65535, !dbg !6735
  %idx.ext = zext i32 %and to i64, !dbg !6735
  %add.ptr = getelementptr i8, ptr %11, i64 %idx.ext, !dbg !6735
  %14 = load ptr, ptr %field, align 8, !dbg !6735
  %write = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %14, i32 0, i32 3, !dbg !6735
  %15 = load i8, ptr %write, align 4, !dbg !6735, !range !6238, !noundef !336
  %tobool = trunc i8 %15 to i1, !dbg !6735
  %16 = zext i1 %tobool to i64, !dbg !6735
  %cond = select i1 %tobool, ptr @.str.9, ptr @.str.10, !dbg !6735
  %17 = load ptr, ptr %field, align 8, !dbg !6735
  %success = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %17, i32 0, i32 4, !dbg !6735
  %18 = load i8, ptr %success, align 1, !dbg !6735, !range !6238, !noundef !336
  %tobool1 = trunc i8 %18 to i1, !dbg !6735
  %19 = zext i1 %tobool1 to i64, !dbg !6735
  %cond2 = select i1 %tobool1, ptr @.str.9, ptr @.str.10, !dbg !6735
  call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %8, ptr noundef @.str.12, ptr noundef %10, ptr noundef %add.ptr, ptr noundef %cond, ptr noundef %cond2) #12, !dbg !6735
  %20 = load ptr, ptr %s, align 8, !dbg !6735
  %call3 = call i32 @trace_handle_return(ptr noundef %20) #12, !dbg !6735
  store i32 %call3, ptr %retval, align 4, !dbg !6735
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6735

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !6735
  call void @llvm.lifetime.end.p0(i64 8, ptr %field) #11, !dbg !6735
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11, !dbg !6735
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #11, !dbg !6735
  %21 = load i32, ptr %retval, align 4, !dbg !6735
  ret i32 %21, !dbg !6735
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bpf_prog_array_valid(ptr noundef %call) #4 align 16 !dbg !6738 {
entry:
  %call.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %call, ptr %call.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %call.addr, metadata !6742, metadata !DIExpression()), !dbg !6743
  br label %do.body, !dbg !6744

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6746

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %call.addr, align 8, !dbg !6744
  %prog_array = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11, !dbg !6744
  %1 = load volatile ptr, ptr %prog_array, align 8, !dbg !6744
  store ptr %1, ptr %tmp, align 8, !dbg !6746
  %2 = load ptr, ptr %tmp, align 8, !dbg !6744
  %tobool = icmp ne ptr %2, null, !dbg !6748
  %lnot = xor i1 %tobool, true, !dbg !6748
  %lnot1 = xor i1 %lnot, true, !dbg !6749
  ret i1 %lnot1, !dbg !6750
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hlist_empty(ptr noundef %h) #4 align 16 !dbg !6751 {
entry:
  %h.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !6758, metadata !DIExpression()), !dbg !6759
  br label %do.body, !dbg !6760

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6762

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %h.addr, align 8, !dbg !6760
  %first = getelementptr inbounds %struct.hlist_head, ptr %0, i32 0, i32 0, !dbg !6760
  %1 = load volatile ptr, ptr %first, align 8, !dbg !6760
  store ptr %1, ptr %tmp, align 8, !dbg !6762
  %2 = load ptr, ptr %tmp, align 8, !dbg !6760
  %tobool = icmp ne ptr %2, null, !dbg !6764
  %lnot = xor i1 %tobool, true, !dbg !6764
  %lnot.ext = zext i1 %lnot to i32, !dbg !6764
  ret i32 %lnot.ext, !dbg !6765
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6766 dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @perf_fetch_caller_regs(ptr noundef %regs) #4 align 16 !dbg !6770 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6774, metadata !DIExpression()), !dbg !6775
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !6776
  %1 = ptrtoint ptr %0 to i64, !dbg !6776
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6776
  %ip = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 16, !dbg !6776
  store i64 %1, ptr %ip, align 8, !dbg !6776
  %3 = call ptr @llvm.frameaddress.p0(i32 0), !dbg !6776
  %4 = ptrtoint ptr %3 to i64, !dbg !6776
  %5 = load ptr, ptr %regs.addr, align 8, !dbg !6776
  %sp = getelementptr inbounds %struct.pt_regs, ptr %5, i32 0, i32 19, !dbg !6776
  store i64 %4, ptr %sp, align 8, !dbg !6776
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !6776
  %7 = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 17, !dbg !6776
  store i16 16, ptr %7, align 8, !dbg !6776
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !6776
  %flags = getelementptr inbounds %struct.pt_regs, ptr %8, i32 0, i32 18, !dbg !6776
  store i64 0, ptr %flags, align 8, !dbg !6776
  ret void, !dbg !6778
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6779 dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #5 align 16 !dbg !6782 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6787, metadata !DIExpression()), !dbg !6788
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6789
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #12, !dbg !6790
  ret i1 %call, !dbg !6791
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #4 align 16 !dbg !6792 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6796, metadata !DIExpression()), !dbg !6797
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6798
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #12, !dbg !6799
  ret i1 %call, !dbg !6800
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #5 align 16 !dbg !6801 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6804, metadata !DIExpression()), !dbg !6811
  br label %do.body, !dbg !6812

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #11, !dbg !6813
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !6805, metadata !DIExpression()), !dbg !6813
  %0 = load i32, ptr %val.addr, align 4, !dbg !6813
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6813
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !6813

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !6813
  %cmp = icmp eq i32 %2, 1, !dbg !6813
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !6813

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !6813
  %cmp1 = icmp eq i32 %3, -1, !dbg !6813
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !6813

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !6813
  br label %cond.end, !dbg !6813

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !6813

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !6813
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !6813
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !6814
  %cmp2 = icmp eq i32 %5, 1, !dbg !6814
  br i1 %cmp2, label %if.then, label %if.else, !dbg !6813

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.27, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.27, ptr @pcpu_hot, i32 0, i32 1)) #11, !dbg !6815, !srcloc !6817
  br label %if.end8, !dbg !6814

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !6818
  %cmp3 = icmp eq i32 %6, -1, !dbg !6818
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !6814

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.27, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.27, ptr @pcpu_hot, i32 0, i32 1)) #11, !dbg !6819, !srcloc !6821
  br label %if.end, !dbg !6818

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !6818

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #11, !dbg !6822
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !6807, metadata !DIExpression()), !dbg !6822
  %7 = load i32, ptr %val.addr, align 4, !dbg !6822
  %conv = sext i32 %7 to i64, !dbg !6822
  %and = and i64 %conv, 4294967295, !dbg !6822
  %conv7 = trunc i64 %and to i32, !dbg !6822
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !6822
  %8 = load i32, ptr %pto_val__, align 4, !dbg !6822
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.27, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.27, ptr @pcpu_hot, i32 0, i32 1)) #11, !dbg !6822, !srcloc !6823
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #11, !dbg !6818
  br label %do.cond, !dbg !6822

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !6822

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #11, !dbg !6812
  br label %do.end10, !dbg !6813

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !6824
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #5 align 16 !dbg !6825 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #11, !dbg !6829
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6827, metadata !DIExpression()), !dbg !6829
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.27, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.27, ptr @pcpu_hot, i32 0, i32 1)) #11, !dbg !6829, !srcloc !6830
  %1 = icmp ult i8 %0, 2, !dbg !6829
  call void @llvm.assume(i1 %1), !dbg !6829
  store i8 %0, ptr %c, align 1, !dbg !6829
  %2 = load i8, ptr %c, align 1, !dbg !6829, !range !6238, !noundef !336
  %tobool = trunc i8 %2 to i1, !dbg !6829
  %frombool = zext i1 %tobool to i8, !dbg !6829
  store i8 %frombool, ptr %tmp, align 1, !dbg !6829
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #11, !dbg !6831
  %3 = load i8, ptr %tmp, align 1, !dbg !6829, !range !6238, !noundef !336
  %tobool1 = trunc i8 %3 to i1, !dbg !6829
  ret i1 %tobool1, !dbg !6832
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #5 align 16 !dbg !6833 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6838, metadata !DIExpression()), !dbg !6841
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !6839, metadata !DIExpression()), !dbg !6842
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6843
  %1 = load i8, ptr %branch.addr, align 1, !dbg !6844, !range !6238, !noundef !336
  %tobool = trunc i8 %1 to i1, !dbg !6844
  %conv = zext i1 %tobool to i32, !dbg !6844
  %or = or i32 2, %conv, !dbg !6845
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #11
          to label %asm.fallthrough [label %l_yes], !dbg !6846, !srcloc !6847

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6848
  br label %return, !dbg !6848

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !6840), !dbg !6849
  store i1 true, ptr %retval, align 1, !dbg !6850
  br label %return, !dbg !6850

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !6851
  ret i1 %2, !dbg !6851
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #5 align 16 !dbg !6852 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6856, metadata !DIExpression()), !dbg !6858
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !6857, metadata !DIExpression()), !dbg !6859
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6860
  %call = call i32 @cpumask_check(i32 noundef %0) #12, !dbg !6860
  %conv = zext i32 %call to i64, !dbg !6860
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !6860
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !6860
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6860
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #12, !dbg !6860
  ret i1 %call1, !dbg !6861
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6862 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6870, metadata !DIExpression()), !dbg !6872
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6871, metadata !DIExpression()), !dbg !6873
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6874
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6875
  %div = udiv i64 %1, 64, !dbg !6875
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6876
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #12, !dbg !6877
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6878
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6879
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !6880
  ret i1 %call, !dbg !6881
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #5 align 16 !dbg !6882 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6886, metadata !DIExpression()), !dbg !6887
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6888
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #12, !dbg !6889
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !6890
  ret i32 %1, !dbg !6891
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !6892 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6900, metadata !DIExpression()), !dbg !6902
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6901, metadata !DIExpression()), !dbg !6903
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6904
  %1 = load i64, ptr %size.addr, align 8, !dbg !6905
  %conv = trunc i64 %1 to i32, !dbg !6905
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #12, !dbg !6906
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6907
  %3 = load i64, ptr %size.addr, align 8, !dbg !6907
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #12, !dbg !6907
  ret void, !dbg !6908
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6909 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6912, metadata !DIExpression()), !dbg !6914
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6913, metadata !DIExpression()), !dbg !6915
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6916
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6917
  br i1 %1, label %cond.true, label %cond.false, !dbg !6917

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6918
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6919
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !6920
  %conv = zext i1 %call to i32, !dbg !6920
  br label %cond.end, !dbg !6917

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6921
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6922
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #12, !dbg !6923
  %conv2 = zext i1 %call1 to i32, !dbg !6923
  br label %cond.end, !dbg !6917

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6917
  %tobool = icmp ne i32 %cond, 0, !dbg !6917
  ret i1 %tobool, !dbg !6924
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !6925 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6930, metadata !DIExpression()), !dbg !6932
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6931, metadata !DIExpression()), !dbg !6933
  ret i1 true, !dbg !6934
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !6935 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6940, metadata !DIExpression()), !dbg !6943
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6941, metadata !DIExpression()), !dbg !6944
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6942, metadata !DIExpression()), !dbg !6945
  ret void, !dbg !6946
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6947 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6951, metadata !DIExpression()), !dbg !6953
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6952, metadata !DIExpression()), !dbg !6954
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6955
  %and = and i64 %0, 63, !dbg !6956
  %shl = shl i64 1, %and, !dbg !6957
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6958
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6959
  %shr = ashr i64 %2, 6, !dbg !6960
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6958
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6958
  %and1 = and i64 %shl, %3, !dbg !6961
  %cmp = icmp ne i64 %and1, 0, !dbg !6962
  ret i1 %cmp, !dbg !6963
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6964 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6966, metadata !DIExpression()), !dbg !6969
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6967, metadata !DIExpression()), !dbg !6970
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #11, !dbg !6971
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6968, metadata !DIExpression()), !dbg !6972
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6973
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6974
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #11, !dbg !6975, !srcloc !6976
  %3 = icmp ult i8 %2, 2, !dbg !6975
  call void @llvm.assume(i1 %3), !dbg !6975
  store i8 %2, ptr %oldbit, align 1, !dbg !6975
  %4 = load i8, ptr %oldbit, align 1, !dbg !6977, !range !6238, !noundef !336
  %tobool = trunc i8 %4 to i1, !dbg !6977
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #11, !dbg !6978
  ret i1 %tobool, !dbg !6979
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #5 align 16 !dbg !6980 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6984, metadata !DIExpression()), !dbg !6986
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !6985, metadata !DIExpression()), !dbg !6987
  ret void, !dbg !6988
}

attributes #0 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #9 = { nocallback nounwind }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { noredzone }
attributes #13 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!6200}
!llvm.module.flags = !{!6201, !6202, !6203, !6204, !6205, !6206, !6207, !6208}
!llvm.ident = !{!6209}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__tpstrtab_mmap_lock_start_locking", scope: !2, file: !5937, line: 49, type: !6197, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF mm/.mmap_lock.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22mm/mmap_lock\22 -D KBUILD_BASENAME=\22mmap_lock\22 -D KBUILD_MODNAME=\22mmap_lock\22 -D __KBUILD_MODNAME=kmod_mmap_lock -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o mm/mmap_lock.ll mm/mmap_lock.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !298, globals: !5961, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "mm/mmap_lock.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a4baa3f3915f73d6e2dadc5043847925")
!4 = !{!5, !13, !19, !35, !43, !50, !58, !64, !69, !75, !82, !87, !183, !189, !196, !204, !211, !220, !225, !230, !236, !245, !256, !262, !274, !279, !293}
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
!262 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !263, line: 44, baseType: !7, size: 32, elements: !264)
!263 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!264 = !{!265, !266, !267, !268, !269, !270, !271, !272, !273}
!265 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!266 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!267 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!268 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!269 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!270 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!271 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!272 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!273 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!274 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !275, line: 32, baseType: !7, size: 32, elements: !276)
!275 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!276 = !{!277, !278}
!277 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!278 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!279 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !246, line: 640, baseType: !7, size: 32, elements: !280)
!280 = !{!281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292}
!281 = !DIEnumerator(name: "EVENT_FILE_FL_ENABLED", value: 1)
!282 = !DIEnumerator(name: "EVENT_FILE_FL_RECORDED_CMD", value: 2)
!283 = !DIEnumerator(name: "EVENT_FILE_FL_RECORDED_TGID", value: 4)
!284 = !DIEnumerator(name: "EVENT_FILE_FL_FILTERED", value: 8)
!285 = !DIEnumerator(name: "EVENT_FILE_FL_NO_SET_FILTER", value: 16)
!286 = !DIEnumerator(name: "EVENT_FILE_FL_SOFT_MODE", value: 32)
!287 = !DIEnumerator(name: "EVENT_FILE_FL_SOFT_DISABLED", value: 64)
!288 = !DIEnumerator(name: "EVENT_FILE_FL_TRIGGER_MODE", value: 128)
!289 = !DIEnumerator(name: "EVENT_FILE_FL_TRIGGER_COND", value: 256)
!290 = !DIEnumerator(name: "EVENT_FILE_FL_PID_FILTER", value: 512)
!291 = !DIEnumerator(name: "EVENT_FILE_FL_WAS_ENABLED", value: 1024)
!292 = !DIEnumerator(name: "EVENT_FILE_FL_FREED", value: 2048)
!293 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !294, line: 10, baseType: !7, size: 32, elements: !295)
!294 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!295 = !{!296, !297}
!296 = !DIEnumerator(name: "false", value: 0)
!297 = !DIEnumerator(name: "true", value: 1)
!298 = !{!96, !299, !302, !309, !312, !5932, !1056, !92, !98, !5935, !5944, !2470, !115, !5953, !5956, !896, !5959, !3488, !7, !484}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !304, line: 26, size: 192, elements: !305)
!304 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!305 = !{!306, !307, !308}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !303, file: !304, line: 27, baseType: !96, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !303, file: !304, line: 28, baseType: !96, size: 64, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !303, file: !304, line: 29, baseType: !98, size: 32, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !96)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !96, !315, !92, !1045}
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !20, line: 733, size: 10240, elements: !317)
!317 = !{!318, !5930}
!318 = !DIDerivedType(tag: DW_TAG_member, scope: !316, file: !20, line: 734, baseType: !319, size: 10240)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !316, file: !20, line: 734, size: 10240, elements: !320)
!320 = !{!321, !325, !339, !5810, !5811, !5812, !5813, !5814, !5815, !5822, !5823, !5824, !5830, !5831, !5832, !5833, !5834, !5835, !5836, !5837, !5838, !5839, !5840, !5841, !5842, !5843, !5844, !5845, !5846, !5847, !5848, !5849, !5850, !5851, !5852, !5853, !5854, !5855, !5856, !5857, !5858, !5859, !5863, !5864, !5867, !5910, !5911, !5912, !5915, !5916, !5917, !5920, !5921, !5922, !5928, !5929}
!321 = !DIDerivedType(tag: DW_TAG_member, scope: !319, file: !20, line: 739, baseType: !322, size: 512, align: 512)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !319, file: !20, line: 739, size: 512, align: 512, elements: !323)
!323 = !{!324}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !322, file: !20, line: 747, baseType: !125, size: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !319, file: !20, line: 750, baseType: !326, size: 128, offset: 512)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !327, line: 218, size: 128, elements: !328)
!327 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!328 = !{!329, !337, !338}
!329 = !DIDerivedType(tag: DW_TAG_member, scope: !326, file: !327, line: 219, baseType: !330, size: 32)
!330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !326, file: !327, line: 219, size: 32, elements: !331)
!331 = !{!332, !333}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !330, file: !327, line: 220, baseType: !135, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !330, file: !327, line: 221, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !327, line: 197, baseType: !335)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !327, line: 197, elements: !336)
!336 = !{}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !326, file: !327, line: 223, baseType: !7, size: 32, offset: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !326, file: !327, line: 224, baseType: !96, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !319, file: !20, line: 752, baseType: !340, size: 64, offset: 640)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!115, !343, !115, !115, !115, !115}
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !83, line: 994, size: 1856, align: 64, elements: !345)
!345 = !{!346, !365, !366, !368, !377, !390, !391, !392, !5790, !5791, !5800, !5801, !5802, !5803, !5804, !5805, !5806, !5807, !5808, !5809}
!346 = !DIDerivedType(tag: DW_TAG_member, scope: !344, file: !83, line: 995, baseType: !347, size: 128)
!347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !344, file: !83, line: 995, size: 128, elements: !348)
!348 = !{!349, !355, !364}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !347, file: !83, line: 996, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !351, line: 60, size: 64, elements: !352)
!351 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !350, file: !351, line: 61, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !347, file: !83, line: 997, baseType: !356, size: 128, align: 64)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !101, line: 232, size: 128, align: 64, elements: !357)
!357 = !{!358, !360}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !356, file: !101, line: 233, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !356, file: !101, line: 234, baseType: !361, size: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !359}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !347, file: !83, line: 998, baseType: !7, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !344, file: !83, line: 1005, baseType: !135, size: 32, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !344, file: !83, line: 1006, baseType: !367, size: 32, offset: 160)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !101, line: 156, baseType: !7)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !344, file: !83, line: 1007, baseType: !369, size: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !370, line: 13, baseType: !371)
!370 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !101, line: 181, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !101, line: 179, size: 64, elements: !373)
!373 = !{!374}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !372, file: !101, line: 180, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !160, line: 22, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !162, line: 30, baseType: !119)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !344, file: !83, line: 1008, baseType: !378, size: 256, offset: 256)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !379, line: 66, size: 256, elements: !380)
!379 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!380 = !{!381, !382, !384, !389}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !378, file: !379, line: 67, baseType: !369, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !378, file: !379, line: 68, baseType: !383, size: 32, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !144, line: 23, baseType: !143)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !378, file: !379, line: 70, baseType: !385, size: 32, offset: 96)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !386, line: 15, size: 32, elements: !387)
!386 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!387 = !{!388}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !385, file: !386, line: 20, baseType: !125, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !378, file: !379, line: 72, baseType: !173, size: 128, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !344, file: !83, line: 1009, baseType: !117, size: 64, offset: 512)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !344, file: !83, line: 1010, baseType: !7, size: 32, offset: 576)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !344, file: !83, line: 1011, baseType: !393, size: 256, offset: 640)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !83, line: 948, size: 256, elements: !394)
!394 = !{!395, !418, !5786, !5787, !5788, !5789}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !393, file: !83, line: 949, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !397, line: 34, baseType: !398)
!397 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !397, line: 25, size: 64, elements: !399)
!399 = !{!400}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !398, file: !397, line: 26, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !402, line: 27, baseType: !403)
!402 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !402, line: 13, size: 64, elements: !404)
!404 = !{!405, !417}
!405 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !402, line: 14, baseType: !406, size: 32)
!406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !403, file: !402, line: 14, size: 32, elements: !407)
!407 = !{!408, !409}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !406, file: !402, line: 15, baseType: !125, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, scope: !406, file: !402, line: 16, baseType: !410, size: 32)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !406, file: !402, line: 16, size: 32, elements: !411)
!411 = !{!412, !413}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !410, file: !402, line: 18, baseType: !159, size: 8)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !410, file: !402, line: 19, baseType: !414, size: 24, offset: 8)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 24, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 3)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !403, file: !402, line: 26, baseType: !147, size: 32, offset: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !393, file: !83, line: 950, baseType: !419, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !51, line: 59, size: 768, elements: !421)
!421 = !{!422, !428, !429, !430, !443, !444, !445, !446}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !420, file: !51, line: 61, baseType: !423, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !424, line: 113, baseType: !425)
!424 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !424, line: 111, size: 32, elements: !426)
!426 = !{!427}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !425, file: !424, line: 112, baseType: !125, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !420, file: !51, line: 62, baseType: !7, size: 32, offset: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !420, file: !51, line: 63, baseType: !135, size: 32, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !420, file: !51, line: 65, baseType: !431, size: 256, offset: 128)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 256, elements: !441)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !101, line: 194, size: 64, elements: !433)
!433 = !{!434}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !432, file: !101, line: 195, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !101, line: 198, size: 128, elements: !437)
!437 = !{!438, !439}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !436, file: !101, line: 199, baseType: !435, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !436, file: !101, line: 199, baseType: !440, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!441 = !{!442}
!442 = !DISubrange(count: 4)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !420, file: !51, line: 66, baseType: !432, size: 64, offset: 384)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !420, file: !51, line: 68, baseType: !130, size: 192, offset: 448)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !420, file: !51, line: 69, baseType: !356, size: 128, align: 64, offset: 640)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !420, file: !51, line: 70, baseType: !447, offset: 768)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, elements: !1276)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !51, line: 54, size: 128, elements: !449)
!449 = !{!450, !451}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !448, file: !51, line: 55, baseType: !98, size: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !448, file: !51, line: 56, baseType: !452, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !454, line: 26, size: 1152, elements: !455)
!454 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!455 = !{!456, !470, !471, !472, !5775, !5776, !5777, !5778, !5781, !5782, !5783, !5784, !5785}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !453, file: !454, line: 27, baseType: !457, size: 192)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !458, line: 19, size: 192, elements: !459)
!458 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!459 = !{!460, !468, !469}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !457, file: !458, line: 20, baseType: !461, size: 128)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !462, line: 296, size: 128, elements: !463)
!462 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!463 = !{!464, !465, !467}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !461, file: !462, line: 297, baseType: !135, size: 32)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !461, file: !462, line: 299, baseType: !466, size: 32, offset: 32)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !101, line: 154, baseType: !7)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !461, file: !462, line: 300, baseType: !96, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !457, file: !458, line: 21, baseType: !7, size: 32, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !457, file: !458, line: 22, baseType: !7, size: 32, offset: 160)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !453, file: !454, line: 28, baseType: !356, size: 128, align: 64, offset: 192)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !453, file: !454, line: 29, baseType: !7, size: 32, offset: 320)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !453, file: !454, line: 30, baseType: !473, size: 64, offset: 384)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !475, line: 746, size: 58368, elements: !476)
!475 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!476 = !{!477, !487, !488, !489, !490, !491, !492, !493, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !569, !580, !680, !684, !687, !718, !719, !720, !721, !732, !734, !735, !736, !737, !738, !739, !750, !751, !754, !755, !756, !757, !758, !759, !760, !761, !768, !769, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !866, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !881, !882, !883, !895, !897, !898, !899, !900, !901, !902, !908, !909, !910, !911, !912, !913, !914, !926, !932, !1283, !1284, !1285, !1286, !1290, !1293, !1300, !1305, !1308, !1311, !1314, !5054, !5252, !5279, !5280, !5281, !5282, !5283, !5284, !5285, !5286, !5287, !5290, !5291, !5292, !5301, !5309, !5310, !5311, !5312, !5313, !5318, !5319, !5320, !5323, !5324, !5327, !5330, !5333, !5340, !5343, !5344, !5430, !5431, !5432, !5433, !5434, !5440, !5441, !5442, !5443, !5444, !5445, !5448, !5451, !5452, !5455, !5456, !5457, !5458, !5459, !5460, !5461, !5462, !5463, !5476, !5477, !5478, !5479, !5480, !5481, !5482, !5483, !5484, !5495, !5496, !5502, !5505, !5506, !5507, !5508, !5509, !5510, !5511, !5512, !5584, !5586, !5587, !5588, !5589, !5590, !5591, !5594, !5595, !5596, !5597, !5598, !5599, !5600, !5601, !5602, !5603, !5604, !5608, !5609, !5610}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !474, file: !475, line: 752, baseType: !478, size: 192)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !479, line: 56, size: 192, elements: !480)
!479 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!480 = !{!481, !482, !483, !486}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !478, file: !479, line: 57, baseType: !115, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !478, file: !479, line: 58, baseType: !115, size: 64, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !478, file: !479, line: 59, baseType: !484, size: 32, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !160, line: 21, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !162, line: 27, baseType: !7)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !478, file: !479, line: 61, baseType: !484, size: 32, offset: 160)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !474, file: !475, line: 754, baseType: !7, size: 32, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !474, file: !475, line: 767, baseType: !96, size: 64, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !474, file: !475, line: 768, baseType: !423, size: 32, offset: 320)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !474, file: !475, line: 770, baseType: !7, size: 32, offset: 352)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !474, file: !475, line: 771, baseType: !7, size: 32, offset: 384)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !474, file: !475, line: 774, baseType: !98, size: 32, offset: 416)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !474, file: !475, line: 775, baseType: !494, size: 128, offset: 448)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !495, line: 58, size: 128, elements: !496)
!495 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!496 = !{!497, !498, !503, !504}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !494, file: !495, line: 59, baseType: !350, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, scope: !494, file: !495, line: 60, baseType: !499, size: 32, offset: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !494, file: !495, line: 60, size: 32, elements: !500)
!500 = !{!501, !502}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !499, file: !495, line: 61, baseType: !7, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !499, file: !495, line: 62, baseType: !125, size: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !494, file: !495, line: 65, baseType: !169, size: 16, offset: 96)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !494, file: !495, line: 65, baseType: !169, size: 16, offset: 112)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !474, file: !475, line: 776, baseType: !7, size: 32, offset: 576)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !474, file: !475, line: 777, baseType: !115, size: 64, offset: 640)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !474, file: !475, line: 778, baseType: !473, size: 64, offset: 704)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !474, file: !475, line: 787, baseType: !98, size: 32, offset: 768)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !474, file: !475, line: 788, baseType: !98, size: 32, offset: 800)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !474, file: !475, line: 790, baseType: !98, size: 32, offset: 832)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !474, file: !475, line: 792, baseType: !98, size: 32, offset: 864)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !474, file: !475, line: 793, baseType: !98, size: 32, offset: 896)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !474, file: !475, line: 794, baseType: !98, size: 32, offset: 928)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !474, file: !475, line: 795, baseType: !7, size: 32, offset: 960)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !474, file: !475, line: 797, baseType: !516, size: 2048, offset: 1024)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !475, line: 551, size: 2048, elements: !517)
!517 = !{!518, !523, !531, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !548, !551, !552, !553}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !516, file: !475, line: 553, baseType: !519, size: 128)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !475, line: 411, size: 128, elements: !520)
!520 = !{!521, !522}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !519, file: !475, line: 412, baseType: !115, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !519, file: !475, line: 413, baseType: !484, size: 32, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !516, file: !475, line: 554, baseType: !524, size: 192, align: 64, offset: 128)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !525, line: 5, size: 192, align: 64, elements: !526)
!525 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!526 = !{!527, !528, !530}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !524, file: !525, line: 6, baseType: !115, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !524, file: !525, line: 7, baseType: !529, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !524, file: !525, line: 8, baseType: !529, size: 64, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !516, file: !475, line: 555, baseType: !532, size: 64, offset: 320)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !160, line: 23, baseType: !533)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !162, line: 31, baseType: !534)
!534 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !516, file: !475, line: 556, baseType: !532, size: 64, offset: 384)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !516, file: !475, line: 558, baseType: !173, size: 128, offset: 448)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !516, file: !475, line: 559, baseType: !7, size: 32, offset: 576)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !516, file: !475, line: 561, baseType: !532, size: 64, offset: 640)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !516, file: !475, line: 562, baseType: !532, size: 64, offset: 704)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !516, file: !475, line: 563, baseType: !532, size: 64, offset: 768)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !516, file: !475, line: 564, baseType: !532, size: 64, offset: 832)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !516, file: !475, line: 565, baseType: !375, size: 64, offset: 896)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !516, file: !475, line: 566, baseType: !532, size: 64, offset: 960)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !516, file: !475, line: 568, baseType: !532, size: 64, offset: 1024)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !516, file: !475, line: 571, baseType: !98, size: 32, offset: 1088)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !516, file: !475, line: 572, baseType: !547, size: 64, offset: 1152)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !516, file: !475, line: 574, baseType: !549, size: 64, offset: 1216)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !475, line: 49, flags: DIFlagFwdDecl)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !516, file: !475, line: 576, baseType: !549, size: 64, offset: 1280)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !516, file: !475, line: 578, baseType: !115, size: 64, offset: 1344)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !516, file: !475, line: 588, baseType: !554, size: 512, align: 512, offset: 1536)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !475, line: 497, size: 512, align: 512, elements: !555)
!555 = !{!556, !557, !558, !559, !560, !561, !562, !563, !564}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !554, file: !475, line: 498, baseType: !532, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !554, file: !475, line: 499, baseType: !532, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !554, file: !475, line: 500, baseType: !532, size: 64, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !554, file: !475, line: 501, baseType: !484, size: 32, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !554, file: !475, line: 502, baseType: !484, size: 32, offset: 224)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !554, file: !475, line: 503, baseType: !115, size: 64, offset: 256)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !554, file: !475, line: 504, baseType: !115, size: 64, offset: 320)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !554, file: !475, line: 505, baseType: !115, size: 64, offset: 384)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !554, file: !475, line: 506, baseType: !565, size: 64, align: 64, offset: 448)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !475, line: 445, size: 64, align: 64, elements: !566)
!566 = !{!567, !568}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !565, file: !475, line: 446, baseType: !7, size: 32)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !565, file: !475, line: 447, baseType: !7, size: 32, offset: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !474, file: !475, line: 798, baseType: !570, size: 384, offset: 3072)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !475, line: 592, size: 384, elements: !571)
!571 = !{!572, !573, !574, !575, !576, !577, !578}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !570, file: !475, line: 593, baseType: !173, size: 128)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !570, file: !475, line: 594, baseType: !115, size: 64, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !570, file: !475, line: 595, baseType: !115, size: 64, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !570, file: !475, line: 596, baseType: !7, size: 32, offset: 256)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !570, file: !475, line: 597, baseType: !102, size: 16, offset: 288)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !570, file: !475, line: 598, baseType: !102, size: 16, offset: 304)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !570, file: !475, line: 600, baseType: !579, size: 64, offset: 320)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !474, file: !475, line: 799, baseType: !581, size: 1792, offset: 3456)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !475, line: 610, size: 1792, elements: !582)
!582 = !{!583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !677, !678}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !581, file: !475, line: 611, baseType: !524, size: 192, align: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !581, file: !475, line: 618, baseType: !532, size: 64, offset: 192)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !581, file: !475, line: 619, baseType: !532, size: 64, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !581, file: !475, line: 620, baseType: !532, size: 64, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !581, file: !475, line: 621, baseType: !532, size: 64, offset: 384)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !581, file: !475, line: 622, baseType: !532, size: 64, offset: 448)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !581, file: !475, line: 629, baseType: !375, size: 64, offset: 512)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !581, file: !475, line: 630, baseType: !532, size: 64, offset: 576)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !581, file: !475, line: 631, baseType: !7, size: 32, offset: 640)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !581, file: !475, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !581, file: !475, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !581, file: !475, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !581, file: !475, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !581, file: !475, line: 662, baseType: !597, size: 512, offset: 704)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !65, line: 118, size: 512, elements: !598)
!598 = !{!599, !607, !608, !613, !673, !674, !675, !676}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !597, file: !65, line: 119, baseType: !600, size: 256)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !601, line: 9, size: 256, elements: !602)
!601 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!602 = !{!603, !604}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !600, file: !601, line: 10, baseType: !524, size: 192, align: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !600, file: !601, line: 11, baseType: !605, size: 64, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !606, line: 29, baseType: !375)
!606 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!607 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !597, file: !65, line: 120, baseType: !605, size: 64, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !597, file: !65, line: 121, baseType: !609, size: 64, offset: 320)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!64, !612}
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !597, file: !65, line: 122, baseType: !614, size: 64, offset: 384)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !65, line: 159, size: 512, align: 512, elements: !616)
!616 = !{!617, !642, !643, !646, !656, !657, !668, !672}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !615, file: !65, line: 160, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !65, line: 215, size: 4608, align: 512, elements: !620)
!620 = !{!621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !619, file: !65, line: 216, baseType: !383, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !619, file: !65, line: 217, baseType: !7, size: 32, offset: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !619, file: !65, line: 218, baseType: !7, size: 32, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !619, file: !65, line: 219, baseType: !7, size: 32, offset: 96)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !619, file: !65, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !619, file: !65, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !619, file: !65, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !619, file: !65, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !619, file: !65, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !619, file: !65, line: 226, baseType: !7, size: 32, offset: 160)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !619, file: !65, line: 227, baseType: !102, size: 16, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !619, file: !65, line: 228, baseType: !102, size: 16, offset: 208)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !619, file: !65, line: 229, baseType: !7, size: 32, offset: 224)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !619, file: !65, line: 235, baseType: !605, size: 64, offset: 256)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !619, file: !65, line: 236, baseType: !612, size: 64, offset: 320)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !619, file: !65, line: 237, baseType: !605, size: 64, offset: 384)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !619, file: !65, line: 238, baseType: !612, size: 64, offset: 448)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !619, file: !65, line: 239, baseType: !639, size: 4096, align: 512, offset: 512)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !615, size: 4096, align: 512, elements: !640)
!640 = !{!641}
!641 = !DISubrange(count: 8)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !615, file: !65, line: 161, baseType: !7, size: 32, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !615, file: !65, line: 162, baseType: !644, size: 32, offset: 96)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !101, line: 32, baseType: !645)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !113, line: 96, baseType: !98)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !615, file: !65, line: 163, baseType: !647, size: 32, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !648, line: 274, baseType: !649)
!648 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !648, line: 274, size: 32, elements: !650)
!650 = !{!651}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !649, file: !648, line: 274, baseType: !652, size: 32)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !648, line: 69, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !648, line: 64, size: 32, elements: !654)
!654 = !{!655}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !653, file: !648, line: 65, baseType: !7, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !615, file: !65, line: 164, baseType: !612, size: 64, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !615, file: !65, line: 165, baseType: !658, size: 128, offset: 256)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !601, line: 14, size: 128, elements: !659)
!659 = !{!660}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !658, file: !601, line: 15, baseType: !661, size: 128)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !525, line: 26, size: 128, elements: !662)
!662 = !{!663, !667}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !661, file: !525, line: 27, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !525, line: 12, size: 64, elements: !665)
!665 = !{!666}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !664, file: !525, line: 13, baseType: !529, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !661, file: !525, line: 28, baseType: !529, size: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !615, file: !65, line: 166, baseType: !669, size: 64, offset: 384)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!605}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !615, file: !65, line: 167, baseType: !605, size: 64, offset: 448)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !597, file: !65, line: 123, baseType: !159, size: 8, offset: 448)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !597, file: !65, line: 124, baseType: !159, size: 8, offset: 456)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !597, file: !65, line: 125, baseType: !159, size: 8, offset: 464)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !597, file: !65, line: 126, baseType: !159, size: 8, offset: 472)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !581, file: !475, line: 671, baseType: !597, size: 512, offset: 1216)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !581, file: !475, line: 679, baseType: !679, size: 64, offset: 1728)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !474, file: !475, line: 800, baseType: !681, size: 64, offset: 5248)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !683)
!683 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !475, line: 800, flags: DIFlagFwdDecl)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !474, file: !475, line: 809, baseType: !685, size: 64, offset: 5312)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !475, line: 70, flags: DIFlagFwdDecl)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !474, file: !475, line: 825, baseType: !688, size: 2048, align: 512, offset: 5632)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !475, line: 509, size: 2048, align: 512, elements: !689)
!689 = !{!690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !688, file: !475, line: 511, baseType: !532, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !688, file: !475, line: 512, baseType: !532, size: 64, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !688, file: !475, line: 513, baseType: !532, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !688, file: !475, line: 514, baseType: !532, size: 64, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !688, file: !475, line: 515, baseType: !532, size: 64, offset: 256)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !688, file: !475, line: 516, baseType: !532, size: 64, offset: 320)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !688, file: !475, line: 518, baseType: !532, size: 64, offset: 384)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !688, file: !475, line: 519, baseType: !532, size: 64, offset: 448)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !688, file: !475, line: 520, baseType: !375, size: 64, offset: 512)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !688, file: !475, line: 522, baseType: !532, size: 64, offset: 576)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !688, file: !475, line: 523, baseType: !532, size: 64, offset: 640)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !688, file: !475, line: 524, baseType: !375, size: 64, offset: 704)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !688, file: !475, line: 526, baseType: !375, size: 64, offset: 768)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !688, file: !475, line: 527, baseType: !532, size: 64, offset: 832)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !688, file: !475, line: 529, baseType: !532, size: 64, offset: 896)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !688, file: !475, line: 530, baseType: !532, size: 64, offset: 960)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !688, file: !475, line: 531, baseType: !532, size: 64, offset: 1024)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !688, file: !475, line: 532, baseType: !532, size: 64, offset: 1088)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !688, file: !475, line: 533, baseType: !532, size: 64, offset: 1152)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !688, file: !475, line: 535, baseType: !532, size: 64, offset: 1216)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !688, file: !475, line: 536, baseType: !532, size: 64, offset: 1280)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !688, file: !475, line: 537, baseType: !532, size: 64, offset: 1344)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !688, file: !475, line: 538, baseType: !532, size: 64, offset: 1408)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !688, file: !475, line: 539, baseType: !532, size: 64, offset: 1472)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !688, file: !475, line: 540, baseType: !532, size: 64, offset: 1536)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !688, file: !475, line: 541, baseType: !532, size: 64, offset: 1600)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !688, file: !475, line: 542, baseType: !532, size: 64, offset: 1664)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !688, file: !475, line: 543, baseType: !532, size: 64, offset: 1728)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !474, file: !475, line: 833, baseType: !7, size: 32, offset: 7680)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !474, file: !475, line: 836, baseType: !7, size: 32, offset: 7712)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !474, file: !475, line: 837, baseType: !98, size: 32, offset: 7744)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !474, file: !475, line: 838, baseType: !722, size: 64, offset: 7808)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !724)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !725, line: 19, baseType: !726)
!725 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !725, line: 19, size: 64, elements: !727)
!727 = !{!728}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !726, file: !725, line: 19, baseType: !729, size: 64)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 64, elements: !730)
!730 = !{!731}
!731 = !DISubrange(count: 1)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !474, file: !475, line: 839, baseType: !733, size: 64, offset: 7872)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !474, file: !475, line: 840, baseType: !724, size: 64, offset: 7936)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !474, file: !475, line: 841, baseType: !96, size: 64, offset: 8000)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !474, file: !475, line: 843, baseType: !102, size: 16, offset: 8064)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !474, file: !475, line: 845, baseType: !102, size: 16, offset: 8080)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !474, file: !475, line: 848, baseType: !98, size: 32, offset: 8096)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !474, file: !475, line: 849, baseType: !740, size: 32, offset: 8128)
!740 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !475, line: 718, size: 32, elements: !741)
!741 = !{!742, !749}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !740, file: !475, line: 724, baseType: !743, size: 32)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !740, file: !475, line: 719, size: 32, elements: !744)
!744 = !{!745, !746, !747, !748}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !743, file: !475, line: 720, baseType: !159, size: 8)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !743, file: !475, line: 721, baseType: !159, size: 8, offset: 8)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !743, file: !475, line: 722, baseType: !159, size: 8, offset: 16)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !743, file: !475, line: 723, baseType: !159, size: 8, offset: 24)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !740, file: !475, line: 725, baseType: !484, size: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !474, file: !475, line: 850, baseType: !173, size: 128, offset: 8192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !474, file: !475, line: 851, baseType: !752, size: 64, offset: 8320)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !475, line: 60, flags: DIFlagFwdDecl)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !474, file: !475, line: 855, baseType: !115, size: 64, offset: 8384)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !474, file: !475, line: 856, baseType: !159, size: 8, offset: 8448)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !474, file: !475, line: 857, baseType: !159, size: 8, offset: 8456)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !474, file: !475, line: 858, baseType: !98, size: 32, offset: 8480)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !474, file: !475, line: 859, baseType: !173, size: 128, offset: 8512)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !474, file: !475, line: 860, baseType: !98, size: 32, offset: 8640)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !474, file: !475, line: 861, baseType: !173, size: 128, offset: 8704)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !474, file: !475, line: 873, baseType: !762, size: 256, offset: 8832)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !475, line: 376, size: 256, elements: !763)
!763 = !{!764, !765, !766, !767}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !762, file: !475, line: 381, baseType: !115, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !762, file: !475, line: 384, baseType: !534, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !762, file: !475, line: 389, baseType: !534, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !762, file: !475, line: 392, baseType: !534, size: 64, offset: 192)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !474, file: !475, line: 875, baseType: !173, size: 128, offset: 9088)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !474, file: !475, line: 877, baseType: !770, size: 320, offset: 9216)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !771, line: 86, size: 320, elements: !772)
!771 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!772 = !{!773, !774, !775}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !770, file: !771, line: 87, baseType: !98, size: 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !770, file: !771, line: 88, baseType: !173, size: 128, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !770, file: !771, line: 89, baseType: !173, size: 128, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !474, file: !475, line: 878, baseType: !524, size: 192, align: 64, offset: 9536)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !474, file: !475, line: 881, baseType: !315, size: 64, offset: 9728)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !474, file: !475, line: 882, baseType: !315, size: 64, offset: 9792)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !474, file: !475, line: 884, baseType: !98, size: 32, offset: 9856)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !474, file: !475, line: 885, baseType: !98, size: 32, offset: 9888)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !474, file: !475, line: 886, baseType: !98, size: 32, offset: 9920)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !474, file: !475, line: 888, baseType: !98, size: 32, offset: 9952)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !474, file: !475, line: 890, baseType: !115, size: 64, offset: 9984)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !474, file: !475, line: 893, baseType: !7, size: 32, offset: 10048)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !474, file: !475, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !474, file: !475, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !474, file: !475, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !474, file: !475, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !474, file: !475, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !474, file: !475, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !474, file: !475, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !474, file: !475, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !474, file: !475, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !474, file: !475, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !474, file: !475, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !474, file: !475, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !474, file: !475, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !474, file: !475, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !474, file: !475, line: 969, baseType: !115, size: 64, offset: 10176)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !474, file: !475, line: 971, baseType: !801, size: 448, offset: 10240)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !70, line: 25, size: 448, elements: !802)
!802 = !{!803, !804, !810}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !801, file: !70, line: 26, baseType: !115, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !801, file: !70, line: 27, baseType: !805, size: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!808, !809}
!808 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, scope: !801, file: !70, line: 28, baseType: !811, size: 320, offset: 128)
!811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !801, file: !70, line: 28, size: 320, elements: !812)
!812 = !{!813, !823, !850}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !811, file: !70, line: 37, baseType: !814, size: 320)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !811, file: !70, line: 30, size: 320, elements: !815)
!815 = !{!816, !818, !819, !820, !821, !822}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !814, file: !70, line: 31, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !814, file: !70, line: 32, baseType: !484, size: 32, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !814, file: !70, line: 33, baseType: !484, size: 32, offset: 96)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !814, file: !70, line: 34, baseType: !484, size: 32, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !814, file: !70, line: 35, baseType: !532, size: 64, offset: 192)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !814, file: !70, line: 36, baseType: !817, size: 64, offset: 256)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !811, file: !70, line: 47, baseType: !824, size: 192)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !811, file: !70, line: 39, size: 192, elements: !825)
!825 = !{!826, !827, !828, !849}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !824, file: !70, line: 40, baseType: !644, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !824, file: !70, line: 41, baseType: !69, size: 32, offset: 32)
!828 = !DIDerivedType(tag: DW_TAG_member, scope: !824, file: !70, line: 42, baseType: !829, size: 64, offset: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !824, file: !70, line: 42, size: 64, elements: !830)
!830 = !{!831, !839}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !829, file: !70, line: 43, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !834, line: 7, size: 128, elements: !835)
!834 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!835 = !{!836, !838}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !833, file: !834, line: 8, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !113, line: 93, baseType: !119)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !833, file: !834, line: 9, baseType: !119, size: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !829, file: !70, line: 44, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !842, line: 7, size: 64, elements: !843)
!842 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!843 = !{!844, !848}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !841, file: !842, line: 8, baseType: !845, size: 32)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !842, line: 5, baseType: !846)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !160, line: 20, baseType: !847)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !162, line: 26, baseType: !98)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !841, file: !842, line: 9, baseType: !846, size: 32, offset: 32)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !824, file: !70, line: 46, baseType: !532, size: 64, offset: 128)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !811, file: !70, line: 55, baseType: !851, size: 256)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !811, file: !70, line: 49, size: 256, elements: !852)
!852 = !{!853, !862, !863, !864, !865}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !851, file: !70, line: 50, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !856, line: 36, size: 64, elements: !857)
!856 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!857 = !{!858, !859, !861}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !855, file: !856, line: 37, baseType: !98, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !855, file: !856, line: 38, baseType: !860, size: 16, offset: 32)
!860 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !855, file: !856, line: 39, baseType: !860, size: 16, offset: 48)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !851, file: !70, line: 51, baseType: !98, size: 32, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !851, file: !70, line: 52, baseType: !98, size: 32, offset: 96)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !851, file: !70, line: 53, baseType: !115, size: 64, offset: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !851, file: !70, line: 54, baseType: !115, size: 64, offset: 192)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !474, file: !475, line: 973, baseType: !867, size: 32, offset: 10688)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !101, line: 27, baseType: !868)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !113, line: 28, baseType: !98)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !474, file: !475, line: 974, baseType: !867, size: 32, offset: 10720)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !474, file: !475, line: 978, baseType: !115, size: 64, offset: 10752)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !474, file: !475, line: 987, baseType: !473, size: 64, offset: 10816)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !474, file: !475, line: 990, baseType: !473, size: 64, offset: 10880)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !474, file: !475, line: 995, baseType: !173, size: 128, offset: 10944)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !474, file: !475, line: 996, baseType: !173, size: 128, offset: 11072)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !474, file: !475, line: 997, baseType: !473, size: 64, offset: 11200)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !474, file: !475, line: 1005, baseType: !173, size: 128, offset: 11264)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !474, file: !475, line: 1006, baseType: !173, size: 128, offset: 11392)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !474, file: !475, line: 1009, baseType: !419, size: 64, offset: 11520)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !474, file: !475, line: 1010, baseType: !880, size: 512, offset: 11584)
!880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 512, elements: !441)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !474, file: !475, line: 1011, baseType: !173, size: 128, offset: 12096)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !474, file: !475, line: 1012, baseType: !173, size: 128, offset: 12224)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !474, file: !475, line: 1014, baseType: !884, size: 64, offset: 12352)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !886, line: 26, size: 256, elements: !887)
!886 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!887 = !{!888, !889}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !885, file: !886, line: 27, baseType: !7, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !885, file: !886, line: 28, baseType: !890, size: 192, offset: 64)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !891, line: 43, size: 192, elements: !892)
!891 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!892 = !{!893, !894}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !890, file: !891, line: 44, baseType: !383, size: 32)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !890, file: !891, line: 45, baseType: !173, size: 128, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !474, file: !475, line: 1017, baseType: !896, size: 64, offset: 12416)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !474, file: !475, line: 1020, baseType: !896, size: 64, offset: 12480)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !474, file: !475, line: 1023, baseType: !96, size: 64, offset: 12544)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !474, file: !475, line: 1025, baseType: !532, size: 64, offset: 12608)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !474, file: !475, line: 1026, baseType: !532, size: 64, offset: 12672)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !474, file: !475, line: 1031, baseType: !532, size: 64, offset: 12736)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !474, file: !475, line: 1032, baseType: !903, size: 192, offset: 12800)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !475, line: 324, size: 192, elements: !904)
!904 = !{!905, !906, !907}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !903, file: !475, line: 326, baseType: !532, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !903, file: !475, line: 327, baseType: !532, size: 64, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !903, file: !475, line: 328, baseType: !383, size: 32, offset: 128)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !474, file: !475, line: 1041, baseType: !115, size: 64, offset: 12992)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !474, file: !475, line: 1042, baseType: !115, size: 64, offset: 13056)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !474, file: !475, line: 1045, baseType: !532, size: 64, offset: 13120)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !474, file: !475, line: 1048, baseType: !532, size: 64, offset: 13184)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !474, file: !475, line: 1051, baseType: !115, size: 64, offset: 13248)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !474, file: !475, line: 1052, baseType: !115, size: 64, offset: 13312)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !474, file: !475, line: 1055, baseType: !915, size: 640, offset: 13376)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !916, line: 132, size: 640, elements: !917)
!916 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!917 = !{!918, !924, !925}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !915, file: !916, line: 133, baseType: !919, size: 576)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !920, size: 576, elements: !415)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !916, line: 117, size: 192, elements: !921)
!921 = !{!922, !923}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !920, file: !916, line: 118, baseType: !532, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !920, file: !916, line: 119, baseType: !658, size: 128, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !915, file: !916, line: 134, baseType: !7, size: 32, offset: 576)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !915, file: !916, line: 135, baseType: !7, size: 32, offset: 608)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !474, file: !475, line: 1058, baseType: !927, size: 448, offset: 14016)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !916, line: 144, size: 448, elements: !928)
!928 = !{!929, !930, !931}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !927, file: !916, line: 145, baseType: !356, size: 128, align: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !927, file: !916, line: 146, baseType: !378, size: 256, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !927, file: !916, line: 147, baseType: !7, size: 32, offset: 384)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !474, file: !475, line: 1064, baseType: !933, size: 64, offset: 14464)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !935)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !936, line: 110, size: 1472, elements: !937)
!936 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!937 = !{!938, !939, !947, !954, !955, !956, !957, !958, !959, !960, !961, !967, !968, !969, !970, !971, !972, !1093, !1094, !1095, !1096, !1097, !1128, !1267, !1268, !1278}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !935, file: !936, line: 111, baseType: !369, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !935, file: !936, line: 112, baseType: !940, size: 32, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !941, line: 23, baseType: !942)
!941 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !941, line: 21, size: 32, elements: !943)
!943 = !{!944}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !942, file: !941, line: 22, baseType: !945, size: 32)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !101, line: 37, baseType: !946)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !113, line: 49, baseType: !7)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !935, file: !936, line: 113, baseType: !948, size: 32, offset: 96)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !941, line: 28, baseType: !949)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !941, line: 26, size: 32, elements: !950)
!950 = !{!951}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !949, file: !941, line: 27, baseType: !952, size: 32)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !101, line: 38, baseType: !953)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !113, line: 50, baseType: !7)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !935, file: !936, line: 114, baseType: !940, size: 32, offset: 128)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !935, file: !936, line: 115, baseType: !948, size: 32, offset: 160)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !935, file: !936, line: 116, baseType: !940, size: 32, offset: 192)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !935, file: !936, line: 117, baseType: !948, size: 32, offset: 224)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !935, file: !936, line: 118, baseType: !940, size: 32, offset: 256)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !935, file: !936, line: 119, baseType: !948, size: 32, offset: 288)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !935, file: !936, line: 120, baseType: !7, size: 32, offset: 320)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !935, file: !936, line: 121, baseType: !962, size: 64, offset: 384)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !963, line: 24, baseType: !964)
!963 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !963, line: 24, size: 64, elements: !965)
!965 = !{!966}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !964, file: !963, line: 24, baseType: !532, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !935, file: !936, line: 122, baseType: !962, size: 64, offset: 448)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !935, file: !936, line: 123, baseType: !962, size: 64, offset: 512)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !935, file: !936, line: 124, baseType: !962, size: 64, offset: 576)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !935, file: !936, line: 125, baseType: !962, size: 64, offset: 640)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !935, file: !936, line: 127, baseType: !163, size: 8, offset: 704)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !935, file: !936, line: 129, baseType: !973, size: 64, offset: 768)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !975, line: 195, size: 1728, elements: !976)
!975 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!976 = !{!977, !978, !981, !986, !995, !998, !999, !1006, !1007, !1008, !1009, !1012, !1013, !1014, !1015, !1016, !1057, !1078}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !974, file: !975, line: 196, baseType: !423, size: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !974, file: !975, line: 197, baseType: !979, size: 32, offset: 32)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !975, line: 28, baseType: !980)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !101, line: 104, baseType: !846)
!981 = !DIDerivedType(tag: DW_TAG_member, scope: !974, file: !975, line: 198, baseType: !982, size: 192, offset: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !974, file: !975, line: 198, size: 192, elements: !983)
!983 = !{!984, !985}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !982, file: !975, line: 199, baseType: !173, size: 128)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !982, file: !975, line: 200, baseType: !524, size: 192, align: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !974, file: !975, line: 205, baseType: !987, size: 320, offset: 256)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !988, line: 48, size: 320, elements: !989)
!988 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!989 = !{!990, !991, !992, !993, !994}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !987, file: !988, line: 49, baseType: !369, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !987, file: !988, line: 55, baseType: !369, size: 64, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !987, file: !988, line: 57, baseType: !385, size: 32, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !987, file: !988, line: 59, baseType: !383, size: 32, offset: 160)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !987, file: !988, line: 60, baseType: !173, size: 128, offset: 192)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !974, file: !975, line: 206, baseType: !996, size: 64, offset: 576)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !975, line: 206, flags: DIFlagFwdDecl)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !974, file: !975, line: 207, baseType: !96, size: 64, offset: 640)
!999 = !DIDerivedType(tag: DW_TAG_member, scope: !974, file: !975, line: 208, baseType: !1000, size: 64, offset: 704)
!1000 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !974, file: !975, line: 208, size: 64, elements: !1001)
!1001 = !{!1002, !1005}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1000, file: !975, line: 209, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1004, line: 8, baseType: !376)
!1004 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1000, file: !975, line: 210, baseType: !1003, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !974, file: !975, line: 212, baseType: !1003, size: 64, offset: 768)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !974, file: !975, line: 213, baseType: !940, size: 32, offset: 832)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !974, file: !975, line: 214, baseType: !948, size: 32, offset: 864)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !974, file: !975, line: 215, baseType: !1010, size: 32, offset: 896)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !975, line: 31, baseType: !1011)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !101, line: 110, baseType: !484)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !974, file: !975, line: 216, baseType: !102, size: 16, offset: 928)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !974, file: !975, line: 217, baseType: !102, size: 16, offset: 944)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !974, file: !975, line: 221, baseType: !860, size: 16, offset: 960)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !974, file: !975, line: 228, baseType: !115, size: 64, offset: 1024)
!1016 = !DIDerivedType(tag: DW_TAG_member, scope: !974, file: !975, line: 245, baseType: !1017, size: 320, offset: 1088)
!1017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !974, file: !975, line: 245, size: 320, elements: !1018)
!1018 = !{!1019, !1048}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1017, file: !975, line: 246, baseType: !1020, size: 320)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !975, line: 114, size: 320, elements: !1021)
!1021 = !{!1022, !1023, !1035, !1038, !1047}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1020, file: !975, line: 116, baseType: !115, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, scope: !1020, file: !975, line: 117, baseType: !1024, size: 64, offset: 64)
!1024 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1020, file: !975, line: 117, size: 64, elements: !1025)
!1025 = !{!1026, !1034}
!1026 = !DIDerivedType(tag: DW_TAG_member, scope: !1024, file: !975, line: 118, baseType: !1027, size: 64)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1024, file: !975, line: 118, size: 64, elements: !1028)
!1028 = !{!1029, !1030}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1027, file: !975, line: 120, baseType: !169, size: 16)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1027, file: !975, line: 121, baseType: !1031, size: 48, offset: 16)
!1031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 48, elements: !1032)
!1032 = !{!1033}
!1033 = !DISubrange(count: 6)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1024, file: !975, line: 127, baseType: !115, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1020, file: !975, line: 129, baseType: !1036, size: 64, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !975, line: 102, flags: DIFlagFwdDecl)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1020, file: !975, line: 130, baseType: !1039, size: 64, offset: 192)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !975, line: 108, size: 192, elements: !1041)
!1041 = !{!1042, !1043, !1044}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1040, file: !975, line: 109, baseType: !356, size: 128, align: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1040, file: !975, line: 110, baseType: !423, size: 32, offset: 128)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1040, file: !975, line: 111, baseType: !1045, size: 8, offset: 160)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !101, line: 35, baseType: !1046)
!1046 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1020, file: !975, line: 131, baseType: !92, size: 64, offset: 256)
!1048 = !DIDerivedType(tag: DW_TAG_member, scope: !1017, file: !975, line: 247, baseType: !1049, size: 320)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1017, file: !975, line: 247, size: 320, elements: !1050)
!1050 = !{!1051, !1052, !1053, !1054, !1055}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1049, file: !975, line: 248, baseType: !115, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1049, file: !975, line: 249, baseType: !115, size: 64, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1049, file: !975, line: 250, baseType: !1036, size: 64, offset: 128)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1049, file: !975, line: 251, baseType: !1039, size: 64, offset: 192)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1049, file: !975, line: 252, baseType: !1056, size: 64, offset: 256)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, scope: !974, file: !975, line: 260, baseType: !1058, size: 256, offset: 1408)
!1058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !974, file: !975, line: 260, size: 256, elements: !1059)
!1059 = !{!1060, !1066}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1058, file: !975, line: 261, baseType: !1061, size: 256)
!1061 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !975, line: 134, size: 256, elements: !1062)
!1062 = !{!1063, !1064}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1061, file: !975, line: 135, baseType: !96, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1061, file: !975, line: 136, baseType: !1065, size: 256)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 256, elements: !441)
!1066 = !DIDerivedType(tag: DW_TAG_member, scope: !1058, file: !975, line: 262, baseType: !1067, size: 256)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1058, file: !975, line: 262, size: 256, elements: !1068)
!1068 = !{!1069, !1070}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1067, file: !975, line: 264, baseType: !173, size: 128)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1067, file: !975, line: 265, baseType: !1071, size: 128, offset: 128)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1072, line: 22, size: 128, elements: !1073)
!1072 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1073 = !{!1074, !1077}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1071, file: !1072, line: 23, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1072, line: 23, flags: DIFlagFwdDecl)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1071, file: !1072, line: 24, baseType: !115, size: 64, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !974, file: !975, line: 280, baseType: !1079, size: 64, offset: 1664)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !975, line: 176, size: 192, elements: !1081)
!1081 = !{!1082, !1091, !1092}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1080, file: !975, line: 177, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !975, line: 171, baseType: !1084)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!98, !973, !1087, !1089, !973}
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1037)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1061)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1080, file: !975, line: 178, baseType: !973, size: 64, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1080, file: !975, line: 179, baseType: !1036, size: 64, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !935, file: !936, line: 130, baseType: !973, size: 64, offset: 832)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !935, file: !936, line: 131, baseType: !973, size: 64, offset: 896)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !935, file: !936, line: 132, baseType: !973, size: 64, offset: 960)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !935, file: !936, line: 135, baseType: !96, size: 64, offset: 1024)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !935, file: !936, line: 137, baseType: !1098, size: 64, offset: 1088)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1100, line: 14, size: 1088, elements: !1101)
!1100 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1101 = !{!1102, !1103, !1112, !1113, !1114, !1115, !1116, !1117}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1099, file: !1100, line: 15, baseType: !423, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1099, file: !1100, line: 17, baseType: !1104, size: 320, offset: 64)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1105, line: 22, size: 320, elements: !1106)
!1105 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1106 = !{!1107, !1108, !1109, !1110}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1104, file: !1105, line: 23, baseType: !383, size: 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1104, file: !1105, line: 24, baseType: !375, size: 64, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1104, file: !1105, line: 26, baseType: !173, size: 128, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1104, file: !1105, line: 28, baseType: !1111, size: 64, offset: 256)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1099, file: !1100, line: 19, baseType: !115, size: 64, offset: 384)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1099, file: !1100, line: 20, baseType: !369, size: 64, offset: 448)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1099, file: !1100, line: 23, baseType: !436, size: 128, offset: 512)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1099, file: !1100, line: 24, baseType: !940, size: 32, offset: 640)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1099, file: !1100, line: 29, baseType: !369, size: 64, offset: 704)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1099, file: !1100, line: 36, baseType: !1118, size: 320, offset: 768)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1119, line: 15, size: 320, elements: !1120)
!1119 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1120 = !{!1121, !1122, !1123, !1124, !1125, !1126, !1127}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1118, file: !1119, line: 16, baseType: !383, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1118, file: !1119, line: 18, baseType: !98, size: 32, offset: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1118, file: !1119, line: 19, baseType: !98, size: 32, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1118, file: !1119, line: 20, baseType: !98, size: 32, offset: 96)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1118, file: !1119, line: 21, baseType: !98, size: 32, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1118, file: !1119, line: 22, baseType: !115, size: 64, offset: 192)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1118, file: !1119, line: 23, baseType: !115, size: 64, offset: 256)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !935, file: !936, line: 138, baseType: !1129, size: 64, offset: 1152)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1131, line: 68, size: 4800, elements: !1132)
!1131 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1132 = !{!1133, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1172, !1173, !1174, !1175, !1176, !1177, !1189, !1248, !1249, !1263, !1265}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1130, file: !1131, line: 69, baseType: !1134, size: 576)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1131, line: 23, size: 576, elements: !1135)
!1135 = !{!1136, !1137}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1134, file: !1131, line: 24, baseType: !484, size: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, scope: !1134, file: !1131, line: 25, baseType: !1138, size: 512, offset: 64)
!1138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1134, file: !1131, line: 25, size: 512, elements: !1139)
!1139 = !{!1140, !1149}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1138, file: !1131, line: 26, baseType: !1141, size: 480)
!1141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1142, size: 480, elements: !1147)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1131, line: 17, size: 96, elements: !1143)
!1143 = !{!1144, !1145, !1146}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1142, file: !1131, line: 18, baseType: !484, size: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1142, file: !1131, line: 19, baseType: !484, size: 32, offset: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1142, file: !1131, line: 20, baseType: !484, size: 32, offset: 64)
!1147 = !{!1148}
!1148 = !DISubrange(count: 5)
!1149 = !DIDerivedType(tag: DW_TAG_member, scope: !1138, file: !1131, line: 27, baseType: !1150, size: 128)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1138, file: !1131, line: 27, size: 128, elements: !1151)
!1151 = !{!1152, !1154}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1150, file: !1131, line: 28, baseType: !1153, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1150, file: !1131, line: 29, baseType: !1153, size: 64, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1130, file: !1131, line: 70, baseType: !1134, size: 576, offset: 576)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1130, file: !1131, line: 71, baseType: !1134, size: 576, offset: 1152)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1130, file: !1131, line: 72, baseType: !1129, size: 64, offset: 1728)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1130, file: !1131, line: 73, baseType: !98, size: 32, offset: 1792)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1130, file: !1131, line: 74, baseType: !940, size: 32, offset: 1824)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1130, file: !1131, line: 75, baseType: !948, size: 32, offset: 1856)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1130, file: !1131, line: 76, baseType: !1162, size: 192, offset: 1920)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1163, line: 9, size: 192, elements: !1164)
!1163 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1164 = !{!1165, !1166, !1170, !1171}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1162, file: !1163, line: 10, baseType: !369, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1162, file: !1163, line: 11, baseType: !1167, size: 64, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1169)
!1169 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1163, line: 7, flags: DIFlagFwdDecl)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1162, file: !1163, line: 12, baseType: !7, size: 32, offset: 128)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1162, file: !1163, line: 13, baseType: !423, size: 32, offset: 160)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1130, file: !1131, line: 77, baseType: !115, size: 64, offset: 2112)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1130, file: !1131, line: 80, baseType: !1045, size: 8, offset: 2176)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1130, file: !1131, line: 88, baseType: !173, size: 128, offset: 2240)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1130, file: !1131, line: 89, baseType: !973, size: 64, offset: 2368)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1130, file: !1131, line: 90, baseType: !987, size: 320, offset: 2432)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1130, file: !1131, line: 97, baseType: !1178, size: 256, offset: 2752)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1179, line: 98, size: 256, elements: !1180)
!1179 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1180 = !{!1181, !1182, !1183}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1178, file: !1179, line: 99, baseType: !369, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1178, file: !1179, line: 100, baseType: !173, size: 128, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1178, file: !1179, line: 101, baseType: !1184, size: 64, offset: 192)
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1179, line: 21, baseType: !1185)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{null, !1188}
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1130, file: !1131, line: 99, baseType: !1190, size: 768, offset: 3008)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !88, line: 199, size: 768, elements: !1191)
!1191 = !{!1192, !1197}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1190, file: !88, line: 200, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!98, !1196}
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1190, file: !88, line: 201, baseType: !1198, size: 704, offset: 64)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !88, line: 193, size: 704, elements: !1199)
!1199 = !{!1200, !1247}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1198, file: !88, line: 195, baseType: !1201, size: 640)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !88, line: 173, size: 640, elements: !1202)
!1202 = !{!1203, !1215, !1216, !1217, !1237, !1238, !1240, !1246}
!1203 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !88, line: 174, baseType: !1204, size: 192)
!1204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1201, file: !88, line: 174, size: 192, elements: !1205)
!1205 = !{!1206, !1214}
!1206 = !DIDerivedType(tag: DW_TAG_member, scope: !1204, file: !88, line: 175, baseType: !1207, size: 192)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1204, file: !88, line: 175, size: 192, elements: !1208)
!1208 = !{!1209, !1210, !1211, !1212, !1213}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1207, file: !88, line: 176, baseType: !109, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1207, file: !88, line: 177, baseType: !98, size: 32, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1207, file: !88, line: 178, baseType: !98, size: 32, offset: 96)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1207, file: !88, line: 179, baseType: !98, size: 32, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1207, file: !88, line: 180, baseType: !98, size: 32, offset: 160)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1204, file: !88, line: 182, baseType: !356, size: 128, align: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1201, file: !88, line: 184, baseType: !884, size: 64, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1201, file: !88, line: 185, baseType: !109, size: 64, offset: 256)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1201, file: !88, line: 186, baseType: !1218, size: 64, offset: 320)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !88, line: 204, size: 960, elements: !1220)
!1220 = !{!1221, !1222, !1226, !1233}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1219, file: !88, line: 205, baseType: !1190, size: 768)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1219, file: !88, line: 206, baseType: !1223, size: 64, offset: 768)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!1196, !1218}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1219, file: !88, line: 207, baseType: !1227, size: 64, offset: 832)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{null, !1230, !1231, !1232}
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1219, file: !88, line: 209, baseType: !1234, size: 64, offset: 896)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!98, !1230, !109}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1201, file: !88, line: 187, baseType: !1196, size: 64, offset: 384)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1201, file: !88, line: 188, baseType: !1239, size: 64, offset: 448)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1201, file: !88, line: 189, baseType: !1241, size: 64, offset: 512)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !88, line: 157, size: 256, elements: !1243)
!1243 = !{!1244, !1245}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1242, file: !88, line: 158, baseType: !524, size: 192, align: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1242, file: !88, line: 159, baseType: !1230, size: 64, offset: 192)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1201, file: !88, line: 190, baseType: !432, size: 64, offset: 576)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1198, file: !88, line: 196, baseType: !664, size: 64, offset: 640)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1130, file: !1131, line: 100, baseType: !1230, size: 64, offset: 3776)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1130, file: !1131, line: 102, baseType: !1250, size: 64, offset: 3840)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1131, line: 107, size: 1152, elements: !1252)
!1252 = !{!1253, !1254, !1255, !1256, !1257, !1261}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1251, file: !1131, line: 108, baseType: !436, size: 128)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1251, file: !1131, line: 109, baseType: !1129, size: 64, offset: 128)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1251, file: !1131, line: 110, baseType: !940, size: 32, offset: 192)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1251, file: !1131, line: 111, baseType: !125, size: 32, offset: 224)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1251, file: !1131, line: 112, baseType: !1258, size: 640, offset: 256)
!1258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 640, elements: !1259)
!1259 = !{!1260}
!1260 = !DISubrange(count: 10)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1251, file: !1131, line: 113, baseType: !1262, size: 256, offset: 896)
!1262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 256, elements: !441)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1130, file: !1131, line: 103, baseType: !1264, size: 640, offset: 3904)
!1264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !808, size: 640, elements: !1259)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1130, file: !1131, line: 104, baseType: !1266, size: 256, offset: 4544)
!1266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !808, size: 256, elements: !441)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !935, file: !936, line: 139, baseType: !1250, size: 64, offset: 1216)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !935, file: !936, line: 140, baseType: !1269, size: 64, offset: 1280)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !936, line: 25, size: 64, elements: !1271)
!1271 = !{!1272, !1273, !1274}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1270, file: !936, line: 26, baseType: !125, size: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1270, file: !936, line: 27, baseType: !98, size: 32, offset: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1270, file: !936, line: 28, baseType: !1275, offset: 64)
!1275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !948, elements: !1276)
!1276 = !{!1277}
!1277 = !DISubrange(count: -1)
!1278 = !DIDerivedType(tag: DW_TAG_member, scope: !935, file: !936, line: 142, baseType: !1279, size: 128, offset: 1344)
!1279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !935, file: !936, line: 142, size: 128, elements: !1280)
!1280 = !{!1281, !1282}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1279, file: !936, line: 143, baseType: !98, size: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1279, file: !936, line: 144, baseType: !356, size: 128, align: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !474, file: !475, line: 1067, baseType: !933, size: 64, offset: 14528)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !474, file: !475, line: 1070, baseType: !933, size: 64, offset: 14592)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !474, file: !475, line: 1074, baseType: !973, size: 64, offset: 14656)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !474, file: !475, line: 1084, baseType: !1287, size: 128, offset: 14720)
!1287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 128, elements: !1288)
!1288 = !{!1289}
!1289 = !DISubrange(count: 16)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !474, file: !475, line: 1086, baseType: !1291, size: 64, offset: 14848)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !475, line: 55, flags: DIFlagFwdDecl)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !474, file: !475, line: 1089, baseType: !1294, size: 64, offset: 14912)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1295, line: 12, size: 64, elements: !1296)
!1295 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1296 = !{!1297}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1294, file: !1295, line: 13, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1295, line: 8, flags: DIFlagFwdDecl)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !474, file: !475, line: 1090, baseType: !1301, size: 128, offset: 14976)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1302, line: 13, size: 128, elements: !1303)
!1302 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1303 = !{!1304}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1301, file: !1302, line: 14, baseType: !173, size: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !474, file: !475, line: 1097, baseType: !1306, size: 64, offset: 15104)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !475, line: 50, flags: DIFlagFwdDecl)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !474, file: !475, line: 1100, baseType: !1309, size: 64, offset: 15168)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !475, line: 1100, flags: DIFlagFwdDecl)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !474, file: !475, line: 1103, baseType: !1312, size: 64, offset: 15232)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !475, line: 53, flags: DIFlagFwdDecl)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !474, file: !475, line: 1107, baseType: !1315, size: 64, offset: 15296)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1317, line: 31, size: 576, elements: !1318)
!1317 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1318 = !{!1319, !1320, !1323, !1326, !1329, !1330, !1333, !1336, !1337}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1316, file: !1317, line: 32, baseType: !423, size: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1316, file: !1317, line: 33, baseType: !1321, size: 64, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1317, line: 9, flags: DIFlagFwdDecl)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1316, file: !1317, line: 34, baseType: !1324, size: 64, offset: 128)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1317, line: 10, flags: DIFlagFwdDecl)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1316, file: !1317, line: 35, baseType: !1327, size: 64, offset: 192)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1317, line: 8, flags: DIFlagFwdDecl)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1316, file: !1317, line: 36, baseType: !452, size: 64, offset: 256)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1316, file: !1317, line: 37, baseType: !1331, size: 64, offset: 320)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !975, line: 34, flags: DIFlagFwdDecl)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1316, file: !1317, line: 38, baseType: !1334, size: 64, offset: 384)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1317, line: 38, flags: DIFlagFwdDecl)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1316, file: !1317, line: 39, baseType: !1334, size: 64, offset: 448)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1316, file: !1317, line: 40, baseType: !1338, size: 64, offset: 512)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1340, line: 771, size: 384, elements: !1341)
!1340 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!1341 = !{!1342, !1343, !1344, !1345}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1339, file: !1340, line: 772, baseType: !1162, size: 192)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1339, file: !1340, line: 773, baseType: !1129, size: 64, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1339, file: !1340, line: 774, baseType: !1250, size: 64, offset: 256)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !1339, file: !1340, line: 775, baseType: !1346, size: 64, offset: 320)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1348, line: 209, size: 4736, elements: !1349)
!1348 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!1349 = !{!1350, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5047, !5048, !5049, !5050, !5051, !5052, !5053}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1347, file: !1348, line: 215, baseType: !1351, size: 896)
!1351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1352, size: 896, elements: !4863)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !1348, line: 152, size: 1600, elements: !1354)
!1354 = !{!1355, !4914, !5017, !5018, !5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5032}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !1353, file: !1348, line: 154, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !1348, line: 389, size: 7872, elements: !1358)
!1358 = !{!1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !4829, !4835, !4836, !4840, !4841, !4842, !4843, !4844, !4845, !4860, !4861, !4865, !4866, !4867, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4901, !4904, !4905, !4912}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1357, file: !1348, line: 391, baseType: !1353, size: 1600)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1357, file: !1348, line: 393, baseType: !115, size: 64, offset: 1600)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1357, file: !1348, line: 401, baseType: !98, size: 32, offset: 1664)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !1357, file: !1348, line: 404, baseType: !98, size: 32, offset: 1696)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !1357, file: !1348, line: 417, baseType: !98, size: 32, offset: 1728)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !1357, file: !1348, line: 418, baseType: !98, size: 32, offset: 1760)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !1357, file: !1348, line: 419, baseType: !98, size: 32, offset: 1792)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !1357, file: !1348, line: 432, baseType: !98, size: 32, offset: 1824)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !1357, file: !1348, line: 433, baseType: !98, size: 32, offset: 1856)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !1357, file: !1348, line: 434, baseType: !98, size: 32, offset: 1888)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !1357, file: !1348, line: 436, baseType: !98, size: 32, offset: 1920)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !1357, file: !1348, line: 439, baseType: !7, size: 32, offset: 1952)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1357, file: !1348, line: 441, baseType: !1372, size: 64, offset: 1984)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1374, line: 190, size: 1152, elements: !1375)
!1374 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1375 = !{!1376, !1377, !1378, !1379, !1380, !1381, !1384, !1385, !4821, !4822, !4823, !4824, !4825, !4828}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1373, file: !1374, line: 191, baseType: !125, size: 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1373, file: !1374, line: 192, baseType: !125, size: 32, offset: 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1373, file: !1374, line: 202, baseType: !1372, size: 64, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1373, file: !1374, line: 203, baseType: !92, size: 64, offset: 128)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1373, file: !1374, line: 205, baseType: !524, size: 192, align: 64, offset: 192)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1373, file: !1374, line: 207, baseType: !1382, size: 64, offset: 384)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1373, file: !1374, line: 208, baseType: !7, size: 32, offset: 448)
!1385 = !DIDerivedType(tag: DW_TAG_member, scope: !1373, file: !1374, line: 209, baseType: !1386, size: 256, offset: 512)
!1386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1373, file: !1374, line: 209, size: 256, elements: !1387)
!1387 = !{!1388, !1397, !1401}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1386, file: !1374, line: 210, baseType: !1389, size: 256)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1374, line: 153, size: 256, elements: !1390)
!1390 = !{!1391, !1392, !1393, !1396}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1389, file: !1374, line: 154, baseType: !115, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1389, file: !1374, line: 156, baseType: !664, size: 64, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1389, file: !1374, line: 162, baseType: !1394, size: 64, offset: 128)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1374, line: 162, flags: DIFlagFwdDecl)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1389, file: !1374, line: 167, baseType: !115, size: 64, offset: 192)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1386, file: !1374, line: 211, baseType: !1398, size: 64)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1374, line: 170, size: 64, elements: !1399)
!1399 = !{!1400}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1398, file: !1374, line: 171, baseType: !1372, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1386, file: !1374, line: 212, baseType: !1402, size: 256)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1374, line: 174, size: 256, elements: !1403)
!1403 = !{!1404, !4816, !4819, !4820}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1402, file: !1374, line: 175, baseType: !1405, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1407)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1374, line: 271, size: 768, elements: !1408)
!1408 = !{!1409, !4793, !4797, !4798, !4799, !4800, !4801, !4805, !4806, !4807, !4808, !4812}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1407, file: !1374, line: 276, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!98, !1413}
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1374, line: 251, size: 1216, elements: !1415)
!1415 = !{!1416, !1417, !1418, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1414, file: !1374, line: 253, baseType: !1372, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1414, file: !1374, line: 254, baseType: !343, size: 64, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1414, file: !1374, line: 255, baseType: !1419, size: 64, offset: 128)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1421, line: 17, size: 960, elements: !1422)
!1421 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1422 = !{!1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1452, !1453, !1456}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1420, file: !1421, line: 18, baseType: !1056, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1420, file: !1421, line: 19, baseType: !111, size: 64, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1420, file: !1421, line: 20, baseType: !111, size: 64, offset: 128)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1420, file: !1421, line: 21, baseType: !111, size: 64, offset: 192)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1420, file: !1421, line: 22, baseType: !111, size: 64, offset: 256)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1420, file: !1421, line: 23, baseType: !117, size: 64, offset: 320)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1420, file: !1421, line: 24, baseType: !117, size: 64, offset: 384)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1420, file: !1421, line: 25, baseType: !378, size: 256, offset: 448)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1420, file: !1421, line: 26, baseType: !1432, size: 64, offset: 704)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1434)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1421, line: 32, size: 256, elements: !1435)
!1435 = !{!1436, !1440, !1444, !1448}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1434, file: !1421, line: 33, baseType: !1437, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!96, !1419, !116}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1434, file: !1421, line: 34, baseType: !1441, size: 64, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{null, !1419, !96}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1434, file: !1421, line: 35, baseType: !1445, size: 64, offset: 128)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!96, !1419, !96, !116}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1434, file: !1421, line: 36, baseType: !1449, size: 64, offset: 192)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!98, !1419, !96}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1420, file: !1421, line: 27, baseType: !98, size: 32, offset: 768)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1420, file: !1421, line: 28, baseType: !1454, size: 64, offset: 832)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1420, file: !1421, line: 29, baseType: !96, size: 64, offset: 896)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1414, file: !1374, line: 256, baseType: !96, size: 64, offset: 192)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1414, file: !1374, line: 259, baseType: !378, size: 256, offset: 256)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1414, file: !1374, line: 260, baseType: !378, size: 256, offset: 512)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1414, file: !1374, line: 261, baseType: !98, size: 32, offset: 768)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1414, file: !1374, line: 262, baseType: !173, size: 128, offset: 832)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1414, file: !1374, line: 263, baseType: !1056, size: 64, offset: 960)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1414, file: !1374, line: 265, baseType: !111, size: 64, offset: 1024)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1414, file: !1374, line: 266, baseType: !1045, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1414, file: !1374, line: 267, baseType: !1045, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1414, file: !1374, line: 268, baseType: !1467, size: 64, offset: 1152)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1469)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1470, line: 563, size: 1024, elements: !1471)
!1470 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1471 = !{!1472, !1530, !1531, !1535, !1539, !1543, !4759, !4763, !4767, !4771, !4772, !4773, !4777, !4781, !4785, !4789}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1469, file: !1470, line: 564, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{null, !1476}
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !20, line: 625, size: 1344, elements: !1478)
!1478 = !{!1479, !1488, !1489, !1497, !1504, !1505, !1510, !1511, !1516, !1517, !1520, !1521, !1522, !1523, !1524, !1525, !1528}
!1479 = !DIDerivedType(tag: DW_TAG_member, scope: !1477, file: !20, line: 628, baseType: !1480, size: 128)
!1480 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1477, file: !20, line: 628, size: 128, elements: !1481)
!1481 = !{!1482, !1487}
!1482 = !DIDerivedType(tag: DW_TAG_member, scope: !1480, file: !20, line: 629, baseType: !1483, size: 128)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1480, file: !20, line: 629, size: 128, elements: !1484)
!1484 = !{!1485, !1486}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1483, file: !20, line: 631, baseType: !115, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1483, file: !20, line: 632, baseType: !115, size: 64, offset: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1480, file: !20, line: 635, baseType: !356, size: 128, align: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1477, file: !20, line: 639, baseType: !315, size: 64, offset: 128)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1477, file: !20, line: 640, baseType: !1490, size: 64, offset: 192)
!1490 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1491, line: 297, baseType: !1492)
!1491 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1491, line: 297, size: 64, elements: !1493)
!1493 = !{!1494}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1492, file: !1491, line: 297, baseType: !1495, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1496, line: 19, baseType: !115)
!1496 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1497 = !DIDerivedType(tag: DW_TAG_member, scope: !1477, file: !20, line: 646, baseType: !1498, size: 64, offset: 256)
!1498 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1477, file: !20, line: 646, size: 64, elements: !1499)
!1499 = !{!1500, !1503}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1498, file: !20, line: 647, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1502)
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !20, line: 542, baseType: !115)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1498, file: !20, line: 648, baseType: !1502, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1477, file: !20, line: 666, baseType: !98, size: 32, offset: 320)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1477, file: !20, line: 667, baseType: !1506, size: 64, offset: 384)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !20, line: 579, size: 320, elements: !1508)
!1508 = !{!1509}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1507, file: !20, line: 580, baseType: !987, size: 320)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1477, file: !20, line: 670, baseType: !1045, size: 8, offset: 448)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1477, file: !20, line: 681, baseType: !1512, size: 256, offset: 512)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1477, file: !20, line: 678, size: 256, elements: !1513)
!1513 = !{!1514, !1515}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1512, file: !20, line: 679, baseType: !524, size: 192, align: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1512, file: !20, line: 680, baseType: !115, size: 64, offset: 192)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1477, file: !20, line: 689, baseType: !173, size: 128, offset: 768)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1477, file: !20, line: 691, baseType: !1518, size: 64, offset: 896)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !20, line: 691, flags: DIFlagFwdDecl)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1477, file: !20, line: 694, baseType: !1467, size: 64, offset: 960)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1477, file: !20, line: 697, baseType: !115, size: 64, offset: 1024)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1477, file: !20, line: 699, baseType: !343, size: 64, offset: 1088)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1477, file: !20, line: 700, baseType: !96, size: 64, offset: 1152)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1477, file: !20, line: 711, baseType: !369, size: 64, offset: 1216)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1477, file: !20, line: 717, baseType: !1526, size: 64, offset: 1280)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !475, line: 54, flags: DIFlagFwdDecl)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1477, file: !20, line: 722, baseType: !1529, offset: 1344)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !20, line: 570, elements: !336)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1469, file: !1470, line: 569, baseType: !1473, size: 64, offset: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1469, file: !1470, line: 571, baseType: !1532, size: 64, offset: 128)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!98, !1476, !115}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1469, file: !1470, line: 572, baseType: !1536, size: 64, offset: 192)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!98, !1476}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1469, file: !1470, line: 578, baseType: !1540, size: 64, offset: 256)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!98, !1476, !115, !115, !115}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1469, file: !1470, line: 580, baseType: !1544, size: 64, offset: 320)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!1547, !1548}
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !20, line: 1184, baseType: !7)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1470, line: 512, size: 896, elements: !1550)
!1550 = !{!1551, !1559, !1560, !1567, !1574, !1584, !4752, !4753, !4755, !4757}
!1551 = !DIDerivedType(tag: DW_TAG_member, scope: !1549, file: !1470, line: 513, baseType: !1552, size: 320)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1549, file: !1470, line: 513, size: 320, elements: !1553)
!1553 = !{!1554, !1555, !1556, !1557, !1558}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1552, file: !1470, line: 514, baseType: !1476, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1552, file: !1470, line: 515, baseType: !466, size: 32, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1552, file: !1470, line: 516, baseType: !115, size: 64, offset: 128)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1552, file: !1470, line: 517, baseType: !115, size: 64, offset: 192)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1552, file: !1470, line: 518, baseType: !115, size: 64, offset: 256)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1549, file: !1470, line: 520, baseType: !19, size: 32, offset: 320)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1549, file: !1470, line: 522, baseType: !1561, size: 64, offset: 384)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1496, line: 22, baseType: !1563)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1496, line: 22, size: 64, elements: !1564)
!1564 = !{!1565}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1563, file: !1496, line: 22, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1496, line: 15, baseType: !115)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1549, file: !1470, line: 524, baseType: !1568, size: 64, offset: 448)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1491, line: 372, baseType: !1570)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1491, line: 372, size: 64, elements: !1571)
!1571 = !{!1572}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1570, file: !1491, line: 372, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1496, line: 16, baseType: !115)
!1574 = !DIDerivedType(tag: DW_TAG_member, scope: !1549, file: !1470, line: 527, baseType: !1575, size: 64, offset: 512)
!1575 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1549, file: !1470, line: 527, size: 64, elements: !1576)
!1576 = !{!1577, !1583}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1575, file: !1470, line: 528, baseType: !1578, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1496, line: 21, baseType: !1579)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1496, line: 21, size: 64, elements: !1580)
!1580 = !{!1581}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1579, file: !1496, line: 21, baseType: !1582, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1496, line: 14, baseType: !115)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1575, file: !1470, line: 529, baseType: !1562, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1549, file: !1470, line: 534, baseType: !1585, size: 64, offset: 576)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !20, line: 74, size: 512, align: 128, elements: !1587)
!1587 = !{!1588, !1589, !4746, !4751}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1586, file: !20, line: 75, baseType: !115, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, scope: !1586, file: !20, line: 83, baseType: !1590, size: 320, offset: 64)
!1590 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1586, file: !20, line: 83, size: 320, elements: !1591)
!1591 = !{!1592, !4652, !4666, !4670, !4745}
!1592 = !DIDerivedType(tag: DW_TAG_member, scope: !1590, file: !20, line: 84, baseType: !1593, size: 320)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1590, file: !20, line: 84, size: 320, elements: !1594)
!1594 = !{!1595, !1606, !4646, !4651}
!1595 = !DIDerivedType(tag: DW_TAG_member, scope: !1593, file: !20, line: 90, baseType: !1596, size: 128)
!1596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1593, file: !20, line: 90, size: 128, elements: !1597)
!1597 = !{!1598, !1599, !1604, !1605}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1596, file: !20, line: 91, baseType: !173, size: 128)
!1599 = !DIDerivedType(tag: DW_TAG_member, scope: !1596, file: !20, line: 94, baseType: !1600, size: 128)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1596, file: !20, line: 94, size: 128, elements: !1601)
!1601 = !{!1602, !1603}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1600, file: !20, line: 96, baseType: !96, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1600, file: !20, line: 98, baseType: !7, size: 32, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1596, file: !20, line: 102, baseType: !173, size: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1596, file: !20, line: 103, baseType: !173, size: 128)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1593, file: !20, line: 106, baseType: !1607, size: 64, offset: 128)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !83, line: 472, size: 1536, align: 64, elements: !1609)
!1609 = !{!1610, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4640, !4641, !4642, !4643, !4644, !4645}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1608, file: !83, line: 473, baseType: !1611, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !83, line: 641, size: 4800, elements: !1613)
!1613 = !{!1614, !1615, !1616, !1617, !1618, !1619, !1620, !1623, !1624, !4253, !4254, !4255, !4256, !4257, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4463, !4466, !4467, !4468, !4477, !4478, !4479, !4480}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1612, file: !83, line: 642, baseType: !100, size: 16)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1612, file: !83, line: 643, baseType: !102, size: 16, offset: 16)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1612, file: !83, line: 644, baseType: !940, size: 32, offset: 32)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1612, file: !83, line: 645, baseType: !173, size: 128, offset: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1612, file: !83, line: 646, baseType: !948, size: 32, offset: 192)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1612, file: !83, line: 647, baseType: !7, size: 32, offset: 224)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1612, file: !83, line: 650, baseType: !1621, size: 64, offset: 256)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !83, line: 607, flags: DIFlagFwdDecl)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1612, file: !83, line: 651, baseType: !1621, size: 64, offset: 320)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1612, file: !83, line: 654, baseType: !1625, size: 64, offset: 384)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1627)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !83, line: 1966, size: 2048, align: 512, elements: !1628)
!1628 = !{!1629, !4087, !4097, !4101, !4105, !4109, !4113, !4117, !4121, !4125, !4129, !4130, !4134, !4138, !4175, !4204, !4208, !4214, !4218, !4222, !4226, !4230, !4234, !4240, !4244}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1627, file: !83, line: 1967, baseType: !1630, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!1633, !1611, !1633, !7}
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1635, line: 82, size: 1536, elements: !1636)
!1635 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1636 = !{!1637, !1638, !1643, !1651, !1652, !1667, !1668, !1672, !1685, !4070, !4071, !4072, !4073, !4079, !4080, !4081}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1634, file: !1635, line: 84, baseType: !7, size: 32)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1634, file: !1635, line: 85, baseType: !1639, size: 32, offset: 32)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !648, line: 275, baseType: !1640)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !648, line: 275, size: 32, elements: !1641)
!1641 = !{!1642}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1640, file: !648, line: 275, baseType: !652, size: 32)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1634, file: !1635, line: 86, baseType: !1644, size: 128, offset: 64)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1645, line: 38, size: 128, elements: !1646)
!1645 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1646 = !{!1647, !1649}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1644, file: !1645, line: 39, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1644, file: !1645, line: 39, baseType: !1650, size: 64, offset: 64)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1634, file: !1635, line: 87, baseType: !1633, size: 64, offset: 192)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1634, file: !1635, line: 88, baseType: !1653, size: 128, offset: 256)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1635, line: 49, size: 128, elements: !1654)
!1654 = !{!1655, !1664}
!1655 = !DIDerivedType(tag: DW_TAG_member, scope: !1653, file: !1635, line: 50, baseType: !1656, size: 64)
!1656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1653, file: !1635, line: 50, size: 64, elements: !1657)
!1657 = !{!1658, !1663}
!1658 = !DIDerivedType(tag: DW_TAG_member, scope: !1656, file: !1635, line: 51, baseType: !1659, size: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1656, file: !1635, line: 51, size: 64, elements: !1660)
!1660 = !{!1661, !1662}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1659, file: !1635, line: 52, baseType: !484, size: 32)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1659, file: !1635, line: 52, baseType: !484, size: 32, offset: 32)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1656, file: !1635, line: 54, baseType: !532, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1653, file: !1635, line: 56, baseType: !1665, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1634, file: !1635, line: 89, baseType: !1611, size: 64, offset: 384)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1634, file: !1635, line: 91, baseType: !1669, size: 256, offset: 448)
!1669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 256, elements: !1670)
!1670 = !{!1671}
!1671 = !DISubrange(count: 32)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1634, file: !1635, line: 94, baseType: !1673, size: 64, offset: 704)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !1674, line: 25, size: 64, elements: !1675)
!1674 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!1675 = !{!1676}
!1676 = !DIDerivedType(tag: DW_TAG_member, scope: !1673, file: !1674, line: 26, baseType: !1677, size: 64)
!1677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1673, file: !1674, line: 26, size: 64, elements: !1678)
!1678 = !{!1679, !1680}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !1677, file: !1674, line: 28, baseType: !533, size: 64, align: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, scope: !1677, file: !1674, line: 30, baseType: !1681, size: 64)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1677, file: !1674, line: 30, size: 64, elements: !1682)
!1682 = !{!1683, !1684}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1681, file: !1674, line: 31, baseType: !135, size: 32)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1681, file: !1674, line: 32, baseType: !98, size: 32, offset: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1634, file: !1635, line: 95, baseType: !1686, size: 64, offset: 768)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1688)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1635, line: 128, size: 1024, align: 512, elements: !1689)
!1689 = !{!1690, !1694, !1695, !1702, !1708, !1712, !1716, !1720, !1721, !1725, !1729, !4060, !4064}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1688, file: !1635, line: 129, baseType: !1691, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!98, !1633, !7}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1688, file: !1635, line: 130, baseType: !1691, size: 64, offset: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1688, file: !1635, line: 131, baseType: !1696, size: 64, offset: 128)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!98, !1699, !1701}
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1634)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1688, file: !1635, line: 132, baseType: !1703, size: 64, offset: 192)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!98, !1699, !7, !92, !1706}
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1653)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1688, file: !1635, line: 134, baseType: !1709, size: 64, offset: 256)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!98, !1699}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1688, file: !1635, line: 135, baseType: !1713, size: 64, offset: 320)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!98, !1633}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1688, file: !1635, line: 136, baseType: !1717, size: 64, offset: 384)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{null, !1633}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1688, file: !1635, line: 137, baseType: !1717, size: 64, offset: 448)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1688, file: !1635, line: 138, baseType: !1722, size: 64, offset: 512)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{null, !1633, !1611}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1688, file: !1635, line: 139, baseType: !1726, size: 64, offset: 576)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!1056, !1633, !1056, !98}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1688, file: !1635, line: 140, baseType: !1730, size: 64, offset: 640)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!1733, !4059}
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1735, line: 70, size: 256, elements: !1736)
!1735 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1736 = !{!1737, !1738, !4055, !4056}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1734, file: !1735, line: 71, baseType: !1633, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1734, file: !1735, line: 72, baseType: !1739, size: 64, offset: 64)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !83, line: 1190, size: 10752, elements: !1741)
!1741 = !{!1742, !1743, !1746, !1747, !1748, !1749, !3508, !3660, !3700, !3790, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3807, !3811, !3812, !3856, !3859, !3918, !3921, !3922, !3923, !3964, !3986, !3987, !3988, !3989, !3990, !3991, !3994, !3996, !4003, !4004, !4005, !4006, !4007, !4022, !4023, !4024, !4025, !4028, !4029, !4030, !4031, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1740, file: !83, line: 1191, baseType: !173, size: 128)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1740, file: !83, line: 1192, baseType: !1744, size: 32, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !101, line: 21, baseType: !1745)
!1745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !101, line: 18, baseType: !484)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1740, file: !83, line: 1193, baseType: !163, size: 8, offset: 160)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1740, file: !83, line: 1194, baseType: !115, size: 64, offset: 192)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1740, file: !83, line: 1195, baseType: !117, size: 64, offset: 256)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1740, file: !83, line: 1196, baseType: !1750, size: 64, offset: 320)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !83, line: 2366, size: 576, elements: !1752)
!1752 = !{!1753, !1754, !1755, !1761, !1765, !1769, !1773, !3496, !3497, !3498, !3500, !3501, !3502, !3504, !3505, !3506, !3507}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1751, file: !83, line: 2367, baseType: !92, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1751, file: !83, line: 2368, baseType: !98, size: 32, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1751, file: !83, line: 2376, baseType: !1756, size: 64, offset: 128)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!98, !1759}
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1374, line: 32, flags: DIFlagFwdDecl)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1751, file: !83, line: 2377, baseType: !1762, size: 64, offset: 192)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1764)
!1764 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !83, line: 75, flags: DIFlagFwdDecl)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1751, file: !83, line: 2378, baseType: !1766, size: 64, offset: 256)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!1633, !1750, !98, !92, !96}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1751, file: !83, line: 2380, baseType: !1770, size: 64, offset: 320)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{null, !1739}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1751, file: !83, line: 2381, baseType: !1774, size: 64, offset: 384)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !1776)
!1776 = !{!1777, !1778, !1779, !1783, !1963, !1989, !1990, !1991, !1992, !1996, !1999, !2000, !2001, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2069, !2073, !2093, !2112, !2113, !2114, !2115, !2124, !2147, !2148, !2151, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2164, !2165, !2264, !2272, !2273, !2274, !2276, !3474, !3475, !3484, !3485, !3486, !3487, !3489, !3490, !3491, !3492, !3493, !3494, !3495}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1775, file: !6, line: 403, baseType: !5, size: 32)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1775, file: !6, line: 406, baseType: !173, size: 128, offset: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1775, file: !6, line: 409, baseType: !1780, size: 448, offset: 192)
!1780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 448, elements: !1781)
!1781 = !{!1782}
!1782 = !DISubrange(count: 56)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1775, file: !6, line: 417, baseType: !1784, size: 768, offset: 640)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !1785)
!1785 = !{!1786, !1957, !1958, !1959, !1962}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1784, file: !6, line: 46, baseType: !1787, size: 512)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1788, line: 64, size: 512, elements: !1789)
!1788 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1789 = !{!1790, !1791, !1792, !1794, !1838, !1946, !1947, !1952, !1953, !1954, !1955, !1956}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1787, file: !1788, line: 65, baseType: !92, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1787, file: !1788, line: 66, baseType: !173, size: 128, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1787, file: !1788, line: 67, baseType: !1793, size: 64, offset: 192)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1787, file: !1788, line: 68, baseType: !1795, size: 64, offset: 256)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1788, line: 168, size: 768, elements: !1797)
!1797 = !{!1798, !1799, !1800, !1801}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1796, file: !1788, line: 169, baseType: !173, size: 128)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1796, file: !1788, line: 170, baseType: !135, size: 32, offset: 128)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1796, file: !1788, line: 171, baseType: !1787, size: 512, offset: 192)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1796, file: !1788, line: 172, baseType: !1802, size: 64, offset: 704)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1804)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1788, line: 133, size: 192, elements: !1805)
!1805 = !{!1806, !1813, !1818}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1804, file: !1788, line: 134, baseType: !1807, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1808)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!98, !1811}
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1787)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1804, file: !1788, line: 135, baseType: !1814, size: 64, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1815)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!92, !1811}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1804, file: !1788, line: 136, baseType: !1819, size: 64, offset: 128)
!1819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1820)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!98, !1811, !1823}
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1788, line: 125, size: 20736, elements: !1825)
!1825 = !{!1826, !1828, !1832, !1833, !1837}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1824, file: !1788, line: 126, baseType: !1827, size: 192)
!1827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1056, size: 192, elements: !415)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1824, file: !1788, line: 127, baseType: !1829, size: 4096, offset: 192)
!1829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1056, size: 4096, elements: !1830)
!1830 = !{!1831}
!1831 = !DISubrange(count: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1824, file: !1788, line: 128, baseType: !98, size: 32, offset: 4288)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1824, file: !1788, line: 129, baseType: !1834, size: 16384, offset: 4320)
!1834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 16384, elements: !1835)
!1835 = !{!1836}
!1836 = !DISubrange(count: 2048)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1824, file: !1788, line: 130, baseType: !98, size: 32, offset: 20704)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1787, file: !1788, line: 69, baseType: !1839, size: 64, offset: 320)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1841)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1788, line: 116, size: 384, elements: !1842)
!1842 = !{!1843, !1847, !1869, !1907, !1938, !1942}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1841, file: !1788, line: 117, baseType: !1844, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{null, !1793}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1841, file: !1788, line: 118, baseType: !1848, size: 64, offset: 64)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1850)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1851, line: 254, size: 128, elements: !1852)
!1851 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1852 = !{!1853, !1865}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1850, file: !1851, line: 255, baseType: !1854, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!1857, !1793, !1860, !1056}
!1857 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !101, line: 66, baseType: !1858)
!1858 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !113, line: 73, baseType: !1859)
!1859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !113, line: 15, baseType: !808)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1851, line: 30, size: 128, elements: !1862)
!1862 = !{!1863, !1864}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1861, file: !1851, line: 31, baseType: !92, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1861, file: !1851, line: 32, baseType: !100, size: 16, offset: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1850, file: !1851, line: 256, baseType: !1866, size: 64, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!1857, !1793, !1860, !92, !111}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1841, file: !1788, line: 119, baseType: !1870, size: 64, offset: 128)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1873)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1851, line: 84, size: 320, elements: !1874)
!1874 = !{!1875, !1876, !1880, !1903, !1905}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1873, file: !1851, line: 85, baseType: !92, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1873, file: !1851, line: 86, baseType: !1877, size: 64, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!100, !1793, !1860, !98}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1873, file: !1851, line: 88, baseType: !1881, size: 64, offset: 128)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!100, !1793, !1884, !98}
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1851, line: 175, size: 512, elements: !1886)
!1886 = !{!1887, !1888, !1889, !1890, !1894, !1898, !1899}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1885, file: !1851, line: 176, baseType: !1861, size: 128)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1885, file: !1851, line: 177, baseType: !111, size: 64, offset: 128)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1885, file: !1851, line: 178, baseType: !96, size: 64, offset: 192)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1885, file: !1851, line: 179, baseType: !1891, size: 64, offset: 256)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!1607}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1885, file: !1851, line: 180, baseType: !1895, size: 64, offset: 320)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!1857, !343, !1793, !1884, !1056, !117, !111}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1885, file: !1851, line: 182, baseType: !1895, size: 64, offset: 384)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1885, file: !1851, line: 184, baseType: !1900, size: 64, offset: 448)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!98, !343, !1793, !1884, !1476}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1873, file: !1851, line: 90, baseType: !1904, size: 64, offset: 192)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1873, file: !1851, line: 91, baseType: !1906, size: 64, offset: 256)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1841, file: !1788, line: 120, baseType: !1908, size: 64, offset: 192)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!1911, !1811}
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1913)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !14, line: 39, size: 384, elements: !1914)
!1914 = !{!1915, !1916, !1920, !1924, !1930, !1934}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1913, file: !14, line: 40, baseType: !13, size: 32)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1913, file: !14, line: 41, baseType: !1917, size: 64, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!1045}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1913, file: !14, line: 42, baseType: !1921, size: 64, offset: 128)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!96}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1913, file: !14, line: 43, baseType: !1925, size: 64, offset: 192)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!1382, !1928}
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !14, line: 19, flags: DIFlagFwdDecl)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1913, file: !14, line: 44, baseType: !1931, size: 64, offset: 256)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!1382}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1913, file: !14, line: 45, baseType: !1935, size: 64, offset: 320)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{null, !96}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1841, file: !1788, line: 121, baseType: !1939, size: 64, offset: 256)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!1382, !1811}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1841, file: !1788, line: 122, baseType: !1943, size: 64, offset: 320)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{null, !1811, !1231, !1232}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1787, file: !1788, line: 70, baseType: !1372, size: 64, offset: 384)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1787, file: !1788, line: 71, baseType: !1948, size: 32, offset: 448)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1949, line: 19, size: 32, elements: !1950)
!1949 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1950 = !{!1951}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1948, file: !1949, line: 20, baseType: !423, size: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1787, file: !1788, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1787, file: !1788, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1787, file: !1788, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1787, file: !1788, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1787, file: !1788, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1784, file: !6, line: 47, baseType: !1774, size: 64, offset: 512)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1784, file: !6, line: 48, baseType: !1793, size: 64, offset: 576)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1784, file: !6, line: 49, baseType: !1960, size: 64, offset: 640)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1784, file: !6, line: 50, baseType: !884, size: 64, offset: 704)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1775, file: !6, line: 418, baseType: !1964, size: 64, offset: 1408)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !1966)
!1966 = !{!1967, !1968, !1973, !1977, !1981, !1985}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1965, file: !6, line: 54, baseType: !1861, size: 128)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1965, file: !6, line: 55, baseType: !1969, size: 64, offset: 128)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!1857, !1964, !1972, !1056}
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1965, file: !6, line: 57, baseType: !1974, size: 64, offset: 192)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!1857, !1964, !1972, !92, !111}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1965, file: !6, line: 59, baseType: !1978, size: 64, offset: 256)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{null, !1774, !92}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1965, file: !6, line: 60, baseType: !1982, size: 64, offset: 320)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!98, !1774}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1965, file: !6, line: 61, baseType: !1986, size: 64, offset: 384)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{null, !1774}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1775, file: !6, line: 419, baseType: !92, size: 64, offset: 1472)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1775, file: !6, line: 420, baseType: !92, size: 64, offset: 1536)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1775, file: !6, line: 421, baseType: !1793, size: 64, offset: 1600)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1775, file: !6, line: 424, baseType: !1993, size: 64, offset: 1664)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1995)
!1995 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1775, file: !6, line: 425, baseType: !1997, size: 64, offset: 1728)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !846)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1775, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1775, file: !6, line: 435, baseType: !378, size: 256, offset: 1856)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1775, file: !6, line: 437, baseType: !2002, size: 64, offset: 2112)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2004, line: 69, size: 320, elements: !2005)
!2004 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2005 = !{!2006, !2007, !2008, !2025, !2027, !2031, !2032}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2003, file: !2004, line: 70, baseType: !92, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2003, file: !2004, line: 71, baseType: !1774, size: 64, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2003, file: !2004, line: 72, baseType: !2009, size: 64, offset: 128)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2011)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2004, line: 47, size: 256, elements: !2012)
!2012 = !{!2013, !2014, !2020, !2024}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2011, file: !2004, line: 49, baseType: !7, size: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2011, file: !2004, line: 51, baseType: !2015, size: 64, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!98, !92, !2018}
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2003)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2011, file: !2004, line: 53, baseType: !2021, size: 64, offset: 128)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!98, !1056, !2018}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2011, file: !2004, line: 55, baseType: !1935, size: 64, offset: 192)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2003, file: !2004, line: 73, baseType: !2026, size: 16, offset: 192)
!2026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2003, file: !2004, line: 74, baseType: !2028, size: 8, offset: 208)
!2028 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !160, line: 16, baseType: !2029)
!2029 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !162, line: 20, baseType: !2030)
!2030 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2003, file: !2004, line: 75, baseType: !159, size: 8, offset: 216)
!2032 = !DIDerivedType(tag: DW_TAG_member, scope: !2003, file: !2004, line: 76, baseType: !2033, size: 64, offset: 256)
!2033 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2003, file: !2004, line: 76, size: 64, elements: !2034)
!2034 = !{!2035, !2036, !2043}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2033, file: !2004, line: 77, baseType: !96, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2033, file: !2004, line: 78, baseType: !2037, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2039)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2004, line: 86, size: 128, elements: !2040)
!2040 = !{!2041, !2042}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2039, file: !2004, line: 87, baseType: !7, size: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2039, file: !2004, line: 88, baseType: !1056, size: 64, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2033, file: !2004, line: 79, baseType: !2044, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2046)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2004, line: 92, size: 256, elements: !2047)
!2047 = !{!2048, !2049, !2050, !2052, !2053}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2046, file: !2004, line: 94, baseType: !7, size: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2046, file: !2004, line: 95, baseType: !7, size: 32, offset: 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2046, file: !2004, line: 96, baseType: !2051, size: 64, offset: 64)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2046, file: !2004, line: 97, baseType: !2009, size: 64, offset: 128)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2046, file: !2004, line: 98, baseType: !96, size: 64, offset: 192)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1775, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1775, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1775, file: !6, line: 442, baseType: !1993, size: 64, offset: 2240)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1775, file: !6, line: 443, baseType: !1997, size: 64, offset: 2304)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1775, file: !6, line: 444, baseType: !1045, size: 8, offset: 2368)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1775, file: !6, line: 451, baseType: !1045, size: 8, offset: 2376)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1775, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1775, file: !6, line: 455, baseType: !2062, size: 64, offset: 2432)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2064, line: 23, size: 96, elements: !2065)
!2064 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2065 = !{!2066, !2067, !2068}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2063, file: !2064, line: 24, baseType: !98, size: 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2063, file: !2064, line: 24, baseType: !98, size: 32, offset: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2063, file: !2064, line: 24, baseType: !98, size: 32, offset: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1775, file: !6, line: 458, baseType: !2070, size: 64, offset: 2496)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!98}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1775, file: !6, line: 460, baseType: !2074, size: 4032, align: 512, offset: 2560)
!2074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2075, size: 4032, elements: !2091)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !2076)
!2076 = !{!2077, !2078, !2079}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2075, file: !6, line: 363, baseType: !96, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2075, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2075, file: !6, line: 367, baseType: !2080, size: 448, offset: 128)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !2081)
!2081 = !{!2082, !2083}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2080, file: !6, line: 320, baseType: !1774, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2080, file: !6, line: 321, baseType: !2084, size: 384, offset: 64)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2085, line: 40, size: 384, elements: !2086)
!2085 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2086 = !{!2087}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2084, file: !2085, line: 41, baseType: !2088, size: 384, align: 64)
!2088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !524, size: 384, align: 64, elements: !2089)
!2089 = !{!2090}
!2090 = !DISubrange(count: 2)
!2091 = !{!2092}
!2092 = !DISubrange(count: 7)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1775, file: !6, line: 463, baseType: !2094, size: 192, offset: 6592)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2095, line: 8, size: 192, elements: !2096)
!2095 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2096 = !{!2097, !2098, !2099}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2094, file: !2095, line: 10, baseType: !7, size: 32)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2094, file: !2095, line: 11, baseType: !896, size: 64, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2094, file: !2095, line: 12, baseType: !2100, size: 64, offset: 128)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2102, line: 59, size: 48, elements: !2103)
!2102 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2103 = !{!2104, !2107, !2108, !2109, !2110, !2111}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2101, file: !2102, line: 60, baseType: !2105, size: 16)
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !160, line: 18, baseType: !2106)
!2106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !162, line: 23, baseType: !860)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2101, file: !2102, line: 61, baseType: !2105, size: 16, offset: 16)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2101, file: !2102, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2101, file: !2102, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2101, file: !2102, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2101, file: !2102, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1775, file: !6, line: 465, baseType: !115, size: 64, offset: 6784)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1775, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1775, file: !6, line: 470, baseType: !173, size: 128, offset: 6912)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1775, file: !6, line: 471, baseType: !2116, size: 64, offset: 7040)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2118, line: 33, size: 96, elements: !2119)
!2118 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2119 = !{!2120, !2121, !2122, !2123}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2117, file: !2118, line: 37, baseType: !98, size: 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2117, file: !2118, line: 43, baseType: !98, size: 32, offset: 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2117, file: !2118, line: 45, baseType: !102, size: 16, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2117, file: !2118, line: 47, baseType: !102, size: 16, offset: 80)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1775, file: !6, line: 476, baseType: !2125, size: 64, offset: 7104)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !2127)
!2127 = !{!2128, !2144, !2145, !2146}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2126, file: !6, line: 379, baseType: !2129, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2131, line: 204, baseType: !2132)
!2131 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2131, line: 197, size: 192, elements: !2133)
!2133 = !{!2134, !2136, !2137, !2138, !2140, !2142}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2132, file: !2131, line: 198, baseType: !2135, size: 32)
!2135 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2131, line: 21, baseType: !485)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2132, file: !2131, line: 199, baseType: !163, size: 8, offset: 32)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2132, file: !2131, line: 200, baseType: !163, size: 8, offset: 40)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2132, file: !2131, line: 201, baseType: !2139, size: 16, offset: 48)
!2139 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2131, line: 17, baseType: !170)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2132, file: !2131, line: 202, baseType: !2141, size: 64, offset: 64)
!2141 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2131, line: 16, baseType: !533)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2132, file: !2131, line: 203, baseType: !2143, size: 64, offset: 128)
!2143 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2131, line: 22, baseType: !533)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2126, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2126, file: !6, line: 381, baseType: !1056, size: 64, offset: 128)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2126, file: !6, line: 382, baseType: !1056, size: 64, offset: 192)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1775, file: !6, line: 477, baseType: !2126, size: 256, offset: 7168)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1775, file: !6, line: 480, baseType: !2149, size: 64, offset: 7424)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1775, file: !6, line: 483, baseType: !2152, size: 64, offset: 7488)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1775, file: !6, line: 488, baseType: !1056, size: 64, offset: 7552)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1775, file: !6, line: 492, baseType: !96, size: 64, offset: 7616)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1775, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1775, file: !6, line: 495, baseType: !96, size: 64, offset: 7744)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1775, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1775, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1775, file: !6, line: 500, baseType: !2161, size: 64, offset: 7872)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !304, line: 45, baseType: !2163)
!2163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1775, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1775, file: !6, line: 504, baseType: !2166, size: 64, offset: 8000)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2169, line: 96, size: 192, elements: !2170)
!2169 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2170 = !{!2171, !2172, !2225, !2228}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2168, file: !2169, line: 97, baseType: !7, size: 32)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2168, file: !2169, line: 98, baseType: !2173, size: 64, offset: 64)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2169, line: 24, size: 3072, elements: !2175)
!2175 = !{!2176, !2178, !2179, !2180, !2181, !2194, !2195, !2196, !2197, !2209, !2210, !2211, !2222, !2223, !2224}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2174, file: !2169, line: 26, baseType: !2177, size: 128)
!2177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 128, elements: !2089)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2174, file: !2169, line: 27, baseType: !2177, size: 128, offset: 128)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2174, file: !2169, line: 28, baseType: !98, size: 32, offset: 256)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2174, file: !2169, line: 31, baseType: !135, size: 32, align: 512, offset: 512)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2174, file: !2169, line: 32, baseType: !2182, size: 960, offset: 576)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2183, line: 206, size: 960, elements: !2184)
!2183 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2184 = !{!2185, !2186, !2189, !2191, !2192, !2193}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2182, file: !2183, line: 207, baseType: !359, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2182, file: !2183, line: 208, baseType: !2187, size: 256, offset: 64)
!2187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2188, size: 256, elements: !441)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2182, file: !2183, line: 209, baseType: !2190, size: 256, offset: 320)
!2190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 256, elements: !441)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2182, file: !2183, line: 213, baseType: !808, size: 64, offset: 576)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2182, file: !2183, line: 215, baseType: !1266, size: 256, offset: 640)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2182, file: !2183, line: 216, baseType: !159, size: 8, offset: 896)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2174, file: !2169, line: 33, baseType: !115, size: 64, offset: 1536)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2174, file: !2169, line: 34, baseType: !115, size: 64, offset: 1600)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2174, file: !2169, line: 35, baseType: !1045, size: 8, offset: 1664)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2174, file: !2169, line: 36, baseType: !2198, size: 320, offset: 1728)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2199, line: 11, size: 320, elements: !2200)
!2199 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2200 = !{!2201, !2202, !2203, !2208}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2198, file: !2199, line: 16, baseType: !436, size: 128)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2198, file: !2199, line: 17, baseType: !115, size: 64, offset: 128)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2198, file: !2199, line: 18, baseType: !2204, size: 64, offset: 192)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{null, !2207}
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2198, file: !2199, line: 19, baseType: !484, size: 32, offset: 256)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2174, file: !2169, line: 37, baseType: !1178, size: 256, offset: 2048)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2174, file: !2169, line: 38, baseType: !356, size: 128, align: 64, offset: 2304)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2174, file: !2169, line: 39, baseType: !2212, size: 64, offset: 2432)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2169, line: 49, size: 768, elements: !2214)
!2214 = !{!2215, !2216, !2217, !2218, !2219, !2220, !2221}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2213, file: !2169, line: 50, baseType: !135, size: 32)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2213, file: !2169, line: 51, baseType: !2190, size: 256, offset: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2213, file: !2169, line: 53, baseType: !2190, size: 256, offset: 320)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2213, file: !2169, line: 54, baseType: !115, size: 64, offset: 576)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2213, file: !2169, line: 55, baseType: !2212, size: 64, offset: 640)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2213, file: !2169, line: 56, baseType: !98, size: 32, offset: 704)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2213, file: !2169, line: 57, baseType: !98, size: 32, offset: 736)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2174, file: !2169, line: 40, baseType: !115, size: 64, offset: 2496)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2174, file: !2169, line: 42, baseType: !98, size: 32, offset: 2560)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2174, file: !2169, line: 43, baseType: !2167, size: 64, offset: 2624)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2168, file: !2169, line: 99, baseType: !2226, offset: 128)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2227, line: 211, elements: !336)
!2227 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2168, file: !2169, line: 100, baseType: !2229, size: 64, offset: 128)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2169, line: 63, size: 3008, elements: !2231)
!2231 = !{!2232, !2233, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2263}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2230, file: !2169, line: 64, baseType: !2212, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2230, file: !2169, line: 65, baseType: !2234, size: 192, offset: 64)
!2234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2212, size: 192, elements: !415)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2230, file: !2169, line: 67, baseType: !98, size: 32, offset: 256)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2230, file: !2169, line: 68, baseType: !378, size: 256, offset: 320)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2230, file: !2169, line: 69, baseType: !135, size: 32, offset: 576)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2230, file: !2169, line: 70, baseType: !378, size: 256, offset: 640)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2230, file: !2169, line: 71, baseType: !115, size: 64, offset: 896)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2230, file: !2169, line: 72, baseType: !115, size: 64, offset: 960)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2230, file: !2169, line: 73, baseType: !115, size: 64, offset: 1024)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2230, file: !2169, line: 74, baseType: !115, size: 64, offset: 1088)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2230, file: !2169, line: 75, baseType: !115, size: 64, offset: 1152)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2230, file: !2169, line: 76, baseType: !115, size: 64, offset: 1216)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2230, file: !2169, line: 77, baseType: !115, size: 64, offset: 1280)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2230, file: !2169, line: 78, baseType: !115, size: 64, offset: 1344)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2230, file: !2169, line: 79, baseType: !1045, size: 8, offset: 1408)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2230, file: !2169, line: 80, baseType: !115, size: 64, offset: 1472)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2230, file: !2169, line: 81, baseType: !378, size: 256, offset: 1536)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2230, file: !2169, line: 82, baseType: !885, size: 256, offset: 1792)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2230, file: !2169, line: 84, baseType: !125, size: 32, offset: 2048)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2230, file: !2169, line: 87, baseType: !115, size: 64, offset: 2112)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2230, file: !2169, line: 88, baseType: !115, size: 64, offset: 2176)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2230, file: !2169, line: 89, baseType: !2255, size: 704, offset: 2240)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1179, line: 111, size: 704, elements: !2256)
!2256 = !{!2257, !2258, !2259, !2262}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2255, file: !1179, line: 112, baseType: !1178, size: 256)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2255, file: !1179, line: 113, baseType: !2198, size: 320, offset: 256)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2255, file: !1179, line: 116, baseType: !2260, size: 64, offset: 576)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1179, line: 18, flags: DIFlagFwdDecl)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2255, file: !1179, line: 117, baseType: !98, size: 32, offset: 640)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2230, file: !2169, line: 90, baseType: !2167, size: 64, offset: 2944)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1775, file: !6, line: 515, baseType: !2265, size: 64, offset: 8064)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2267, line: 117, size: 128, elements: !2268)
!2267 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2268 = !{!2269, !2270, !2271}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2266, file: !2267, line: 118, baseType: !846, size: 32)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2266, file: !2267, line: 119, baseType: !846, size: 32, offset: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2266, file: !2267, line: 120, baseType: !808, size: 64, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1775, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1775, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1775, file: !6, line: 520, baseType: !2275, size: 64, offset: 8192)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1775, file: !6, line: 523, baseType: !2277, size: 64, offset: 8256)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !246, line: 372, size: 1024, elements: !2280)
!2280 = !{!2281, !2282, !2322, !2376, !2457, !2458, !2461, !2466, !2467, !2468, !2469, !2471, !2474}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2279, file: !246, line: 373, baseType: !173, size: 128)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2279, file: !246, line: 374, baseType: !2283, size: 64, offset: 128)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !246, line: 291, size: 576, elements: !2285)
!2285 = !{!2286, !2287, !2288, !2289, !2293, !2316, !2320, !2321}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2284, file: !246, line: 292, baseType: !92, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2284, file: !246, line: 293, baseType: !96, size: 64, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !2284, file: !246, line: 295, baseType: !96, size: 64, offset: 128)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2284, file: !246, line: 297, baseType: !2290, size: 64, offset: 192)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!98, !2278, !245, !96}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !2284, file: !246, line: 299, baseType: !2294, size: 64, offset: 256)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !246, line: 275, size: 320, elements: !2296)
!2296 = !{!2297, !2298}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2295, file: !246, line: 276, baseType: !92, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, scope: !2295, file: !246, line: 277, baseType: !2299, size: 256, offset: 64)
!2299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2295, file: !246, line: 277, size: 256, elements: !2300)
!2300 = !{!2301, !2312}
!2301 = !DIDerivedType(tag: DW_TAG_member, scope: !2299, file: !246, line: 278, baseType: !2302, size: 256)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2299, file: !246, line: 278, size: 256, elements: !2303)
!2303 = !{!2304, !2305, !2306, !2307, !2309, !2310, !2311}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2302, file: !246, line: 279, baseType: !92, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2302, file: !246, line: 280, baseType: !2163, size: 32, offset: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2302, file: !246, line: 281, baseType: !2163, size: 32, offset: 96)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !2302, file: !246, line: 282, baseType: !2308, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !2302, file: !246, line: 283, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !2302, file: !246, line: 284, baseType: !2163, size: 32, offset: 160)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2302, file: !246, line: 285, baseType: !2163, size: 32, offset: 192)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !2299, file: !246, line: 287, baseType: !2313, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!98, !2278}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !2284, file: !246, line: 300, baseType: !2317, size: 64, offset: 320)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!176, !2278}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !2284, file: !246, line: 301, baseType: !173, size: 128, offset: 384)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !2284, file: !246, line: 302, baseType: !2313, size: 64, offset: 512)
!2322 = !DIDerivedType(tag: DW_TAG_member, scope: !2279, file: !246, line: 375, baseType: !2323, size: 64, offset: 192)
!2323 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2279, file: !246, line: 375, size: 64, elements: !2324)
!2324 = !{!2325, !2326}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2323, file: !246, line: 376, baseType: !92, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !2323, file: !246, line: 378, baseType: !2327, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !304, line: 32, size: 640, elements: !2329)
!2329 = !{!2330, !2331, !2343, !2367, !2368, !2369, !2370, !2371, !2375}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2328, file: !304, line: 33, baseType: !92, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2328, file: !304, line: 34, baseType: !2332, size: 128, offset: 64)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2267, line: 85, size: 128, elements: !2333)
!2333 = !{!2334, !2335}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2332, file: !2267, line: 86, baseType: !125, size: 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, scope: !2332, file: !2267, line: 101, baseType: !2336, size: 64, offset: 64)
!2336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2332, file: !2267, line: 101, size: 64, elements: !2337)
!2337 = !{!2338, !2339, !2340}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2336, file: !2267, line: 102, baseType: !115, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2336, file: !2267, line: 103, baseType: !2265, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2336, file: !2267, line: 104, baseType: !2341, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2267, line: 104, flags: DIFlagFwdDecl)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !2328, file: !304, line: 35, baseType: !2344, size: 64, offset: 192)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !2346, line: 61, size: 128, elements: !2347)
!2346 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2347 = !{!2348, !2349}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2345, file: !2346, line: 62, baseType: !96, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, scope: !2345, file: !2346, line: 63, baseType: !2350, size: 64, offset: 64)
!2350 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2345, file: !2346, line: 63, size: 64, elements: !2351)
!2351 = !{!2352, !2353, !2366}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2350, file: !2346, line: 65, baseType: !115, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !2350, file: !2346, line: 66, baseType: !2354, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !2356, line: 169, size: 192, elements: !2357)
!2356 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!2357 = !{!2358, !2359, !2360}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2355, file: !2356, line: 170, baseType: !2354, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2355, file: !2356, line: 171, baseType: !1774, size: 64, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2355, file: !2356, line: 172, baseType: !2361, size: 64, offset: 128)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2346, line: 32, size: 64, elements: !2363)
!2363 = !{!2364, !2365}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2362, file: !2346, line: 33, baseType: !846, size: 32)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2362, file: !2346, line: 34, baseType: !846, size: 32, offset: 32)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2350, file: !2346, line: 67, baseType: !2361, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !2328, file: !304, line: 36, baseType: !96, size: 64, offset: 256)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !2328, file: !304, line: 37, baseType: !96, size: 64, offset: 320)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !2328, file: !304, line: 38, baseType: !96, size: 64, offset: 384)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !2328, file: !304, line: 39, baseType: !2070, size: 64, offset: 448)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !2328, file: !304, line: 40, baseType: !2372, size: 64, offset: 512)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{null}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2328, file: !304, line: 41, baseType: !302, size: 64, offset: 576)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2279, file: !246, line: 380, baseType: !2377, size: 256, offset: 256)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !246, line: 148, size: 256, elements: !2378)
!2378 = !{!2379, !2380, !2381}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2377, file: !246, line: 149, baseType: !436, size: 128)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2377, file: !246, line: 150, baseType: !98, size: 32, offset: 128)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2377, file: !246, line: 151, baseType: !2382, size: 64, offset: 192)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !246, line: 141, size: 256, elements: !2384)
!2384 = !{!2385, !2454, !2455, !2456}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2383, file: !246, line: 142, baseType: !2386, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !246, line: 138, baseType: !2387)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!256, !2390, !98, !2453}
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !246, line: 93, size: 67776, elements: !2392)
!2392 = !{!2393, !2396, !2399, !2402, !2403, !2404, !2405, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2433, !2436, !2437, !2438, !2446, !2447, !2448, !2449, !2450, !2451, !2452}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !2391, file: !246, line: 94, baseType: !2394, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !246, line: 13, flags: DIFlagFwdDecl)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2391, file: !246, line: 95, baseType: !2397, size: 64, offset: 64)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !246, line: 15, flags: DIFlagFwdDecl)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !2391, file: !246, line: 96, baseType: !2400, size: 64, offset: 128)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !246, line: 14, flags: DIFlagFwdDecl)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2391, file: !246, line: 97, baseType: !96, size: 64, offset: 192)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !2391, file: !246, line: 98, baseType: !98, size: 32, offset: 256)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2391, file: !246, line: 99, baseType: !378, size: 256, offset: 320)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !2391, file: !246, line: 100, baseType: !2406, size: 64, offset: 576)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !2409, line: 10, flags: DIFlagFwdDecl)
!2409 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !2391, file: !246, line: 101, baseType: !115, size: 64, offset: 640)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2391, file: !246, line: 102, baseType: !96, size: 64, offset: 704)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !2391, file: !246, line: 103, baseType: !7, size: 32, offset: 768)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !2391, file: !246, line: 104, baseType: !1056, size: 64, offset: 832)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !2391, file: !246, line: 105, baseType: !7, size: 32, offset: 896)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !2391, file: !246, line: 106, baseType: !808, size: 64, offset: 960)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !2391, file: !246, line: 109, baseType: !2417, size: 33088, offset: 1024)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !2418, line: 14, size: 33088, elements: !2419)
!2418 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!2419 = !{!2420, !2424, !2431, !2432}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2417, file: !2418, line: 15, baseType: !2421, size: 32768)
!2421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 32768, elements: !2422)
!2422 = !{!2423}
!2423 = !DISubrange(count: 4096)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2417, file: !2418, line: 16, baseType: !2425, size: 192, offset: 32768)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !2426, line: 18, size: 192, elements: !2427)
!2426 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!2427 = !{!2428, !2429, !2430}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2425, file: !2426, line: 19, baseType: !1056, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2425, file: !2426, line: 20, baseType: !111, size: 64, offset: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2425, file: !2426, line: 21, baseType: !111, size: 64, offset: 128)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !2417, file: !2418, line: 17, baseType: !111, size: 64, offset: 32960)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !2417, file: !2418, line: 18, baseType: !98, size: 32, offset: 33024)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !2391, file: !246, line: 111, baseType: !2434, size: 64, offset: 34112)
!2434 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !725, line: 913, baseType: !2435)
!2435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !726, size: 64, elements: !730)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !2391, file: !246, line: 114, baseType: !1045, size: 8, offset: 34176)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2391, file: !246, line: 117, baseType: !2417, size: 33088, offset: 34240)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !2391, file: !246, line: 118, baseType: !2439, size: 64, offset: 67328)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !246, line: 79, size: 64, elements: !2441)
!2441 = !{!2442, !2443, !2444, !2445}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2440, file: !246, line: 80, baseType: !102, size: 16)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2440, file: !246, line: 81, baseType: !163, size: 8, offset: 16)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !2440, file: !246, line: 82, baseType: !163, size: 8, offset: 24)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2440, file: !246, line: 83, baseType: !98, size: 32, offset: 32)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !2391, file: !246, line: 119, baseType: !115, size: 64, offset: 67392)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !2391, file: !246, line: 120, baseType: !98, size: 32, offset: 67456)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !2391, file: !246, line: 121, baseType: !98, size: 32, offset: 67488)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2391, file: !246, line: 122, baseType: !98, size: 32, offset: 67520)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !2391, file: !246, line: 123, baseType: !532, size: 64, offset: 67584)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2391, file: !246, line: 125, baseType: !117, size: 64, offset: 67648)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2391, file: !246, line: 126, baseType: !808, size: 64, offset: 67712)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2383, file: !246, line: 143, baseType: !2386, size: 64, offset: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !2383, file: !246, line: 144, baseType: !2386, size: 64, offset: 128)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !2383, file: !246, line: 145, baseType: !2386, size: 64, offset: 192)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !2279, file: !246, line: 381, baseType: !1056, size: 64, offset: 512)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2279, file: !246, line: 382, baseType: !2459, size: 64, offset: 576)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !237, line: 821, flags: DIFlagFwdDecl)
!2461 = !DIDerivedType(tag: DW_TAG_member, scope: !2279, file: !246, line: 387, baseType: !2462, size: 64, offset: 640)
!2462 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2279, file: !246, line: 387, size: 64, elements: !2463)
!2463 = !{!2464, !2465}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2462, file: !246, line: 388, baseType: !96, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2462, file: !246, line: 389, baseType: !125, size: 32)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2279, file: !246, line: 391, baseType: !96, size: 64, offset: 704)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2279, file: !246, line: 394, baseType: !98, size: 32, offset: 768)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !2279, file: !246, line: 397, baseType: !98, size: 32, offset: 800)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !2279, file: !246, line: 398, baseType: !2470, size: 64, offset: 832)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !2279, file: !246, line: 399, baseType: !2472, size: 64, offset: 896)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !246, line: 399, flags: DIFlagFwdDecl)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !2279, file: !246, line: 401, baseType: !2475, size: 64, offset: 960)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!98, !2278, !2478}
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !237, line: 671, size: 8512, elements: !2480)
!2480 = !{!2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !3017, !3018, !3019, !3020, !3026, !3027, !3028, !3029, !3030, !3114, !3115, !3116, !3117, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3237, !3238, !3239, !3240, !3241, !3242, !3257, !3258, !3259, !3260, !3261, !3267, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3284, !3455, !3456, !3457, !3458, !3471, !3472, !3473}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !2479, file: !237, line: 678, baseType: !173, size: 128)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !2479, file: !237, line: 684, baseType: !173, size: 128, offset: 128)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !2479, file: !237, line: 685, baseType: !173, size: 128, offset: 256)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2479, file: !237, line: 689, baseType: !524, size: 192, align: 64, offset: 384)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !2479, file: !237, line: 690, baseType: !532, size: 64, offset: 576)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !2479, file: !237, line: 696, baseType: !173, size: 128, offset: 640)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !2479, file: !237, line: 698, baseType: !436, size: 128, offset: 768)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !2479, file: !237, line: 699, baseType: !173, size: 128, offset: 896)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !2479, file: !237, line: 700, baseType: !98, size: 32, offset: 1024)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !2479, file: !237, line: 703, baseType: !98, size: 32, offset: 1056)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !2479, file: !237, line: 705, baseType: !98, size: 32, offset: 1088)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !2479, file: !237, line: 707, baseType: !7, size: 32, offset: 1120)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2479, file: !237, line: 708, baseType: !2478, size: 64, offset: 1152)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !2479, file: !237, line: 714, baseType: !2495, size: 64, offset: 1216)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !237, line: 302, size: 2432, elements: !2497)
!2497 = !{!2498, !2499, !2500, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2923, !2924, !2925, !2926, !2927, !2931, !2932, !2936, !2940, !2941, !2945, !2949, !2950, !2951, !2955, !2959, !2963, !2964, !2965, !2969, !2973, !2977, !2982, !2983, !3003, !3007, !3008, !3009, !3013}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2496, file: !237, line: 303, baseType: !173, size: 128)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2496, file: !237, line: 305, baseType: !1774, size: 64, offset: 128)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2496, file: !237, line: 306, baseType: !2501, size: 64, offset: 192)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !190, line: 705, size: 5824, elements: !2503)
!2503 = !{!2504, !2505, !2506, !2509, !2510, !2563, !2633, !2634, !2635, !2636, !2637, !2644, !2736, !2749, !2759, !2763, !2765, !2766, !2767, !2771, !2778, !2779, !2782, !2785, !2789, !2792, !2793, !2794, !2795, !2796, !2797, !2827, !2828, !2829, !2832, !2835, !2844, !2845, !2846, !2847, !2848, !2849}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2502, file: !190, line: 706, baseType: !1787, size: 512)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2502, file: !190, line: 707, baseType: !2501, size: 64, offset: 512)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2502, file: !190, line: 709, baseType: !2507, size: 64, offset: 576)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !190, line: 37, flags: DIFlagFwdDecl)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2502, file: !190, line: 711, baseType: !92, size: 64, offset: 640)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2502, file: !190, line: 712, baseType: !2511, size: 64, offset: 704)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2513)
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !190, line: 89, size: 384, elements: !2514)
!2514 = !{!2515, !2516, !2517, !2523, !2528, !2532}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2513, file: !190, line: 90, baseType: !92, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2513, file: !190, line: 91, baseType: !1870, size: 64, offset: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2513, file: !190, line: 92, baseType: !2518, size: 64, offset: 128)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!98, !2521, !1823}
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2502)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2513, file: !190, line: 93, baseType: !2524, size: 64, offset: 192)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!1056, !2521, !2527, !1231, !1232}
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2513, file: !190, line: 95, baseType: !2529, size: 64, offset: 256)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{null, !2501}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2513, file: !190, line: 97, baseType: !2533, size: 64, offset: 320)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2535)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !197, line: 286, size: 1472, elements: !2536)
!2536 = !{!2537, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2535, file: !197, line: 287, baseType: !2538, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!98, !2501}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2535, file: !197, line: 288, baseType: !2529, size: 64, offset: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2535, file: !197, line: 289, baseType: !2538, size: 64, offset: 128)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2535, file: !197, line: 290, baseType: !2538, size: 64, offset: 192)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2535, file: !197, line: 291, baseType: !2538, size: 64, offset: 256)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2535, file: !197, line: 292, baseType: !2538, size: 64, offset: 320)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2535, file: !197, line: 293, baseType: !2538, size: 64, offset: 384)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2535, file: !197, line: 294, baseType: !2538, size: 64, offset: 448)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2535, file: !197, line: 295, baseType: !2538, size: 64, offset: 512)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2535, file: !197, line: 296, baseType: !2538, size: 64, offset: 576)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2535, file: !197, line: 297, baseType: !2538, size: 64, offset: 640)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2535, file: !197, line: 298, baseType: !2538, size: 64, offset: 704)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2535, file: !197, line: 299, baseType: !2538, size: 64, offset: 768)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2535, file: !197, line: 300, baseType: !2538, size: 64, offset: 832)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2535, file: !197, line: 301, baseType: !2538, size: 64, offset: 896)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2535, file: !197, line: 302, baseType: !2538, size: 64, offset: 960)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2535, file: !197, line: 303, baseType: !2538, size: 64, offset: 1024)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2535, file: !197, line: 304, baseType: !2538, size: 64, offset: 1088)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2535, file: !197, line: 305, baseType: !2538, size: 64, offset: 1152)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2535, file: !197, line: 306, baseType: !2538, size: 64, offset: 1216)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2535, file: !197, line: 307, baseType: !2538, size: 64, offset: 1280)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2535, file: !197, line: 308, baseType: !2538, size: 64, offset: 1344)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2535, file: !197, line: 309, baseType: !2538, size: 64, offset: 1408)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2502, file: !190, line: 714, baseType: !2564, size: 64, offset: 768)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2566)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2567, line: 80, size: 1344, elements: !2568)
!2567 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2568 = !{!2569, !2570, !2571, !2572, !2573, !2574, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2632}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2566, file: !2567, line: 81, baseType: !92, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2566, file: !2567, line: 82, baseType: !92, size: 64, offset: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2566, file: !2567, line: 83, baseType: !1870, size: 64, offset: 128)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2566, file: !2567, line: 84, baseType: !1870, size: 64, offset: 192)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2566, file: !2567, line: 85, baseType: !1870, size: 64, offset: 256)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2566, file: !2567, line: 87, baseType: !2575, size: 64, offset: 320)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!98, !2501, !2578}
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !184, line: 96, size: 1152, elements: !2580)
!2580 = !{!2581, !2582, !2583, !2584, !2585, !2586, !2587, !2591, !2595, !2596, !2597, !2598, !2599, !2607, !2608, !2609, !2610, !2611, !2612}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2579, file: !184, line: 97, baseType: !92, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2579, file: !184, line: 98, baseType: !2564, size: 64, offset: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2579, file: !184, line: 100, baseType: !1774, size: 64, offset: 128)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2579, file: !184, line: 101, baseType: !92, size: 64, offset: 192)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2579, file: !184, line: 103, baseType: !1045, size: 8, offset: 256)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2579, file: !184, line: 104, baseType: !183, size: 32, offset: 288)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2579, file: !184, line: 106, baseType: !2588, size: 64, offset: 320)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2590)
!2590 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !184, line: 106, flags: DIFlagFwdDecl)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2579, file: !184, line: 107, baseType: !2592, size: 64, offset: 384)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2594)
!2594 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !184, line: 107, flags: DIFlagFwdDecl)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2579, file: !184, line: 109, baseType: !2538, size: 64, offset: 448)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2579, file: !184, line: 110, baseType: !2529, size: 64, offset: 512)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2579, file: !184, line: 111, baseType: !2538, size: 64, offset: 576)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2579, file: !184, line: 112, baseType: !2529, size: 64, offset: 640)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2579, file: !184, line: 113, baseType: !2600, size: 64, offset: 704)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!98, !2501, !2603}
!2603 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !197, line: 60, baseType: !2604)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !197, line: 58, size: 32, elements: !2605)
!2605 = !{!2606}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2604, file: !197, line: 59, baseType: !98, size: 32)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2579, file: !184, line: 114, baseType: !2538, size: 64, offset: 768)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2579, file: !184, line: 115, baseType: !1870, size: 64, offset: 832)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2579, file: !184, line: 116, baseType: !1870, size: 64, offset: 896)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2579, file: !184, line: 118, baseType: !2533, size: 64, offset: 960)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2579, file: !184, line: 119, baseType: !2529, size: 64, offset: 1024)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2579, file: !184, line: 121, baseType: !2613, size: 64, offset: 1088)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !184, line: 121, flags: DIFlagFwdDecl)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2566, file: !2567, line: 88, baseType: !2518, size: 64, offset: 384)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2566, file: !2567, line: 89, baseType: !2538, size: 64, offset: 448)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2566, file: !2567, line: 90, baseType: !2529, size: 64, offset: 512)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2566, file: !2567, line: 91, baseType: !2529, size: 64, offset: 576)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2566, file: !2567, line: 92, baseType: !2529, size: 64, offset: 640)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2566, file: !2567, line: 94, baseType: !2538, size: 64, offset: 704)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2566, file: !2567, line: 95, baseType: !2538, size: 64, offset: 768)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2566, file: !2567, line: 97, baseType: !2600, size: 64, offset: 832)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2566, file: !2567, line: 98, baseType: !2538, size: 64, offset: 896)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2566, file: !2567, line: 100, baseType: !2538, size: 64, offset: 960)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2566, file: !2567, line: 102, baseType: !2538, size: 64, offset: 1024)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2566, file: !2567, line: 103, baseType: !2529, size: 64, offset: 1088)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2566, file: !2567, line: 105, baseType: !2533, size: 64, offset: 1152)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2566, file: !2567, line: 107, baseType: !2629, size: 64, offset: 1216)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2631)
!2631 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2567, line: 107, flags: DIFlagFwdDecl)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2566, file: !2567, line: 109, baseType: !1045, size: 8, offset: 1280)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2502, file: !190, line: 715, baseType: !2578, size: 64, offset: 832)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2502, file: !190, line: 717, baseType: !96, size: 64, offset: 896)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2502, file: !190, line: 719, baseType: !96, size: 64, offset: 960)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2502, file: !190, line: 721, baseType: !378, size: 256, offset: 1024)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2502, file: !190, line: 725, baseType: !2638, size: 448, offset: 1280)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !190, line: 517, size: 448, elements: !2639)
!2639 = !{!2640, !2641, !2642, !2643}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2638, file: !190, line: 518, baseType: !173, size: 128)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2638, file: !190, line: 519, baseType: !173, size: 128, offset: 128)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2638, file: !190, line: 520, baseType: !173, size: 128, offset: 256)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2638, file: !190, line: 521, baseType: !189, size: 32, offset: 384)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2502, file: !190, line: 726, baseType: !2645, size: 2496, offset: 1728)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !197, line: 663, size: 2496, elements: !2646)
!2646 = !{!2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2729, !2733}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2645, file: !197, line: 664, baseType: !2603, size: 32)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2645, file: !197, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2645, file: !197, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2645, file: !197, line: 667, baseType: !1045, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2645, file: !197, line: 668, baseType: !1045, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2645, file: !197, line: 669, baseType: !1045, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2645, file: !197, line: 670, baseType: !1045, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2645, file: !197, line: 671, baseType: !1045, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2645, file: !197, line: 672, baseType: !1045, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2645, file: !197, line: 673, baseType: !1045, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2645, file: !197, line: 674, baseType: !1045, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2645, file: !197, line: 675, baseType: !484, size: 32, offset: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2645, file: !197, line: 676, baseType: !135, size: 32, offset: 96)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2645, file: !197, line: 678, baseType: !173, size: 128, offset: 128)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2645, file: !197, line: 679, baseType: !885, size: 256, offset: 256)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2645, file: !197, line: 680, baseType: !2663, size: 64, offset: 512)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2665, line: 43, size: 1536, elements: !2666)
!2665 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2666 = !{!2667, !2668, !2669, !2670, !2671, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2664, file: !2665, line: 44, baseType: !92, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2664, file: !2665, line: 45, baseType: !98, size: 32, offset: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2664, file: !2665, line: 46, baseType: !173, size: 128, offset: 128)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2664, file: !2665, line: 47, baseType: !135, size: 32, offset: 256)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2664, file: !2665, line: 48, baseType: !2672, size: 64, offset: 320)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !197, line: 629, flags: DIFlagFwdDecl)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2664, file: !2665, line: 49, baseType: !2198, size: 320, offset: 384)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2664, file: !2665, line: 50, baseType: !115, size: 64, offset: 704)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2664, file: !2665, line: 51, baseType: !605, size: 64, offset: 768)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2664, file: !2665, line: 52, baseType: !605, size: 64, offset: 832)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2664, file: !2665, line: 53, baseType: !605, size: 64, offset: 896)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2664, file: !2665, line: 54, baseType: !605, size: 64, offset: 960)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2664, file: !2665, line: 55, baseType: !605, size: 64, offset: 1024)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2664, file: !2665, line: 56, baseType: !115, size: 64, offset: 1088)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2664, file: !2665, line: 57, baseType: !115, size: 64, offset: 1152)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2664, file: !2665, line: 58, baseType: !115, size: 64, offset: 1216)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2664, file: !2665, line: 59, baseType: !115, size: 64, offset: 1280)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2664, file: !2665, line: 60, baseType: !115, size: 64, offset: 1344)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2664, file: !2665, line: 61, baseType: !2501, size: 64, offset: 1408)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2664, file: !2665, line: 62, baseType: !1045, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2664, file: !2665, line: 63, baseType: !1045, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2645, file: !197, line: 681, baseType: !1045, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2645, file: !197, line: 682, baseType: !1045, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2645, file: !197, line: 683, baseType: !1045, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2645, file: !197, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2645, file: !197, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2645, file: !197, line: 690, baseType: !597, size: 512, offset: 640)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2645, file: !197, line: 691, baseType: !532, size: 64, offset: 1152)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2645, file: !197, line: 692, baseType: !1178, size: 256, offset: 1216)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2645, file: !197, line: 693, baseType: !130, size: 192, offset: 1472)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2645, file: !197, line: 694, baseType: !2672, size: 64, offset: 1664)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2645, file: !197, line: 695, baseType: !125, size: 32, offset: 1728)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2645, file: !197, line: 696, baseType: !125, size: 32, offset: 1760)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2645, file: !197, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2645, file: !197, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2645, file: !197, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2645, file: !197, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2645, file: !197, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2645, file: !197, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2645, file: !197, line: 703, baseType: !1045, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2645, file: !197, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2645, file: !197, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2645, file: !197, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2645, file: !197, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2645, file: !197, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2645, file: !197, line: 709, baseType: !7, size: 32, offset: 1824)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2645, file: !197, line: 710, baseType: !196, size: 32, offset: 1856)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2645, file: !197, line: 711, baseType: !204, size: 32, offset: 1888)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2645, file: !197, line: 712, baseType: !204, size: 32, offset: 1920)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2645, file: !197, line: 713, baseType: !98, size: 32, offset: 1952)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2645, file: !197, line: 714, baseType: !98, size: 32, offset: 1984)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2645, file: !197, line: 715, baseType: !532, size: 64, offset: 2048)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2645, file: !197, line: 716, baseType: !532, size: 64, offset: 2112)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2645, file: !197, line: 717, baseType: !532, size: 64, offset: 2176)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2645, file: !197, line: 718, baseType: !532, size: 64, offset: 2240)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2645, file: !197, line: 720, baseType: !2724, size: 64, offset: 2304)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !197, line: 632, size: 64, elements: !2726)
!2726 = !{!2727, !2728}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2725, file: !197, line: 633, baseType: !135, size: 32)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2725, file: !197, line: 634, baseType: !7, size: 32, offset: 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2645, file: !197, line: 721, baseType: !2730, size: 64, offset: 2368)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{null, !2501, !846}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2645, file: !197, line: 722, baseType: !2734, size: 64, offset: 2432)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !197, line: 722, flags: DIFlagFwdDecl)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2502, file: !190, line: 727, baseType: !2737, size: 64, offset: 4224)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !197, line: 742, size: 1792, elements: !2739)
!2739 = !{!2740, !2741, !2742, !2746, !2747, !2748}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2738, file: !197, line: 743, baseType: !2535, size: 1472)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2738, file: !197, line: 744, baseType: !2538, size: 64, offset: 1472)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2738, file: !197, line: 745, baseType: !2743, size: 64, offset: 1536)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{null, !2501, !1045}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2738, file: !197, line: 746, baseType: !2538, size: 64, offset: 1600)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2738, file: !197, line: 747, baseType: !2529, size: 64, offset: 1664)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2738, file: !197, line: 748, baseType: !2529, size: 64, offset: 1728)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2502, file: !190, line: 736, baseType: !2750, size: 128, offset: 4288)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !190, line: 529, size: 128, elements: !2751)
!2751 = !{!2752, !2756}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2750, file: !190, line: 531, baseType: !2753, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2755, line: 13, flags: DIFlagFwdDecl)
!2755 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2750, file: !190, line: 532, baseType: !2757, size: 64, offset: 64)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !190, line: 49, flags: DIFlagFwdDecl)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2502, file: !190, line: 738, baseType: !2760, size: 64, offset: 4416)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2762)
!2762 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !190, line: 738, flags: DIFlagFwdDecl)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2502, file: !190, line: 740, baseType: !2764, size: 64, offset: 4480)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2502, file: !190, line: 741, baseType: !532, size: 64, offset: 4544)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2502, file: !190, line: 746, baseType: !532, size: 64, offset: 4608)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2502, file: !190, line: 747, baseType: !2768, size: 64, offset: 4672)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2770)
!2770 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !190, line: 747, flags: DIFlagFwdDecl)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2502, file: !190, line: 749, baseType: !2772, size: 64, offset: 4736)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !190, line: 428, size: 128, elements: !2774)
!2774 = !{!2775, !2776, !2777}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2773, file: !190, line: 433, baseType: !7, size: 32)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2773, file: !190, line: 434, baseType: !7, size: 32, offset: 32)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2773, file: !190, line: 435, baseType: !115, size: 64, offset: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2502, file: !190, line: 751, baseType: !173, size: 128, offset: 4800)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2502, file: !190, line: 762, baseType: !2780, size: 64, offset: 4928)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !190, line: 762, flags: DIFlagFwdDecl)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2502, file: !190, line: 770, baseType: !2783, offset: 4992)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2784, line: 5, elements: !336)
!2784 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2502, file: !190, line: 772, baseType: !2786, size: 64, offset: 4992)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2788, line: 18, flags: DIFlagFwdDecl)
!2788 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2502, file: !190, line: 773, baseType: !2790, size: 64, offset: 5056)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2567, line: 22, flags: DIFlagFwdDecl)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2502, file: !190, line: 776, baseType: !98, size: 32, offset: 5120)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2502, file: !190, line: 778, baseType: !1744, size: 32, offset: 5152)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2502, file: !190, line: 779, baseType: !484, size: 32, offset: 5184)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2502, file: !190, line: 781, baseType: !135, size: 32, offset: 5216)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2502, file: !190, line: 782, baseType: !173, size: 128, offset: 5248)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2502, file: !190, line: 784, baseType: !2798, size: 64, offset: 5376)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2800)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2801, line: 52, size: 768, elements: !2802)
!2801 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2802 = !{!2803, !2804, !2805, !2806, !2807, !2811, !2815, !2816, !2817, !2818, !2822, !2826}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2800, file: !2801, line: 53, baseType: !92, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2800, file: !2801, line: 55, baseType: !1870, size: 64, offset: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2800, file: !2801, line: 56, baseType: !1870, size: 64, offset: 128)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2800, file: !2801, line: 58, baseType: !2518, size: 64, offset: 192)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2800, file: !2801, line: 59, baseType: !2808, size: 64, offset: 256)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!1056, !2521, !2527}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2800, file: !2801, line: 61, baseType: !2812, size: 64, offset: 320)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{null, !2798}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2800, file: !2801, line: 62, baseType: !2529, size: 64, offset: 384)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2800, file: !2801, line: 64, baseType: !2538, size: 64, offset: 448)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2800, file: !2801, line: 66, baseType: !1911, size: 64, offset: 512)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2800, file: !2801, line: 67, baseType: !2819, size: 64, offset: 576)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!1382, !2521}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2800, file: !2801, line: 69, baseType: !2823, size: 64, offset: 640)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{null, !2521, !1231, !1232}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2800, file: !2801, line: 71, baseType: !2533, size: 64, offset: 704)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2502, file: !190, line: 785, baseType: !1870, size: 64, offset: 5440)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2502, file: !190, line: 787, baseType: !2529, size: 64, offset: 5504)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2502, file: !190, line: 788, baseType: !2830, size: 64, offset: 5568)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !190, line: 46, flags: DIFlagFwdDecl)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2502, file: !190, line: 789, baseType: !2833, size: 64, offset: 5632)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !190, line: 48, flags: DIFlagFwdDecl)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2502, file: !190, line: 791, baseType: !2836, size: 64, offset: 5696)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !190, line: 597, size: 128, elements: !2838)
!2838 = !{!2839, !2840, !2841, !2842, !2843}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2837, file: !190, line: 598, baseType: !211, size: 32)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2837, file: !190, line: 599, baseType: !220, size: 32, offset: 32)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2837, file: !190, line: 600, baseType: !225, size: 32, offset: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2837, file: !190, line: 601, baseType: !1045, size: 8, offset: 96)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2837, file: !190, line: 602, baseType: !1045, size: 8, offset: 104)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2502, file: !190, line: 793, baseType: !230, size: 32, offset: 5760)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2502, file: !190, line: 795, baseType: !1045, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2502, file: !190, line: 796, baseType: !1045, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2502, file: !190, line: 797, baseType: !1045, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2502, file: !190, line: 798, baseType: !1045, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2502, file: !190, line: 799, baseType: !1045, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2496, file: !237, line: 307, baseType: !2501, size: 64, offset: 256)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !2496, file: !237, line: 308, baseType: !1870, size: 64, offset: 320)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !2496, file: !237, line: 309, baseType: !1870, size: 64, offset: 384)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2496, file: !237, line: 310, baseType: !92, size: 64, offset: 448)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2496, file: !237, line: 311, baseType: !98, size: 32, offset: 512)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2496, file: !237, line: 316, baseType: !98, size: 32, offset: 544)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !2496, file: !237, line: 318, baseType: !896, size: 64, offset: 576)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !2496, file: !237, line: 319, baseType: !2858, size: 64, offset: 640)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !237, line: 977, size: 1856, elements: !2860)
!2860 = !{!2861, !2913, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !2859, file: !237, line: 978, baseType: !2862, size: 896)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !237, line: 873, size: 896, elements: !2863)
!2863 = !{!2864, !2865, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !2862, file: !237, line: 874, baseType: !2495, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2862, file: !237, line: 875, baseType: !2866, size: 64, offset: 64)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !237, line: 912, size: 1792, elements: !2868)
!2868 = !{!2869, !2870, !2871, !2872, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2867, file: !237, line: 917, baseType: !383, size: 32)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2867, file: !237, line: 923, baseType: !378, size: 256, offset: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !2867, file: !237, line: 925, baseType: !173, size: 128, offset: 320)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !2867, file: !237, line: 926, baseType: !2873, size: 128, offset: 448)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !237, line: 901, size: 128, elements: !2874)
!2874 = !{!2875, !2876}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !2873, file: !237, line: 902, baseType: !664, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2873, file: !237, line: 903, baseType: !532, size: 64, offset: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !2867, file: !237, line: 927, baseType: !2873, size: 128, offset: 576)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !2867, file: !237, line: 928, baseType: !173, size: 128, offset: 704)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2867, file: !237, line: 930, baseType: !98, size: 32, offset: 832)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !2867, file: !237, line: 931, baseType: !98, size: 32, offset: 864)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !2867, file: !237, line: 932, baseType: !98, size: 32, offset: 896)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !2867, file: !237, line: 934, baseType: !98, size: 32, offset: 928)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !2867, file: !237, line: 935, baseType: !98, size: 32, offset: 960)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !2867, file: !237, line: 936, baseType: !98, size: 32, offset: 992)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !2867, file: !237, line: 937, baseType: !98, size: 32, offset: 1024)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2867, file: !237, line: 939, baseType: !423, size: 32, offset: 1056)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2867, file: !237, line: 940, baseType: !473, size: 64, offset: 1088)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2867, file: !237, line: 945, baseType: !532, size: 64, offset: 1152)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !2867, file: !237, line: 946, baseType: !532, size: 64, offset: 1216)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !2867, file: !237, line: 947, baseType: !532, size: 64, offset: 1280)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !2867, file: !237, line: 953, baseType: !2866, size: 64, offset: 1344)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !2867, file: !237, line: 954, baseType: !532, size: 64, offset: 1408)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !2867, file: !237, line: 955, baseType: !532, size: 64, offset: 1472)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !2867, file: !237, line: 956, baseType: !98, size: 32, offset: 1536)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !2867, file: !237, line: 958, baseType: !98, size: 32, offset: 1568)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2867, file: !237, line: 960, baseType: !356, size: 128, align: 64, offset: 1600)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !2867, file: !237, line: 968, baseType: !2898, size: 64, offset: 1728)
!2898 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !2899, line: 12, baseType: !2900)
!2899 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2899, line: 10, size: 64, elements: !2901)
!2901 = !{!2902}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !2900, file: !2899, line: 11, baseType: !369, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !2862, file: !237, line: 877, baseType: !173, size: 128, offset: 128)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !2862, file: !237, line: 879, baseType: !173, size: 128, offset: 256)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !2862, file: !237, line: 880, baseType: !173, size: 128, offset: 384)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !2862, file: !237, line: 883, baseType: !7, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2862, file: !237, line: 885, baseType: !7, size: 32, offset: 544)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !2862, file: !237, line: 886, baseType: !7, size: 32, offset: 576)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2862, file: !237, line: 888, baseType: !125, size: 32, offset: 608)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2862, file: !237, line: 889, baseType: !356, size: 128, align: 64, offset: 640)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !2862, file: !237, line: 891, baseType: !96, size: 64, offset: 768)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !2862, file: !237, line: 898, baseType: !98, size: 32, offset: 832)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !2859, file: !237, line: 979, baseType: !2914, size: 64, offset: 896)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !2859, file: !237, line: 981, baseType: !173, size: 128, offset: 960)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !2859, file: !237, line: 982, baseType: !98, size: 32, offset: 1088)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !2859, file: !237, line: 984, baseType: !98, size: 32, offset: 1120)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !2859, file: !237, line: 985, baseType: !98, size: 32, offset: 1152)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !2859, file: !237, line: 987, baseType: !383, size: 32, offset: 1184)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !2859, file: !237, line: 988, baseType: !597, size: 512, offset: 1216)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !2859, file: !237, line: 989, baseType: !605, size: 64, offset: 1728)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !2859, file: !237, line: 990, baseType: !7, size: 32, offset: 1792)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !2496, file: !237, line: 320, baseType: !125, size: 32, offset: 704)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !2496, file: !237, line: 321, baseType: !98, size: 32, offset: 736)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !2496, file: !237, line: 322, baseType: !98, size: 32, offset: 768)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !2496, file: !237, line: 325, baseType: !7, size: 32, offset: 800)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !2496, file: !237, line: 331, baseType: !2928, size: 64, offset: 832)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{null, !2495}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !2496, file: !237, line: 332, baseType: !2928, size: 64, offset: 896)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !2496, file: !237, line: 350, baseType: !2933, size: 64, offset: 960)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!98, !2478}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !2496, file: !237, line: 356, baseType: !2937, size: 64, offset: 1024)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{null, !2478, !315}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !2496, file: !237, line: 357, baseType: !2937, size: 64, offset: 1088)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2496, file: !237, line: 385, baseType: !2942, size: 64, offset: 1152)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!98, !2478, !98}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !2496, file: !237, line: 386, baseType: !2946, size: 64, offset: 1216)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{null, !2478, !98}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2496, file: !237, line: 406, baseType: !2946, size: 64, offset: 1280)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2496, file: !237, line: 407, baseType: !2946, size: 64, offset: 1344)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2496, file: !237, line: 415, baseType: !2952, size: 64, offset: 1408)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{null, !2478}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !2496, file: !237, line: 427, baseType: !2956, size: 64, offset: 1472)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{null, !2495, !7}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !2496, file: !237, line: 436, baseType: !2960, size: 64, offset: 1536)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!98, !2495}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !2496, file: !237, line: 443, baseType: !2928, size: 64, offset: 1600)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !2496, file: !237, line: 450, baseType: !2933, size: 64, offset: 1664)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !2496, file: !237, line: 455, baseType: !2966, size: 64, offset: 1728)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{null, !2914, !1045}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !2496, file: !237, line: 461, baseType: !2970, size: 64, offset: 1792)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2972, line: 11, flags: DIFlagFwdDecl)
!2972 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !2496, file: !237, line: 469, baseType: !2974, size: 64, offset: 1856)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{null, !2914, !2914}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !2496, file: !237, line: 476, baseType: !2978, size: 64, offset: 1920)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!96, !2478, !2981, !98, !1045}
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !2496, file: !237, line: 483, baseType: !1935, size: 64, offset: 1984)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !2496, file: !237, line: 494, baseType: !2984, size: 64, offset: 2048)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!808, !2478, !2987, !115}
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !237, line: 1014, size: 448, elements: !2989)
!2989 = !{!2990, !2991, !2994, !2995, !2996, !2997, !3002}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2988, file: !237, line: 1015, baseType: !2478, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2988, file: !237, line: 1016, baseType: !2992, size: 64, offset: 64)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !237, line: 641, flags: DIFlagFwdDecl)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2988, file: !237, line: 1017, baseType: !115, size: 64, offset: 128)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2988, file: !237, line: 1018, baseType: !115, size: 64, offset: 192)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !2988, file: !237, line: 1019, baseType: !532, size: 64, offset: 256)
!2997 = !DIDerivedType(tag: DW_TAG_member, scope: !2988, file: !237, line: 1020, baseType: !2998, size: 64, offset: 320)
!2998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2988, file: !237, line: 1020, size: 64, elements: !2999)
!2999 = !{!3000, !3001}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2998, file: !237, line: 1021, baseType: !96, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2998, file: !237, line: 1022, baseType: !115, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2988, file: !237, line: 1024, baseType: !98, size: 32, offset: 384)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !2496, file: !237, line: 506, baseType: !3004, size: 64, offset: 2112)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!98, !176}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !2496, file: !237, line: 520, baseType: !2952, size: 64, offset: 2176)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !2496, file: !237, line: 530, baseType: !2933, size: 64, offset: 2240)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2496, file: !237, line: 537, baseType: !3010, size: 64, offset: 2304)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!1045, !2495, !98}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !2496, file: !237, line: 542, baseType: !3014, size: 64, offset: 2368)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!98, !2478, !532}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !2479, file: !237, line: 715, baseType: !96, size: 64, offset: 1280)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2479, file: !237, line: 717, baseType: !236, size: 32, offset: 1344)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !2479, file: !237, line: 718, baseType: !7, size: 32, offset: 1376)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2479, file: !237, line: 719, baseType: !3021, size: 64, offset: 1408)
!3021 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3022, line: 26, baseType: !3023)
!3022 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3022, line: 24, size: 64, elements: !3024)
!3024 = !{!3025}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3023, file: !3022, line: 25, baseType: !2898, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2479, file: !237, line: 720, baseType: !371, size: 64, offset: 1472)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !2479, file: !237, line: 728, baseType: !532, size: 64, offset: 1536)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !2479, file: !237, line: 729, baseType: !532, size: 64, offset: 1600)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !2479, file: !237, line: 730, baseType: !532, size: 64, offset: 1664)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2479, file: !237, line: 732, baseType: !3031, size: 1088, offset: 1728)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3032, line: 385, size: 1088, elements: !3033)
!3032 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3033 = !{!3034, !3035, !3036, !3037, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3087, !3088, !3095, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3031, file: !3032, line: 390, baseType: !485, size: 32)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3031, file: !3032, line: 395, baseType: !485, size: 32, offset: 32)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3031, file: !3032, line: 400, baseType: !533, size: 64, offset: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, scope: !3031, file: !3032, line: 402, baseType: !3038, size: 64, offset: 128)
!3038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3031, file: !3032, line: 402, size: 64, elements: !3039)
!3039 = !{!3040, !3041}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3038, file: !3032, line: 403, baseType: !533, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3038, file: !3032, line: 404, baseType: !533, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3031, file: !3032, line: 407, baseType: !533, size: 64, offset: 192)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3031, file: !3032, line: 408, baseType: !533, size: 64, offset: 256)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3031, file: !3032, line: 410, baseType: !533, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3031, file: !3032, line: 411, baseType: !533, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3031, file: !3032, line: 412, baseType: !533, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3031, file: !3032, line: 413, baseType: !533, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3031, file: !3032, line: 414, baseType: !533, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3031, file: !3032, line: 415, baseType: !533, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3031, file: !3032, line: 416, baseType: !533, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3031, file: !3032, line: 417, baseType: !533, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3031, file: !3032, line: 418, baseType: !533, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3031, file: !3032, line: 419, baseType: !533, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3031, file: !3032, line: 420, baseType: !533, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3031, file: !3032, line: 421, baseType: !533, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3031, file: !3032, line: 422, baseType: !533, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3031, file: !3032, line: 423, baseType: !533, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3031, file: !3032, line: 424, baseType: !533, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3031, file: !3032, line: 435, baseType: !533, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3031, file: !3032, line: 436, baseType: !533, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3031, file: !3032, line: 437, baseType: !533, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3031, file: !3032, line: 439, baseType: !533, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3031, file: !3032, line: 440, baseType: !533, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3031, file: !3032, line: 442, baseType: !533, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3031, file: !3032, line: 443, baseType: !533, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3031, file: !3032, line: 444, baseType: !533, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3031, file: !3032, line: 445, baseType: !533, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3031, file: !3032, line: 446, baseType: !533, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3031, file: !3032, line: 447, baseType: !533, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3031, file: !3032, line: 448, baseType: !533, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3031, file: !3032, line: 449, baseType: !533, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3031, file: !3032, line: 450, baseType: !533, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3031, file: !3032, line: 451, baseType: !533, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3031, file: !3032, line: 452, baseType: !533, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3031, file: !3032, line: 453, baseType: !533, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3031, file: !3032, line: 454, baseType: !533, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3031, file: !3032, line: 455, baseType: !533, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3031, file: !3032, line: 456, baseType: !533, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3031, file: !3032, line: 457, baseType: !533, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3031, file: !3032, line: 458, baseType: !533, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3031, file: !3032, line: 459, baseType: !533, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3082 = !DIDerivedType(tag: DW_TAG_member, scope: !3031, file: !3032, line: 461, baseType: !3083, size: 32, offset: 384)
!3083 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3031, file: !3032, line: 461, size: 32, elements: !3084)
!3084 = !{!3085, !3086}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3083, file: !3032, line: 462, baseType: !485, size: 32)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3083, file: !3032, line: 463, baseType: !485, size: 32)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3031, file: !3032, line: 466, baseType: !485, size: 32, offset: 416)
!3088 = !DIDerivedType(tag: DW_TAG_member, scope: !3031, file: !3032, line: 467, baseType: !3089, size: 64, offset: 448)
!3089 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3031, file: !3032, line: 467, size: 64, elements: !3090)
!3090 = !{!3091, !3092, !3093, !3094}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3089, file: !3032, line: 468, baseType: !533, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3089, file: !3032, line: 469, baseType: !533, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3089, file: !3032, line: 470, baseType: !533, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3089, file: !3032, line: 471, baseType: !533, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, scope: !3031, file: !3032, line: 473, baseType: !3096, size: 64, offset: 512)
!3096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3031, file: !3032, line: 473, size: 64, elements: !3097)
!3097 = !{!3098, !3099, !3100, !3101}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3096, file: !3032, line: 474, baseType: !533, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3096, file: !3032, line: 475, baseType: !533, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3096, file: !3032, line: 476, baseType: !533, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3096, file: !3032, line: 477, baseType: !533, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3031, file: !3032, line: 479, baseType: !533, size: 64, offset: 576)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3031, file: !3032, line: 485, baseType: !533, size: 64, offset: 640)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3031, file: !3032, line: 490, baseType: !485, size: 32, offset: 704)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3031, file: !3032, line: 492, baseType: !847, size: 32, offset: 736)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3031, file: !3032, line: 501, baseType: !533, size: 64, offset: 768)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3031, file: !3032, line: 506, baseType: !485, size: 32, offset: 832)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3031, file: !3032, line: 507, baseType: !170, size: 16, offset: 864)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3031, file: !3032, line: 508, baseType: !170, size: 16, offset: 880)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3031, file: !3032, line: 509, baseType: !485, size: 32, offset: 896)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3031, file: !3032, line: 510, baseType: !485, size: 32, offset: 928)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3031, file: !3032, line: 518, baseType: !533, size: 64, offset: 960)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3031, file: !3032, line: 520, baseType: !533, size: 64, offset: 1024)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !2479, file: !237, line: 733, baseType: !169, size: 16, offset: 2816)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !2479, file: !237, line: 734, baseType: !169, size: 16, offset: 2832)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !2479, file: !237, line: 735, baseType: !169, size: 16, offset: 2848)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !2479, file: !237, line: 736, baseType: !3118, size: 1536, offset: 2880)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !237, line: 155, size: 1536, elements: !3119)
!3119 = !{!3120, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3204, !3205, !3206, !3207}
!3120 = !DIDerivedType(tag: DW_TAG_member, scope: !3118, file: !237, line: 157, baseType: !3121, size: 768)
!3121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3118, file: !237, line: 157, size: 768, elements: !3122)
!3122 = !{!3123, !3142, !3146, !3150, !3155, !3177}
!3123 = !DIDerivedType(tag: DW_TAG_member, scope: !3121, file: !237, line: 158, baseType: !3124, size: 768)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3121, file: !237, line: 158, size: 768, elements: !3125)
!3125 = !{!3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3141}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3124, file: !237, line: 159, baseType: !532, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !3124, file: !237, line: 160, baseType: !532, size: 64, offset: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !3124, file: !237, line: 161, baseType: !115, size: 64, offset: 128)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !3124, file: !237, line: 162, baseType: !115, size: 64, offset: 192)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !3124, file: !237, line: 163, baseType: !98, size: 32, offset: 256)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3124, file: !237, line: 164, baseType: !98, size: 32, offset: 288)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3124, file: !237, line: 165, baseType: !98, size: 32, offset: 320)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3124, file: !237, line: 166, baseType: !98, size: 32, offset: 352)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !3124, file: !237, line: 168, baseType: !3135, size: 192, offset: 384)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !237, line: 134, size: 192, elements: !3136)
!3136 = !{!3137, !3138, !3139, !3140}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3135, file: !237, line: 135, baseType: !532, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3135, file: !237, line: 136, baseType: !7, size: 32, offset: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3135, file: !237, line: 137, baseType: !98, size: 32, offset: 96)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3135, file: !237, line: 138, baseType: !98, size: 32, offset: 128)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !3124, file: !237, line: 169, baseType: !3135, size: 192, offset: 576)
!3142 = !DIDerivedType(tag: DW_TAG_member, scope: !3121, file: !237, line: 171, baseType: !3143, size: 512)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3121, file: !237, line: 171, size: 512, elements: !3144)
!3144 = !{!3145}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3143, file: !237, line: 172, baseType: !597, size: 512)
!3146 = !DIDerivedType(tag: DW_TAG_member, scope: !3121, file: !237, line: 174, baseType: !3147, size: 128)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3121, file: !237, line: 174, size: 128, elements: !3148)
!3148 = !{!3149}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !3147, file: !237, line: 176, baseType: !173, size: 128)
!3150 = !DIDerivedType(tag: DW_TAG_member, scope: !3121, file: !237, line: 178, baseType: !3151, size: 128)
!3151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3121, file: !237, line: 178, size: 128, elements: !3152)
!3152 = !{!3153, !3154}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !3151, file: !237, line: 179, baseType: !532, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !3151, file: !237, line: 180, baseType: !532, size: 64, offset: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, scope: !3121, file: !237, line: 183, baseType: !3156, size: 320)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3121, file: !237, line: 183, size: 320, elements: !3157)
!3157 = !{!3158, !3166}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3156, file: !237, line: 189, baseType: !3159, size: 192)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !3160, line: 14, size: 192, elements: !3161)
!3160 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!3161 = !{!3162, !3163, !3164, !3165}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3159, file: !3160, line: 15, baseType: !115, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3159, file: !3160, line: 16, baseType: !115, size: 64, offset: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3159, file: !3160, line: 17, baseType: !159, size: 8, offset: 128)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3159, file: !3160, line: 18, baseType: !159, size: 8, offset: 136)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !3156, file: !237, line: 190, baseType: !3167, size: 128, offset: 192)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !3168, line: 21, size: 128, elements: !3169)
!3168 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!3169 = !{!3170, !3175}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !3167, file: !3168, line: 22, baseType: !3171, size: 64)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !3168, line: 17, size: 64, elements: !3172)
!3172 = !{!3173}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3171, file: !3168, line: 18, baseType: !3174, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3167, file: !3168, line: 23, baseType: !3176, size: 64, offset: 64)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, scope: !3121, file: !237, line: 193, baseType: !3178, size: 192)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3121, file: !237, line: 193, size: 192, elements: !3179)
!3179 = !{!3180, !3181, !3182, !3183, !3184}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !3178, file: !237, line: 194, baseType: !159, size: 8)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !3178, file: !237, line: 195, baseType: !159, size: 8, offset: 8)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3178, file: !237, line: 196, baseType: !169, size: 16, offset: 16)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !3178, file: !237, line: 197, baseType: !532, size: 64, offset: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !3178, file: !237, line: 198, baseType: !532, size: 64, offset: 128)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3118, file: !237, line: 205, baseType: !473, size: 64, offset: 768)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3118, file: !237, line: 211, baseType: !96, size: 64, offset: 832)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3118, file: !237, line: 214, baseType: !115, size: 64, offset: 896)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3118, file: !237, line: 223, baseType: !98, size: 32, offset: 960)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !3118, file: !237, line: 229, baseType: !3021, size: 64, offset: 1024)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3118, file: !237, line: 234, baseType: !532, size: 64, offset: 1088)
!3191 = !DIDerivedType(tag: DW_TAG_member, scope: !3118, file: !237, line: 236, baseType: !3192, size: 128, offset: 1152)
!3192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3118, file: !237, line: 236, size: 128, elements: !3193)
!3193 = !{!3194, !3199}
!3194 = !DIDerivedType(tag: DW_TAG_member, scope: !3192, file: !237, line: 237, baseType: !3195, size: 128)
!3195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3192, file: !237, line: 237, size: 128, elements: !3196)
!3196 = !{!3197, !3198}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !3195, file: !237, line: 241, baseType: !532, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !3195, file: !237, line: 249, baseType: !3021, size: 64, offset: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, scope: !3192, file: !237, line: 251, baseType: !3200, size: 128)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3192, file: !237, line: 251, size: 128, elements: !3201)
!3201 = !{!3202, !3203}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !3200, file: !237, line: 252, baseType: !532, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !3200, file: !237, line: 253, baseType: !532, size: 64, offset: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !3118, file: !237, line: 261, baseType: !532, size: 64, offset: 1280)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3118, file: !237, line: 262, baseType: !532, size: 64, offset: 1344)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !3118, file: !237, line: 268, baseType: !532, size: 64, offset: 1408)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !3118, file: !237, line: 269, baseType: !532, size: 64, offset: 1472)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2479, file: !237, line: 738, baseType: !2866, size: 64, offset: 4416)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !2479, file: !237, line: 744, baseType: !2914, size: 64, offset: 4480)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2479, file: !237, line: 745, baseType: !369, size: 64, offset: 4544)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !2479, file: !237, line: 751, baseType: !371, size: 64, offset: 4608)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !2479, file: !237, line: 752, baseType: !371, size: 64, offset: 4672)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !2479, file: !237, line: 757, baseType: !378, size: 256, offset: 4736)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !2479, file: !237, line: 758, baseType: !173, size: 128, offset: 4992)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2479, file: !237, line: 759, baseType: !2478, size: 64, offset: 5120)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !2479, file: !237, line: 761, baseType: !98, size: 32, offset: 5184)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2479, file: !237, line: 762, baseType: !98, size: 32, offset: 5216)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !2479, file: !237, line: 764, baseType: !173, size: 128, offset: 5248)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2479, file: !237, line: 765, baseType: !473, size: 64, offset: 5376)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !2479, file: !237, line: 768, baseType: !378, size: 256, offset: 5440)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !2479, file: !237, line: 769, baseType: !125, size: 32, offset: 5696)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2479, file: !237, line: 771, baseType: !2992, size: 64, offset: 5760)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !2479, file: !237, line: 772, baseType: !173, size: 128, offset: 5824)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !2479, file: !237, line: 773, baseType: !115, size: 64, offset: 5952)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !2479, file: !237, line: 774, baseType: !98, size: 32, offset: 6016)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !2479, file: !237, line: 777, baseType: !130, size: 192, offset: 6080)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2479, file: !237, line: 778, baseType: !3228, size: 64, offset: 6272)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !83, line: 1083, size: 384, elements: !3230)
!3230 = !{!3231, !3232, !3233, !3234, !3235, !3236}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3229, file: !83, line: 1084, baseType: !396, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3229, file: !83, line: 1085, baseType: !98, size: 32, offset: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3229, file: !83, line: 1086, baseType: !98, size: 32, offset: 96)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3229, file: !83, line: 1087, baseType: !3228, size: 64, offset: 128)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3229, file: !83, line: 1088, baseType: !343, size: 64, offset: 192)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3229, file: !83, line: 1089, baseType: !356, size: 128, align: 64, offset: 256)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !2479, file: !237, line: 781, baseType: !7, size: 32, offset: 6336)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !2479, file: !237, line: 782, baseType: !7, size: 32, offset: 6368)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !2479, file: !237, line: 783, baseType: !7, size: 32, offset: 6400)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !2479, file: !237, line: 784, baseType: !7, size: 32, offset: 6432)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !2479, file: !237, line: 785, baseType: !115, size: 64, offset: 6464)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !2479, file: !237, line: 786, baseType: !3243, size: 256, offset: 6528)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !3244, line: 17, size: 256, elements: !3245)
!3244 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!3245 = !{!3246, !3247, !3252}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3243, file: !3244, line: 18, baseType: !494, size: 128)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3243, file: !3244, line: 19, baseType: !3248, size: 64, offset: 128)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{null, !3251}
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !3243, file: !3244, line: 20, baseType: !3253, size: 64, offset: 192)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3254, line: 16, size: 64, elements: !3255)
!3254 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3255 = !{!3256}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3253, file: !3254, line: 17, baseType: !473, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !2479, file: !237, line: 787, baseType: !356, size: 128, align: 64, offset: 6784)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !2479, file: !237, line: 788, baseType: !7, size: 32, offset: 6912)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !2479, file: !237, line: 789, baseType: !3253, size: 64, offset: 6976)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !2479, file: !237, line: 791, baseType: !125, size: 32, offset: 7040)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !2479, file: !237, line: 794, baseType: !3262, size: 192, offset: 7104)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !237, line: 579, size: 192, elements: !3263)
!3263 = !{!3264, !3265, !3266}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3262, file: !237, line: 580, baseType: !173, size: 128)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3262, file: !237, line: 581, baseType: !383, size: 32, offset: 128)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !3262, file: !237, line: 582, baseType: !7, size: 32, offset: 160)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !2479, file: !237, line: 796, baseType: !3268, size: 64, offset: 7296)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !237, line: 585, size: 128, elements: !3270)
!3270 = !{!3271, !3272}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3269, file: !237, line: 586, baseType: !115, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3269, file: !237, line: 587, baseType: !115, size: 64, offset: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !2479, file: !237, line: 797, baseType: !115, size: 64, offset: 7360)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !2479, file: !237, line: 800, baseType: !2478, size: 64, offset: 7424)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !2479, file: !237, line: 802, baseType: !2952, size: 64, offset: 7488)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2479, file: !237, line: 803, baseType: !356, size: 128, align: 64, offset: 7552)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2479, file: !237, line: 805, baseType: !452, size: 64, offset: 7680)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2479, file: !237, line: 806, baseType: !532, size: 64, offset: 7744)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !2479, file: !237, line: 808, baseType: !371, size: 64, offset: 7808)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !2479, file: !237, line: 810, baseType: !3281, size: 64, offset: 7872)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!532}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !2479, file: !237, line: 811, baseType: !3285, size: 64, offset: 7936)
!3285 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !237, line: 605, baseType: !3286)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{null, !2478, !3289, !3394}
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !237, line: 1148, size: 2048, align: 512, elements: !3291)
!3291 = !{!3292, !3293, !3294, !3295, !3296, !3301, !3302, !3303, !3308, !3309, !3316, !3337, !3359, !3369, !3387, !3388, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !3290, file: !237, line: 1153, baseType: !532, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3290, file: !237, line: 1154, baseType: !532, size: 64, offset: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !3290, file: !237, line: 1155, baseType: !532, size: 64, offset: 128)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3290, file: !237, line: 1161, baseType: !532, size: 64, offset: 192)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !3290, file: !237, line: 1165, baseType: !3297, size: 64, offset: 256)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3290, file: !237, line: 1162, size: 64, elements: !3298)
!3298 = !{!3299, !3300}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3297, file: !237, line: 1163, baseType: !484, size: 32)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !3297, file: !237, line: 1164, baseType: !484, size: 32, offset: 32)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3290, file: !237, line: 1166, baseType: !532, size: 64, offset: 320)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3290, file: !237, line: 1167, baseType: !532, size: 64, offset: 384)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !3290, file: !237, line: 1171, baseType: !3304, size: 64, offset: 448)
!3304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3290, file: !237, line: 1168, size: 64, elements: !3305)
!3305 = !{!3306, !3307}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3304, file: !237, line: 1169, baseType: !484, size: 32)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3304, file: !237, line: 1170, baseType: !484, size: 32, offset: 32)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3290, file: !237, line: 1177, baseType: !532, size: 64, offset: 512)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !3290, file: !237, line: 1178, baseType: !3310, size: 64, offset: 576)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !237, line: 67, size: 64, elements: !3312)
!3312 = !{!3313, !3314}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3311, file: !237, line: 68, baseType: !533, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3311, file: !237, line: 69, baseType: !3315, offset: 64)
!3315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, elements: !1276)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3290, file: !237, line: 1179, baseType: !3317, size: 64, offset: 640)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !237, line: 93, size: 256, elements: !3319)
!3319 = !{!3320, !3336}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !3318, file: !237, line: 94, baseType: !3321, size: 224)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !237, line: 83, size: 224, elements: !3322)
!3322 = !{!3323, !3329, !3334, !3335}
!3323 = !DIDerivedType(tag: DW_TAG_member, scope: !3321, file: !237, line: 84, baseType: !3324, size: 64)
!3324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3321, file: !237, line: 84, size: 64, elements: !3325)
!3325 = !{!3326, !3328}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3324, file: !237, line: 85, baseType: !3327, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3324, file: !237, line: 86, baseType: !115, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !3321, file: !237, line: 88, baseType: !3330, size: 64, offset: 64)
!3330 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !237, line: 80, baseType: !3331)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!115, !96, !1382, !115, !115}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3321, file: !237, line: 89, baseType: !96, size: 64, offset: 128)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3321, file: !237, line: 90, baseType: !484, size: 32, offset: 192)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3318, file: !237, line: 95, baseType: !484, size: 32, offset: 224)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !3290, file: !237, line: 1180, baseType: !3338, size: 64, offset: 704)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !237, line: 123, size: 128, elements: !3340)
!3340 = !{!3341, !3342, !3343}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3339, file: !237, line: 124, baseType: !533, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !3339, file: !237, line: 125, baseType: !533, size: 64, offset: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3339, file: !237, line: 126, baseType: !3344, offset: 128)
!3344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3345, elements: !1276)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3032, line: 1415, size: 192, elements: !3346)
!3346 = !{!3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !3345, file: !3032, line: 1416, baseType: !533, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !3345, file: !3032, line: 1417, baseType: !533, size: 64, offset: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !3345, file: !3032, line: 1418, baseType: !533, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !3345, file: !3032, line: 1419, baseType: !533, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !3345, file: !3032, line: 1420, baseType: !533, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !3345, file: !3032, line: 1421, baseType: !533, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !3345, file: !3032, line: 1422, baseType: !533, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3345, file: !3032, line: 1423, baseType: !533, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !3345, file: !3032, line: 1424, baseType: !533, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !3345, file: !3032, line: 1425, baseType: !533, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3345, file: !3032, line: 1426, baseType: !533, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3345, file: !3032, line: 1427, baseType: !533, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3290, file: !237, line: 1181, baseType: !3360, size: 64, offset: 768)
!3360 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3032, line: 1430, size: 64, elements: !3361)
!3361 = !{!3362, !3363}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3360, file: !3032, line: 1431, baseType: !533, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, scope: !3360, file: !3032, line: 1433, baseType: !3364, size: 64)
!3364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3360, file: !3032, line: 1433, size: 64, elements: !3365)
!3365 = !{!3366, !3367, !3368}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !3364, file: !3032, line: 1434, baseType: !485, size: 32)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !3364, file: !3032, line: 1435, baseType: !170, size: 16, offset: 32)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !3364, file: !3032, line: 1436, baseType: !170, size: 16, offset: 48)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !3290, file: !237, line: 1182, baseType: !3370, size: 64, offset: 832)
!3370 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3032, line: 1267, size: 64, elements: !3371)
!3371 = !{!3372, !3373}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3370, file: !3032, line: 1268, baseType: !533, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, scope: !3370, file: !3032, line: 1269, baseType: !3374, size: 64)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3370, file: !3032, line: 1269, size: 64, elements: !3375)
!3375 = !{!3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !3374, file: !3032, line: 1270, baseType: !533, size: 5, flags: DIFlagBitField, extraData: i64 0)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !3374, file: !3032, line: 1271, baseType: !533, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !3374, file: !3032, line: 1272, baseType: !533, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !3374, file: !3032, line: 1273, baseType: !533, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !3374, file: !3032, line: 1274, baseType: !533, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !3374, file: !3032, line: 1275, baseType: !533, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !3374, file: !3032, line: 1276, baseType: !533, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !3374, file: !3032, line: 1277, baseType: !533, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !3374, file: !3032, line: 1278, baseType: !533, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !3374, file: !3032, line: 1279, baseType: !533, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !3374, file: !3032, line: 1280, baseType: !533, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !3290, file: !237, line: 1183, baseType: !532, size: 64, offset: 896)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !3290, file: !237, line: 1185, baseType: !3389, size: 128, offset: 960)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !3390, line: 7, size: 128, elements: !3391)
!3390 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!3391 = !{!3392, !3393}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !3389, file: !3390, line: 8, baseType: !533, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3389, file: !3390, line: 9, baseType: !3394, size: 64, offset: 64)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3396, line: 103, size: 1344, elements: !3397)
!3396 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3397 = !{!3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3426, !3427, !3428}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3395, file: !3396, line: 109, baseType: !115, size: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3395, file: !3396, line: 110, baseType: !115, size: 64, offset: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3395, file: !3396, line: 111, baseType: !115, size: 64, offset: 128)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3395, file: !3396, line: 112, baseType: !115, size: 64, offset: 192)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3395, file: !3396, line: 113, baseType: !115, size: 64, offset: 256)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3395, file: !3396, line: 114, baseType: !115, size: 64, offset: 320)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3395, file: !3396, line: 117, baseType: !115, size: 64, offset: 384)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3395, file: !3396, line: 118, baseType: !115, size: 64, offset: 448)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3395, file: !3396, line: 119, baseType: !115, size: 64, offset: 512)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3395, file: !3396, line: 120, baseType: !115, size: 64, offset: 576)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3395, file: !3396, line: 121, baseType: !115, size: 64, offset: 640)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3395, file: !3396, line: 122, baseType: !115, size: 64, offset: 704)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3395, file: !3396, line: 123, baseType: !115, size: 64, offset: 768)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3395, file: !3396, line: 124, baseType: !115, size: 64, offset: 832)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3395, file: !3396, line: 125, baseType: !115, size: 64, offset: 896)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3395, file: !3396, line: 139, baseType: !115, size: 64, offset: 960)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3395, file: !3396, line: 142, baseType: !115, size: 64, offset: 1024)
!3415 = !DIDerivedType(tag: DW_TAG_member, scope: !3395, file: !3396, line: 144, baseType: !3416, size: 64, offset: 1088)
!3416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3395, file: !3396, line: 144, size: 64, elements: !3417)
!3417 = !{!3418, !3419, !3420}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3416, file: !3396, line: 146, baseType: !169, size: 16)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3416, file: !3396, line: 148, baseType: !532, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3416, file: !3396, line: 150, baseType: !3421, size: 64)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3396, line: 59, size: 64, elements: !3422)
!3422 = !{!3423, !3424, !3425}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3421, file: !3396, line: 61, baseType: !532, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3421, file: !3396, line: 63, baseType: !532, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3421, file: !3396, line: 65, baseType: !532, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3395, file: !3396, line: 153, baseType: !115, size: 64, offset: 1152)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3395, file: !3396, line: 154, baseType: !115, size: 64, offset: 1216)
!3428 = !DIDerivedType(tag: DW_TAG_member, scope: !3395, file: !3396, line: 156, baseType: !3429, size: 64, offset: 1280)
!3429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3395, file: !3396, line: 156, size: 64, elements: !3430)
!3430 = !{!3431, !3432, !3433}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3429, file: !3396, line: 158, baseType: !169, size: 16)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3429, file: !3396, line: 160, baseType: !532, size: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3429, file: !3396, line: 162, baseType: !3434, size: 64)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3396, line: 69, size: 64, elements: !3435)
!3435 = !{!3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3434, file: !3396, line: 71, baseType: !532, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3434, file: !3396, line: 73, baseType: !532, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3434, file: !3396, line: 75, baseType: !532, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3434, file: !3396, line: 77, baseType: !532, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3434, file: !3396, line: 80, baseType: !532, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3434, file: !3396, line: 83, baseType: !532, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3434, file: !3396, line: 86, baseType: !532, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3434, file: !3396, line: 88, baseType: !532, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3434, file: !3396, line: 93, baseType: !532, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3434, file: !3396, line: 100, baseType: !532, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !3290, file: !237, line: 1186, baseType: !3389, size: 128, offset: 1088)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !3290, file: !237, line: 1187, baseType: !532, size: 64, offset: 1216)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3290, file: !237, line: 1189, baseType: !532, size: 64, offset: 1280)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3290, file: !237, line: 1190, baseType: !532, size: 64, offset: 1344)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3290, file: !237, line: 1191, baseType: !532, size: 64, offset: 1408)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3290, file: !237, line: 1192, baseType: !532, size: 64, offset: 1472)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !3290, file: !237, line: 1193, baseType: !532, size: 64, offset: 1536)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !3290, file: !237, line: 1194, baseType: !532, size: 64, offset: 1600)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !3290, file: !237, line: 1195, baseType: !532, size: 64, offset: 1664)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !2479, file: !237, line: 812, baseType: !96, size: 64, offset: 8000)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !2479, file: !237, line: 820, baseType: !2278, size: 64, offset: 8064)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2479, file: !237, line: 821, baseType: !2459, size: 64, offset: 8128)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2479, file: !237, line: 828, baseType: !3459, size: 64, offset: 8192)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !237, line: 1046, size: 1664, elements: !3461)
!3461 = !{!3462, !3463}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !3460, file: !237, line: 1047, baseType: !1353, size: 1600)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3460, file: !237, line: 1048, baseType: !3464, size: 64, offset: 1600)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !237, line: 1039, size: 256, elements: !3466)
!3466 = !{!3467, !3468, !3469, !3470}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3465, file: !237, line: 1040, baseType: !532, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3465, file: !237, line: 1041, baseType: !532, size: 64, offset: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3465, file: !237, line: 1042, baseType: !532, size: 64, offset: 128)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3465, file: !237, line: 1043, baseType: !98, size: 32, offset: 192)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2479, file: !237, line: 832, baseType: !96, size: 64, offset: 8256)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !2479, file: !237, line: 834, baseType: !173, size: 128, offset: 8320)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !2479, file: !237, line: 842, baseType: !485, size: 32, offset: 8448)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1775, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1775, file: !6, line: 525, baseType: !3476, size: 64, offset: 8384)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !3479, line: 28, size: 192, elements: !3480)
!3479 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!3480 = !{!3481, !3482, !3483}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !3478, file: !3479, line: 29, baseType: !92, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !3478, file: !3479, line: 30, baseType: !92, size: 64, offset: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !3478, file: !3479, line: 31, baseType: !115, size: 64, offset: 128)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1775, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1775, file: !6, line: 533, baseType: !96, size: 64, offset: 8512)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1775, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1775, file: !6, line: 535, baseType: !3488, size: 64, offset: 8640)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1775, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1775, file: !6, line: 539, baseType: !98, size: 32, offset: 8736)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1775, file: !6, line: 540, baseType: !2361, size: 64, offset: 8768)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1775, file: !6, line: 563, baseType: !173, size: 128, offset: 8832)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1775, file: !6, line: 565, baseType: !173, size: 128, offset: 8960)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1775, file: !6, line: 568, baseType: !2372, size: 64, offset: 9088)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1775, file: !6, line: 570, baseType: !125, size: 32, offset: 9152)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1751, file: !83, line: 2382, baseType: !1750, size: 64, offset: 448)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1751, file: !83, line: 2383, baseType: !432, size: 64, offset: 512)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1751, file: !83, line: 2385, baseType: !3499, offset: 576)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2227, line: 206, elements: !336)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1751, file: !83, line: 2386, baseType: !3499, offset: 576)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1751, file: !83, line: 2387, baseType: !3499, offset: 576)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1751, file: !83, line: 2388, baseType: !3503, offset: 576)
!3503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3499, elements: !415)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1751, file: !83, line: 2390, baseType: !3499, offset: 576)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1751, file: !83, line: 2391, baseType: !3499, offset: 576)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1751, file: !83, line: 2392, baseType: !3499, offset: 576)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1751, file: !83, line: 2393, baseType: !3499, offset: 576)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1740, file: !83, line: 1197, baseType: !3509, size: 64, offset: 384)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3511)
!3511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !83, line: 2057, size: 1664, elements: !3512)
!3512 = !{!3513, !3517, !3521, !3522, !3526, !3550, !3554, !3555, !3556, !3560, !3564, !3568, !3569, !3570, !3576, !3580, !3581, !3585, !3586, !3587, !3588, !3592, !3596, !3643, !3658, !3659}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !3511, file: !83, line: 2058, baseType: !3514, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!1611, !1739}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !3511, file: !83, line: 2059, baseType: !3518, size: 64, offset: 64)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{null, !1611}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3511, file: !83, line: 2060, baseType: !3518, size: 64, offset: 128)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !3511, file: !83, line: 2062, baseType: !3523, size: 64, offset: 192)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{null, !1611, !98}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !3511, file: !83, line: 2063, baseType: !3527, size: 64, offset: 256)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!98, !1611, !3530}
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !275, line: 42, size: 384, elements: !3532)
!3532 = !{!3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !3531, file: !275, line: 43, baseType: !808, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !3531, file: !275, line: 45, baseType: !808, size: 64, offset: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !3531, file: !275, line: 52, baseType: !117, size: 64, offset: 128)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !3531, file: !275, line: 53, baseType: !117, size: 64, offset: 192)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !3531, file: !275, line: 55, baseType: !274, size: 32, offset: 256)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !3531, file: !275, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !3531, file: !275, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !3531, file: !275, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !3531, file: !275, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !3531, file: !275, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !3531, file: !275, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !3531, file: !275, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !3531, file: !275, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !3531, file: !275, line: 78, baseType: !3547, size: 64, offset: 320)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !275, line: 78, flags: DIFlagFwdDecl)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !3511, file: !83, line: 2064, baseType: !3551, size: 64, offset: 320)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!98, !1611}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !3511, file: !83, line: 2065, baseType: !3518, size: 64, offset: 384)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !3511, file: !83, line: 2066, baseType: !1770, size: 64, offset: 448)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !3511, file: !83, line: 2067, baseType: !3557, size: 64, offset: 512)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!98, !1739, !98}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !3511, file: !83, line: 2068, baseType: !3561, size: 64, offset: 576)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!98, !1739, !82}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !3511, file: !83, line: 2069, baseType: !3565, size: 64, offset: 640)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!98, !1739}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !3511, file: !83, line: 2070, baseType: !3561, size: 64, offset: 704)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !3511, file: !83, line: 2071, baseType: !3565, size: 64, offset: 768)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !3511, file: !83, line: 2072, baseType: !3571, size: 64, offset: 832)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!98, !1633, !3574}
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !83, line: 62, flags: DIFlagFwdDecl)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !3511, file: !83, line: 2073, baseType: !3577, size: 64, offset: 896)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{!98, !1739, !896, !1056}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !3511, file: !83, line: 2074, baseType: !1770, size: 64, offset: 960)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3511, file: !83, line: 2076, baseType: !3582, size: 64, offset: 1024)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!98, !1419, !1633}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !3511, file: !83, line: 2077, baseType: !3582, size: 64, offset: 1088)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3511, file: !83, line: 2078, baseType: !3582, size: 64, offset: 1152)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !3511, file: !83, line: 2079, baseType: !3582, size: 64, offset: 1216)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !3511, file: !83, line: 2081, baseType: !3589, size: 64, offset: 1280)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!1857, !1739, !98, !1056, !111, !117}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !3511, file: !83, line: 2082, baseType: !3593, size: 64, offset: 1344)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{!1857, !1739, !98, !92, !111, !117}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !3511, file: !83, line: 2083, baseType: !3597, size: 64, offset: 1408)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{!3600, !1611}
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !59, line: 296, size: 1664, elements: !3603)
!3603 = !{!3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3628, !3629, !3630}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3602, file: !59, line: 297, baseType: !436, size: 128)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3602, file: !59, line: 298, baseType: !173, size: 128, offset: 128)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3602, file: !59, line: 299, baseType: !173, size: 128, offset: 256)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3602, file: !59, line: 300, baseType: !173, size: 128, offset: 384)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3602, file: !59, line: 301, baseType: !378, size: 256, offset: 512)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3602, file: !59, line: 302, baseType: !135, size: 32, offset: 768)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3602, file: !59, line: 303, baseType: !125, size: 32, offset: 800)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3602, file: !59, line: 304, baseType: !1739, size: 64, offset: 832)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3602, file: !59, line: 305, baseType: !3613, size: 64, offset: 896)
!3613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !59, line: 68, size: 64, elements: !3614)
!3614 = !{!3615, !3627}
!3615 = !DIDerivedType(tag: DW_TAG_member, scope: !3613, file: !59, line: 69, baseType: !3616, size: 32)
!3616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3613, file: !59, line: 69, size: 32, elements: !3617)
!3617 = !{!3618, !3619, !3620}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3616, file: !59, line: 70, baseType: !940, size: 32)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3616, file: !59, line: 71, baseType: !948, size: 32)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3616, file: !59, line: 72, baseType: !3621, size: 32)
!3621 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3622, line: 24, baseType: !3623)
!3622 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3622, line: 22, size: 32, elements: !3624)
!3624 = !{!3625}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3623, file: !3622, line: 23, baseType: !3626, size: 32)
!3626 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3622, line: 20, baseType: !946)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3613, file: !59, line: 74, baseType: !58, size: 32, offset: 32)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3602, file: !59, line: 306, baseType: !117, size: 64, offset: 960)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3602, file: !59, line: 307, baseType: !115, size: 64, offset: 1024)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3602, file: !59, line: 308, baseType: !3631, size: 576, offset: 1088)
!3631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !59, line: 205, size: 576, elements: !3632)
!3632 = !{!3633, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3631, file: !59, line: 206, baseType: !3634, size: 64)
!3634 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !59, line: 66, baseType: !119)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3631, file: !59, line: 207, baseType: !3634, size: 64, offset: 64)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3631, file: !59, line: 208, baseType: !3634, size: 64, offset: 128)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3631, file: !59, line: 209, baseType: !3634, size: 64, offset: 192)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3631, file: !59, line: 210, baseType: !3634, size: 64, offset: 256)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3631, file: !59, line: 211, baseType: !3634, size: 64, offset: 320)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3631, file: !59, line: 212, baseType: !3634, size: 64, offset: 384)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3631, file: !59, line: 213, baseType: !1003, size: 64, offset: 448)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3631, file: !59, line: 214, baseType: !1003, size: 64, offset: 512)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !3511, file: !83, line: 2085, baseType: !3644, size: 64, offset: 1472)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!808, !1739, !3647}
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3649, line: 15, size: 256, elements: !3650)
!3649 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3650 = !{!3651, !3652, !3653, !3654, !3655}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3648, file: !3649, line: 16, baseType: !466, size: 32)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3648, file: !3649, line: 19, baseType: !98, size: 32, offset: 32)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3648, file: !3649, line: 26, baseType: !115, size: 64, offset: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3648, file: !3649, line: 33, baseType: !115, size: 64, offset: 128)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3648, file: !3649, line: 36, baseType: !3656, size: 64, offset: 192)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !20, line: 33, flags: DIFlagFwdDecl)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !3511, file: !83, line: 2087, baseType: !3644, size: 64, offset: 1536)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3511, file: !83, line: 2089, baseType: !1770, size: 64, offset: 1600)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1740, file: !83, line: 1198, baseType: !3661, size: 64, offset: 448)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3663)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !59, line: 324, size: 704, elements: !3664)
!3664 = !{!3665, !3669, !3673, !3677, !3678, !3679, !3680, !3681, !3686, !3691, !3695}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3663, file: !59, line: 325, baseType: !3666, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!98, !3601}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3663, file: !59, line: 326, baseType: !3670, size: 64, offset: 64)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!3601, !1739, !98}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3663, file: !59, line: 327, baseType: !3674, size: 64, offset: 128)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{null, !3601}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3663, file: !59, line: 328, baseType: !3666, size: 64, offset: 192)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3663, file: !59, line: 329, baseType: !3666, size: 64, offset: 256)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3663, file: !59, line: 330, baseType: !3666, size: 64, offset: 320)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3663, file: !59, line: 331, baseType: !3557, size: 64, offset: 384)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3663, file: !59, line: 334, baseType: !3682, size: 64, offset: 448)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!3685, !1611}
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3663, file: !59, line: 335, baseType: !3687, size: 64, offset: 512)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!98, !1611, !3690}
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3663, file: !59, line: 337, baseType: !3692, size: 64, offset: 576)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!98, !1611, !3685}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3663, file: !59, line: 339, baseType: !3696, size: 64, offset: 640)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!98, !1739, !3699}
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1740, file: !83, line: 1199, baseType: !3701, size: 64, offset: 512)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3703)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !59, line: 430, size: 704, elements: !3704)
!3704 = !{!3705, !3716, !3717, !3721, !3722, !3723, !3738, !3761, !3765, !3766, !3789}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3703, file: !59, line: 431, baseType: !3706, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!98, !1739, !98, !98, !3709}
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3711)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !3712, line: 8, size: 128, elements: !3713)
!3712 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!3713 = !{!3714, !3715}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !3711, file: !3712, line: 9, baseType: !1733, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !3711, file: !3712, line: 10, baseType: !1633, size: 64, offset: 64)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3703, file: !59, line: 432, baseType: !3557, size: 64, offset: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3703, file: !59, line: 433, baseType: !3718, size: 64, offset: 128)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!98, !1739, !7}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3703, file: !59, line: 434, baseType: !3718, size: 64, offset: 192)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3703, file: !59, line: 435, baseType: !3557, size: 64, offset: 256)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3703, file: !59, line: 436, baseType: !3724, size: 64, offset: 320)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!98, !1739, !98, !3727}
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !59, line: 417, size: 256, elements: !3729)
!3729 = !{!3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3728, file: !59, line: 418, baseType: !98, size: 32)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3728, file: !59, line: 419, baseType: !7, size: 32, offset: 32)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3728, file: !59, line: 420, baseType: !7, size: 32, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3728, file: !59, line: 422, baseType: !7, size: 32, offset: 96)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3728, file: !59, line: 423, baseType: !7, size: 32, offset: 128)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3728, file: !59, line: 424, baseType: !7, size: 32, offset: 160)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3728, file: !59, line: 425, baseType: !7, size: 32, offset: 192)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3728, file: !59, line: 426, baseType: !7, size: 32, offset: 224)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3703, file: !59, line: 437, baseType: !3739, size: 64, offset: 384)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!98, !1739, !3613, !3742}
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !59, line: 345, size: 960, elements: !3744)
!3744 = !{!3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3743, file: !59, line: 346, baseType: !98, size: 32)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3743, file: !59, line: 347, baseType: !532, size: 64, offset: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3743, file: !59, line: 348, baseType: !532, size: 64, offset: 128)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3743, file: !59, line: 349, baseType: !532, size: 64, offset: 192)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3743, file: !59, line: 350, baseType: !532, size: 64, offset: 256)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3743, file: !59, line: 351, baseType: !532, size: 64, offset: 320)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3743, file: !59, line: 352, baseType: !532, size: 64, offset: 384)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3743, file: !59, line: 353, baseType: !375, size: 64, offset: 448)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3743, file: !59, line: 355, baseType: !375, size: 64, offset: 512)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3743, file: !59, line: 356, baseType: !98, size: 32, offset: 576)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3743, file: !59, line: 357, baseType: !98, size: 32, offset: 608)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3743, file: !59, line: 358, baseType: !532, size: 64, offset: 640)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3743, file: !59, line: 359, baseType: !532, size: 64, offset: 704)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3743, file: !59, line: 360, baseType: !532, size: 64, offset: 768)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3743, file: !59, line: 361, baseType: !375, size: 64, offset: 832)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3743, file: !59, line: 362, baseType: !98, size: 32, offset: 896)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3703, file: !59, line: 438, baseType: !3762, size: 64, offset: 448)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!98, !1739, !3699, !3742}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3703, file: !59, line: 440, baseType: !3739, size: 64, offset: 512)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3703, file: !59, line: 441, baseType: !3767, size: 64, offset: 576)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!98, !1739, !3770}
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !59, line: 411, size: 1408, elements: !3772)
!3772 = !{!3773, !3774}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3771, file: !59, line: 412, baseType: !7, size: 32)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3771, file: !59, line: 413, baseType: !3775, size: 1344, offset: 64)
!3775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3776, size: 1344, elements: !415)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !59, line: 397, size: 448, elements: !3777)
!3777 = !{!3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3788}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3776, file: !59, line: 398, baseType: !7, size: 32)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3776, file: !59, line: 399, baseType: !7, size: 32, offset: 32)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3776, file: !59, line: 401, baseType: !7, size: 32, offset: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3776, file: !59, line: 402, baseType: !7, size: 32, offset: 96)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3776, file: !59, line: 403, baseType: !7, size: 32, offset: 128)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3776, file: !59, line: 404, baseType: !7, size: 32, offset: 160)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3776, file: !59, line: 405, baseType: !7, size: 32, offset: 192)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3776, file: !59, line: 406, baseType: !534, size: 64, offset: 256)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3776, file: !59, line: 407, baseType: !3787, size: 64, offset: 320)
!3787 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !101, line: 132, baseType: !532)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3776, file: !59, line: 408, baseType: !3787, size: 64, offset: 384)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3703, file: !59, line: 442, baseType: !3718, size: 64, offset: 640)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1740, file: !83, line: 1200, baseType: !3791, size: 64, offset: 576)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3793)
!3793 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !83, line: 54, flags: DIFlagFwdDecl)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1740, file: !83, line: 1201, baseType: !115, size: 64, offset: 640)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1740, file: !83, line: 1202, baseType: !115, size: 64, offset: 704)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1740, file: !83, line: 1203, baseType: !115, size: 64, offset: 768)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1740, file: !83, line: 1204, baseType: !1633, size: 64, offset: 832)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1740, file: !83, line: 1205, baseType: !987, size: 320, offset: 896)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1740, file: !83, line: 1206, baseType: !98, size: 32, offset: 1216)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1740, file: !83, line: 1207, baseType: !125, size: 32, offset: 1248)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1740, file: !83, line: 1209, baseType: !96, size: 64, offset: 1280)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1740, file: !83, line: 1211, baseType: !3803, size: 64, offset: 1344)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3806)
!3806 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !83, line: 1211, flags: DIFlagFwdDecl)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1740, file: !83, line: 1223, baseType: !3808, size: 64, offset: 1408)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1645, line: 34, size: 64, elements: !3809)
!3809 = !{!3810}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3808, file: !1645, line: 35, baseType: !1648, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1740, file: !83, line: 1224, baseType: !173, size: 128, offset: 1472)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1740, file: !83, line: 1225, baseType: !3813, size: 64, offset: 1600)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !3815, line: 40, size: 7424, elements: !3816)
!3815 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!3816 = !{!3817, !3819, !3820, !3823, !3827, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3854, !3855}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !3814, file: !3815, line: 41, baseType: !3818, size: 64)
!3818 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !101, line: 131, baseType: !532)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !3814, file: !3815, line: 42, baseType: !3818, size: 64, offset: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !3814, file: !3815, line: 43, baseType: !3821, size: 64, offset: 128)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !475, line: 1453, flags: DIFlagFwdDecl)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !3814, file: !3815, line: 44, baseType: !3824, size: 64, offset: 192)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !3826, line: 74, flags: DIFlagFwdDecl)
!3826 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !3814, file: !3815, line: 45, baseType: !3828, size: 64, offset: 256)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !3815, line: 45, flags: DIFlagFwdDecl)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !3814, file: !3815, line: 46, baseType: !115, size: 64, offset: 320)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !3814, file: !3815, line: 47, baseType: !1045, size: 8, offset: 384)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !3814, file: !3815, line: 48, baseType: !159, size: 8, offset: 392)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !3814, file: !3815, line: 49, baseType: !1045, size: 8, offset: 400)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !3814, file: !3815, line: 50, baseType: !1045, size: 8, offset: 408)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !3814, file: !3815, line: 51, baseType: !1744, size: 32, offset: 416)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !3814, file: !3815, line: 52, baseType: !125, size: 32, offset: 448)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !3814, file: !3815, line: 53, baseType: !135, size: 32, offset: 480)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !3814, file: !3815, line: 54, baseType: !1611, size: 64, offset: 512)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !3814, file: !3815, line: 55, baseType: !96, size: 64, offset: 576)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !3814, file: !3815, line: 56, baseType: !96, size: 64, offset: 640)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !3814, file: !3815, line: 57, baseType: !3842, size: 64, offset: 704)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3844)
!3844 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !3815, line: 57, flags: DIFlagFwdDecl)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !3814, file: !3815, line: 58, baseType: !378, size: 256, offset: 768)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !3814, file: !3815, line: 60, baseType: !98, size: 32, offset: 1024)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !3814, file: !3815, line: 61, baseType: !98, size: 32, offset: 1056)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !3814, file: !3815, line: 62, baseType: !1793, size: 64, offset: 1088)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !3814, file: !3815, line: 65, baseType: !378, size: 256, offset: 1152)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !3814, file: !3815, line: 66, baseType: !1739, size: 64, offset: 1408)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !3814, file: !3815, line: 68, baseType: !3852, size: 64, offset: 1472)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !3815, line: 68, flags: DIFlagFwdDecl)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !3814, file: !3815, line: 72, baseType: !1045, size: 8, offset: 1536)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !3814, file: !3815, line: 77, baseType: !2502, size: 5824, offset: 1600)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1740, file: !83, line: 1226, baseType: !3857, size: 64, offset: 1664)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !83, line: 1226, flags: DIFlagFwdDecl)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1740, file: !83, line: 1227, baseType: !3860, size: 64, offset: 1728)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !263, line: 163, size: 6848, elements: !3862)
!3862 = !{!3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3910, !3911, !3912, !3913, !3915, !3916, !3917}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3861, file: !263, line: 164, baseType: !532, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3861, file: !263, line: 165, baseType: !524, size: 192, align: 64, offset: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3861, file: !263, line: 166, baseType: !173, size: 128, offset: 256)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3861, file: !263, line: 167, baseType: !115, size: 64, offset: 384)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3861, file: !263, line: 168, baseType: !115, size: 64, offset: 448)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3861, file: !263, line: 170, baseType: !1948, size: 32, offset: 512)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3861, file: !263, line: 171, baseType: !7, size: 32, offset: 544)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3861, file: !263, line: 172, baseType: !7, size: 32, offset: 576)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3861, file: !263, line: 173, baseType: !7, size: 32, offset: 608)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3861, file: !263, line: 173, baseType: !7, size: 32, offset: 640)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3861, file: !263, line: 179, baseType: !369, size: 64, offset: 704)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !3861, file: !263, line: 184, baseType: !115, size: 64, offset: 768)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3861, file: !263, line: 186, baseType: !3876, size: 4672, offset: 832)
!3876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !263, line: 105, size: 4672, elements: !3877)
!3877 = !{!3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3903, !3904, !3905, !3906, !3907, !3908, !3909}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3876, file: !263, line: 106, baseType: !3860, size: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3876, file: !263, line: 108, baseType: !115, size: 64, offset: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3876, file: !263, line: 109, baseType: !115, size: 64, offset: 128)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3876, file: !263, line: 111, baseType: !173, size: 128, offset: 192)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3876, file: !263, line: 112, baseType: !173, size: 128, offset: 320)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3876, file: !263, line: 113, baseType: !173, size: 128, offset: 448)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3876, file: !263, line: 114, baseType: !173, size: 128, offset: 576)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3876, file: !263, line: 115, baseType: !135, size: 32, offset: 704)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !3876, file: !263, line: 117, baseType: !125, size: 32, offset: 736)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3876, file: !263, line: 118, baseType: !3888, size: 1280, offset: 768)
!3888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1104, size: 1280, elements: !441)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3876, file: !263, line: 120, baseType: !115, size: 64, offset: 2048)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3876, file: !263, line: 121, baseType: !115, size: 64, offset: 2112)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3876, file: !263, line: 122, baseType: !115, size: 64, offset: 2176)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3876, file: !263, line: 123, baseType: !115, size: 64, offset: 2240)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3876, file: !263, line: 124, baseType: !115, size: 64, offset: 2304)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3876, file: !263, line: 132, baseType: !115, size: 64, offset: 2368)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3876, file: !263, line: 133, baseType: !115, size: 64, offset: 2432)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3876, file: !263, line: 135, baseType: !3897, size: 384, offset: 2496)
!3897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3898, line: 76, size: 384, elements: !3899)
!3898 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!3899 = !{!3900, !3901, !3902}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3897, file: !3898, line: 78, baseType: !1104, size: 320)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3897, file: !3898, line: 80, baseType: !7, size: 32, offset: 320)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3897, file: !3898, line: 81, baseType: !383, size: 32, offset: 352)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3876, file: !263, line: 136, baseType: !98, size: 32, offset: 2880)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3876, file: !263, line: 137, baseType: !262, size: 32, offset: 2912)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3876, file: !263, line: 139, baseType: !135, size: 32, offset: 2944)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3876, file: !263, line: 140, baseType: !173, size: 128, offset: 3008)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3876, file: !263, line: 141, baseType: !2255, size: 704, offset: 3136)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !3876, file: !263, line: 142, baseType: !2255, size: 704, offset: 3840)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3876, file: !263, line: 144, baseType: !173, size: 128, offset: 4544)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3861, file: !263, line: 187, baseType: !173, size: 128, offset: 5504)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3861, file: !263, line: 193, baseType: !130, size: 192, offset: 5632)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3861, file: !263, line: 195, baseType: !2501, size: 64, offset: 5824)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3861, file: !263, line: 196, baseType: !3914, size: 512, offset: 5888)
!3914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 512, elements: !1830)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3861, file: !263, line: 197, baseType: !2501, size: 64, offset: 6400)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3861, file: !263, line: 199, baseType: !2198, size: 320, offset: 6464)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3861, file: !263, line: 202, baseType: !1633, size: 64, offset: 6784)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1740, file: !83, line: 1228, baseType: !3919, size: 64, offset: 1792)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !83, line: 1228, flags: DIFlagFwdDecl)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1740, file: !83, line: 1229, baseType: !436, size: 128, offset: 1856)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1740, file: !83, line: 1230, baseType: !7, size: 32, offset: 1984)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1740, file: !83, line: 1231, baseType: !3924, size: 2496, offset: 2048)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !59, line: 521, size: 2496, elements: !3925)
!3925 = !{!3926, !3927, !3928, !3930, !3962}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3924, file: !59, line: 522, baseType: !7, size: 32)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3924, file: !59, line: 523, baseType: !987, size: 320, offset: 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3924, file: !59, line: 524, baseType: !3929, size: 192, offset: 384)
!3929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1611, size: 192, elements: !415)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3924, file: !59, line: 525, baseType: !3931, size: 1728, offset: 576)
!3931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3932, size: 1728, elements: !415)
!3932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !59, line: 222, size: 576, elements: !3933)
!3933 = !{!3934, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3932, file: !59, line: 223, baseType: !3935, size: 64)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !59, line: 445, size: 256, elements: !3937)
!3937 = !{!3938, !3939, !3952, !3953}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3936, file: !59, line: 446, baseType: !98, size: 32)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3936, file: !59, line: 447, baseType: !3940, size: 64, offset: 64)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3942)
!3942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !59, line: 312, size: 512, elements: !3943)
!3943 = !{!3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3942, file: !59, line: 313, baseType: !3557, size: 64)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3942, file: !59, line: 314, baseType: !3557, size: 64, offset: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3942, file: !59, line: 315, baseType: !3557, size: 64, offset: 128)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3942, file: !59, line: 316, baseType: !3557, size: 64, offset: 192)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3942, file: !59, line: 317, baseType: !3666, size: 64, offset: 256)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3942, file: !59, line: 318, baseType: !3666, size: 64, offset: 320)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3942, file: !59, line: 319, baseType: !3666, size: 64, offset: 384)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3942, file: !59, line: 320, baseType: !3696, size: 64, offset: 448)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3936, file: !59, line: 448, baseType: !1774, size: 64, offset: 128)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3936, file: !59, line: 449, baseType: !3935, size: 64, offset: 192)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3932, file: !59, line: 224, baseType: !98, size: 32, offset: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3932, file: !59, line: 226, baseType: !173, size: 128, offset: 128)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3932, file: !59, line: 227, baseType: !115, size: 64, offset: 256)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3932, file: !59, line: 228, baseType: !7, size: 32, offset: 320)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3932, file: !59, line: 229, baseType: !7, size: 32, offset: 352)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3932, file: !59, line: 230, baseType: !3634, size: 64, offset: 384)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3932, file: !59, line: 231, baseType: !3634, size: 64, offset: 448)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3932, file: !59, line: 232, baseType: !96, size: 64, offset: 512)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3924, file: !59, line: 526, baseType: !3963, size: 192, offset: 2304)
!3963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3940, size: 192, elements: !415)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1740, file: !83, line: 1233, baseType: !3965, size: 2368, offset: 4544)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !83, line: 1184, size: 2368, elements: !3966)
!3966 = !{!3967, !3968, !3969}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3965, file: !83, line: 1185, baseType: !102, size: 16)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3965, file: !83, line: 1186, baseType: !102, size: 16, offset: 16)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3965, file: !83, line: 1187, baseType: !3970, size: 2304, offset: 64)
!3970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3971, size: 2304, elements: !415)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3972, line: 12, size: 768, elements: !3973)
!3972 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3973 = !{!3974, !3982, !3983, !3984, !3985}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3971, file: !3972, line: 13, baseType: !3975, size: 384)
!3975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3976, line: 17, size: 384, elements: !3977)
!3976 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3977 = !{!3978, !3979, !3980, !3981}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3975, file: !3976, line: 18, baseType: !98, size: 32)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3975, file: !3976, line: 19, baseType: !98, size: 32, offset: 32)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3975, file: !3976, line: 20, baseType: !130, size: 192, offset: 64)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3975, file: !3976, line: 22, baseType: !356, size: 128, align: 64, offset: 256)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3971, file: !3972, line: 14, baseType: !2051, size: 64, offset: 384)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3971, file: !3972, line: 15, baseType: !3253, size: 64, offset: 448)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3971, file: !3972, line: 16, baseType: !130, size: 192, offset: 512)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3971, file: !3972, line: 17, baseType: !125, size: 32, offset: 704)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1740, file: !83, line: 1240, baseType: !96, size: 64, offset: 6912)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1740, file: !83, line: 1243, baseType: !484, size: 32, offset: 6976)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1740, file: !83, line: 1245, baseType: !1003, size: 64, offset: 7040)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1740, file: !83, line: 1246, baseType: !1003, size: 64, offset: 7104)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1740, file: !83, line: 1248, baseType: !485, size: 32, offset: 7168)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1740, file: !83, line: 1249, baseType: !3992, size: 64, offset: 7232)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !83, line: 634, flags: DIFlagFwdDecl)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1740, file: !83, line: 1252, baseType: !3995, size: 256, offset: 7296)
!3995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 256, elements: !1670)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1740, file: !83, line: 1253, baseType: !3997, size: 128, offset: 7552)
!3997 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3998, line: 21, baseType: !3999)
!3998 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3998, line: 19, size: 128, elements: !4000)
!4000 = !{!4001}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3999, file: !3998, line: 20, baseType: !4002, size: 128)
!4002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 128, elements: !1288)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1740, file: !83, line: 1255, baseType: !7, size: 32, offset: 7680)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1740, file: !83, line: 1261, baseType: !378, size: 256, offset: 7744)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1740, file: !83, line: 1267, baseType: !92, size: 64, offset: 8000)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1740, file: !83, line: 1269, baseType: !1686, size: 64, offset: 8064)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1740, file: !83, line: 1271, baseType: !4008, size: 448, offset: 8128)
!4008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3649, line: 63, size: 448, elements: !4009)
!4009 = !{!4010, !4015, !4016, !4017, !4018, !4019, !4020}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4008, file: !3649, line: 64, baseType: !4011, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!115, !4014, !3647}
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4008, file: !3649, line: 66, baseType: !4011, size: 64, offset: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4008, file: !3649, line: 69, baseType: !808, size: 64, offset: 128)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4008, file: !3649, line: 70, baseType: !98, size: 32, offset: 192)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4008, file: !3649, line: 71, baseType: !7, size: 32, offset: 224)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4008, file: !3649, line: 74, baseType: !173, size: 128, offset: 256)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4008, file: !3649, line: 85, baseType: !4021, size: 64, offset: 384)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1740, file: !83, line: 1274, baseType: !369, size: 64, offset: 8576)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1740, file: !83, line: 1280, baseType: !369, size: 64, offset: 8640)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1740, file: !83, line: 1283, baseType: !98, size: 32, offset: 8704)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1740, file: !83, line: 1286, baseType: !4026, size: 32, offset: 8736)
!4026 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !4027, line: 8, baseType: !484)
!4027 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1740, file: !83, line: 1289, baseType: !2260, size: 64, offset: 8768)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1740, file: !83, line: 1290, baseType: !432, size: 64, offset: 8832)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1740, file: !83, line: 1297, baseType: !1129, size: 64, offset: 8896)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1740, file: !83, line: 1304, baseType: !4032, size: 64, offset: 8960)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4033, line: 49, size: 64, elements: !4034)
!4033 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4034 = !{!4035}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4032, file: !4033, line: 50, baseType: !4036, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4033, line: 41, size: 512, align: 512, elements: !4038)
!4038 = !{!4039, !4040, !4045}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4037, file: !4033, line: 43, baseType: !135, size: 32)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4037, file: !4033, line: 45, baseType: !4041, size: 192, offset: 64)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4033, line: 29, size: 192, elements: !4042)
!4042 = !{!4043, !4044}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4041, file: !4033, line: 30, baseType: !173, size: 128)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4041, file: !4033, line: 32, baseType: !808, size: 64, offset: 128)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4037, file: !4033, line: 46, baseType: !808, size: 64, offset: 256)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1740, file: !83, line: 1305, baseType: !4032, size: 64, offset: 9024)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1740, file: !83, line: 1306, baseType: !356, size: 128, align: 64, offset: 9088)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1740, file: !83, line: 1307, baseType: !1178, size: 256, offset: 9216)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1740, file: !83, line: 1309, baseType: !378, size: 256, offset: 9472)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1740, file: !83, line: 1314, baseType: !98, size: 32, offset: 9728)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1740, file: !83, line: 1317, baseType: !135, size: 32, align: 512, offset: 10240)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1740, file: !83, line: 1318, baseType: !173, size: 128, offset: 10304)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1740, file: !83, line: 1320, baseType: !135, size: 32, offset: 10432)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1740, file: !83, line: 1321, baseType: !173, size: 128, offset: 10496)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1734, file: !1735, line: 73, baseType: !98, size: 32, offset: 128)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1734, file: !1735, line: 74, baseType: !4057, size: 64, offset: 192)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !963, line: 42, flags: DIFlagFwdDecl)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1688, file: !1635, line: 141, baseType: !4061, size: 64, offset: 704)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{!98, !3709, !1045}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1688, file: !1635, line: 142, baseType: !4065, size: 64, offset: 768)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!1633, !1633, !4068}
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1612)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1634, file: !1635, line: 96, baseType: !1739, size: 64, offset: 832)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1634, file: !1635, line: 97, baseType: !115, size: 64, offset: 896)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1634, file: !1635, line: 98, baseType: !96, size: 64, offset: 960)
!4073 = !DIDerivedType(tag: DW_TAG_member, scope: !1634, file: !1635, line: 100, baseType: !4074, size: 128, offset: 1024)
!4074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1634, file: !1635, line: 100, size: 128, elements: !4075)
!4075 = !{!4076, !4077}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4074, file: !1635, line: 101, baseType: !173, size: 128)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4074, file: !1635, line: 102, baseType: !4078, size: 64)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1634, file: !1635, line: 104, baseType: !173, size: 128, offset: 1152)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1634, file: !1635, line: 105, baseType: !173, size: 128, offset: 1280)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1634, file: !1635, line: 113, baseType: !4082, size: 128, offset: 1408)
!4082 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1634, file: !1635, line: 109, size: 128, elements: !4083)
!4083 = !{!4084, !4085, !4086}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4082, file: !1635, line: 110, baseType: !436, size: 128)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4082, file: !1635, line: 111, baseType: !1644, size: 128)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4082, file: !1635, line: 112, baseType: !356, size: 128, align: 64)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1627, file: !83, line: 1968, baseType: !4088, size: 64, offset: 64)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!92, !1633, !1611, !4091}
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4093, line: 10, size: 128, elements: !4094)
!4093 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4094 = !{!4095, !4096}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4092, file: !4093, line: 11, baseType: !1935, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4092, file: !4093, line: 12, baseType: !96, size: 64, offset: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1627, file: !83, line: 1969, baseType: !4098, size: 64, offset: 128)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!98, !4057, !1611, !98}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1627, file: !83, line: 1970, baseType: !4102, size: 64, offset: 192)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!1621, !1611, !98, !1045}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1627, file: !83, line: 1972, baseType: !4106, size: 64, offset: 256)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{!98, !1633, !1056, !98}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1627, file: !83, line: 1974, baseType: !4110, size: 64, offset: 320)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{!98, !4057, !1611, !1633, !100, !1045}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1627, file: !83, line: 1976, baseType: !4114, size: 64, offset: 384)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!98, !1633, !1611, !1633}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1627, file: !83, line: 1977, baseType: !4118, size: 64, offset: 448)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{!98, !1611, !1633}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1627, file: !83, line: 1978, baseType: !4122, size: 64, offset: 512)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!98, !4057, !1611, !1633, !92}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1627, file: !83, line: 1980, baseType: !4126, size: 64, offset: 576)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!98, !4057, !1611, !1633, !100}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1627, file: !83, line: 1982, baseType: !4118, size: 64, offset: 640)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1627, file: !83, line: 1983, baseType: !4131, size: 64, offset: 704)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{!98, !4057, !1611, !1633, !100, !1744}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1627, file: !83, line: 1985, baseType: !4135, size: 64, offset: 768)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!98, !4057, !1611, !1633, !1611, !1633, !7}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1627, file: !83, line: 1987, baseType: !4139, size: 64, offset: 832)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!98, !4057, !1633, !4142}
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !83, line: 226, size: 640, elements: !4144)
!4144 = !{!4145, !4146, !4147, !4157, !4166, !4167, !4172, !4173, !4174}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4143, file: !83, line: 227, baseType: !7, size: 32)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4143, file: !83, line: 228, baseType: !100, size: 16, offset: 32)
!4147 = !DIDerivedType(tag: DW_TAG_member, scope: !4143, file: !83, line: 241, baseType: !4148, size: 32, offset: 64)
!4148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4143, file: !83, line: 241, size: 32, elements: !4149)
!4149 = !{!4150, !4151}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4148, file: !83, line: 242, baseType: !940, size: 32)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4148, file: !83, line: 243, baseType: !4152, size: 32)
!4152 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4153, line: 16, baseType: !4154)
!4153 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4154 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4153, line: 14, size: 32, elements: !4155)
!4155 = !{!4156}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4154, file: !4153, line: 15, baseType: !945, size: 32)
!4157 = !DIDerivedType(tag: DW_TAG_member, scope: !4143, file: !83, line: 245, baseType: !4158, size: 32, offset: 96)
!4158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4143, file: !83, line: 245, size: 32, elements: !4159)
!4159 = !{!4160, !4161}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4158, file: !83, line: 246, baseType: !948, size: 32)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4158, file: !83, line: 247, baseType: !4162, size: 32)
!4162 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4153, line: 20, baseType: !4163)
!4163 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4153, line: 18, size: 32, elements: !4164)
!4164 = !{!4165}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4163, file: !4153, line: 19, baseType: !952, size: 32)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4143, file: !83, line: 249, baseType: !117, size: 64, offset: 128)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4143, file: !83, line: 250, baseType: !4168, size: 128, offset: 192)
!4168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1004, line: 13, size: 128, elements: !4169)
!4169 = !{!4170, !4171}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4168, file: !1004, line: 14, baseType: !1003, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4168, file: !1004, line: 15, baseType: !808, size: 64, offset: 64)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4143, file: !83, line: 251, baseType: !4168, size: 128, offset: 320)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4143, file: !83, line: 252, baseType: !4168, size: 128, offset: 448)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4143, file: !83, line: 259, baseType: !343, size: 64, offset: 576)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1627, file: !83, line: 1988, baseType: !4176, size: 64, offset: 896)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!98, !4057, !3709, !4179, !484, !7}
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4181, line: 22, size: 1280, elements: !4182)
!4181 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4182 = !{!4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203}
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4180, file: !4181, line: 23, baseType: !484, size: 32)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4180, file: !4181, line: 24, baseType: !100, size: 16, offset: 32)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4180, file: !4181, line: 25, baseType: !7, size: 32, offset: 64)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4180, file: !4181, line: 26, baseType: !1011, size: 32, offset: 96)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4180, file: !4181, line: 27, baseType: !532, size: 64, offset: 128)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4180, file: !4181, line: 28, baseType: !532, size: 64, offset: 192)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4180, file: !4181, line: 41, baseType: !532, size: 64, offset: 256)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4180, file: !4181, line: 42, baseType: !1744, size: 32, offset: 320)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4180, file: !4181, line: 43, baseType: !1744, size: 32, offset: 352)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4180, file: !4181, line: 44, baseType: !940, size: 32, offset: 384)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4180, file: !4181, line: 45, baseType: !948, size: 32, offset: 416)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4180, file: !4181, line: 46, baseType: !117, size: 64, offset: 448)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4180, file: !4181, line: 47, baseType: !4168, size: 128, offset: 512)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4180, file: !4181, line: 48, baseType: !4168, size: 128, offset: 640)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4180, file: !4181, line: 49, baseType: !4168, size: 128, offset: 768)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4180, file: !4181, line: 50, baseType: !4168, size: 128, offset: 896)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4180, file: !4181, line: 51, baseType: !532, size: 64, offset: 1024)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4180, file: !4181, line: 52, baseType: !532, size: 64, offset: 1088)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4180, file: !4181, line: 53, baseType: !484, size: 32, offset: 1152)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4180, file: !4181, line: 54, baseType: !484, size: 32, offset: 1184)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4180, file: !4181, line: 55, baseType: !532, size: 64, offset: 1216)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1627, file: !83, line: 1990, baseType: !4205, size: 64, offset: 960)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!1857, !1633, !1056, !111}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1627, file: !83, line: 1991, baseType: !4209, size: 64, offset: 1024)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{!98, !1611, !4212, !532, !532}
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !83, line: 55, flags: DIFlagFwdDecl)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1627, file: !83, line: 1993, baseType: !4215, size: 64, offset: 1088)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{!98, !1611, !98}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1627, file: !83, line: 1994, baseType: !4219, size: 64, offset: 1152)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!98, !1611, !1633, !343, !7, !100}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1627, file: !83, line: 1997, baseType: !4223, size: 64, offset: 1216)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DISubroutineType(types: !4225)
!4225 = !{!98, !4057, !1611, !343, !100}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1627, file: !83, line: 1999, baseType: !4227, size: 64, offset: 1280)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DISubroutineType(types: !4229)
!4229 = !{!1621, !4057, !1633, !98}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1627, file: !83, line: 2001, baseType: !4231, size: 64, offset: 1344)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!98, !4057, !1633, !1621, !98}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1627, file: !83, line: 2003, baseType: !4235, size: 64, offset: 1408)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{!98, !4057, !1633, !4238}
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !83, line: 76, flags: DIFlagFwdDecl)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1627, file: !83, line: 2005, baseType: !4241, size: 64, offset: 1472)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{!98, !1633, !4238}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1627, file: !83, line: 2006, baseType: !4245, size: 64, offset: 1536)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{!4248, !1611}
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !83, line: 3192, size: 192, elements: !4250)
!4250 = !{!4251, !4252}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4249, file: !83, line: 3193, baseType: !461, size: 128)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4249, file: !83, line: 3194, baseType: !484, size: 32, offset: 128)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1612, file: !83, line: 655, baseType: !1739, size: 64, offset: 448)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1612, file: !83, line: 656, baseType: !1607, size: 64, offset: 512)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1612, file: !83, line: 659, baseType: !96, size: 64, offset: 576)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1612, file: !83, line: 663, baseType: !115, size: 64, offset: 640)
!4257 = !DIDerivedType(tag: DW_TAG_member, scope: !1612, file: !83, line: 671, baseType: !4258, size: 32, offset: 704)
!4258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1612, file: !83, line: 671, size: 32, elements: !4259)
!4259 = !{!4260, !4261}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4258, file: !83, line: 672, baseType: !2308, size: 32)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4258, file: !83, line: 673, baseType: !7, size: 32)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1612, file: !83, line: 675, baseType: !1744, size: 32, offset: 736)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1612, file: !83, line: 676, baseType: !117, size: 64, offset: 768)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1612, file: !83, line: 677, baseType: !4168, size: 128, offset: 832)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1612, file: !83, line: 678, baseType: !4168, size: 128, offset: 960)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1612, file: !83, line: 679, baseType: !4168, size: 128, offset: 1088)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1612, file: !83, line: 680, baseType: !135, size: 32, offset: 1216)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1612, file: !83, line: 681, baseType: !102, size: 16, offset: 1248)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1612, file: !83, line: 682, baseType: !159, size: 8, offset: 1264)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1612, file: !83, line: 683, baseType: !159, size: 8, offset: 1272)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1612, file: !83, line: 684, baseType: !3787, size: 64, offset: 1280)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1612, file: !83, line: 691, baseType: !115, size: 64, offset: 1344)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1612, file: !83, line: 692, baseType: !987, size: 320, offset: 1408)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1612, file: !83, line: 694, baseType: !115, size: 64, offset: 1728)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1612, file: !83, line: 695, baseType: !115, size: 64, offset: 1792)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1612, file: !83, line: 697, baseType: !436, size: 128, offset: 1856)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1612, file: !83, line: 698, baseType: !173, size: 128, offset: 1984)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1612, file: !83, line: 707, baseType: !173, size: 128, offset: 2112)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1612, file: !83, line: 708, baseType: !173, size: 128, offset: 2240)
!4280 = !DIDerivedType(tag: DW_TAG_member, scope: !1612, file: !83, line: 709, baseType: !4281, size: 128, offset: 2368)
!4281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1612, file: !83, line: 709, size: 128, elements: !4282)
!4282 = !{!4283, !4284}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4281, file: !83, line: 710, baseType: !432, size: 64)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4281, file: !83, line: 711, baseType: !356, size: 128, align: 64)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1612, file: !83, line: 713, baseType: !371, size: 64, offset: 2496)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1612, file: !83, line: 714, baseType: !371, size: 64, offset: 2560)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1612, file: !83, line: 715, baseType: !125, size: 32, offset: 2624)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1612, file: !83, line: 716, baseType: !125, size: 32, offset: 2656)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1612, file: !83, line: 717, baseType: !125, size: 32, offset: 2688)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1612, file: !83, line: 719, baseType: !125, size: 32, offset: 2720)
!4291 = !DIDerivedType(tag: DW_TAG_member, scope: !1612, file: !83, line: 721, baseType: !4292, size: 64, offset: 2752)
!4292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1612, file: !83, line: 721, size: 64, elements: !4293)
!4293 = !{!4294, !4462}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4292, file: !83, line: 722, baseType: !4295, size: 64)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4297)
!4297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !83, line: 1914, size: 2112, elements: !4298)
!4298 = !{!4299, !4300, !4304, !4308, !4312, !4340, !4341, !4347, !4360, !4376, !4380, !4381, !4385, !4386, !4390, !4395, !4396, !4400, !4404, !4410, !4411, !4415, !4416, !4422, !4426, !4430, !4435, !4439, !4443, !4447, !4451, !4452, !4458}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4297, file: !83, line: 1915, baseType: !1774, size: 64)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4297, file: !83, line: 1916, baseType: !4301, size: 64, offset: 64)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!117, !343, !117, !98}
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4297, file: !83, line: 1917, baseType: !4305, size: 64, offset: 128)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!1857, !343, !1056, !111, !116}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4297, file: !83, line: 1918, baseType: !4309, size: 64, offset: 192)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{!1857, !343, !92, !111, !116}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4297, file: !83, line: 1919, baseType: !4313, size: 64, offset: 256)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{!1857, !4316, !4338}
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !83, line: 373, size: 384, elements: !4318)
!4318 = !{!4319, !4320, !4321, !4325, !4326, !4327, !4328}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !4317, file: !83, line: 374, baseType: !343, size: 64)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !4317, file: !83, line: 375, baseType: !117, size: 64, offset: 64)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !4317, file: !83, line: 376, baseType: !4322, size: 64, offset: 128)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{null, !4316, !808}
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4317, file: !83, line: 377, baseType: !96, size: 64, offset: 192)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !4317, file: !83, line: 378, baseType: !98, size: 32, offset: 256)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !4317, file: !83, line: 379, baseType: !169, size: 16, offset: 288)
!4328 = !DIDerivedType(tag: DW_TAG_member, scope: !4317, file: !83, line: 380, baseType: !4329, size: 64, offset: 320)
!4329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4317, file: !83, line: 380, size: 64, elements: !4330)
!4330 = !{!4331, !4334}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !4329, file: !83, line: 386, baseType: !4332, size: 64)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !83, line: 386, flags: DIFlagFwdDecl)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !4329, file: !83, line: 395, baseType: !4335, size: 64)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!1857, !96}
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 64)
!4339 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !83, line: 69, flags: DIFlagFwdDecl)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4297, file: !83, line: 1920, baseType: !4313, size: 64, offset: 320)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4297, file: !83, line: 1921, baseType: !4342, size: 64, offset: 384)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DISubroutineType(types: !4344)
!4344 = !{!98, !4316, !4345, !7}
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !83, line: 53, flags: DIFlagFwdDecl)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4297, file: !83, line: 1923, baseType: !4348, size: 64, offset: 448)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = !DISubroutineType(types: !4350)
!4350 = !{!98, !343, !4351}
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !83, line: 1858, size: 128, elements: !4353)
!4353 = !{!4354, !4359}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4352, file: !83, line: 1859, baseType: !4355, size: 64)
!4355 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !83, line: 1855, baseType: !4356)
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{!1045, !4351, !92, !98, !117, !532, !7}
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4352, file: !83, line: 1860, baseType: !117, size: 64, offset: 64)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4297, file: !83, line: 1924, baseType: !4361, size: 64, offset: 512)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = !DISubroutineType(types: !4363)
!4363 = !{!4364, !343, !4366}
!4364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !4365, line: 59, baseType: !7)
!4365 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !4368, line: 37, size: 128, elements: !4369)
!4368 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!4369 = !{!4370, !4375}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !4367, file: !4368, line: 38, baseType: !4371, size: 64)
!4371 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !4368, line: 31, baseType: !4372)
!4372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4373, size: 64)
!4373 = !DISubroutineType(types: !4374)
!4374 = !{null, !343, !4078, !4366}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !4367, file: !4368, line: 39, baseType: !4364, size: 32, offset: 64)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4297, file: !83, line: 1925, baseType: !4377, size: 64, offset: 576)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DISubroutineType(types: !4379)
!4379 = !{!808, !343, !7, !115}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4297, file: !83, line: 1926, baseType: !4377, size: 64, offset: 640)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4297, file: !83, line: 1927, baseType: !4382, size: 64, offset: 704)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = !DISubroutineType(types: !4384)
!4384 = !{!98, !343, !1476}
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4297, file: !83, line: 1928, baseType: !115, size: 64, offset: 768)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4297, file: !83, line: 1929, baseType: !4387, size: 64, offset: 832)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = !DISubroutineType(types: !4389)
!4389 = !{!98, !1611, !343}
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4297, file: !83, line: 1930, baseType: !4391, size: 64, offset: 896)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DISubroutineType(types: !4393)
!4393 = !{!98, !343, !4394}
!4394 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !83, line: 1061, baseType: !96)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4297, file: !83, line: 1931, baseType: !4387, size: 64, offset: 960)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4297, file: !83, line: 1932, baseType: !4397, size: 64, offset: 1024)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = !DISubroutineType(types: !4399)
!4399 = !{!98, !343, !117, !117, !98}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4297, file: !83, line: 1933, baseType: !4401, size: 64, offset: 1088)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = !DISubroutineType(types: !4403)
!4403 = !{!98, !98, !343, !98}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4297, file: !83, line: 1934, baseType: !4405, size: 64, offset: 1152)
!4405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4406, size: 64)
!4406 = !DISubroutineType(types: !4407)
!4407 = !{!98, !343, !98, !4408}
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !83, line: 1063, flags: DIFlagFwdDecl)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4297, file: !83, line: 1935, baseType: !340, size: 64, offset: 1216)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4297, file: !83, line: 1936, baseType: !4412, size: 64, offset: 1280)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{!98, !98}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4297, file: !83, line: 1937, baseType: !4405, size: 64, offset: 1344)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4297, file: !83, line: 1938, baseType: !4417, size: 64, offset: 1408)
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = !DISubroutineType(types: !4419)
!4419 = !{!1857, !4420, !343, !116, !111, !7}
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !475, line: 59, flags: DIFlagFwdDecl)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4297, file: !83, line: 1939, baseType: !4423, size: 64, offset: 1472)
!4423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4424, size: 64)
!4424 = !DISubroutineType(types: !4425)
!4425 = !{!1857, !343, !116, !4420, !111, !7}
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4297, file: !83, line: 1940, baseType: !4427, size: 64, offset: 1536)
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4428, size: 64)
!4428 = !DISubroutineType(types: !4429)
!4429 = !{null, !343}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4297, file: !83, line: 1941, baseType: !4431, size: 64, offset: 1600)
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = !DISubroutineType(types: !4433)
!4433 = !{!98, !343, !98, !4434, !2981}
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4297, file: !83, line: 1942, baseType: !4436, size: 64, offset: 1664)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{!808, !343, !98, !117, !117}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4297, file: !83, line: 1944, baseType: !4440, size: 64, offset: 1728)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{null, !1419, !343}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4297, file: !83, line: 1948, baseType: !4444, size: 64, offset: 1792)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{!1857, !343, !117, !343, !117, !111, !7}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4297, file: !83, line: 1950, baseType: !4448, size: 64, offset: 1856)
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4449 = !DISubroutineType(types: !4450)
!4450 = !{!117, !343, !117, !343, !117, !117, !7}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4297, file: !83, line: 1953, baseType: !4397, size: 64, offset: 1920)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4297, file: !83, line: 1954, baseType: !4453, size: 64, offset: 1984)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{!98, !4456, !7}
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !83, line: 1911, flags: DIFlagFwdDecl)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4297, file: !83, line: 1955, baseType: !4459, size: 64, offset: 2048)
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4460, size: 64)
!4460 = !DISubroutineType(types: !4461)
!4461 = !{!98, !4456, !4345, !7}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4292, file: !83, line: 723, baseType: !3518, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1612, file: !83, line: 725, baseType: !4464, size: 64, offset: 2816)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !83, line: 725, flags: DIFlagFwdDecl)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1612, file: !83, line: 726, baseType: !1608, size: 1536, align: 64, offset: 2880)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1612, file: !83, line: 727, baseType: !173, size: 128, offset: 4416)
!4468 = !DIDerivedType(tag: DW_TAG_member, scope: !1612, file: !83, line: 728, baseType: !4469, size: 64, offset: 4544)
!4469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1612, file: !83, line: 728, size: 64, elements: !4470)
!4470 = !{!4471, !4472, !4475, !4476}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4469, file: !83, line: 729, baseType: !4420, size: 64)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4469, file: !83, line: 730, baseType: !4473, size: 64)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !83, line: 730, flags: DIFlagFwdDecl)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4469, file: !83, line: 731, baseType: !1056, size: 64)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4469, file: !83, line: 732, baseType: !7, size: 32)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1612, file: !83, line: 735, baseType: !485, size: 32, offset: 4608)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1612, file: !83, line: 738, baseType: !485, size: 32, offset: 4640)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1612, file: !83, line: 739, baseType: !3992, size: 64, offset: 4672)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1612, file: !83, line: 750, baseType: !96, size: 64, offset: 4736)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1608, file: !83, line: 474, baseType: !461, size: 128, offset: 64)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1608, file: !83, line: 475, baseType: !987, size: 320, offset: 192)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1608, file: !83, line: 476, baseType: !466, size: 32, offset: 512)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1608, file: !83, line: 477, baseType: !125, size: 32, offset: 544)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1608, file: !83, line: 482, baseType: !661, size: 128, offset: 576)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1608, file: !83, line: 483, baseType: !115, size: 64, offset: 704)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1608, file: !83, line: 484, baseType: !115, size: 64, offset: 768)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1608, file: !83, line: 485, baseType: !4489, size: 64, offset: 832)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4491)
!4491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !83, line: 404, size: 1280, elements: !4492)
!4492 = !{!4493, !4497, !4567, !4571, !4575, !4581, !4586, !4590, !4594, !4598, !4602, !4606, !4607, !4611, !4615, !4619, !4624, !4628, !4635, !4636}
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4491, file: !83, line: 405, baseType: !4494, size: 64)
!4494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4495, size: 64)
!4495 = !DISubroutineType(types: !4496)
!4496 = !{!98, !1585, !3530}
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4491, file: !83, line: 406, baseType: !4498, size: 64, offset: 64)
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = !DISubroutineType(types: !4500)
!4500 = !{!98, !343, !4501}
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !20, line: 293, size: 1536, elements: !4503)
!4503 = !{!4504, !4534, !4548}
!4504 = !DIDerivedType(tag: DW_TAG_member, scope: !4502, file: !20, line: 295, baseType: !4505, size: 512)
!4505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4502, file: !20, line: 295, size: 512, elements: !4506)
!4506 = !{!4507, !4533}
!4507 = !DIDerivedType(tag: DW_TAG_member, scope: !4505, file: !20, line: 296, baseType: !4508, size: 448)
!4508 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4505, file: !20, line: 296, size: 448, elements: !4509)
!4509 = !{!4510, !4511, !4520, !4521, !4522, !4531, !4532}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4508, file: !20, line: 298, baseType: !115, size: 64)
!4511 = !DIDerivedType(tag: DW_TAG_member, scope: !4508, file: !20, line: 299, baseType: !4512, size: 128, offset: 64)
!4512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4508, file: !20, line: 299, size: 128, elements: !4513)
!4513 = !{!4514, !4515}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4512, file: !20, line: 300, baseType: !173, size: 128)
!4515 = !DIDerivedType(tag: DW_TAG_member, scope: !4512, file: !20, line: 302, baseType: !4516, size: 128)
!4516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4512, file: !20, line: 302, size: 128, elements: !4517)
!4517 = !{!4518, !4519}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4516, file: !20, line: 303, baseType: !96, size: 64)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4516, file: !20, line: 305, baseType: !7, size: 32, offset: 64)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4508, file: !20, line: 310, baseType: !1607, size: 64, offset: 192)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4508, file: !20, line: 311, baseType: !115, size: 64, offset: 256)
!4522 = !DIDerivedType(tag: DW_TAG_member, scope: !4508, file: !20, line: 312, baseType: !4523, size: 64, offset: 320)
!4523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4508, file: !20, line: 312, size: 64, elements: !4524)
!4524 = !{!4525, !4526}
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4523, file: !20, line: 313, baseType: !96, size: 64)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4523, file: !20, line: 314, baseType: !4527, size: 64)
!4527 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !20, line: 257, baseType: !4528)
!4528 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 255, size: 64, elements: !4529)
!4529 = !{!4530}
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4528, file: !20, line: 256, baseType: !115, size: 64)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4508, file: !20, line: 316, baseType: !125, size: 32, offset: 384)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4508, file: !20, line: 317, baseType: !125, size: 32, offset: 416)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4505, file: !20, line: 323, baseType: !1586, size: 512, align: 128)
!4534 = !DIDerivedType(tag: DW_TAG_member, scope: !4502, file: !20, line: 325, baseType: !4535, size: 512, offset: 512)
!4535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4502, file: !20, line: 325, size: 512, elements: !4536)
!4536 = !{!4537, !4547}
!4537 = !DIDerivedType(tag: DW_TAG_member, scope: !4535, file: !20, line: 326, baseType: !4538, size: 320)
!4538 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4535, file: !20, line: 326, size: 320, elements: !4539)
!4539 = !{!4540, !4541, !4542, !4543, !4544, !4545, !4546}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4538, file: !20, line: 327, baseType: !115, size: 64)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4538, file: !20, line: 328, baseType: !115, size: 64, offset: 64)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4538, file: !20, line: 329, baseType: !115, size: 64, offset: 128)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4538, file: !20, line: 331, baseType: !125, size: 32, offset: 192)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4538, file: !20, line: 332, baseType: !125, size: 32, offset: 224)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4538, file: !20, line: 333, baseType: !125, size: 32, offset: 256)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4538, file: !20, line: 335, baseType: !7, size: 32, offset: 288)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4535, file: !20, line: 339, baseType: !1586, size: 512, align: 128)
!4548 = !DIDerivedType(tag: DW_TAG_member, scope: !4502, file: !20, line: 341, baseType: !4549, size: 512, offset: 1024)
!4549 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4502, file: !20, line: 341, size: 512, elements: !4550)
!4550 = !{!4551, !4560, !4566}
!4551 = !DIDerivedType(tag: DW_TAG_member, scope: !4549, file: !20, line: 342, baseType: !4552, size: 384)
!4552 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4549, file: !20, line: 342, size: 384, elements: !4553)
!4553 = !{!4554, !4555, !4556, !4557, !4558, !4559}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4552, file: !20, line: 343, baseType: !115, size: 64)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4552, file: !20, line: 344, baseType: !115, size: 64, offset: 64)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4552, file: !20, line: 346, baseType: !96, size: 64, offset: 128)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4552, file: !20, line: 347, baseType: !96, size: 64, offset: 192)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4552, file: !20, line: 348, baseType: !96, size: 64, offset: 256)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4552, file: !20, line: 349, baseType: !96, size: 64, offset: 320)
!4560 = !DIDerivedType(tag: DW_TAG_member, scope: !4549, file: !20, line: 352, baseType: !4561, size: 256)
!4561 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4549, file: !20, line: 352, size: 256, elements: !4562)
!4562 = !{!4563, !4564, !4565}
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4561, file: !20, line: 353, baseType: !115, size: 64)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4561, file: !20, line: 354, baseType: !115, size: 64, offset: 64)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4561, file: !20, line: 356, baseType: !173, size: 128, offset: 128)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4549, file: !20, line: 359, baseType: !1586, size: 512, align: 128)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4491, file: !83, line: 409, baseType: !4568, size: 64, offset: 128)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = !DISubroutineType(types: !4570)
!4570 = !{!98, !1607, !3530}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4491, file: !83, line: 412, baseType: !4572, size: 64, offset: 192)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = !DISubroutineType(types: !4574)
!4574 = !{!1045, !1607, !4501}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4491, file: !83, line: 414, baseType: !4576, size: 64, offset: 256)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{null, !4579}
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4580, size: 64)
!4580 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !83, line: 310, flags: DIFlagFwdDecl)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4491, file: !83, line: 416, baseType: !4582, size: 64, offset: 320)
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{!98, !343, !1607, !117, !7, !4585, !2981}
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4491, file: !83, line: 419, baseType: !4587, size: 64, offset: 384)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{!98, !343, !1607, !117, !7, !7, !1585, !96}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4491, file: !83, line: 424, baseType: !4591, size: 64, offset: 448)
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = !DISubroutineType(types: !4593)
!4593 = !{!3818, !1607, !3818}
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4491, file: !83, line: 425, baseType: !4595, size: 64, offset: 512)
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = !DISubroutineType(types: !4597)
!4597 = !{null, !4501, !111, !111}
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4491, file: !83, line: 426, baseType: !4599, size: 64, offset: 576)
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = !DISubroutineType(types: !4601)
!4601 = !{!1045, !4501, !466}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4491, file: !83, line: 427, baseType: !4603, size: 64, offset: 640)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{null, !4501}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4491, file: !83, line: 428, baseType: !4313, size: 64, offset: 704)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4491, file: !83, line: 433, baseType: !4608, size: 64, offset: 768)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = !DISubroutineType(types: !4610)
!4610 = !{!98, !1607, !4501, !4501, !43}
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4491, file: !83, line: 435, baseType: !4612, size: 64, offset: 832)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{!98, !4501}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4491, file: !83, line: 436, baseType: !4616, size: 64, offset: 896)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = !DISubroutineType(types: !4618)
!4618 = !{!1045, !4501, !111, !111}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4491, file: !83, line: 438, baseType: !4620, size: 64, offset: 960)
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = !DISubroutineType(types: !4622)
!4622 = !{null, !4501, !4623, !4623}
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4491, file: !83, line: 439, baseType: !4625, size: 64, offset: 1024)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!98, !1607, !1585}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4491, file: !83, line: 442, baseType: !4629, size: 64, offset: 1088)
!4629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4630, size: 64)
!4630 = !DISubroutineType(types: !4631)
!4631 = !{!98, !4632, !343, !4634}
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !83, line: 66, flags: DIFlagFwdDecl)
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4491, file: !83, line: 444, baseType: !4427, size: 64, offset: 1152)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4491, file: !83, line: 445, baseType: !4637, size: 64, offset: 1216)
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4638, size: 64)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!98, !4316, !4338}
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1608, file: !83, line: 486, baseType: !115, size: 64, offset: 896)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1608, file: !83, line: 487, baseType: !987, size: 320, offset: 960)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1608, file: !83, line: 488, baseType: !4026, size: 32, offset: 1280)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1608, file: !83, line: 489, baseType: !135, size: 32, offset: 1312)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1608, file: !83, line: 490, baseType: !173, size: 128, offset: 1344)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1608, file: !83, line: 491, baseType: !96, size: 64, offset: 1472)
!4646 = !DIDerivedType(tag: DW_TAG_member, scope: !1593, file: !20, line: 107, baseType: !4647, size: 64, offset: 192)
!4647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1593, file: !20, line: 107, size: 64, elements: !4648)
!4648 = !{!4649, !4650}
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4647, file: !20, line: 108, baseType: !115, size: 64)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !4647, file: !20, line: 109, baseType: !115, size: 64)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1593, file: !20, line: 117, baseType: !115, size: 64, offset: 256)
!4652 = !DIDerivedType(tag: DW_TAG_member, scope: !1590, file: !20, line: 119, baseType: !4653, size: 320)
!4653 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1590, file: !20, line: 119, size: 320, elements: !4654)
!4654 = !{!4655, !4656, !4659, !4660, !4661}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !4653, file: !20, line: 124, baseType: !115, size: 64)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !4653, file: !20, line: 125, baseType: !4657, size: 64, offset: 64)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !20, line: 125, flags: DIFlagFwdDecl)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !4653, file: !20, line: 126, baseType: !115, size: 64, offset: 128)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !4653, file: !20, line: 127, baseType: !115, size: 64, offset: 192)
!4661 = !DIDerivedType(tag: DW_TAG_member, scope: !4653, file: !20, line: 128, baseType: !4662, size: 64, offset: 256)
!4662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4653, file: !20, line: 128, size: 64, elements: !4663)
!4663 = !{!4664, !4665}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !4662, file: !20, line: 133, baseType: !115, size: 64)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !4662, file: !20, line: 138, baseType: !369, size: 64)
!4666 = !DIDerivedType(tag: DW_TAG_member, scope: !1590, file: !20, line: 141, baseType: !4667, size: 64)
!4667 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1590, file: !20, line: 141, size: 64, elements: !4668)
!4668 = !{!4669}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !4667, file: !20, line: 142, baseType: !115, size: 64)
!4670 = !DIDerivedType(tag: DW_TAG_member, scope: !1590, file: !20, line: 144, baseType: !4671, size: 128)
!4671 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1590, file: !20, line: 144, size: 128, elements: !4672)
!4672 = !{!4673, !4744}
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !4671, file: !20, line: 146, baseType: !4674, size: 64)
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4675, size: 64)
!4675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !36, line: 126, size: 1216, elements: !4676)
!4676 = !{!4677, !4687, !4708, !4709, !4710, !4711, !4712, !4726, !4727, !4728}
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !4675, file: !36, line: 127, baseType: !4678, size: 384)
!4678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !36, line: 21, size: 384, elements: !4679)
!4679 = !{!4680, !4681, !4683, !4684, !4685, !4686}
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !4678, file: !36, line: 22, baseType: !115, size: 64)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !4678, file: !36, line: 23, baseType: !4682, size: 64, offset: 64)
!4682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !4678, file: !36, line: 24, baseType: !4682, size: 64, offset: 128)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4678, file: !36, line: 25, baseType: !115, size: 64, offset: 192)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !4678, file: !36, line: 26, baseType: !115, size: 64, offset: 256)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4678, file: !36, line: 27, baseType: !115, size: 64, offset: 320)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4675, file: !36, line: 128, baseType: !4688, size: 128, offset: 384)
!4688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !4689, line: 105, size: 128, elements: !4690)
!4689 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!4690 = !{!4691, !4692}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !4688, file: !4689, line: 110, baseType: !115, size: 64)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4688, file: !4689, line: 118, baseType: !4693, size: 64, offset: 64)
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !4689, line: 95, size: 448, elements: !4695)
!4695 = !{!4696, !4697, !4703, !4704, !4705, !4706, !4707}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4694, file: !4689, line: 96, baseType: !369, size: 64)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4694, file: !4689, line: 97, baseType: !4698, size: 64, offset: 64)
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !4689, line: 60, baseType: !4700)
!4700 = !DISubroutineType(types: !4701)
!4701 = !{null, !4702}
!4702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !4694, file: !4689, line: 98, baseType: !4698, size: 64, offset: 128)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !4694, file: !4689, line: 99, baseType: !1045, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !4694, file: !4689, line: 100, baseType: !1045, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4694, file: !4689, line: 101, baseType: !356, size: 128, align: 64, offset: 256)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4694, file: !4689, line: 102, baseType: !4702, size: 64, offset: 384)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4675, file: !36, line: 129, baseType: !885, size: 256, offset: 512)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4675, file: !36, line: 130, baseType: !35, size: 32, offset: 768)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4675, file: !36, line: 131, baseType: !7, size: 32, offset: 800)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !4675, file: !36, line: 132, baseType: !115, size: 64, offset: 832)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4675, file: !36, line: 133, baseType: !4713, size: 64, offset: 896)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4715)
!4715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !36, line: 77, size: 192, elements: !4716)
!4716 = !{!4717, !4721, !4722}
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !4715, file: !36, line: 83, baseType: !4718, size: 64)
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4719, size: 64)
!4719 = !DISubroutineType(types: !4720)
!4720 = !{null, !1585}
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !4715, file: !36, line: 89, baseType: !1544, size: 64, offset: 64)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !4715, file: !36, line: 100, baseType: !4723, size: 64, offset: 128)
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4724, size: 64)
!4724 = !DISubroutineType(types: !4725)
!4725 = !{!98, !4674, !115, !115, !98}
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4675, file: !36, line: 134, baseType: !96, size: 64, offset: 960)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !4675, file: !36, line: 135, baseType: !98, size: 32, offset: 1024)
!4728 = !DIDerivedType(tag: DW_TAG_member, scope: !4675, file: !36, line: 136, baseType: !4729, size: 128, offset: 1088)
!4729 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4675, file: !36, line: 136, size: 128, elements: !4730)
!4730 = !{!4731, !4737}
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !4729, file: !36, line: 137, baseType: !4732, size: 128)
!4732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !4733, line: 6, size: 128, elements: !4734)
!4733 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!4734 = !{!4735, !4736}
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4732, file: !4733, line: 7, baseType: !532, size: 64)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4732, file: !4733, line: 8, baseType: !532, size: 64, offset: 64)
!4737 = !DIDerivedType(tag: DW_TAG_member, scope: !4729, file: !36, line: 138, baseType: !4738)
!4738 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4729, file: !36, line: 138, elements: !4739)
!4739 = !{!4740, !4742}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !4738, file: !36, line: 138, baseType: !4741)
!4741 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4738, file: !36, line: 138, elements: !336)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4738, file: !36, line: 138, baseType: !4743)
!4743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4732, elements: !1276)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !4671, file: !20, line: 147, baseType: !96, size: 64, offset: 64)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1590, file: !20, line: 161, baseType: !356, size: 128, align: 64)
!4746 = !DIDerivedType(tag: DW_TAG_member, scope: !1586, file: !20, line: 164, baseType: !4747, size: 32, offset: 384)
!4747 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1586, file: !20, line: 164, size: 32, elements: !4748)
!4748 = !{!4749, !4750}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4747, file: !20, line: 169, baseType: !125, size: 32)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !4747, file: !20, line: 177, baseType: !7, size: 32)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1586, file: !20, line: 181, baseType: !125, size: 32, offset: 416)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1549, file: !1470, line: 535, baseType: !1585, size: 64, offset: 640)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1549, file: !1470, line: 541, baseType: !4754, size: 64, offset: 704)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1549, file: !1470, line: 545, baseType: !4756, size: 64, offset: 768)
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1549, file: !1470, line: 549, baseType: !4758, size: 64, offset: 832)
!4758 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1491, line: 520, baseType: !1585)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1469, file: !1470, line: 581, baseType: !4760, size: 64, offset: 384)
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = !DISubroutineType(types: !4762)
!4762 = !{!1547, !1548, !7}
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1469, file: !1470, line: 582, baseType: !4764, size: 64, offset: 448)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{!1547, !1548, !115, !115}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1469, file: !1470, line: 584, baseType: !4768, size: 64, offset: 512)
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{!115, !1476}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1469, file: !1470, line: 588, baseType: !1544, size: 64, offset: 576)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1469, file: !1470, line: 591, baseType: !1544, size: 64, offset: 640)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1469, file: !1470, line: 597, baseType: !4774, size: 64, offset: 704)
!4774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4775, size: 64)
!4775 = !DISubroutineType(types: !4776)
!4776 = !{!98, !1476, !115, !96, !98, !98}
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1469, file: !1470, line: 603, baseType: !4778, size: 64, offset: 768)
!4778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4779, size: 64)
!4779 = !DISubroutineType(types: !4780)
!4780 = !{!92, !1476}
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1469, file: !1470, line: 613, baseType: !4782, size: 64, offset: 832)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = !DISubroutineType(types: !4784)
!4784 = !{!98, !1476, !1526}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1469, file: !1470, line: 625, baseType: !4786, size: 64, offset: 896)
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4787, size: 64)
!4787 = !DISubroutineType(types: !4788)
!4788 = !{!1526, !1476, !115}
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1469, file: !1470, line: 633, baseType: !4790, size: 64, offset: 960)
!4790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4791, size: 64)
!4791 = !DISubroutineType(types: !4792)
!4792 = !{!1585, !1476, !115}
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1407, file: !1374, line: 277, baseType: !4794, size: 64, offset: 64)
!4794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4795, size: 64)
!4795 = !DISubroutineType(types: !4796)
!4796 = !{null, !1413}
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1407, file: !1374, line: 290, baseType: !1449, size: 64, offset: 128)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1407, file: !1374, line: 292, baseType: !1437, size: 64, offset: 192)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1407, file: !1374, line: 293, baseType: !1445, size: 64, offset: 256)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1407, file: !1374, line: 294, baseType: !1441, size: 64, offset: 320)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1407, file: !1374, line: 296, baseType: !4802, size: 64, offset: 384)
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4803, size: 64)
!4803 = !DISubroutineType(types: !4804)
!4804 = !{!1857, !1413, !1056, !111, !117}
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1407, file: !1374, line: 306, baseType: !111, size: 64, offset: 448)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1407, file: !1374, line: 313, baseType: !1045, size: 8, offset: 512)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1407, file: !1374, line: 314, baseType: !4802, size: 64, offset: 576)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1407, file: !1374, line: 317, baseType: !4809, size: 64, offset: 640)
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{!4364, !1413, !4366}
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1407, file: !1374, line: 320, baseType: !4813, size: 64, offset: 704)
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{!98, !1413, !1476}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1402, file: !1374, line: 176, baseType: !4817, size: 64, offset: 64)
!4817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4818, size: 64)
!4818 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1374, line: 35, flags: DIFlagFwdDecl)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1402, file: !1374, line: 177, baseType: !117, size: 64, offset: 128)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1402, file: !1374, line: 178, baseType: !1372, size: 64, offset: 192)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1373, file: !1374, line: 215, baseType: !96, size: 64, offset: 768)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1373, file: !1374, line: 221, baseType: !532, size: 64, offset: 832)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1373, file: !1374, line: 223, baseType: !102, size: 16, offset: 896)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1373, file: !1374, line: 224, baseType: !100, size: 16, offset: 912)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1373, file: !1374, line: 225, baseType: !4826, size: 64, offset: 960)
!4826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4827, size: 64)
!4827 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1374, line: 36, flags: DIFlagFwdDecl)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1373, file: !1374, line: 227, baseType: !356, size: 128, align: 64, offset: 1024)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !1357, file: !1348, line: 442, baseType: !4830, size: 448, offset: 2048)
!4830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !1348, line: 138, size: 448, elements: !4831)
!4831 = !{!4832, !4833, !4834}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4830, file: !1348, line: 140, baseType: !1372, size: 64)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !4830, file: !1348, line: 141, baseType: !115, size: 64, offset: 64)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !4830, file: !1348, line: 142, baseType: !2198, size: 320, offset: 128)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !1357, file: !1348, line: 443, baseType: !4830, size: 448, offset: 2496)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !1357, file: !1348, line: 446, baseType: !4837, offset: 2944)
!4837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4830, elements: !4838)
!4838 = !{!4839}
!4839 = !DISubrange(count: 0)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !1357, file: !1348, line: 455, baseType: !169, size: 16, offset: 2944)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !1357, file: !1348, line: 456, baseType: !169, size: 16, offset: 2960)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !1357, file: !1348, line: 457, baseType: !169, size: 16, offset: 2976)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !1357, file: !1348, line: 458, baseType: !169, size: 16, offset: 2992)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1357, file: !1348, line: 461, baseType: !1351, size: 896, offset: 3008)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1357, file: !1348, line: 463, baseType: !4846, size: 64, offset: 3904)
!4846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4847, size: 64)
!4847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !1348, line: 537, size: 41664, elements: !4848)
!4848 = !{!4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859}
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !4847, file: !1348, line: 538, baseType: !1394, size: 64)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !4847, file: !1348, line: 541, baseType: !7, size: 32, offset: 64)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !4847, file: !1348, line: 544, baseType: !98, size: 32, offset: 96)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !4847, file: !1348, line: 547, baseType: !173, size: 128, offset: 128)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4847, file: !1348, line: 548, baseType: !356, size: 128, align: 64, offset: 256)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !4847, file: !1348, line: 555, baseType: !1357, size: 7872, offset: 384)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !4847, file: !1348, line: 558, baseType: !1356, size: 64, offset: 8256)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !4847, file: !1348, line: 561, baseType: !125, size: 32, offset: 8320)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4847, file: !1348, line: 564, baseType: !7, size: 32, offset: 8352)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !4847, file: !1348, line: 567, baseType: !2421, size: 32768, offset: 8384)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4847, file: !1348, line: 570, baseType: !3914, size: 512, offset: 41152)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !1357, file: !1348, line: 469, baseType: !173, size: 128, offset: 3968)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !1357, file: !1348, line: 478, baseType: !4862, size: 1792, offset: 4096)
!4862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 1792, elements: !4863)
!4863 = !{!4864}
!4864 = !DISubrange(count: 14)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !1357, file: !1348, line: 487, baseType: !1356, size: 64, offset: 5888)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !1357, file: !1348, line: 488, baseType: !1356, size: 64, offset: 5952)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !1357, file: !1348, line: 491, baseType: !4868, size: 64, offset: 6016)
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4869, size: 64)
!4869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !1348, line: 327, size: 896, elements: !4870)
!4870 = !{!4871, !4874, !4884, !4885, !4886, !4887, !4888}
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !4869, file: !1348, line: 332, baseType: !4872)
!4872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !4873, line: 64, elements: !336)
!4873 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4869, file: !1348, line: 333, baseType: !4875, size: 192)
!4875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !1348, line: 299, size: 192, elements: !4876)
!4876 = !{!4877}
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !4875, file: !1348, line: 300, baseType: !4878, size: 192)
!4878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !4879, line: 17, size: 192, elements: !4880)
!4879 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!4880 = !{!4881, !4882, !4883}
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4878, file: !4879, line: 18, baseType: !532, size: 64)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4878, file: !4879, line: 19, baseType: !532, size: 64, offset: 64)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4878, file: !4879, line: 20, baseType: !534, size: 64, offset: 128)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4869, file: !1348, line: 339, baseType: !4875, size: 192, offset: 192)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !4869, file: !1348, line: 347, baseType: !4875, size: 192, offset: 384)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !4869, file: !1348, line: 353, baseType: !4875, size: 192, offset: 576)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !4869, file: !1348, line: 366, baseType: !1356, size: 64, offset: 768)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !4869, file: !1348, line: 367, baseType: !1356, size: 64, offset: 832)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !1357, file: !1348, line: 492, baseType: !173, size: 128, offset: 6080)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !1357, file: !1348, line: 495, baseType: !4875, size: 192, offset: 6208)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !1357, file: !1348, line: 496, baseType: !4875, size: 192, offset: 6400)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1357, file: !1348, line: 497, baseType: !903, size: 192, offset: 6592)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !1357, file: !1348, line: 503, baseType: !173, size: 128, offset: 6784)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !1357, file: !1348, line: 504, baseType: !378, size: 256, offset: 6912)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !1357, file: !1348, line: 507, baseType: !130, size: 192, offset: 7168)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !1357, file: !1348, line: 510, baseType: !1178, size: 256, offset: 7360)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !1357, file: !1348, line: 513, baseType: !4898, size: 64, offset: 7616)
!4898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4899, size: 64)
!4899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !4900, line: 214, elements: !336)
!4900 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !1357, file: !1348, line: 516, baseType: !4902, offset: 7680)
!4902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !4903, line: 76, elements: !336)
!4903 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !1357, file: !1348, line: 519, baseType: !125, size: 32, offset: 7680)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !1357, file: !1348, line: 522, baseType: !4906, size: 128, offset: 7712)
!4906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !1348, line: 370, size: 128, elements: !4907)
!4907 = !{!4908, !4909, !4910, !4911}
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4906, file: !1348, line: 372, baseType: !1045, size: 8)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !4906, file: !1348, line: 375, baseType: !98, size: 32, offset: 32)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !4906, file: !1348, line: 380, baseType: !98, size: 32, offset: 64)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !4906, file: !1348, line: 386, baseType: !98, size: 32, offset: 96)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !1357, file: !1348, line: 529, baseType: !4913, offset: 7872)
!4913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1356, elements: !1276)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1353, file: !1348, line: 157, baseType: !4915, size: 64, offset: 64)
!4915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4916, size: 64)
!4916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !1348, line: 669, size: 1984, elements: !4917)
!4917 = !{!4918, !4922, !4926, !4930, !4931, !4932, !4933, !4937, !4941, !4942, !4948, !4952, !4953, !4954, !4958, !4962, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !5015, !5016}
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !4916, file: !1348, line: 670, baseType: !4919, size: 64)
!4919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4920, size: 64)
!4920 = !DISubroutineType(types: !4921)
!4921 = !{!1352, !1352}
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !4916, file: !1348, line: 671, baseType: !4923, size: 64, offset: 64)
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4924, size: 64)
!4924 = !DISubroutineType(types: !4925)
!4925 = !{!98, !1352}
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !4916, file: !1348, line: 672, baseType: !4927, size: 64, offset: 128)
!4927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4928, size: 64)
!4928 = !DISubroutineType(types: !4929)
!4929 = !{null, !1352}
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !4916, file: !1348, line: 673, baseType: !4927, size: 64, offset: 192)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !4916, file: !1348, line: 674, baseType: !4927, size: 64, offset: 256)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !4916, file: !1348, line: 675, baseType: !4927, size: 64, offset: 320)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !4916, file: !1348, line: 676, baseType: !4934, size: 64, offset: 384)
!4934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4935, size: 64)
!4935 = !DISubroutineType(types: !4936)
!4936 = !{null, !1352, !98}
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !4916, file: !1348, line: 677, baseType: !4938, size: 64, offset: 448)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{!98, !1419, !1352}
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !4916, file: !1348, line: 679, baseType: !4938, size: 64, offset: 512)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !4916, file: !1348, line: 682, baseType: !4943, size: 64, offset: 576)
!4943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4944, size: 64)
!4944 = !DISubroutineType(types: !4945)
!4945 = !{!98, !4946}
!4946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4947, size: 64)
!4947 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !1348, line: 30, flags: DIFlagFwdDecl)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !4916, file: !1348, line: 683, baseType: !4949, size: 64, offset: 640)
!4949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4950, size: 64)
!4950 = !DISubroutineType(types: !4951)
!4951 = !{null, !4946}
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4916, file: !1348, line: 684, baseType: !4949, size: 64, offset: 704)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !4916, file: !1348, line: 685, baseType: !2372, size: 64, offset: 768)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !4916, file: !1348, line: 686, baseType: !4955, size: 64, offset: 832)
!4955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4956, size: 64)
!4956 = !DISubroutineType(types: !4957)
!4957 = !{!98, !473, !1346}
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !4916, file: !1348, line: 688, baseType: !4959, size: 64, offset: 896)
!4959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4960, size: 64)
!4960 = !DISubroutineType(types: !4961)
!4961 = !{null, !473, !1346}
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !4916, file: !1348, line: 689, baseType: !4963, size: 64, offset: 960)
!4963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4964, size: 64)
!4964 = !DISubroutineType(types: !4965)
!4965 = !{null, !473}
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4916, file: !1348, line: 690, baseType: !4963, size: 64, offset: 1024)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4916, file: !1348, line: 691, baseType: !4963, size: 64, offset: 1088)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4916, file: !1348, line: 692, baseType: !4927, size: 64, offset: 1152)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4916, file: !1348, line: 694, baseType: !1045, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !4916, file: !1348, line: 707, baseType: !1045, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !4916, file: !1348, line: 719, baseType: !1045, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4916, file: !1348, line: 722, baseType: !98, size: 32, offset: 1248)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4916, file: !1348, line: 723, baseType: !92, size: 64, offset: 1280)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !4916, file: !1348, line: 726, baseType: !92, size: 64, offset: 1344)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4916, file: !1348, line: 729, baseType: !4846, size: 64, offset: 1408)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !4916, file: !1348, line: 732, baseType: !457, size: 192, offset: 1472)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !4916, file: !1348, line: 738, baseType: !173, size: 128, offset: 1664)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !4916, file: !1348, line: 744, baseType: !4979, size: 64, offset: 1792)
!4979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4980, size: 64)
!4980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !1348, line: 580, size: 1728, elements: !4981)
!4981 = !{!4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4991, !4992, !4993, !4997, !5001, !5002, !5003, !5004, !5005, !5009, !5013, !5014}
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4980, file: !1348, line: 586, baseType: !3914, size: 512)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4980, file: !1348, line: 587, baseType: !115, size: 64, offset: 512)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4980, file: !1348, line: 593, baseType: !111, size: 64, offset: 576)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4980, file: !1348, line: 596, baseType: !7, size: 32, offset: 640)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4980, file: !1348, line: 604, baseType: !7, size: 32, offset: 672)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4980, file: !1348, line: 610, baseType: !4915, size: 64, offset: 704)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4980, file: !1348, line: 611, baseType: !173, size: 128, offset: 768)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4980, file: !1348, line: 612, baseType: !4990, size: 64, offset: 896)
!4990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4980, file: !1348, line: 614, baseType: !1410, size: 64, offset: 960)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4980, file: !1348, line: 615, baseType: !4794, size: 64, offset: 1024)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4980, file: !1348, line: 621, baseType: !4994, size: 64, offset: 1088)
!4994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4995, size: 64)
!4995 = !DISubroutineType(types: !4996)
!4996 = !{!532, !1352, !4979}
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4980, file: !1348, line: 625, baseType: !4998, size: 64, offset: 1152)
!4998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4999, size: 64)
!4999 = !DISubroutineType(types: !5000)
!5000 = !{!375, !1352, !4979}
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4980, file: !1348, line: 628, baseType: !1449, size: 64, offset: 1216)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4980, file: !1348, line: 631, baseType: !1437, size: 64, offset: 1280)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4980, file: !1348, line: 632, baseType: !1445, size: 64, offset: 1344)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4980, file: !1348, line: 633, baseType: !1441, size: 64, offset: 1408)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4980, file: !1348, line: 640, baseType: !5006, size: 64, offset: 1472)
!5006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5007, size: 64)
!5007 = !DISubroutineType(types: !5008)
!5008 = !{!98, !1352, !4979, !532}
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4980, file: !1348, line: 645, baseType: !5010, size: 64, offset: 1536)
!5010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5011, size: 64)
!5011 = !DISubroutineType(types: !5012)
!5012 = !{!98, !1352, !4979, !375}
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4980, file: !1348, line: 654, baseType: !4802, size: 64, offset: 1600)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4980, file: !1348, line: 657, baseType: !4809, size: 64, offset: 1664)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !4916, file: !1348, line: 745, baseType: !4979, size: 64, offset: 1856)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !4916, file: !1348, line: 754, baseType: !7, size: 32, offset: 1920)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1353, file: !1348, line: 160, baseType: !4688, size: 128, offset: 128)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1353, file: !1348, line: 163, baseType: !173, size: 128, offset: 256)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1353, file: !1348, line: 164, baseType: !173, size: 128, offset: 384)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !1353, file: !1348, line: 167, baseType: !173, size: 128, offset: 512)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1353, file: !1348, line: 173, baseType: !98, size: 32, offset: 640)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1353, file: !1348, line: 175, baseType: !7, size: 32, offset: 672)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !1353, file: !1348, line: 183, baseType: !532, size: 64, offset: 704)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !1353, file: !1348, line: 189, baseType: !125, size: 32, offset: 768)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1353, file: !1348, line: 192, baseType: !1178, size: 256, offset: 832)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !1353, file: !1348, line: 193, baseType: !5027, size: 448, offset: 1088)
!5027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1179, line: 120, size: 448, elements: !5028)
!5028 = !{!5029, !5030, !5031}
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5027, file: !1179, line: 121, baseType: !1178, size: 256)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5027, file: !1179, line: 122, baseType: !356, size: 128, align: 64, offset: 256)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !5027, file: !1179, line: 125, baseType: !2260, size: 64, offset: 384)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1353, file: !1348, line: 199, baseType: !1352, size: 64, offset: 1536)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1347, file: !1348, line: 218, baseType: !423, size: 32, offset: 896)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !1347, file: !1348, line: 226, baseType: !1346, size: 64, offset: 960)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !1347, file: !1348, line: 229, baseType: !1356, size: 64, offset: 1024)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1347, file: !1348, line: 232, baseType: !98, size: 32, offset: 1088)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1347, file: !1348, line: 241, baseType: !173, size: 128, offset: 1152)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !1347, file: !1348, line: 242, baseType: !173, size: 128, offset: 1280)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !1347, file: !1348, line: 243, baseType: !173, size: 128, offset: 1408)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !1347, file: !1348, line: 246, baseType: !173, size: 128, offset: 1536)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !1347, file: !1348, line: 255, baseType: !4862, size: 1792, offset: 1664)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !1347, file: !1348, line: 258, baseType: !173, size: 128, offset: 3456)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !1347, file: !1348, line: 259, baseType: !173, size: 128, offset: 3584)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !1347, file: !1348, line: 265, baseType: !436, size: 128, offset: 3712)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !1347, file: !1348, line: 271, baseType: !173, size: 128, offset: 3840)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !1347, file: !1348, line: 277, baseType: !173, size: 128, offset: 3968)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !1347, file: !1348, line: 278, baseType: !173, size: 128, offset: 4096)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !1347, file: !1348, line: 279, baseType: !173, size: 128, offset: 4224)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !1347, file: !1348, line: 288, baseType: !1356, size: 64, offset: 4352)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !1347, file: !1348, line: 289, baseType: !1356, size: 64, offset: 4416)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !1347, file: !1348, line: 290, baseType: !1346, size: 64, offset: 4480)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !1347, file: !1348, line: 293, baseType: !1045, size: 8, offset: 4544)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1347, file: !1348, line: 296, baseType: !356, size: 128, align: 64, offset: 4608)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !474, file: !475, line: 1110, baseType: !5055, size: 64, offset: 15360)
!5055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5056, size: 64)
!5056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !5057, line: 93, size: 8768, elements: !5058)
!5057 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!5058 = !{!5059, !5060, !5061, !5062, !5063, !5064, !5065, !5066, !5077, !5078, !5079, !5080, !5081, !5082, !5083, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5107, !5116, !5117, !5119, !5120, !5121, !5124, !5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5140, !5141, !5142, !5143, !5144, !5145, !5146, !5147, !5148, !5149, !5150, !5151, !5162, !5163, !5170, !5180, !5242, !5243, !5246, !5247, !5248, !5249, !5250, !5251}
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !5056, file: !5057, line: 94, baseType: !423, size: 32)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !5056, file: !5057, line: 95, baseType: !125, size: 32, offset: 32)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5056, file: !5057, line: 96, baseType: !98, size: 32, offset: 64)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !5056, file: !5057, line: 97, baseType: !98, size: 32, offset: 96)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !5056, file: !5057, line: 98, baseType: !173, size: 128, offset: 128)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !5056, file: !5057, line: 100, baseType: !130, size: 192, offset: 256)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !5056, file: !5057, line: 103, baseType: !473, size: 64, offset: 448)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !5056, file: !5057, line: 106, baseType: !5067, size: 192, offset: 512)
!5067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !5068, line: 32, size: 192, elements: !5069)
!5068 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!5069 = !{!5070, !5071}
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5067, file: !5068, line: 33, baseType: !173, size: 128)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5067, file: !5068, line: 34, baseType: !5072, size: 64, offset: 128)
!5072 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !5073, line: 25, baseType: !5074)
!5073 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!5074 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5073, line: 23, size: 64, elements: !5075)
!5075 = !{!5076}
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !5074, file: !5073, line: 24, baseType: !729, size: 64)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !5056, file: !5057, line: 109, baseType: !432, size: 64, offset: 704)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !5056, file: !5057, line: 112, baseType: !98, size: 32, offset: 768)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !5056, file: !5057, line: 114, baseType: !98, size: 32, offset: 800)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !5056, file: !5057, line: 115, baseType: !473, size: 64, offset: 832)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !5056, file: !5057, line: 118, baseType: !98, size: 32, offset: 896)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5056, file: !5057, line: 119, baseType: !7, size: 32, offset: 928)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !5056, file: !5057, line: 121, baseType: !5084, size: 64, offset: 960)
!5084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5085, size: 64)
!5085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !5057, line: 80, size: 448, elements: !5086)
!5086 = !{!5087, !5088, !5094}
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5085, file: !5057, line: 81, baseType: !125, size: 32)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !5085, file: !5057, line: 82, baseType: !5089, size: 128, offset: 64)
!5089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !5057, line: 75, size: 128, elements: !5090)
!5090 = !{!5091, !5092}
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5089, file: !5057, line: 76, baseType: !473, size: 64)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5089, file: !5057, line: 77, baseType: !5093, size: 64, offset: 64)
!5093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5089, size: 64)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5085, file: !5057, line: 83, baseType: !885, size: 256, offset: 192)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !5056, file: !5057, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !5056, file: !5057, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !5056, file: !5057, line: 138, baseType: !7, size: 32, offset: 1056)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !5056, file: !5057, line: 139, baseType: !173, size: 128, offset: 1088)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !5056, file: !5057, line: 142, baseType: !597, size: 512, offset: 1216)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !5056, file: !5057, line: 143, baseType: !605, size: 64, offset: 1728)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !5056, file: !5057, line: 150, baseType: !5102, size: 256, offset: 1792)
!5102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5103, size: 256, elements: !2089)
!5103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !5057, line: 38, size: 128, elements: !5104)
!5104 = !{!5105, !5106}
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5103, file: !5057, line: 39, baseType: !532, size: 64)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !5103, file: !5057, line: 40, baseType: !532, size: 64, offset: 64)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !5056, file: !5057, line: 156, baseType: !5108, size: 192, offset: 2048)
!5108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !5057, line: 66, size: 192, elements: !5109)
!5109 = !{!5110}
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !5108, file: !5057, line: 67, baseType: !5111, size: 192)
!5111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !5057, line: 47, size: 192, elements: !5112)
!5112 = !{!5113, !5114, !5115}
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5111, file: !5057, line: 48, baseType: !371, size: 64)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5111, file: !5057, line: 49, baseType: !371, size: 64, offset: 64)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !5111, file: !5057, line: 50, baseType: !371, size: 64, offset: 128)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !5056, file: !5057, line: 160, baseType: !915, size: 640, offset: 2240)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !5056, file: !5057, line: 163, baseType: !5118, size: 256, offset: 2880)
!5118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 256, elements: !441)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !5056, file: !5057, line: 169, baseType: !419, size: 64, offset: 3136)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !5056, file: !5057, line: 172, baseType: !98, size: 32, offset: 3200)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !5056, file: !5057, line: 174, baseType: !5122, size: 64, offset: 3264)
!5122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5123, size: 64)
!5123 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !5057, line: 174, flags: DIFlagFwdDecl)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !5056, file: !5057, line: 185, baseType: !5125, size: 64, offset: 3328)
!5125 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !648, line: 860, baseType: !5126)
!5126 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !648, line: 853, size: 64, elements: !5127)
!5127 = !{!5128, !5129}
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !5126, file: !648, line: 858, baseType: !1639, size: 32)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5126, file: !648, line: 859, baseType: !135, size: 32, offset: 32)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5056, file: !5057, line: 186, baseType: !532, size: 64, offset: 3392)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5056, file: !5057, line: 186, baseType: !532, size: 64, offset: 3456)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !5056, file: !5057, line: 186, baseType: !532, size: 64, offset: 3520)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !5056, file: !5057, line: 186, baseType: !532, size: 64, offset: 3584)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !5056, file: !5057, line: 187, baseType: !532, size: 64, offset: 3648)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !5056, file: !5057, line: 188, baseType: !532, size: 64, offset: 3712)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !5056, file: !5057, line: 189, baseType: !903, size: 192, offset: 3776)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5056, file: !5057, line: 190, baseType: !115, size: 64, offset: 3968)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5056, file: !5057, line: 190, baseType: !115, size: 64, offset: 4032)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !5056, file: !5057, line: 190, baseType: !115, size: 64, offset: 4096)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !5056, file: !5057, line: 190, baseType: !115, size: 64, offset: 4160)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !5056, file: !5057, line: 191, baseType: !115, size: 64, offset: 4224)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !5056, file: !5057, line: 191, baseType: !115, size: 64, offset: 4288)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !5056, file: !5057, line: 191, baseType: !115, size: 64, offset: 4352)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !5056, file: !5057, line: 191, baseType: !115, size: 64, offset: 4416)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !5056, file: !5057, line: 192, baseType: !115, size: 64, offset: 4480)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !5056, file: !5057, line: 192, baseType: !115, size: 64, offset: 4544)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !5056, file: !5057, line: 192, baseType: !115, size: 64, offset: 4608)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !5056, file: !5057, line: 192, baseType: !115, size: 64, offset: 4672)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !5056, file: !5057, line: 193, baseType: !115, size: 64, offset: 4736)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !5056, file: !5057, line: 193, baseType: !115, size: 64, offset: 4800)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !5056, file: !5057, line: 194, baseType: !5152, size: 448, offset: 4864)
!5152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !5153, line: 12, size: 448, elements: !5154)
!5153 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!5154 = !{!5155, !5156, !5157, !5158, !5159, !5160, !5161}
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !5152, file: !5153, line: 15, baseType: !532, size: 64)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !5152, file: !5153, line: 17, baseType: !532, size: 64, offset: 64)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !5152, file: !5153, line: 19, baseType: !532, size: 64, offset: 128)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !5152, file: !5153, line: 21, baseType: !532, size: 64, offset: 192)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5152, file: !5153, line: 29, baseType: !532, size: 64, offset: 256)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5152, file: !5153, line: 35, baseType: !532, size: 64, offset: 320)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5152, file: !5153, line: 44, baseType: !532, size: 64, offset: 384)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !5056, file: !5057, line: 202, baseType: !534, size: 64, offset: 5312)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !5056, file: !5057, line: 213, baseType: !5164, size: 2048, offset: 5376)
!5164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5165, size: 2048, elements: !1288)
!5165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !5166, line: 43, size: 128, elements: !5167)
!5166 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!5167 = !{!5168, !5169}
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !5165, file: !5166, line: 44, baseType: !114, size: 64)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !5165, file: !5166, line: 45, baseType: !114, size: 64, offset: 64)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !5056, file: !5057, line: 216, baseType: !5171, size: 448, offset: 7424)
!5171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !5057, line: 30, size: 448, elements: !5172)
!5172 = !{!5173, !5174, !5175, !5176, !5177, !5178, !5179}
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5171, file: !5057, line: 31, baseType: !98, size: 32)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5171, file: !5057, line: 32, baseType: !808, size: 64, offset: 64)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !5171, file: !5057, line: 33, baseType: !115, size: 64, offset: 128)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5171, file: !5057, line: 34, baseType: !532, size: 64, offset: 192)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5171, file: !5057, line: 34, baseType: !532, size: 64, offset: 256)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5171, file: !5057, line: 35, baseType: !115, size: 64, offset: 320)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5171, file: !5057, line: 35, baseType: !115, size: 64, offset: 384)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !5056, file: !5057, line: 219, baseType: !5181, size: 64, offset: 7872)
!5181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5182, size: 64)
!5182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !5183, line: 41, size: 3456, elements: !5184)
!5183 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!5184 = !{!5185, !5186, !5187, !5188, !5189, !5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197, !5198, !5199, !5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208, !5209, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241}
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5182, file: !5183, line: 47, baseType: !170, size: 16)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5182, file: !5183, line: 48, baseType: !485, size: 32, offset: 32)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5182, file: !5183, line: 54, baseType: !161, size: 8, offset: 64)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !5182, file: !5183, line: 55, baseType: !161, size: 8, offset: 72)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !5182, file: !5183, line: 73, baseType: !533, size: 64, align: 64, offset: 128)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !5182, file: !5183, line: 74, baseType: !533, size: 64, offset: 192)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !5182, file: !5183, line: 81, baseType: !533, size: 64, offset: 256)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !5182, file: !5183, line: 82, baseType: !533, size: 64, offset: 320)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !5182, file: !5183, line: 85, baseType: !533, size: 64, offset: 384)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !5182, file: !5183, line: 86, baseType: !533, size: 64, offset: 448)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !5182, file: !5183, line: 94, baseType: !533, size: 64, offset: 512)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !5182, file: !5183, line: 102, baseType: !533, size: 64, offset: 576)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !5182, file: !5183, line: 107, baseType: !3995, size: 256, offset: 640)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !5182, file: !5183, line: 108, baseType: !161, size: 8, align: 64, offset: 896)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !5182, file: !5183, line: 110, baseType: !5200, size: 24, offset: 904)
!5200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 24, elements: !415)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !5182, file: !5183, line: 111, baseType: !485, size: 32, align: 64, offset: 960)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !5182, file: !5183, line: 113, baseType: !485, size: 32, offset: 992)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !5182, file: !5183, line: 114, baseType: !485, size: 32, offset: 1024)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !5182, file: !5183, line: 115, baseType: !485, size: 32, offset: 1056)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !5182, file: !5183, line: 117, baseType: !485, size: 32, offset: 1088)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !5182, file: !5183, line: 118, baseType: !533, size: 64, align: 64, offset: 1152)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5182, file: !5183, line: 120, baseType: !533, size: 64, offset: 1216)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5182, file: !5183, line: 121, baseType: !533, size: 64, offset: 1280)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5182, file: !5183, line: 122, baseType: !533, size: 64, offset: 1344)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5182, file: !5183, line: 123, baseType: !533, size: 64, offset: 1408)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !5182, file: !5183, line: 133, baseType: !533, size: 64, offset: 1472)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !5182, file: !5183, line: 137, baseType: !533, size: 64, offset: 1536)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !5182, file: !5183, line: 142, baseType: !533, size: 64, offset: 1600)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !5182, file: !5183, line: 143, baseType: !533, size: 64, offset: 1664)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !5182, file: !5183, line: 146, baseType: !533, size: 64, offset: 1728)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !5182, file: !5183, line: 147, baseType: !533, size: 64, offset: 1792)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !5182, file: !5183, line: 148, baseType: !533, size: 64, offset: 1856)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !5182, file: !5183, line: 149, baseType: !533, size: 64, offset: 1920)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5182, file: !5183, line: 154, baseType: !533, size: 64, offset: 1984)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5182, file: !5183, line: 155, baseType: !533, size: 64, offset: 2048)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5182, file: !5183, line: 156, baseType: !533, size: 64, offset: 2112)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5182, file: !5183, line: 158, baseType: !533, size: 64, offset: 2176)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5182, file: !5183, line: 159, baseType: !533, size: 64, offset: 2240)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !5182, file: !5183, line: 162, baseType: !533, size: 64, offset: 2304)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !5182, file: !5183, line: 163, baseType: !533, size: 64, offset: 2368)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !5182, file: !5183, line: 164, baseType: !533, size: 64, offset: 2432)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !5182, file: !5183, line: 167, baseType: !533, size: 64, offset: 2496)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !5182, file: !5183, line: 168, baseType: !533, size: 64, offset: 2560)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !5182, file: !5183, line: 171, baseType: !533, size: 64, offset: 2624)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !5182, file: !5183, line: 172, baseType: !533, size: 64, offset: 2688)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !5182, file: !5183, line: 175, baseType: !533, size: 64, offset: 2752)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !5182, file: !5183, line: 178, baseType: !533, size: 64, offset: 2816)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !5182, file: !5183, line: 179, baseType: !533, size: 64, offset: 2880)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !5182, file: !5183, line: 182, baseType: !485, size: 32, offset: 2944)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !5182, file: !5183, line: 186, baseType: !533, size: 64, align: 64, offset: 3008)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !5182, file: !5183, line: 194, baseType: !533, size: 64, offset: 3072)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !5182, file: !5183, line: 195, baseType: !533, size: 64, offset: 3136)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !5182, file: !5183, line: 199, baseType: !533, size: 64, offset: 3200)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !5182, file: !5183, line: 200, baseType: !533, size: 64, offset: 3264)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5182, file: !5183, line: 203, baseType: !533, size: 64, offset: 3328)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !5182, file: !5183, line: 204, baseType: !533, size: 64, offset: 3392)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !5056, file: !5057, line: 222, baseType: !7, size: 32, offset: 7936)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !5056, file: !5057, line: 223, baseType: !5244, size: 64, offset: 8000)
!5244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5245, size: 64)
!5245 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !5057, line: 223, flags: DIFlagFwdDecl)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !5056, file: !5057, line: 230, baseType: !1045, size: 8, offset: 8064)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !5056, file: !5057, line: 231, baseType: !860, size: 16, offset: 8080)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !5056, file: !5057, line: 232, baseType: !860, size: 16, offset: 8096)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !5056, file: !5057, line: 234, baseType: !315, size: 64, offset: 8128)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !5056, file: !5057, line: 237, baseType: !378, size: 256, offset: 8192)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !5056, file: !5057, line: 243, baseType: !987, size: 320, offset: 8448)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !474, file: !475, line: 1111, baseType: !5253, size: 64, offset: 15424)
!5253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5254, size: 64)
!5254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !5057, line: 20, size: 16640, elements: !5255)
!5255 = !{!5256, !5257, !5258, !5259}
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !5254, file: !5057, line: 21, baseType: !135, size: 32)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5254, file: !5057, line: 22, baseType: !423, size: 32, offset: 32)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !5254, file: !5057, line: 23, baseType: !130, size: 192, offset: 64)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5254, file: !5057, line: 24, baseType: !5260, size: 16384, offset: 256)
!5260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5261, size: 16384, elements: !1830)
!5261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !5068, line: 51, size: 256, elements: !5262)
!5262 = !{!5263}
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !5261, file: !5068, line: 52, baseType: !5264, size: 256)
!5264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !5068, line: 37, size: 256, elements: !5265)
!5265 = !{!5266, !5273, !5274, !5278}
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !5264, file: !5068, line: 39, baseType: !5267, size: 64)
!5267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !5268, line: 83, baseType: !5269)
!5268 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!5269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5270, size: 64)
!5270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !5268, line: 82, baseType: !5271)
!5271 = !DISubroutineType(types: !5272)
!5272 = !{null, !98}
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !5264, file: !5068, line: 40, baseType: !115, size: 64, offset: 64)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !5264, file: !5068, line: 46, baseType: !5275, size: 64, offset: 128)
!5275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !5268, line: 86, baseType: !5276)
!5276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5277, size: 64)
!5277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !5268, line: 85, baseType: !2373)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !5264, file: !5068, line: 48, baseType: !5072, size: 64, offset: 192)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !474, file: !475, line: 1112, baseType: !5072, size: 64, offset: 15488)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !474, file: !475, line: 1113, baseType: !5072, size: 64, offset: 15552)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !474, file: !475, line: 1115, baseType: !5072, size: 64, offset: 15616)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !474, file: !475, line: 1116, baseType: !5067, size: 192, offset: 15680)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !474, file: !475, line: 1117, baseType: !115, size: 64, offset: 15872)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !474, file: !475, line: 1118, baseType: !111, size: 64, offset: 15936)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !474, file: !475, line: 1119, baseType: !7, size: 32, offset: 16000)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !474, file: !475, line: 1121, baseType: !359, size: 64, offset: 16064)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !474, file: !475, line: 1125, baseType: !5288, size: 64, offset: 16128)
!5288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5289, size: 64)
!5289 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !475, line: 43, flags: DIFlagFwdDecl)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !474, file: !475, line: 1127, baseType: !940, size: 32, offset: 16192)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !474, file: !475, line: 1128, baseType: !7, size: 32, offset: 16224)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !474, file: !475, line: 1130, baseType: !5293, size: 128, offset: 16256)
!5293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !5294, line: 37, size: 128, elements: !5295)
!5294 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!5295 = !{!5296, !5297, !5298}
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5293, file: !5294, line: 38, baseType: !98, size: 32)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !5293, file: !5294, line: 39, baseType: !125, size: 32, offset: 32)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5293, file: !5294, line: 40, baseType: !5299, size: 64, offset: 64)
!5299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5300, size: 64)
!5300 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !5294, line: 24, flags: DIFlagFwdDecl)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !474, file: !475, line: 1131, baseType: !5302, size: 256, offset: 16384)
!5302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !5303, line: 12, size: 256, elements: !5304)
!5303 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!5304 = !{!5305, !5306, !5307, !5308}
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !5302, file: !5303, line: 13, baseType: !1056, size: 64)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5302, file: !5303, line: 14, baseType: !115, size: 64, offset: 64)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5302, file: !5303, line: 15, baseType: !115, size: 64, offset: 128)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !5302, file: !5303, line: 16, baseType: !1045, size: 8, offset: 192)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !474, file: !475, line: 1134, baseType: !532, size: 64, offset: 16640)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !474, file: !475, line: 1135, baseType: !532, size: 64, offset: 16704)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !474, file: !475, line: 1138, baseType: !135, size: 32, offset: 16768)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !474, file: !475, line: 1141, baseType: !383, size: 32, offset: 16800)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !474, file: !475, line: 1143, baseType: !5314, size: 64, offset: 16832)
!5314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !475, line: 735, size: 64, elements: !5315)
!5315 = !{!5316}
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5314, file: !475, line: 736, baseType: !5317, size: 64)
!5317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5314, size: 64)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !474, file: !475, line: 1147, baseType: !661, size: 128, offset: 16896)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !474, file: !475, line: 1149, baseType: !473, size: 64, offset: 17024)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !474, file: !475, line: 1151, baseType: !5321, size: 64, offset: 17088)
!5321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5322, size: 64)
!5322 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !475, line: 1151, flags: DIFlagFwdDecl)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !474, file: !475, line: 1188, baseType: !96, size: 64, offset: 17152)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !474, file: !475, line: 1191, baseType: !5325, size: 64, offset: 17216)
!5325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5326, size: 64)
!5326 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !475, line: 44, flags: DIFlagFwdDecl)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !474, file: !475, line: 1194, baseType: !5328, size: 64, offset: 17280)
!5328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5329, size: 64)
!5329 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !475, line: 45, flags: DIFlagFwdDecl)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !474, file: !475, line: 1197, baseType: !5331, size: 64, offset: 17344)
!5331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5332, size: 64)
!5332 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !475, line: 61, flags: DIFlagFwdDecl)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !474, file: !475, line: 1199, baseType: !5334, size: 64, offset: 17408)
!5334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5335, size: 64)
!5335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3826, line: 99, size: 128, elements: !5336)
!5336 = !{!5337, !5338, !5339}
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5335, file: !3826, line: 100, baseType: !369, size: 64)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5335, file: !3826, line: 101, baseType: !125, size: 32, offset: 64)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5335, file: !3826, line: 103, baseType: !102, size: 16, offset: 96)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !474, file: !475, line: 1202, baseType: !5341, size: 64, offset: 17472)
!5341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5342, size: 64)
!5342 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !475, line: 48, flags: DIFlagFwdDecl)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !474, file: !475, line: 1205, baseType: !115, size: 64, offset: 17536)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !474, file: !475, line: 1206, baseType: !5345, size: 64, offset: 17600)
!5345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5346, size: 64)
!5346 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !5068, line: 14, baseType: !5347)
!5347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !5068, line: 12, size: 384, elements: !5348)
!5348 = !{!5349}
!5349 = !DIDerivedType(tag: DW_TAG_member, scope: !5347, file: !5068, line: 13, baseType: !5350, size: 384)
!5350 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5347, file: !5068, line: 13, size: 384, elements: !5351)
!5351 = !{!5352, !5353, !5354, !5355}
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5350, file: !5068, line: 13, baseType: !98, size: 32)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5350, file: !5068, line: 13, baseType: !98, size: 32, offset: 32)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5350, file: !5068, line: 13, baseType: !98, size: 32, offset: 64)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5350, file: !5068, line: 13, baseType: !5356, size: 256, offset: 128)
!5356 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5357, line: 37, size: 256, elements: !5358)
!5357 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5358 = !{!5359, !5364, !5377, !5383, !5392, !5419, !5424}
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5356, file: !5357, line: 42, baseType: !5360, size: 64)
!5360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5356, file: !5357, line: 39, size: 64, elements: !5361)
!5361 = !{!5362, !5363}
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5360, file: !5357, line: 40, baseType: !868, size: 32)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5360, file: !5357, line: 41, baseType: !946, size: 32, offset: 32)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5356, file: !5357, line: 50, baseType: !5365, size: 192)
!5365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5356, file: !5357, line: 45, size: 192, elements: !5366)
!5366 = !{!5367, !5369, !5370, !5376}
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5365, file: !5357, line: 46, baseType: !5368, size: 32)
!5368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !113, line: 95, baseType: !98)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5365, file: !5357, line: 47, baseType: !98, size: 32, offset: 32)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5365, file: !5357, line: 48, baseType: !5371, size: 64, offset: 64)
!5371 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5357, line: 11, baseType: !5372)
!5372 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5357, line: 8, size: 64, elements: !5373)
!5373 = !{!5374, !5375}
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5372, file: !5357, line: 9, baseType: !98, size: 32)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5372, file: !5357, line: 10, baseType: !96, size: 64)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5365, file: !5357, line: 49, baseType: !98, size: 32, offset: 128)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5356, file: !5357, line: 57, baseType: !5378, size: 128)
!5378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5356, file: !5357, line: 53, size: 128, elements: !5379)
!5379 = !{!5380, !5381, !5382}
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5378, file: !5357, line: 54, baseType: !868, size: 32)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5378, file: !5357, line: 55, baseType: !946, size: 32, offset: 32)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5378, file: !5357, line: 56, baseType: !5371, size: 64, offset: 64)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5356, file: !5357, line: 66, baseType: !5384, size: 256)
!5384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5356, file: !5357, line: 60, size: 256, elements: !5385)
!5385 = !{!5386, !5387, !5388, !5389, !5391}
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5384, file: !5357, line: 61, baseType: !868, size: 32)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5384, file: !5357, line: 62, baseType: !946, size: 32, offset: 32)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !5384, file: !5357, line: 63, baseType: !98, size: 32, offset: 64)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !5384, file: !5357, line: 64, baseType: !5390, size: 64, offset: 128)
!5390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !113, line: 94, baseType: !1859)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !5384, file: !5357, line: 65, baseType: !5390, size: 64, offset: 192)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5356, file: !5357, line: 105, baseType: !5393, size: 256)
!5393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5356, file: !5357, line: 69, size: 256, elements: !5394)
!5394 = !{!5395, !5396}
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !5393, file: !5357, line: 70, baseType: !96, size: 64)
!5396 = !DIDerivedType(tag: DW_TAG_member, scope: !5393, file: !5357, line: 79, baseType: !5397, size: 192, offset: 64)
!5397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5393, file: !5357, line: 79, size: 192, elements: !5398)
!5398 = !{!5399, !5400, !5401, !5408, !5413}
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !5397, file: !5357, line: 81, baseType: !98, size: 32)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !5397, file: !5357, line: 86, baseType: !860, size: 16)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !5397, file: !5357, line: 92, baseType: !5402, size: 192)
!5402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5397, file: !5357, line: 88, size: 192, elements: !5403)
!5403 = !{!5404, !5406, !5407}
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !5402, file: !5357, line: 89, baseType: !5405, size: 64)
!5405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 64, elements: !640)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !5402, file: !5357, line: 90, baseType: !96, size: 64, offset: 64)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !5402, file: !5357, line: 91, baseType: !96, size: 64, offset: 128)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !5397, file: !5357, line: 97, baseType: !5409, size: 96)
!5409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5397, file: !5357, line: 94, size: 96, elements: !5410)
!5410 = !{!5411, !5412}
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !5409, file: !5357, line: 95, baseType: !5405, size: 64)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !5409, file: !5357, line: 96, baseType: !485, size: 32, offset: 64)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !5397, file: !5357, line: 103, baseType: !5414, size: 128)
!5414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5397, file: !5357, line: 99, size: 128, elements: !5415)
!5415 = !{!5416, !5417, !5418}
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5414, file: !5357, line: 100, baseType: !115, size: 64)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5414, file: !5357, line: 101, baseType: !485, size: 32, offset: 64)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5414, file: !5357, line: 102, baseType: !485, size: 32, offset: 96)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5356, file: !5357, line: 111, baseType: !5420, size: 128)
!5420 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5356, file: !5357, line: 108, size: 128, elements: !5421)
!5421 = !{!5422, !5423}
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5420, file: !5357, line: 109, baseType: !808, size: 64)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5420, file: !5357, line: 110, baseType: !98, size: 32, offset: 64)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5356, file: !5357, line: 118, baseType: !5425, size: 128)
!5425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5356, file: !5357, line: 114, size: 128, elements: !5426)
!5426 = !{!5427, !5428, !5429}
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5425, file: !5357, line: 115, baseType: !96, size: 64)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5425, file: !5357, line: 116, baseType: !98, size: 32, offset: 64)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5425, file: !5357, line: 117, baseType: !7, size: 32, offset: 96)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !474, file: !475, line: 1208, baseType: !5152, size: 448, offset: 17664)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !474, file: !475, line: 1215, baseType: !532, size: 64, offset: 18112)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !474, file: !475, line: 1217, baseType: !532, size: 64, offset: 18176)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !474, file: !475, line: 1219, baseType: !532, size: 64, offset: 18240)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !474, file: !475, line: 1223, baseType: !5435, size: 64, offset: 18304)
!5435 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !5436, line: 99, baseType: !5437)
!5436 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!5437 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5436, line: 99, size: 64, elements: !5438)
!5438 = !{!5439}
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5437, file: !5436, line: 99, baseType: !729, size: 64)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !474, file: !475, line: 1225, baseType: !1639, size: 32, offset: 18368)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !474, file: !475, line: 1226, baseType: !98, size: 32, offset: 18400)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !474, file: !475, line: 1227, baseType: !98, size: 32, offset: 18432)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !474, file: !475, line: 1231, baseType: !1346, size: 64, offset: 18496)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !474, file: !475, line: 1233, baseType: !173, size: 128, offset: 18560)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !474, file: !475, line: 1240, baseType: !5446, size: 64, offset: 18688)
!5446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5447, size: 64)
!5447 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !475, line: 62, flags: DIFlagFwdDecl)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !474, file: !475, line: 1242, baseType: !5449, size: 64, offset: 18752)
!5449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5450, size: 64)
!5450 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !475, line: 1242, flags: DIFlagFwdDecl)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !474, file: !475, line: 1244, baseType: !173, size: 128, offset: 18816)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !474, file: !475, line: 1245, baseType: !5453, size: 64, offset: 18944)
!5453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5454, size: 64)
!5454 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !475, line: 51, flags: DIFlagFwdDecl)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !474, file: !475, line: 1246, baseType: !378, size: 256, offset: 19008)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !474, file: !475, line: 1247, baseType: !7, size: 32, offset: 19264)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !474, file: !475, line: 1250, baseType: !2866, size: 64, offset: 19328)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !474, file: !475, line: 1251, baseType: !378, size: 256, offset: 19392)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !474, file: !475, line: 1252, baseType: !173, size: 128, offset: 19648)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !474, file: !475, line: 1259, baseType: !1526, size: 64, offset: 19776)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !474, file: !475, line: 1260, baseType: !860, size: 16, offset: 19840)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !474, file: !475, line: 1261, baseType: !860, size: 16, offset: 19856)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !474, file: !475, line: 1314, baseType: !5464, size: 64, offset: 19904)
!5464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5465, size: 64)
!5465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5466, line: 62, size: 256, align: 256, elements: !5467)
!5466 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5467 = !{!5468, !5469, !5470, !5471, !5472, !5473, !5474}
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5465, file: !5466, line: 75, baseType: !485, size: 32)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5465, file: !5466, line: 90, baseType: !485, size: 32, offset: 32)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5465, file: !5466, line: 112, baseType: !533, size: 64, offset: 64)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5465, file: !5466, line: 132, baseType: !485, size: 32, offset: 128)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5465, file: !5466, line: 140, baseType: !485, size: 32, offset: 160)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5465, file: !5466, line: 149, baseType: !485, size: 32, offset: 192)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5465, file: !5466, line: 154, baseType: !5475, offset: 224)
!5475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, elements: !1276)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !474, file: !475, line: 1315, baseType: !484, size: 32, offset: 19968)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !474, file: !475, line: 1316, baseType: !484, size: 32, offset: 20000)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !474, file: !475, line: 1321, baseType: !115, size: 64, offset: 20032)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !474, file: !475, line: 1325, baseType: !98, size: 32, offset: 20096)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !474, file: !475, line: 1326, baseType: !98, size: 32, offset: 20128)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !474, file: !475, line: 1327, baseType: !98, size: 32, offset: 20160)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !474, file: !475, line: 1328, baseType: !98, size: 32, offset: 20192)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !474, file: !475, line: 1329, baseType: !356, size: 128, align: 64, offset: 20224)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !474, file: !475, line: 1332, baseType: !5485, size: 128, offset: 20352)
!5485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5486, line: 51, size: 128, elements: !5487)
!5486 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5487 = !{!5488, !5493, !5494}
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5485, file: !5486, line: 60, baseType: !5489, size: 64)
!5489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5490, line: 7, size: 64, elements: !5491)
!5490 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5491 = !{!5492}
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5489, file: !5490, line: 12, baseType: !726, size: 64)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5485, file: !5486, line: 63, baseType: !1045, size: 8, offset: 64)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5485, file: !5486, line: 70, baseType: !1045, size: 8, offset: 72)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !474, file: !475, line: 1335, baseType: !4420, size: 64, offset: 20480)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !474, file: !475, line: 1337, baseType: !5497, size: 128, offset: 20544)
!5497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5486, line: 39, size: 128, elements: !5498)
!5498 = !{!5499, !5500, !5501}
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5497, file: !5486, line: 40, baseType: !1585, size: 64)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5497, file: !5486, line: 42, baseType: !485, size: 32, offset: 64)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5497, file: !5486, line: 43, baseType: !485, size: 32, offset: 96)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !474, file: !475, line: 1340, baseType: !5503, size: 64, offset: 20672)
!5503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5504, size: 64)
!5504 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !475, line: 69, flags: DIFlagFwdDecl)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !474, file: !475, line: 1351, baseType: !98, size: 32, offset: 20736)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !474, file: !475, line: 1352, baseType: !98, size: 32, offset: 20768)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !474, file: !475, line: 1354, baseType: !115, size: 64, offset: 20800)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !474, file: !475, line: 1364, baseType: !532, size: 64, offset: 20864)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !474, file: !475, line: 1365, baseType: !532, size: 64, offset: 20928)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !474, file: !475, line: 1412, baseType: !115, size: 64, offset: 20992)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !474, file: !475, line: 1453, baseType: !3821, size: 64, offset: 21056)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !474, file: !475, line: 1457, baseType: !5513, size: 64, offset: 21120)
!5513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5514, size: 64)
!5514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !76, line: 61, size: 576, elements: !5515)
!5515 = !{!5516, !5517, !5536, !5539, !5540, !5573, !5583}
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5514, file: !76, line: 62, baseType: !75, size: 32)
!5517 = !DIDerivedType(tag: DW_TAG_member, scope: !5514, file: !76, line: 64, baseType: !5518, size: 192, offset: 64)
!5518 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5514, file: !76, line: 64, size: 192, elements: !5519)
!5519 = !{!5520, !5531}
!5520 = !DIDerivedType(tag: DW_TAG_member, scope: !5518, file: !76, line: 65, baseType: !5521, size: 192)
!5521 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5518, file: !76, line: 65, size: 192, elements: !5522)
!5522 = !{!5523, !5530}
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5521, file: !76, line: 66, baseType: !5524, size: 128)
!5524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5525, line: 50, size: 128, elements: !5526)
!5525 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5526 = !{!5527, !5528, !5529}
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5524, file: !5525, line: 52, baseType: !115, size: 64)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5524, file: !5525, line: 54, baseType: !7, size: 32, offset: 64)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5524, file: !5525, line: 55, baseType: !7, size: 32, offset: 96)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5521, file: !76, line: 67, baseType: !115, size: 64, offset: 128)
!5531 = !DIDerivedType(tag: DW_TAG_member, scope: !5518, file: !76, line: 70, baseType: !5532, size: 192)
!5532 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5518, file: !76, line: 70, size: 192, elements: !5533)
!5533 = !{!5534, !5535}
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5532, file: !76, line: 71, baseType: !356, size: 128, align: 64)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5532, file: !76, line: 72, baseType: !115, size: 64, offset: 128)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5514, file: !76, line: 76, baseType: !5537, size: 64, offset: 256)
!5537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5538, size: 64)
!5538 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !76, line: 76, flags: DIFlagFwdDecl)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5514, file: !76, line: 77, baseType: !115, size: 64, offset: 320)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5514, file: !76, line: 79, baseType: !5541, size: 64, offset: 384)
!5541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5542, size: 64)
!5542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5525, line: 25, size: 256, elements: !5543)
!5543 = !{!5544, !5550, !5554}
!5544 = !DIDerivedType(tag: DW_TAG_member, scope: !5542, file: !5525, line: 26, baseType: !5545, size: 128)
!5545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5542, file: !5525, line: 26, size: 128, elements: !5546)
!5546 = !{!5547, !5549}
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5545, file: !5525, line: 27, baseType: !5548, size: 128)
!5548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 128, elements: !1288)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5545, file: !5525, line: 28, baseType: !5548, size: 128)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5542, file: !5525, line: 31, baseType: !5551, size: 64, offset: 128)
!5551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5552, size: 64)
!5552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5553)
!5553 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5525, line: 23, flags: DIFlagFwdDecl)
!5554 = !DIDerivedType(tag: DW_TAG_member, scope: !5542, file: !5525, line: 33, baseType: !5555, size: 64, offset: 192)
!5555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5542, file: !5525, line: 33, size: 64, elements: !5556)
!5556 = !{!5557, !5563, !5568}
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5555, file: !5525, line: 38, baseType: !5558, size: 64)
!5558 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5555, file: !5525, line: 34, size: 64, elements: !5559)
!5559 = !{!5560, !5561, !5562}
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5558, file: !5525, line: 35, baseType: !846, size: 32)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5558, file: !5525, line: 36, baseType: !159, size: 8, offset: 32)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5558, file: !5525, line: 37, baseType: !159, size: 8, offset: 40)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5555, file: !5525, line: 42, baseType: !5564, size: 16)
!5564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5555, file: !5525, line: 39, size: 16, elements: !5565)
!5565 = !{!5566, !5567}
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5564, file: !5525, line: 40, baseType: !159, size: 8)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5564, file: !5525, line: 41, baseType: !159, size: 8, offset: 8)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5555, file: !5525, line: 46, baseType: !5569, size: 16)
!5569 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5555, file: !5525, line: 43, size: 16, elements: !5570)
!5570 = !{!5571, !5572}
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5569, file: !5525, line: 44, baseType: !159, size: 8)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5569, file: !5525, line: 45, baseType: !159, size: 8, offset: 8)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5514, file: !76, line: 81, baseType: !5574, size: 64, offset: 448)
!5574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5575, size: 64)
!5575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !76, line: 85, size: 384, elements: !5576)
!5576 = !{!5577, !5578, !5579, !5580, !5581, !5582}
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5575, file: !76, line: 86, baseType: !5537, size: 64)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5575, file: !76, line: 87, baseType: !115, size: 64, offset: 64)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5575, file: !76, line: 88, baseType: !115, size: 64, offset: 128)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5575, file: !76, line: 89, baseType: !115, size: 64, offset: 192)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5575, file: !76, line: 90, baseType: !1045, size: 8, offset: 256)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5575, file: !76, line: 92, baseType: !5574, size: 64, offset: 320)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5514, file: !76, line: 82, baseType: !7, size: 32, offset: 512)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !474, file: !475, line: 1463, baseType: !5585, offset: 21184)
!5585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !475, line: 739, elements: !336)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !474, file: !475, line: 1470, baseType: !356, size: 128, align: 64, offset: 21184)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !474, file: !475, line: 1471, baseType: !423, size: 32, offset: 21312)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !474, file: !475, line: 1472, baseType: !98, size: 32, offset: 21344)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !474, file: !475, line: 1474, baseType: !473, size: 64, offset: 21376)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !474, file: !475, line: 1475, baseType: !2198, size: 320, offset: 21440)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !474, file: !475, line: 1478, baseType: !5592, size: 64, offset: 21760)
!5592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5593, size: 64)
!5593 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !475, line: 1478, flags: DIFlagFwdDecl)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !474, file: !475, line: 1482, baseType: !423, size: 32, offset: 21824)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !474, file: !475, line: 1489, baseType: !96, size: 64, offset: 21888)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !474, file: !475, line: 1504, baseType: !96, size: 64, offset: 21952)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !474, file: !475, line: 1505, baseType: !533, size: 64, offset: 22016)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !474, file: !475, line: 1506, baseType: !532, size: 64, offset: 22080)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !474, file: !475, line: 1507, baseType: !533, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !474, file: !475, line: 1508, baseType: !533, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !474, file: !475, line: 1509, baseType: !533, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !474, file: !475, line: 1510, baseType: !356, size: 128, align: 64, offset: 22208)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !474, file: !475, line: 1511, baseType: !98, size: 32, offset: 22336)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !474, file: !475, line: 1515, baseType: !5605, size: 64, offset: 22400)
!5605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !351, line: 56, size: 64, elements: !5606)
!5606 = !{!5607}
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5605, file: !351, line: 57, baseType: !354, size: 64)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !474, file: !475, line: 1518, baseType: !5605, size: 64, offset: 22464)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !474, file: !475, line: 1528, baseType: !356, size: 128, align: 64, offset: 22528)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !474, file: !475, line: 1552, baseType: !5611, size: 35328, offset: 23040)
!5611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5612, line: 430, size: 35328, elements: !5613)
!5612 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5613 = !{!5614, !5632, !5633, !5634, !5635, !5636, !5637, !5638, !5639, !5641, !5642, !5643, !5644, !5645, !5646, !5649, !5650, !5651, !5652}
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5611, file: !5612, line: 432, baseType: !5615, size: 192)
!5615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5616, size: 192, elements: !415)
!5616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5617, line: 16, size: 64, elements: !5618)
!5617 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5618 = !{!5619, !5620, !5621, !5622, !5623, !5624, !5625, !5626, !5627, !5628, !5629, !5630, !5631}
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5616, file: !5617, line: 17, baseType: !169, size: 16)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5616, file: !5617, line: 18, baseType: !169, size: 16, offset: 16)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5616, file: !5617, line: 19, baseType: !169, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5616, file: !5617, line: 19, baseType: !169, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5616, file: !5617, line: 19, baseType: !169, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5616, file: !5617, line: 19, baseType: !169, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5616, file: !5617, line: 19, baseType: !169, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5616, file: !5617, line: 20, baseType: !169, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5616, file: !5617, line: 20, baseType: !169, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5616, file: !5617, line: 20, baseType: !169, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5616, file: !5617, line: 20, baseType: !169, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5616, file: !5617, line: 20, baseType: !169, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5616, file: !5617, line: 20, baseType: !169, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5611, file: !5612, line: 436, baseType: !115, size: 64, offset: 192)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5611, file: !5612, line: 440, baseType: !102, size: 16, offset: 256)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5611, file: !5612, line: 441, baseType: !102, size: 16, offset: 272)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5611, file: !5612, line: 442, baseType: !102, size: 16, offset: 288)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5611, file: !5612, line: 443, baseType: !102, size: 16, offset: 304)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5611, file: !5612, line: 447, baseType: !115, size: 64, offset: 320)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5611, file: !5612, line: 448, baseType: !115, size: 64, offset: 384)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5611, file: !5612, line: 459, baseType: !5640, size: 256, offset: 448)
!5640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2478, size: 256, elements: !441)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5611, file: !5612, line: 461, baseType: !115, size: 64, offset: 704)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5611, file: !5612, line: 463, baseType: !115, size: 64, offset: 768)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5611, file: !5612, line: 465, baseType: !115, size: 64, offset: 832)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5611, file: !5612, line: 466, baseType: !115, size: 64, offset: 896)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5611, file: !5612, line: 467, baseType: !115, size: 64, offset: 960)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5611, file: !5612, line: 473, baseType: !5647, size: 64, offset: 1024)
!5647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5648, size: 64)
!5648 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5612, line: 10, flags: DIFlagFwdDecl)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5611, file: !5612, line: 480, baseType: !115, size: 64, offset: 1088)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5611, file: !5612, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5611, file: !5612, line: 491, baseType: !484, size: 32, offset: 1184)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5611, file: !5612, line: 501, baseType: !5653, size: 33792, offset: 1536)
!5653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5654, line: 448, size: 33792, elements: !5655)
!5654 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5655 = !{!5656, !5657, !5658, !5766, !5767, !5773, !5774}
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5653, file: !5654, line: 461, baseType: !7, size: 32)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5653, file: !5654, line: 468, baseType: !115, size: 64, offset: 64)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5653, file: !5654, line: 476, baseType: !5659, size: 64, offset: 128)
!5659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5660, size: 64)
!5660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5654, line: 356, size: 33280, align: 512, elements: !5661)
!5661 = !{!5662, !5663, !5664, !5665, !5666, !5667, !5668, !5669, !5670, !5671}
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5660, file: !5654, line: 358, baseType: !7, size: 32)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5660, file: !5654, line: 361, baseType: !7, size: 32, offset: 32)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5660, file: !5654, line: 364, baseType: !532, size: 64, offset: 64)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5660, file: !5654, line: 367, baseType: !532, size: 64, offset: 128)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5660, file: !5654, line: 370, baseType: !532, size: 64, offset: 192)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5660, file: !5654, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5660, file: !5654, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5660, file: !5654, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5660, file: !5654, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5660, file: !5654, line: 397, baseType: !5672, size: 32768, offset: 512)
!5672 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5654, line: 348, size: 32768, elements: !5673)
!5673 = !{!5674, !5689, !5726, !5751, !5764}
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5672, file: !5654, line: 349, baseType: !5675, size: 896)
!5675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5654, line: 12, size: 896, elements: !5676)
!5676 = !{!5677, !5678, !5679, !5680, !5681, !5682, !5683, !5684, !5688}
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5675, file: !5654, line: 13, baseType: !484, size: 32)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5675, file: !5654, line: 14, baseType: !484, size: 32, offset: 32)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5675, file: !5654, line: 15, baseType: !484, size: 32, offset: 64)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5675, file: !5654, line: 16, baseType: !484, size: 32, offset: 96)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5675, file: !5654, line: 17, baseType: !484, size: 32, offset: 128)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5675, file: !5654, line: 18, baseType: !484, size: 32, offset: 160)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5675, file: !5654, line: 19, baseType: !484, size: 32, offset: 192)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5675, file: !5654, line: 22, baseType: !5685, size: 640, offset: 224)
!5685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 640, elements: !5686)
!5686 = !{!5687}
!5687 = !DISubrange(count: 20)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5675, file: !5654, line: 25, baseType: !484, size: 32, offset: 864)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5672, file: !5654, line: 350, baseType: !5690, size: 4096, align: 128)
!5690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5654, line: 34, size: 4096, align: 128, elements: !5691)
!5691 = !{!5692, !5693, !5694, !5695, !5696, !5711, !5712, !5713, !5715, !5717, !5721}
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5690, file: !5654, line: 35, baseType: !169, size: 16)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5690, file: !5654, line: 36, baseType: !169, size: 16, offset: 16)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5690, file: !5654, line: 37, baseType: !169, size: 16, offset: 32)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5690, file: !5654, line: 38, baseType: !169, size: 16, offset: 48)
!5696 = !DIDerivedType(tag: DW_TAG_member, scope: !5690, file: !5654, line: 39, baseType: !5697, size: 128, offset: 64)
!5697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5690, file: !5654, line: 39, size: 128, elements: !5698)
!5698 = !{!5699, !5704}
!5699 = !DIDerivedType(tag: DW_TAG_member, scope: !5697, file: !5654, line: 40, baseType: !5700, size: 128)
!5700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5697, file: !5654, line: 40, size: 128, elements: !5701)
!5701 = !{!5702, !5703}
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5700, file: !5654, line: 41, baseType: !532, size: 64)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5700, file: !5654, line: 42, baseType: !532, size: 64, offset: 64)
!5704 = !DIDerivedType(tag: DW_TAG_member, scope: !5697, file: !5654, line: 44, baseType: !5705, size: 128)
!5705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5697, file: !5654, line: 44, size: 128, elements: !5706)
!5706 = !{!5707, !5708, !5709, !5710}
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5705, file: !5654, line: 45, baseType: !484, size: 32)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5705, file: !5654, line: 46, baseType: !484, size: 32, offset: 32)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5705, file: !5654, line: 47, baseType: !484, size: 32, offset: 64)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5705, file: !5654, line: 48, baseType: !484, size: 32, offset: 96)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5690, file: !5654, line: 51, baseType: !484, size: 32, offset: 192)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5690, file: !5654, line: 52, baseType: !484, size: 32, offset: 224)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5690, file: !5654, line: 55, baseType: !5714, size: 1024, offset: 256)
!5714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 1024, elements: !1670)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5690, file: !5654, line: 58, baseType: !5716, size: 2048, offset: 1280)
!5716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 2048, elements: !1830)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5690, file: !5654, line: 60, baseType: !5718, size: 384, offset: 3328)
!5718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 384, elements: !5719)
!5719 = !{!5720}
!5720 = !DISubrange(count: 12)
!5721 = !DIDerivedType(tag: DW_TAG_member, scope: !5690, file: !5654, line: 62, baseType: !5722, size: 384, offset: 3712)
!5722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5690, file: !5654, line: 62, size: 384, elements: !5723)
!5723 = !{!5724, !5725}
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5722, file: !5654, line: 63, baseType: !5718, size: 384)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5722, file: !5654, line: 64, baseType: !5718, size: 384)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5672, file: !5654, line: 351, baseType: !5727, size: 1088)
!5727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5654, line: 79, size: 1088, elements: !5728)
!5728 = !{!5729, !5730, !5731, !5732, !5733, !5734, !5735, !5736, !5737, !5738, !5739, !5740, !5741, !5742, !5743, !5750}
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5727, file: !5654, line: 80, baseType: !484, size: 32)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5727, file: !5654, line: 81, baseType: !484, size: 32, offset: 32)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5727, file: !5654, line: 82, baseType: !484, size: 32, offset: 64)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5727, file: !5654, line: 83, baseType: !484, size: 32, offset: 96)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5727, file: !5654, line: 84, baseType: !484, size: 32, offset: 128)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5727, file: !5654, line: 85, baseType: !484, size: 32, offset: 160)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5727, file: !5654, line: 86, baseType: !484, size: 32, offset: 192)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5727, file: !5654, line: 88, baseType: !5685, size: 640, offset: 224)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5727, file: !5654, line: 89, baseType: !159, size: 8, offset: 864)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5727, file: !5654, line: 90, baseType: !159, size: 8, offset: 872)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5727, file: !5654, line: 91, baseType: !159, size: 8, offset: 880)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5727, file: !5654, line: 92, baseType: !159, size: 8, offset: 888)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5727, file: !5654, line: 93, baseType: !159, size: 8, offset: 896)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5727, file: !5654, line: 94, baseType: !159, size: 8, offset: 904)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5727, file: !5654, line: 95, baseType: !5744, size: 64, offset: 960)
!5744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5745, size: 64)
!5745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5746, line: 11, size: 128, elements: !5747)
!5746 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5747 = !{!5748, !5749}
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5745, file: !5746, line: 12, baseType: !808, size: 64)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5745, file: !5746, line: 13, baseType: !3394, size: 64, offset: 64)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5727, file: !5654, line: 96, baseType: !484, size: 32, offset: 1024)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5672, file: !5654, line: 352, baseType: !5752, size: 4608, align: 512)
!5752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5654, line: 333, size: 4608, align: 512, elements: !5753)
!5753 = !{!5754, !5755, !5762}
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5752, file: !5654, line: 334, baseType: !5690, size: 4096, align: 128)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5752, file: !5654, line: 335, baseType: !5756, size: 512, offset: 4096)
!5756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5654, line: 312, size: 512, elements: !5757)
!5757 = !{!5758, !5759, !5760}
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5756, file: !5654, line: 313, baseType: !532, size: 64)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5756, file: !5654, line: 314, baseType: !532, size: 64, offset: 64)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5756, file: !5654, line: 315, baseType: !5761, size: 384, offset: 128)
!5761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, size: 384, elements: !1032)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5752, file: !5654, line: 336, baseType: !5763, offset: 4608)
!5763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, elements: !1276)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5672, file: !5654, line: 353, baseType: !5765, size: 32768)
!5765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 32768, elements: !2422)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5653, file: !5654, line: 484, baseType: !5659, size: 64, offset: 192)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5653, file: !5654, line: 491, baseType: !5768, size: 128, offset: 256)
!5768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5654, line: 404, size: 128, elements: !5769)
!5769 = !{!5770, !5771, !5772}
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5768, file: !5654, line: 424, baseType: !532, size: 64)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5768, file: !5654, line: 432, baseType: !7, size: 32, offset: 64)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5768, file: !5654, line: 440, baseType: !7, size: 32, offset: 96)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5653, file: !5654, line: 498, baseType: !5768, size: 128, offset: 384)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5653, file: !5654, line: 508, baseType: !5660, size: 33280, align: 512, offset: 512)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !453, file: !454, line: 31, baseType: !2970, size: 64, offset: 448)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !453, file: !454, line: 32, baseType: !7, size: 32, offset: 512)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !453, file: !454, line: 33, baseType: !452, size: 64, offset: 576)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !453, file: !454, line: 35, baseType: !5779, size: 64, offset: 640)
!5779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5780, size: 64)
!5780 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !454, line: 17, flags: DIFlagFwdDecl)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !453, file: !454, line: 37, baseType: !1129, size: 64, offset: 704)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !453, file: !454, line: 38, baseType: !1250, size: 64, offset: 768)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !453, file: !454, line: 39, baseType: !98, size: 32, offset: 832)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !453, file: !454, line: 40, baseType: !1162, size: 192, offset: 896)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !453, file: !454, line: 42, baseType: !98, size: 32, offset: 1088)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !393, file: !83, line: 951, baseType: !50, size: 32, offset: 128)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !393, file: !83, line: 952, baseType: !940, size: 32, offset: 160)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !393, file: !83, line: 952, baseType: !940, size: 32, offset: 192)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !393, file: !83, line: 953, baseType: !98, size: 32, offset: 224)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !344, file: !83, line: 1012, baseType: !933, size: 64, offset: 896)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !344, file: !83, line: 1013, baseType: !5792, size: 256, offset: 960)
!5792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !83, line: 970, size: 256, elements: !5793)
!5793 = !{!5794, !5795, !5796, !5797, !5798, !5799}
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5792, file: !83, line: 971, baseType: !115, size: 64)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5792, file: !83, line: 972, baseType: !7, size: 32, offset: 64)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !5792, file: !83, line: 973, baseType: !7, size: 32, offset: 96)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !5792, file: !83, line: 974, baseType: !7, size: 32, offset: 128)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !5792, file: !83, line: 975, baseType: !7, size: 32, offset: 160)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !5792, file: !83, line: 976, baseType: !117, size: 64, offset: 192)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !344, file: !83, line: 1014, baseType: !3711, size: 128, offset: 1216)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !344, file: !83, line: 1015, baseType: !1611, size: 64, offset: 1344)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !344, file: !83, line: 1016, baseType: !4295, size: 64, offset: 1408)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !344, file: !83, line: 1018, baseType: !532, size: 64, offset: 1472)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !344, file: !83, line: 1020, baseType: !96, size: 64, offset: 1536)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !344, file: !83, line: 1023, baseType: !96, size: 64, offset: 1600)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !344, file: !83, line: 1027, baseType: !2470, size: 64, offset: 1664)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !344, file: !83, line: 1029, baseType: !1607, size: 64, offset: 1728)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !344, file: !83, line: 1030, baseType: !4026, size: 32, offset: 1792)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !344, file: !83, line: 1031, baseType: !4026, size: 32, offset: 1824)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !319, file: !20, line: 756, baseType: !115, size: 64, offset: 704)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !319, file: !20, line: 757, baseType: !115, size: 64, offset: 768)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !319, file: !20, line: 760, baseType: !115, size: 64, offset: 832)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !319, file: !20, line: 761, baseType: !115, size: 64, offset: 896)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !319, file: !20, line: 763, baseType: !115, size: 64, offset: 960)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !319, file: !20, line: 764, baseType: !5816, size: 64, offset: 1024)
!5816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5817, size: 64)
!5817 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1491, line: 299, baseType: !5818)
!5818 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1491, line: 299, size: 64, elements: !5819)
!5819 = !{!5820}
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !5818, file: !1491, line: 299, baseType: !5821, size: 64)
!5821 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1496, line: 18, baseType: !115)
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !319, file: !20, line: 773, baseType: !125, size: 32, offset: 1088)
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !319, file: !20, line: 785, baseType: !125, size: 32, offset: 1120)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !319, file: !20, line: 795, baseType: !5825, size: 64, offset: 1152)
!5825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5826, size: 64)
!5826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !20, line: 726, size: 128, elements: !5827)
!5827 = !{!5828, !5829}
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5826, file: !20, line: 727, baseType: !532, size: 64)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !5826, file: !20, line: 728, baseType: !98, size: 32, offset: 64)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !319, file: !20, line: 801, baseType: !115, size: 64, offset: 1216)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !319, file: !20, line: 804, baseType: !369, size: 64, offset: 1280)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !319, file: !20, line: 806, baseType: !98, size: 32, offset: 1344)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !319, file: !20, line: 808, baseType: !135, size: 32, offset: 1376)
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !319, file: !20, line: 823, baseType: !987, size: 320, offset: 1408)
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !319, file: !20, line: 825, baseType: !173, size: 128, offset: 1728)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !319, file: !20, line: 845, baseType: !98, size: 32, offset: 1856)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !319, file: !20, line: 849, baseType: !115, size: 64, offset: 1920)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !319, file: !20, line: 850, baseType: !115, size: 64, offset: 1984)
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !319, file: !20, line: 852, baseType: !115, size: 64, offset: 2048)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !319, file: !20, line: 853, baseType: !115, size: 64, offset: 2112)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !319, file: !20, line: 854, baseType: !371, size: 64, offset: 2176)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !319, file: !20, line: 855, baseType: !115, size: 64, offset: 2240)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !319, file: !20, line: 856, baseType: !115, size: 64, offset: 2304)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !319, file: !20, line: 857, baseType: !115, size: 64, offset: 2368)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !319, file: !20, line: 858, baseType: !115, size: 64, offset: 2432)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !319, file: !20, line: 865, baseType: !652, size: 32, offset: 2496)
!5847 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !319, file: !20, line: 867, baseType: !135, size: 32, offset: 2528)
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !319, file: !20, line: 869, baseType: !115, size: 64, offset: 2560)
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !319, file: !20, line: 869, baseType: !115, size: 64, offset: 2624)
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !319, file: !20, line: 869, baseType: !115, size: 64, offset: 2688)
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !319, file: !20, line: 869, baseType: !115, size: 64, offset: 2752)
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !319, file: !20, line: 870, baseType: !115, size: 64, offset: 2816)
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !319, file: !20, line: 870, baseType: !115, size: 64, offset: 2880)
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !319, file: !20, line: 870, baseType: !115, size: 64, offset: 2944)
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !319, file: !20, line: 871, baseType: !115, size: 64, offset: 3008)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !319, file: !20, line: 871, baseType: !115, size: 64, offset: 3072)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !319, file: !20, line: 871, baseType: !115, size: 64, offset: 3136)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !319, file: !20, line: 871, baseType: !115, size: 64, offset: 3200)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !319, file: !20, line: 873, baseType: !5860, size: 3328, offset: 3264)
!5860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 3328, elements: !5861)
!5861 = !{!5862}
!5862 = !DISubrange(count: 52)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !319, file: !20, line: 875, baseType: !3888, size: 1280, offset: 6592)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !319, file: !20, line: 877, baseType: !5865, size: 64, offset: 7872)
!5865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5866, size: 64)
!5866 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !20, line: 877, flags: DIFlagFwdDecl)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !319, file: !20, line: 880, baseType: !5868, size: 1088, offset: 7936)
!5868 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !5869, line: 72, baseType: !5870)
!5869 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!5870 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5869, line: 23, size: 1088, elements: !5871)
!5871 = !{!5872, !5873, !5874, !5875, !5876, !5879, !5880, !5881, !5882, !5907, !5908, !5909}
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !5870, file: !5869, line: 28, baseType: !532, size: 64)
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !5870, file: !5869, line: 38, baseType: !371, size: 64, offset: 64)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !5870, file: !5869, line: 40, baseType: !115, size: 64, offset: 128)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !5870, file: !5869, line: 43, baseType: !987, size: 320, offset: 192)
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !5870, file: !5869, line: 44, baseType: !5877, size: 64, offset: 512)
!5877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5878, size: 64)
!5878 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !5869, line: 44, flags: DIFlagFwdDecl)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5870, file: !5869, line: 48, baseType: !115, size: 64, offset: 576)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5870, file: !5869, line: 59, baseType: !378, size: 256, offset: 640)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !5870, file: !5869, line: 60, baseType: !96, size: 64, offset: 896)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !5870, file: !5869, line: 61, baseType: !5883, size: 64, offset: 960)
!5883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5884, size: 64)
!5884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5885)
!5885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !5886, line: 13, size: 1216, elements: !5887)
!5886 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!5887 = !{!5888, !5889, !5890, !5891, !5892, !5893, !5894, !5895, !5896, !5897, !5898, !5899, !5900, !5901, !5902, !5903, !5904, !5905, !5906}
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5885, file: !5886, line: 14, baseType: !96, size: 64)
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5885, file: !5886, line: 15, baseType: !115, size: 64, offset: 64)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !5885, file: !5886, line: 17, baseType: !115, size: 64, offset: 128)
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !5885, file: !5886, line: 17, baseType: !115, size: 64, offset: 192)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !5885, file: !5886, line: 18, baseType: !115, size: 64, offset: 256)
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !5885, file: !5886, line: 18, baseType: !115, size: 64, offset: 320)
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !5885, file: !5886, line: 19, baseType: !1382, size: 64, offset: 384)
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !5885, file: !5886, line: 21, baseType: !808, size: 64, offset: 448)
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !5885, file: !5886, line: 23, baseType: !808, size: 64, offset: 512)
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !5885, file: !5886, line: 24, baseType: !808, size: 64, offset: 576)
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !5885, file: !5886, line: 25, baseType: !808, size: 64, offset: 640)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !5885, file: !5886, line: 26, baseType: !808, size: 64, offset: 704)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !5885, file: !5886, line: 27, baseType: !808, size: 64, offset: 768)
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !5885, file: !5886, line: 28, baseType: !808, size: 64, offset: 832)
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !5885, file: !5886, line: 29, baseType: !808, size: 64, offset: 896)
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !5885, file: !5886, line: 30, baseType: !808, size: 64, offset: 960)
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !5885, file: !5886, line: 31, baseType: !808, size: 64, offset: 1024)
!5905 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !5885, file: !5886, line: 32, baseType: !808, size: 64, offset: 1088)
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !5885, file: !5886, line: 33, baseType: !808, size: 64, offset: 1152)
!5907 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !5870, file: !5869, line: 63, baseType: !125, size: 32, offset: 1024)
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !5870, file: !5869, line: 69, baseType: !169, size: 16, offset: 1056)
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !5870, file: !5869, line: 70, baseType: !2105, size: 16, offset: 1072)
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !319, file: !20, line: 882, baseType: !115, size: 64, offset: 9024)
!5911 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !319, file: !20, line: 885, baseType: !135, size: 32, offset: 9088)
!5912 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !319, file: !20, line: 886, baseType: !5913, size: 64, offset: 9152)
!5913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5914, size: 64)
!5914 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !20, line: 732, flags: DIFlagFwdDecl)
!5915 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !319, file: !20, line: 901, baseType: !1129, size: 64, offset: 9216)
!5916 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !319, file: !20, line: 904, baseType: !343, size: 64, offset: 9280)
!5917 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !319, file: !20, line: 906, baseType: !5918, size: 64, offset: 9344)
!5918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5919, size: 64)
!5919 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !20, line: 906, flags: DIFlagFwdDecl)
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !319, file: !20, line: 930, baseType: !125, size: 32, offset: 9408)
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !319, file: !20, line: 933, baseType: !125, size: 32, offset: 9440)
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !319, file: !20, line: 935, baseType: !5923, size: 64, offset: 9472)
!5923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !76, line: 103, size: 64, elements: !5924)
!5924 = !{!5925}
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !5923, file: !76, line: 104, baseType: !5926, size: 64)
!5926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5927, size: 64)
!5927 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !76, line: 101, flags: DIFlagFwdDecl)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !319, file: !20, line: 940, baseType: !369, size: 64, offset: 9536)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !319, file: !20, line: 942, baseType: !1178, size: 256, offset: 9600)
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !316, file: !20, line: 986, baseType: !5931, offset: 10240)
!5931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, elements: !1276)
!5932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5933, size: 64)
!5933 = !DISubroutineType(types: !5934)
!5934 = !{null, !96, !315, !92, !1045, !1045}
!5935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5936, size: 64)
!5936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_raw_mmap_lock", file: !5937, line: 16, size: 192, elements: !5938)
!5937 = !DIFile(filename: "./include/trace/events/mmap_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "80844fbd0d8b7e37e31542a614220b87")
!5938 = !{!5939, !5940, !5941, !5942, !5943}
!5939 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !5936, file: !5937, line: 16, baseType: !2440, size: 64)
!5940 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !5936, file: !5937, line: 16, baseType: !315, size: 64, offset: 64)
!5941 = !DIDerivedType(tag: DW_TAG_member, name: "__data_loc_memcg_path", scope: !5936, file: !5937, line: 16, baseType: !484, size: 32, offset: 128)
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5936, file: !5937, line: 16, baseType: !1045, size: 8, offset: 160)
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !5936, file: !5937, line: 16, baseType: !5475, offset: 168)
!5944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5945, size: 64)
!5945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_raw_mmap_lock_acquire_returned", file: !5937, line: 52, size: 192, elements: !5946)
!5946 = !{!5947, !5948, !5949, !5950, !5951, !5952}
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !5945, file: !5937, line: 52, baseType: !2440, size: 64)
!5948 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !5945, file: !5937, line: 52, baseType: !315, size: 64, offset: 64)
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "__data_loc_memcg_path", scope: !5945, file: !5937, line: 52, baseType: !484, size: 32, offset: 128)
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5945, file: !5937, line: 52, baseType: !1045, size: 8, offset: 160)
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "success", scope: !5945, file: !5937, line: 52, baseType: !1045, size: 8, offset: 168)
!5952 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !5945, file: !5937, line: 52, baseType: !5475, offset: 176)
!5953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5954, size: 64)
!5954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5955)
!5955 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2472)
!5956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5957, size: 64)
!5957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5958)
!5958 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !435)
!5959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5960, size: 64)
!5960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !726)
!5961 = !{!5962, !5964, !5966, !5968, !5970, !5972, !5974, !5976, !5978, !5980, !5982, !5984, !5986, !5988, !5990, !5992, !5994, !5996, !5998, !6000, !6002, !6004, !6006, !6008, !6010, !6012, !6014, !6017, !6019, !6021, !0, !6023, !6028, !6033, !6037, !6040, !6043, !6046, !6051, !6056, !6059, !6061, !6064, !6066, !6071, !6073, !6075, !6080, !6082, !6085, !6087, !6092, !6097, !6102, !6132, !6134, !6165, !6167, !6195}
!5962 = !DIGlobalVariableExpression(var: !5963, expr: !DIExpression())
!5963 = distinct !DIGlobalVariable(name: "__tracepoint_mmap_lock_start_locking", scope: !2, file: !5937, line: 49, type: !2328, isLocal: false, isDefinition: true)
!5964 = !DIGlobalVariableExpression(var: !5965, expr: !DIExpression())
!5965 = distinct !DIGlobalVariable(name: "__SCK__tp_func_mmap_lock_start_locking", scope: !2, file: !5937, line: 49, type: !2345, isLocal: false, isDefinition: true)
!5966 = !DIGlobalVariableExpression(var: !5967, expr: !DIExpression())
!5967 = distinct !DIGlobalVariable(name: "__tracepoint_mmap_lock_released", scope: !2, file: !5937, line: 50, type: !2328, isLocal: false, isDefinition: true)
!5968 = !DIGlobalVariableExpression(var: !5969, expr: !DIExpression())
!5969 = distinct !DIGlobalVariable(name: "__SCK__tp_func_mmap_lock_released", scope: !2, file: !5937, line: 50, type: !2345, isLocal: false, isDefinition: true)
!5970 = !DIGlobalVariableExpression(var: !5971, expr: !DIExpression())
!5971 = distinct !DIGlobalVariable(name: "__tracepoint_mmap_lock_acquire_returned", scope: !2, file: !5937, line: 52, type: !2328, isLocal: false, isDefinition: true)
!5972 = !DIGlobalVariableExpression(var: !5973, expr: !DIExpression())
!5973 = distinct !DIGlobalVariable(name: "__SCK__tp_func_mmap_lock_acquire_returned", scope: !2, file: !5937, line: 52, type: !2345, isLocal: false, isDefinition: true)
!5974 = !DIGlobalVariableExpression(var: !5975, expr: !DIExpression())
!5975 = distinct !DIGlobalVariable(name: "event_class_mmap_lock", scope: !2, file: !5937, line: 16, type: !2284, isLocal: true, isDefinition: true)
!5976 = !DIGlobalVariableExpression(var: !5977, expr: !DIExpression())
!5977 = distinct !DIGlobalVariable(name: "event_mmap_lock_start_locking", scope: !2, file: !5937, line: 49, type: !2279, isLocal: true, isDefinition: true, align: 32)
!5978 = !DIGlobalVariableExpression(var: !5979, expr: !DIExpression())
!5979 = distinct !DIGlobalVariable(name: "__event_mmap_lock_start_locking", scope: !2, file: !5937, line: 49, type: !2278, isLocal: true, isDefinition: true)
!5980 = !DIGlobalVariableExpression(var: !5981, expr: !DIExpression())
!5981 = distinct !DIGlobalVariable(name: "event_mmap_lock_released", scope: !2, file: !5937, line: 50, type: !2279, isLocal: true, isDefinition: true, align: 32)
!5982 = !DIGlobalVariableExpression(var: !5983, expr: !DIExpression())
!5983 = distinct !DIGlobalVariable(name: "__event_mmap_lock_released", scope: !2, file: !5937, line: 50, type: !2278, isLocal: true, isDefinition: true)
!5984 = !DIGlobalVariableExpression(var: !5985, expr: !DIExpression())
!5985 = distinct !DIGlobalVariable(name: "event_class_mmap_lock_acquire_returned", scope: !2, file: !5937, line: 52, type: !2284, isLocal: true, isDefinition: true)
!5986 = !DIGlobalVariableExpression(var: !5987, expr: !DIExpression())
!5987 = distinct !DIGlobalVariable(name: "event_mmap_lock_acquire_returned", scope: !2, file: !5937, line: 52, type: !2279, isLocal: true, isDefinition: true, align: 32)
!5988 = !DIGlobalVariableExpression(var: !5989, expr: !DIExpression())
!5989 = distinct !DIGlobalVariable(name: "__event_mmap_lock_acquire_returned", scope: !2, file: !5937, line: 52, type: !2278, isLocal: true, isDefinition: true)
!5990 = !DIGlobalVariableExpression(var: !5991, expr: !DIExpression())
!5991 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___tracepoint_mmap_lock_start_locking377", scope: !2, file: !3, line: 16, type: !96, isLocal: true, isDefinition: true)
!5992 = !DIGlobalVariableExpression(var: !5993, expr: !DIExpression())
!5993 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___traceiter_mmap_lock_start_locking378", scope: !2, file: !3, line: 16, type: !96, isLocal: true, isDefinition: true)
!5994 = !DIGlobalVariableExpression(var: !5995, expr: !DIExpression())
!5995 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_mmap_lock_start_locking379", scope: !2, file: !3, line: 16, type: !96, isLocal: true, isDefinition: true)
!5996 = !DIGlobalVariableExpression(var: !5997, expr: !DIExpression())
!5997 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCT__tp_func_mmap_lock_start_locking380", scope: !2, file: !3, line: 16, type: !96, isLocal: true, isDefinition: true)
!5998 = !DIGlobalVariableExpression(var: !5999, expr: !DIExpression())
!5999 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___tracepoint_mmap_lock_acquire_returned381", scope: !2, file: !3, line: 17, type: !96, isLocal: true, isDefinition: true)
!6000 = !DIGlobalVariableExpression(var: !6001, expr: !DIExpression())
!6001 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___traceiter_mmap_lock_acquire_returned382", scope: !2, file: !3, line: 17, type: !96, isLocal: true, isDefinition: true)
!6002 = !DIGlobalVariableExpression(var: !6003, expr: !DIExpression())
!6003 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_mmap_lock_acquire_returned383", scope: !2, file: !3, line: 17, type: !96, isLocal: true, isDefinition: true)
!6004 = !DIGlobalVariableExpression(var: !6005, expr: !DIExpression())
!6005 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCT__tp_func_mmap_lock_acquire_returned384", scope: !2, file: !3, line: 17, type: !96, isLocal: true, isDefinition: true)
!6006 = !DIGlobalVariableExpression(var: !6007, expr: !DIExpression())
!6007 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___tracepoint_mmap_lock_released385", scope: !2, file: !3, line: 18, type: !96, isLocal: true, isDefinition: true)
!6008 = !DIGlobalVariableExpression(var: !6009, expr: !DIExpression())
!6009 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___traceiter_mmap_lock_released386", scope: !2, file: !3, line: 18, type: !96, isLocal: true, isDefinition: true)
!6010 = !DIGlobalVariableExpression(var: !6011, expr: !DIExpression())
!6011 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_mmap_lock_released387", scope: !2, file: !3, line: 18, type: !96, isLocal: true, isDefinition: true)
!6012 = !DIGlobalVariableExpression(var: !6013, expr: !DIExpression())
!6013 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCT__tp_func_mmap_lock_released388", scope: !2, file: !3, line: 18, type: !96, isLocal: true, isDefinition: true)
!6014 = !DIGlobalVariableExpression(var: !6015, expr: !DIExpression())
!6015 = distinct !DIGlobalVariable(scope: null, file: !3, line: 95, type: !6016, isLocal: true, isDefinition: true)
!6016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 8, elements: !730)
!6017 = !DIGlobalVariableExpression(var: !6018, expr: !DIExpression())
!6018 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___mmap_lock_do_trace_start_locking389", scope: !2, file: !3, line: 97, type: !96, isLocal: true, isDefinition: true)
!6019 = !DIGlobalVariableExpression(var: !6020, expr: !DIExpression())
!6020 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___mmap_lock_do_trace_acquire_returned390", scope: !2, file: !3, line: 104, type: !96, isLocal: true, isDefinition: true)
!6021 = !DIGlobalVariableExpression(var: !6022, expr: !DIExpression())
!6022 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___mmap_lock_do_trace_released391", scope: !2, file: !3, line: 110, type: !96, isLocal: true, isDefinition: true)
!6023 = !DIGlobalVariableExpression(var: !6024, expr: !DIExpression())
!6024 = distinct !DIGlobalVariable(name: "__tpstrtab_mmap_lock_released", scope: !2, file: !5937, line: 50, type: !6025, isLocal: true, isDefinition: true)
!6025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 152, elements: !6026)
!6026 = !{!6027}
!6027 = !DISubrange(count: 19)
!6028 = !DIGlobalVariableExpression(var: !6029, expr: !DIExpression())
!6029 = distinct !DIGlobalVariable(name: "__tpstrtab_mmap_lock_acquire_returned", scope: !2, file: !5937, line: 52, type: !6030, isLocal: true, isDefinition: true)
!6030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 216, elements: !6031)
!6031 = !{!6032}
!6032 = !DISubrange(count: 27)
!6033 = !DIGlobalVariableExpression(var: !6034, expr: !DIExpression())
!6034 = distinct !DIGlobalVariable(name: "str__mmap_lock__trace_system_name", scope: !2, file: !6035, line: 11, type: !6036, isLocal: true, isDefinition: true)
!6035 = !DIFile(filename: "./include/trace/stages/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b6fe39f4189f752573bd7bb8760fdf7e")
!6036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 80, elements: !1259)
!6037 = !DIGlobalVariableExpression(var: !6038, expr: !DIExpression())
!6038 = distinct !DIGlobalVariable(scope: null, file: !5937, line: 16, type: !6039, isLocal: true, isDefinition: true)
!6039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 56, elements: !2091)
!6040 = !DIGlobalVariableExpression(var: !6041, expr: !DIExpression())
!6041 = distinct !DIGlobalVariable(scope: null, file: !5937, line: 16, type: !6042, isLocal: true, isDefinition: true)
!6042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 152, elements: !6026)
!6043 = !DIGlobalVariableExpression(var: !6044, expr: !DIExpression())
!6044 = distinct !DIGlobalVariable(scope: null, file: !5937, line: 16, type: !6045, isLocal: true, isDefinition: true)
!6045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 24, elements: !415)
!6046 = !DIGlobalVariableExpression(var: !6047, expr: !DIExpression())
!6047 = distinct !DIGlobalVariable(scope: null, file: !5937, line: 16, type: !6048, isLocal: true, isDefinition: true)
!6048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 144, elements: !6049)
!6049 = !{!6050}
!6050 = !DISubrange(count: 18)
!6051 = !DIGlobalVariableExpression(var: !6052, expr: !DIExpression())
!6052 = distinct !DIGlobalVariable(scope: null, file: !5937, line: 16, type: !6053, isLocal: true, isDefinition: true)
!6053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 88, elements: !6054)
!6054 = !{!6055}
!6055 = !DISubrange(count: 11)
!6056 = !DIGlobalVariableExpression(var: !6057, expr: !DIExpression())
!6057 = distinct !DIGlobalVariable(scope: null, file: !5937, line: 16, type: !6058, isLocal: true, isDefinition: true)
!6058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 40, elements: !1147)
!6059 = !DIGlobalVariableExpression(var: !6060, expr: !DIExpression())
!6060 = distinct !DIGlobalVariable(scope: null, file: !5937, line: 16, type: !1031, isLocal: true, isDefinition: true)
!6061 = !DIGlobalVariableExpression(var: !6062, expr: !DIExpression())
!6062 = distinct !DIGlobalVariable(name: "trace_event_fields_mmap_lock", scope: !2, file: !5937, line: 16, type: !6063, isLocal: true, isDefinition: true)
!6063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2295, size: 1280, elements: !441)
!6064 = !DIGlobalVariableExpression(var: !6065, expr: !DIExpression())
!6065 = distinct !DIGlobalVariable(name: "trace_event_type_funcs_mmap_lock", scope: !2, file: !5937, line: 16, type: !2383, isLocal: true, isDefinition: true)
!6066 = !DIGlobalVariableExpression(var: !6067, expr: !DIExpression())
!6067 = distinct !DIGlobalVariable(scope: null, file: !5937, line: 16, type: !6068, isLocal: true, isDefinition: true)
!6068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 240, elements: !6069)
!6069 = !{!6070}
!6070 = !DISubrange(count: 30)
!6071 = !DIGlobalVariableExpression(var: !6072, expr: !DIExpression())
!6072 = distinct !DIGlobalVariable(scope: null, file: !5937, line: 16, type: !6058, isLocal: true, isDefinition: true)
!6073 = !DIGlobalVariableExpression(var: !6074, expr: !DIExpression())
!6074 = distinct !DIGlobalVariable(scope: null, file: !5937, line: 16, type: !1031, isLocal: true, isDefinition: true)
!6075 = !DIGlobalVariableExpression(var: !6076, expr: !DIExpression())
!6076 = distinct !DIGlobalVariable(name: "print_fmt_mmap_lock", scope: !2, file: !5937, line: 16, type: !6077, isLocal: true, isDefinition: true)
!6077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 752, elements: !6078)
!6078 = !{!6079}
!6079 = !DISubrange(count: 94)
!6080 = !DIGlobalVariableExpression(var: !6081, expr: !DIExpression())
!6081 = distinct !DIGlobalVariable(scope: null, file: !5937, line: 52, type: !5405, isLocal: true, isDefinition: true)
!6082 = !DIGlobalVariableExpression(var: !6083, expr: !DIExpression())
!6083 = distinct !DIGlobalVariable(name: "trace_event_fields_mmap_lock_acquire_returned", scope: !2, file: !5937, line: 52, type: !6084, isLocal: true, isDefinition: true)
!6084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2295, size: 1600, elements: !1147)
!6085 = !DIGlobalVariableExpression(var: !6086, expr: !DIExpression())
!6086 = distinct !DIGlobalVariable(name: "trace_event_type_funcs_mmap_lock_acquire_returned", scope: !2, file: !5937, line: 52, type: !2383, isLocal: true, isDefinition: true)
!6087 = !DIGlobalVariableExpression(var: !6088, expr: !DIExpression())
!6088 = distinct !DIGlobalVariable(scope: null, file: !5937, line: 52, type: !6089, isLocal: true, isDefinition: true)
!6089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 328, elements: !6090)
!6090 = !{!6091}
!6091 = !DISubrange(count: 41)
!6092 = !DIGlobalVariableExpression(var: !6093, expr: !DIExpression())
!6093 = distinct !DIGlobalVariable(name: "print_fmt_mmap_lock_acquire_returned", scope: !2, file: !5937, line: 52, type: !6094, isLocal: true, isDefinition: true)
!6094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 1104, elements: !6095)
!6095 = !{!6096}
!6096 = !DISubrange(count: 138)
!6097 = !DIGlobalVariableExpression(var: !6098, expr: !DIExpression())
!6098 = distinct !DIGlobalVariable(scope: null, file: !5937, line: 49, type: !6099, isLocal: true, isDefinition: true)
!6099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 264, elements: !6100)
!6100 = !{!6101}
!6101 = !DISubrange(count: 33)
!6102 = !DIGlobalVariableExpression(var: !6103, expr: !DIExpression())
!6103 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_mmap_lock_start_locking205", scope: !6104, file: !5937, line: 49, type: !96, isLocal: true, isDefinition: true)
!6104 = distinct !DISubprogram(name: "trace_mmap_lock_start_locking", scope: !5937, file: !5937, line: 49, type: !6105, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6107)
!6105 = !DISubroutineType(types: !6106)
!6106 = !{null, !315, !92, !1045}
!6107 = !{!6108, !6109, !6110, !6111, !6114, !6117, !6119, !6121, !6124, !6127, !6129, !6130}
!6108 = !DILocalVariable(name: "mm", arg: 1, scope: !6104, file: !5937, line: 49, type: !315)
!6109 = !DILocalVariable(name: "memcg_path", arg: 2, scope: !6104, file: !5937, line: 49, type: !92)
!6110 = !DILocalVariable(name: "write", arg: 3, scope: !6104, file: !5937, line: 49, type: !1045)
!6111 = !DILocalVariable(name: "__idx", scope: !6112, file: !5937, line: 49, type: !98)
!6112 = distinct !DILexicalBlock(scope: !6113, file: !5937, line: 49, column: 1)
!6113 = distinct !DILexicalBlock(scope: !6104, file: !5937, line: 49, column: 1)
!6114 = !DILocalVariable(name: "pscr_ret__", scope: !6115, file: !5937, line: 49, type: !98)
!6115 = distinct !DILexicalBlock(scope: !6116, file: !5937, line: 49, column: 1)
!6116 = distinct !DILexicalBlock(scope: !6112, file: !5937, line: 49, column: 1)
!6117 = !DILocalVariable(name: "__vpp_verify", scope: !6118, file: !5937, line: 49, type: !1382)
!6118 = distinct !DILexicalBlock(scope: !6115, file: !5937, line: 49, column: 1)
!6119 = !DILocalVariable(name: "pfo_val__", scope: !6120, file: !5937, line: 49, type: !484)
!6120 = distinct !DILexicalBlock(scope: !6115, file: !5937, line: 49, column: 1)
!6121 = !DILocalVariable(name: "__ret_warn_on", scope: !6122, file: !5937, line: 49, type: !98)
!6122 = distinct !DILexicalBlock(scope: !6123, file: !5937, line: 49, column: 1)
!6123 = distinct !DILexicalBlock(scope: !6112, file: !5937, line: 49, column: 1)
!6124 = !DILocalVariable(name: "__flags", scope: !6125, file: !5937, line: 49, type: !98)
!6125 = distinct !DILexicalBlock(scope: !6126, file: !5937, line: 49, column: 1)
!6126 = distinct !DILexicalBlock(scope: !6122, file: !5937, line: 49, column: 1)
!6127 = !DILocalVariable(name: "it_func_ptr", scope: !6128, file: !5937, line: 49, type: !302)
!6128 = distinct !DILexicalBlock(scope: !6112, file: !5937, line: 49, column: 1)
!6129 = !DILocalVariable(name: "__data", scope: !6128, file: !5937, line: 49, type: !96)
!6130 = !DILocalVariable(name: "__UNIQUE_ID_rcu203", scope: !6131, file: !5937, line: 49, type: !302)
!6131 = distinct !DILexicalBlock(scope: !6128, file: !5937, line: 49, column: 1)
!6132 = !DIGlobalVariableExpression(var: !6133, expr: !DIExpression())
!6133 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace206", scope: !6104, file: !5937, line: 49, type: !96, isLocal: true, isDefinition: true)
!6134 = !DIGlobalVariableExpression(var: !6135, expr: !DIExpression())
!6135 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_mmap_lock_acquire_returned221", scope: !6136, file: !5937, line: 52, type: !96, isLocal: true, isDefinition: true)
!6136 = distinct !DISubprogram(name: "trace_mmap_lock_acquire_returned", scope: !5937, file: !5937, line: 52, type: !6137, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6139)
!6137 = !DISubroutineType(types: !6138)
!6138 = !{null, !315, !92, !1045, !1045}
!6139 = !{!6140, !6141, !6142, !6143, !6144, !6147, !6150, !6152, !6154, !6157, !6160, !6162, !6163}
!6140 = !DILocalVariable(name: "mm", arg: 1, scope: !6136, file: !5937, line: 52, type: !315)
!6141 = !DILocalVariable(name: "memcg_path", arg: 2, scope: !6136, file: !5937, line: 52, type: !92)
!6142 = !DILocalVariable(name: "write", arg: 3, scope: !6136, file: !5937, line: 52, type: !1045)
!6143 = !DILocalVariable(name: "success", arg: 4, scope: !6136, file: !5937, line: 52, type: !1045)
!6144 = !DILocalVariable(name: "__idx", scope: !6145, file: !5937, line: 52, type: !98)
!6145 = distinct !DILexicalBlock(scope: !6146, file: !5937, line: 52, column: 1)
!6146 = distinct !DILexicalBlock(scope: !6136, file: !5937, line: 52, column: 1)
!6147 = !DILocalVariable(name: "pscr_ret__", scope: !6148, file: !5937, line: 52, type: !98)
!6148 = distinct !DILexicalBlock(scope: !6149, file: !5937, line: 52, column: 1)
!6149 = distinct !DILexicalBlock(scope: !6145, file: !5937, line: 52, column: 1)
!6150 = !DILocalVariable(name: "__vpp_verify", scope: !6151, file: !5937, line: 52, type: !1382)
!6151 = distinct !DILexicalBlock(scope: !6148, file: !5937, line: 52, column: 1)
!6152 = !DILocalVariable(name: "pfo_val__", scope: !6153, file: !5937, line: 52, type: !484)
!6153 = distinct !DILexicalBlock(scope: !6148, file: !5937, line: 52, column: 1)
!6154 = !DILocalVariable(name: "__ret_warn_on", scope: !6155, file: !5937, line: 52, type: !98)
!6155 = distinct !DILexicalBlock(scope: !6156, file: !5937, line: 52, column: 1)
!6156 = distinct !DILexicalBlock(scope: !6145, file: !5937, line: 52, column: 1)
!6157 = !DILocalVariable(name: "__flags", scope: !6158, file: !5937, line: 52, type: !98)
!6158 = distinct !DILexicalBlock(scope: !6159, file: !5937, line: 52, column: 1)
!6159 = distinct !DILexicalBlock(scope: !6155, file: !5937, line: 52, column: 1)
!6160 = !DILocalVariable(name: "it_func_ptr", scope: !6161, file: !5937, line: 52, type: !302)
!6161 = distinct !DILexicalBlock(scope: !6145, file: !5937, line: 52, column: 1)
!6162 = !DILocalVariable(name: "__data", scope: !6161, file: !5937, line: 52, type: !96)
!6163 = !DILocalVariable(name: "__UNIQUE_ID_rcu219", scope: !6164, file: !5937, line: 52, type: !302)
!6164 = distinct !DILexicalBlock(scope: !6161, file: !5937, line: 52, column: 1)
!6165 = !DIGlobalVariableExpression(var: !6166, expr: !DIExpression())
!6166 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace222", scope: !6136, file: !5937, line: 52, type: !96, isLocal: true, isDefinition: true)
!6167 = !DIGlobalVariableExpression(var: !6168, expr: !DIExpression())
!6168 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_mmap_lock_released213", scope: !6169, file: !5937, line: 50, type: !96, isLocal: true, isDefinition: true)
!6169 = distinct !DISubprogram(name: "trace_mmap_lock_released", scope: !5937, file: !5937, line: 50, type: !6105, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6170)
!6170 = !{!6171, !6172, !6173, !6174, !6177, !6180, !6182, !6184, !6187, !6190, !6192, !6193}
!6171 = !DILocalVariable(name: "mm", arg: 1, scope: !6169, file: !5937, line: 50, type: !315)
!6172 = !DILocalVariable(name: "memcg_path", arg: 2, scope: !6169, file: !5937, line: 50, type: !92)
!6173 = !DILocalVariable(name: "write", arg: 3, scope: !6169, file: !5937, line: 50, type: !1045)
!6174 = !DILocalVariable(name: "__idx", scope: !6175, file: !5937, line: 50, type: !98)
!6175 = distinct !DILexicalBlock(scope: !6176, file: !5937, line: 50, column: 1)
!6176 = distinct !DILexicalBlock(scope: !6169, file: !5937, line: 50, column: 1)
!6177 = !DILocalVariable(name: "pscr_ret__", scope: !6178, file: !5937, line: 50, type: !98)
!6178 = distinct !DILexicalBlock(scope: !6179, file: !5937, line: 50, column: 1)
!6179 = distinct !DILexicalBlock(scope: !6175, file: !5937, line: 50, column: 1)
!6180 = !DILocalVariable(name: "__vpp_verify", scope: !6181, file: !5937, line: 50, type: !1382)
!6181 = distinct !DILexicalBlock(scope: !6178, file: !5937, line: 50, column: 1)
!6182 = !DILocalVariable(name: "pfo_val__", scope: !6183, file: !5937, line: 50, type: !484)
!6183 = distinct !DILexicalBlock(scope: !6178, file: !5937, line: 50, column: 1)
!6184 = !DILocalVariable(name: "__ret_warn_on", scope: !6185, file: !5937, line: 50, type: !98)
!6185 = distinct !DILexicalBlock(scope: !6186, file: !5937, line: 50, column: 1)
!6186 = distinct !DILexicalBlock(scope: !6175, file: !5937, line: 50, column: 1)
!6187 = !DILocalVariable(name: "__flags", scope: !6188, file: !5937, line: 50, type: !98)
!6188 = distinct !DILexicalBlock(scope: !6189, file: !5937, line: 50, column: 1)
!6189 = distinct !DILexicalBlock(scope: !6185, file: !5937, line: 50, column: 1)
!6190 = !DILocalVariable(name: "it_func_ptr", scope: !6191, file: !5937, line: 50, type: !302)
!6191 = distinct !DILexicalBlock(scope: !6175, file: !5937, line: 50, column: 1)
!6192 = !DILocalVariable(name: "__data", scope: !6191, file: !5937, line: 50, type: !96)
!6193 = !DILocalVariable(name: "__UNIQUE_ID_rcu211", scope: !6194, file: !5937, line: 50, type: !302)
!6194 = distinct !DILexicalBlock(scope: !6191, file: !5937, line: 50, column: 1)
!6195 = !DIGlobalVariableExpression(var: !6196, expr: !DIExpression())
!6196 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace214", scope: !6169, file: !5937, line: 50, type: !96, isLocal: true, isDefinition: true)
!6197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 192, elements: !6198)
!6198 = !{!6199}
!6199 = !DISubrange(count: 24)
!6200 = !{!"rsp"}
!6201 = !{i32 7, !"Dwarf Version", i32 5}
!6202 = !{i32 2, !"Debug Info Version", i32 3}
!6203 = !{i32 1, !"wchar_size", i32 2}
!6204 = !{i32 8, !"cf-protection-branch", i32 1}
!6205 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6206 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6207 = !{i32 1, !"Code Model", i32 2}
!6208 = !{i32 1, !"override-stack-alignment", i32 8}
!6209 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6210 = distinct !DISubprogram(name: "__traceiter_mmap_lock_start_locking", scope: !5937, file: !5937, line: 49, type: !6211, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6213)
!6211 = !DISubroutineType(types: !6212)
!6212 = !{!98, !96, !315, !92, !1045}
!6213 = !{!6214, !6215, !6216, !6217, !6218, !6219, !6220}
!6214 = !DILocalVariable(name: "__data", arg: 1, scope: !6210, file: !5937, line: 49, type: !96)
!6215 = !DILocalVariable(name: "mm", arg: 2, scope: !6210, file: !5937, line: 49, type: !315)
!6216 = !DILocalVariable(name: "memcg_path", arg: 3, scope: !6210, file: !5937, line: 49, type: !92)
!6217 = !DILocalVariable(name: "write", arg: 4, scope: !6210, file: !5937, line: 49, type: !1045)
!6218 = !DILocalVariable(name: "it_func_ptr", scope: !6210, file: !5937, line: 49, type: !302)
!6219 = !DILocalVariable(name: "it_func", scope: !6210, file: !5937, line: 49, type: !96)
!6220 = !DILocalVariable(name: "__UNIQUE_ID_rcu227", scope: !6221, file: !5937, line: 49, type: !302)
!6221 = distinct !DILexicalBlock(scope: !6210, file: !5937, line: 49, column: 1)
!6222 = !DILocation(line: 49, column: 1, scope: !6210)
!6223 = !DILocation(line: 49, column: 1, scope: !6221)
!6224 = !DILocation(line: 49, column: 1, scope: !6225)
!6225 = distinct !DILexicalBlock(scope: !6221, file: !5937, line: 49, column: 1)
!6226 = !DILocation(line: 49, column: 1, scope: !6227)
!6227 = distinct !DILexicalBlock(scope: !6225, file: !5937, line: 49, column: 1)
!6228 = !DILocation(line: 49, column: 1, scope: !6229)
!6229 = distinct !DILexicalBlock(scope: !6210, file: !5937, line: 49, column: 1)
!6230 = !DILocation(line: 49, column: 1, scope: !6231)
!6231 = distinct !DILexicalBlock(scope: !6229, file: !5937, line: 49, column: 1)
!6232 = !DILocation(line: 49, column: 1, scope: !6233)
!6233 = distinct !DILexicalBlock(scope: !6234, file: !5937, line: 49, column: 1)
!6234 = distinct !DILexicalBlock(scope: !6231, file: !5937, line: 49, column: 1)
!6235 = !DILocation(line: 49, column: 1, scope: !6236)
!6236 = distinct !DILexicalBlock(scope: !6233, file: !5937, line: 49, column: 1)
!6237 = !DILocation(line: 49, column: 1, scope: !6234)
!6238 = !{i8 0, i8 2}
!6239 = distinct !{!6239, !6230, !6230, !6240, !6241}
!6240 = !{!"llvm.loop.mustprogress"}
!6241 = !{!"llvm.loop.unroll.disable"}
!6242 = distinct !DISubprogram(name: "__probestub_mmap_lock_start_locking", scope: !5937, file: !5937, line: 49, type: !313, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6243)
!6243 = !{!6244, !6245, !6246, !6247}
!6244 = !DILocalVariable(name: "__data", arg: 1, scope: !6242, file: !5937, line: 49, type: !96)
!6245 = !DILocalVariable(name: "mm", arg: 2, scope: !6242, file: !5937, line: 49, type: !315)
!6246 = !DILocalVariable(name: "memcg_path", arg: 3, scope: !6242, file: !5937, line: 49, type: !92)
!6247 = !DILocalVariable(name: "write", arg: 4, scope: !6242, file: !5937, line: 49, type: !1045)
!6248 = !DILocation(line: 49, column: 1, scope: !6242)
!6249 = distinct !DISubprogram(name: "trace_mmap_lock_reg", scope: !3, file: !3, line: 50, type: !2071, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6250 = !DILocation(line: 52, column: 2, scope: !6249)
!6251 = distinct !DISubprogram(name: "trace_mmap_lock_unreg", scope: !3, file: !3, line: 55, type: !2373, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6252 = !DILocation(line: 57, column: 1, scope: !6251)
!6253 = distinct !DISubprogram(name: "__traceiter_mmap_lock_released", scope: !5937, file: !5937, line: 50, type: !6211, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6254)
!6254 = !{!6255, !6256, !6257, !6258, !6259, !6260, !6261}
!6255 = !DILocalVariable(name: "__data", arg: 1, scope: !6253, file: !5937, line: 50, type: !96)
!6256 = !DILocalVariable(name: "mm", arg: 2, scope: !6253, file: !5937, line: 50, type: !315)
!6257 = !DILocalVariable(name: "memcg_path", arg: 3, scope: !6253, file: !5937, line: 50, type: !92)
!6258 = !DILocalVariable(name: "write", arg: 4, scope: !6253, file: !5937, line: 50, type: !1045)
!6259 = !DILocalVariable(name: "it_func_ptr", scope: !6253, file: !5937, line: 50, type: !302)
!6260 = !DILocalVariable(name: "it_func", scope: !6253, file: !5937, line: 50, type: !96)
!6261 = !DILocalVariable(name: "__UNIQUE_ID_rcu230", scope: !6262, file: !5937, line: 50, type: !302)
!6262 = distinct !DILexicalBlock(scope: !6253, file: !5937, line: 50, column: 1)
!6263 = !DILocation(line: 50, column: 1, scope: !6253)
!6264 = !DILocation(line: 50, column: 1, scope: !6262)
!6265 = !DILocation(line: 50, column: 1, scope: !6266)
!6266 = distinct !DILexicalBlock(scope: !6262, file: !5937, line: 50, column: 1)
!6267 = !DILocation(line: 50, column: 1, scope: !6268)
!6268 = distinct !DILexicalBlock(scope: !6266, file: !5937, line: 50, column: 1)
!6269 = !DILocation(line: 50, column: 1, scope: !6270)
!6270 = distinct !DILexicalBlock(scope: !6253, file: !5937, line: 50, column: 1)
!6271 = !DILocation(line: 50, column: 1, scope: !6272)
!6272 = distinct !DILexicalBlock(scope: !6270, file: !5937, line: 50, column: 1)
!6273 = !DILocation(line: 50, column: 1, scope: !6274)
!6274 = distinct !DILexicalBlock(scope: !6275, file: !5937, line: 50, column: 1)
!6275 = distinct !DILexicalBlock(scope: !6272, file: !5937, line: 50, column: 1)
!6276 = !DILocation(line: 50, column: 1, scope: !6277)
!6277 = distinct !DILexicalBlock(scope: !6274, file: !5937, line: 50, column: 1)
!6278 = !DILocation(line: 50, column: 1, scope: !6275)
!6279 = distinct !{!6279, !6271, !6271, !6240, !6241}
!6280 = distinct !DISubprogram(name: "__probestub_mmap_lock_released", scope: !5937, file: !5937, line: 50, type: !313, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6281)
!6281 = !{!6282, !6283, !6284, !6285}
!6282 = !DILocalVariable(name: "__data", arg: 1, scope: !6280, file: !5937, line: 50, type: !96)
!6283 = !DILocalVariable(name: "mm", arg: 2, scope: !6280, file: !5937, line: 50, type: !315)
!6284 = !DILocalVariable(name: "memcg_path", arg: 3, scope: !6280, file: !5937, line: 50, type: !92)
!6285 = !DILocalVariable(name: "write", arg: 4, scope: !6280, file: !5937, line: 50, type: !1045)
!6286 = !DILocation(line: 50, column: 1, scope: !6280)
!6287 = distinct !DISubprogram(name: "__traceiter_mmap_lock_acquire_returned", scope: !5937, file: !5937, line: 52, type: !6288, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6290)
!6288 = !DISubroutineType(types: !6289)
!6289 = !{!98, !96, !315, !92, !1045, !1045}
!6290 = !{!6291, !6292, !6293, !6294, !6295, !6296, !6297, !6298}
!6291 = !DILocalVariable(name: "__data", arg: 1, scope: !6287, file: !5937, line: 52, type: !96)
!6292 = !DILocalVariable(name: "mm", arg: 2, scope: !6287, file: !5937, line: 52, type: !315)
!6293 = !DILocalVariable(name: "memcg_path", arg: 3, scope: !6287, file: !5937, line: 52, type: !92)
!6294 = !DILocalVariable(name: "write", arg: 4, scope: !6287, file: !5937, line: 52, type: !1045)
!6295 = !DILocalVariable(name: "success", arg: 5, scope: !6287, file: !5937, line: 52, type: !1045)
!6296 = !DILocalVariable(name: "it_func_ptr", scope: !6287, file: !5937, line: 52, type: !302)
!6297 = !DILocalVariable(name: "it_func", scope: !6287, file: !5937, line: 52, type: !96)
!6298 = !DILocalVariable(name: "__UNIQUE_ID_rcu233", scope: !6299, file: !5937, line: 52, type: !302)
!6299 = distinct !DILexicalBlock(scope: !6287, file: !5937, line: 52, column: 1)
!6300 = !DILocation(line: 52, column: 1, scope: !6287)
!6301 = !DILocation(line: 52, column: 1, scope: !6299)
!6302 = !DILocation(line: 52, column: 1, scope: !6303)
!6303 = distinct !DILexicalBlock(scope: !6299, file: !5937, line: 52, column: 1)
!6304 = !DILocation(line: 52, column: 1, scope: !6305)
!6305 = distinct !DILexicalBlock(scope: !6303, file: !5937, line: 52, column: 1)
!6306 = !DILocation(line: 52, column: 1, scope: !6307)
!6307 = distinct !DILexicalBlock(scope: !6287, file: !5937, line: 52, column: 1)
!6308 = !DILocation(line: 52, column: 1, scope: !6309)
!6309 = distinct !DILexicalBlock(scope: !6307, file: !5937, line: 52, column: 1)
!6310 = !DILocation(line: 52, column: 1, scope: !6311)
!6311 = distinct !DILexicalBlock(scope: !6312, file: !5937, line: 52, column: 1)
!6312 = distinct !DILexicalBlock(scope: !6309, file: !5937, line: 52, column: 1)
!6313 = !DILocation(line: 52, column: 1, scope: !6314)
!6314 = distinct !DILexicalBlock(scope: !6311, file: !5937, line: 52, column: 1)
!6315 = !DILocation(line: 52, column: 1, scope: !6312)
!6316 = distinct !{!6316, !6308, !6308, !6240, !6241}
!6317 = distinct !DISubprogram(name: "__probestub_mmap_lock_acquire_returned", scope: !5937, file: !5937, line: 52, type: !5933, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6318)
!6318 = !{!6319, !6320, !6321, !6322, !6323}
!6319 = !DILocalVariable(name: "__data", arg: 1, scope: !6317, file: !5937, line: 52, type: !96)
!6320 = !DILocalVariable(name: "mm", arg: 2, scope: !6317, file: !5937, line: 52, type: !315)
!6321 = !DILocalVariable(name: "memcg_path", arg: 3, scope: !6317, file: !5937, line: 52, type: !92)
!6322 = !DILocalVariable(name: "write", arg: 4, scope: !6317, file: !5937, line: 52, type: !1045)
!6323 = !DILocalVariable(name: "success", arg: 5, scope: !6317, file: !5937, line: 52, type: !1045)
!6324 = !DILocation(line: 52, column: 1, scope: !6317)
!6325 = distinct !DISubprogram(name: "trace_event_raw_event_mmap_lock", scope: !5937, file: !5937, line: 16, type: !313, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6326)
!6326 = !{!6327, !6328, !6329, !6330}
!6327 = !DILocalVariable(name: "__data", arg: 1, scope: !6325, file: !5937, line: 16, type: !96)
!6328 = !DILocalVariable(name: "mm", arg: 2, scope: !6325, file: !5937, line: 16, type: !315)
!6329 = !DILocalVariable(name: "memcg_path", arg: 3, scope: !6325, file: !5937, line: 16, type: !92)
!6330 = !DILocalVariable(name: "write", arg: 4, scope: !6325, file: !5937, line: 16, type: !1045)
!6331 = !DILocation(line: 16, column: 1, scope: !6325)
!6332 = distinct !DISubprogram(name: "perf_trace_mmap_lock", scope: !5937, file: !5937, line: 16, type: !313, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6333)
!6333 = !{!6334, !6335, !6336, !6337, !6338, !6339, !6343, !6344, !6345, !6346, !6347, !6348, !6349, !6350, !6351, !6354}
!6334 = !DILocalVariable(name: "__data", arg: 1, scope: !6332, file: !5937, line: 16, type: !96)
!6335 = !DILocalVariable(name: "mm", arg: 2, scope: !6332, file: !5937, line: 16, type: !315)
!6336 = !DILocalVariable(name: "memcg_path", arg: 3, scope: !6332, file: !5937, line: 16, type: !92)
!6337 = !DILocalVariable(name: "write", arg: 4, scope: !6332, file: !5937, line: 16, type: !1045)
!6338 = !DILocalVariable(name: "event_call", scope: !6332, file: !5937, line: 16, type: !2278)
!6339 = !DILocalVariable(name: "__data_offsets", scope: !6332, file: !5937, line: 16, type: !6340)
!6340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_data_offsets_mmap_lock", file: !5937, line: 16, size: 32, elements: !6341)
!6341 = !{!6342}
!6342 = !DIDerivedType(tag: DW_TAG_member, name: "memcg_path", scope: !6340, file: !5937, line: 16, baseType: !484, size: 32)
!6343 = !DILocalVariable(name: "entry", scope: !6332, file: !5937, line: 16, type: !5935)
!6344 = !DILocalVariable(name: "__regs", scope: !6332, file: !5937, line: 16, type: !3394)
!6345 = !DILocalVariable(name: "__count", scope: !6332, file: !5937, line: 16, type: !532)
!6346 = !DILocalVariable(name: "__task", scope: !6332, file: !5937, line: 16, type: !473)
!6347 = !DILocalVariable(name: "head", scope: !6332, file: !5937, line: 16, type: !2470)
!6348 = !DILocalVariable(name: "__entry_size", scope: !6332, file: !5937, line: 16, type: !98)
!6349 = !DILocalVariable(name: "__data_size", scope: !6332, file: !5937, line: 16, type: !98)
!6350 = !DILocalVariable(name: "rctx", scope: !6332, file: !5937, line: 16, type: !98)
!6351 = !DILocalVariable(name: "__vpp_verify", scope: !6352, file: !5937, line: 16, type: !1382)
!6352 = distinct !DILexicalBlock(scope: !6353, file: !5937, line: 16, column: 1)
!6353 = distinct !DILexicalBlock(scope: !6332, file: !5937, line: 16, column: 1)
!6354 = !DILocalVariable(name: "tcp_ptr__", scope: !6355, file: !5937, line: 16, type: !115)
!6355 = distinct !DILexicalBlock(scope: !6353, file: !5937, line: 16, column: 1)
!6356 = !DILocation(line: 16, column: 1, scope: !6332)
!6357 = !DILocation(line: 16, column: 1, scope: !6353)
!6358 = !DILocation(line: 16, column: 1, scope: !6352)
!6359 = !DILocation(line: 16, column: 1, scope: !6355)
!6360 = !{i64 2155927989}
!6361 = !DILocation(line: 16, column: 1, scope: !6362)
!6362 = distinct !DILexicalBlock(scope: !6332, file: !5937, line: 16, column: 1)
!6363 = !DILocation(line: 16, column: 1, scope: !6364)
!6364 = distinct !DILexicalBlock(scope: !6332, file: !5937, line: 16, column: 1)
!6365 = !DILocation(line: 16, column: 1, scope: !6366)
!6366 = distinct !DILexicalBlock(scope: !6332, file: !5937, line: 16, column: 1)
!6367 = distinct !DISubprogram(name: "trace_event_raw_event_mmap_lock_acquire_returned", scope: !5937, file: !5937, line: 52, type: !5933, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6368)
!6368 = !{!6369, !6370, !6371, !6372, !6373}
!6369 = !DILocalVariable(name: "__data", arg: 1, scope: !6367, file: !5937, line: 52, type: !96)
!6370 = !DILocalVariable(name: "mm", arg: 2, scope: !6367, file: !5937, line: 52, type: !315)
!6371 = !DILocalVariable(name: "memcg_path", arg: 3, scope: !6367, file: !5937, line: 52, type: !92)
!6372 = !DILocalVariable(name: "write", arg: 4, scope: !6367, file: !5937, line: 52, type: !1045)
!6373 = !DILocalVariable(name: "success", arg: 5, scope: !6367, file: !5937, line: 52, type: !1045)
!6374 = !DILocation(line: 52, column: 1, scope: !6367)
!6375 = distinct !DISubprogram(name: "perf_trace_mmap_lock_acquire_returned", scope: !5937, file: !5937, line: 52, type: !5933, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6376)
!6376 = !{!6377, !6378, !6379, !6380, !6381, !6382, !6383, !6387, !6388, !6389, !6390, !6391, !6392, !6393, !6394, !6395, !6398}
!6377 = !DILocalVariable(name: "__data", arg: 1, scope: !6375, file: !5937, line: 52, type: !96)
!6378 = !DILocalVariable(name: "mm", arg: 2, scope: !6375, file: !5937, line: 52, type: !315)
!6379 = !DILocalVariable(name: "memcg_path", arg: 3, scope: !6375, file: !5937, line: 52, type: !92)
!6380 = !DILocalVariable(name: "write", arg: 4, scope: !6375, file: !5937, line: 52, type: !1045)
!6381 = !DILocalVariable(name: "success", arg: 5, scope: !6375, file: !5937, line: 52, type: !1045)
!6382 = !DILocalVariable(name: "event_call", scope: !6375, file: !5937, line: 52, type: !2278)
!6383 = !DILocalVariable(name: "__data_offsets", scope: !6375, file: !5937, line: 52, type: !6384)
!6384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_data_offsets_mmap_lock_acquire_returned", file: !5937, line: 52, size: 32, elements: !6385)
!6385 = !{!6386}
!6386 = !DIDerivedType(tag: DW_TAG_member, name: "memcg_path", scope: !6384, file: !5937, line: 52, baseType: !484, size: 32)
!6387 = !DILocalVariable(name: "entry", scope: !6375, file: !5937, line: 52, type: !5944)
!6388 = !DILocalVariable(name: "__regs", scope: !6375, file: !5937, line: 52, type: !3394)
!6389 = !DILocalVariable(name: "__count", scope: !6375, file: !5937, line: 52, type: !532)
!6390 = !DILocalVariable(name: "__task", scope: !6375, file: !5937, line: 52, type: !473)
!6391 = !DILocalVariable(name: "head", scope: !6375, file: !5937, line: 52, type: !2470)
!6392 = !DILocalVariable(name: "__entry_size", scope: !6375, file: !5937, line: 52, type: !98)
!6393 = !DILocalVariable(name: "__data_size", scope: !6375, file: !5937, line: 52, type: !98)
!6394 = !DILocalVariable(name: "rctx", scope: !6375, file: !5937, line: 52, type: !98)
!6395 = !DILocalVariable(name: "__vpp_verify", scope: !6396, file: !5937, line: 52, type: !1382)
!6396 = distinct !DILexicalBlock(scope: !6397, file: !5937, line: 52, column: 1)
!6397 = distinct !DILexicalBlock(scope: !6375, file: !5937, line: 52, column: 1)
!6398 = !DILocalVariable(name: "tcp_ptr__", scope: !6399, file: !5937, line: 52, type: !115)
!6399 = distinct !DILexicalBlock(scope: !6397, file: !5937, line: 52, column: 1)
!6400 = !DILocation(line: 52, column: 1, scope: !6375)
!6401 = !DILocation(line: 52, column: 1, scope: !6397)
!6402 = !DILocation(line: 52, column: 1, scope: !6396)
!6403 = !DILocation(line: 52, column: 1, scope: !6399)
!6404 = !{i64 2155937157}
!6405 = !DILocation(line: 52, column: 1, scope: !6406)
!6406 = distinct !DILexicalBlock(scope: !6375, file: !5937, line: 52, column: 1)
!6407 = !DILocation(line: 52, column: 1, scope: !6408)
!6408 = distinct !DILexicalBlock(scope: !6375, file: !5937, line: 52, column: 1)
!6409 = !DILocation(line: 52, column: 1, scope: !6410)
!6410 = distinct !DILexicalBlock(scope: !6375, file: !5937, line: 52, column: 1)
!6411 = distinct !DISubprogram(name: "__mmap_lock_do_trace_start_locking", scope: !3, file: !3, line: 93, type: !6412, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6414)
!6412 = !DISubroutineType(types: !6413)
!6413 = !{null, !315, !1045}
!6414 = !{!6415, !6416}
!6415 = !DILocalVariable(name: "mm", arg: 1, scope: !6411, file: !3, line: 93, type: !315)
!6416 = !DILocalVariable(name: "write", arg: 2, scope: !6411, file: !3, line: 93, type: !1045)
!6417 = !DILocation(line: 93, column: 59, scope: !6411)
!6418 = !DILocation(line: 93, column: 68, scope: !6411)
!6419 = !DILocation(line: 95, column: 2, scope: !6411)
!6420 = !DILocation(line: 96, column: 1, scope: !6411)
!6421 = !DILocation(line: 49, column: 1, scope: !6104)
!6422 = !DILocation(line: 49, column: 1, scope: !6113)
!6423 = !DILocation(line: 49, column: 1, scope: !6112)
!6424 = !DILocation(line: 49, column: 1, scope: !6115)
!6425 = !DILocation(line: 49, column: 1, scope: !6118)
!6426 = !DILocation(line: 49, column: 1, scope: !6120)
!6427 = !{i64 2152629080}
!6428 = !DILocation(line: 49, column: 1, scope: !6116)
!6429 = !DILocation(line: 49, column: 1, scope: !6122)
!6430 = !DILocation(line: 49, column: 1, scope: !6126)
!6431 = !DILocation(line: 49, column: 1, scope: !6125)
!6432 = !DILocation(line: 49, column: 1, scope: !6433)
!6433 = distinct !DILexicalBlock(scope: !6125, file: !5937, line: 49, column: 1)
!6434 = !DILocation(line: 49, column: 1, scope: !6435)
!6435 = distinct !DILexicalBlock(scope: !6125, file: !5937, line: 49, column: 1)
!6436 = !{i64 2152630309, i64 2152630338, i64 2152630384, i64 2152630442, i64 2152630496, i64 2152630550, i64 2152630605, i64 2152630636, i64 2152630944, i64 2152630950, i64 2152630997, i64 2152631020, i64 2152631046}
!6437 = !DILocation(line: 49, column: 1, scope: !6438)
!6438 = distinct !DILexicalBlock(scope: !6125, file: !5937, line: 49, column: 1)
!6439 = !DILocation(line: 49, column: 1, scope: !6123)
!6440 = !DILocation(line: 49, column: 1, scope: !6441)
!6441 = distinct !DILexicalBlock(scope: !6112, file: !5937, line: 49, column: 1)
!6442 = !{i64 2152631402}
!6443 = !DILocation(line: 49, column: 1, scope: !6128)
!6444 = !DILocation(line: 49, column: 1, scope: !6131)
!6445 = !DILocation(line: 49, column: 1, scope: !6446)
!6446 = distinct !DILexicalBlock(scope: !6131, file: !5937, line: 49, column: 1)
!6447 = !DILocation(line: 49, column: 1, scope: !6448)
!6448 = distinct !DILexicalBlock(scope: !6446, file: !5937, line: 49, column: 1)
!6449 = !DILocation(line: 49, column: 1, scope: !6450)
!6450 = distinct !DILexicalBlock(scope: !6128, file: !5937, line: 49, column: 1)
!6451 = !DILocation(line: 49, column: 1, scope: !6452)
!6452 = distinct !DILexicalBlock(scope: !6450, file: !5937, line: 49, column: 1)
!6453 = !DILocation(line: 49, column: 1, scope: !6454)
!6454 = distinct !DILexicalBlock(scope: !6452, file: !5937, line: 49, column: 1)
!6455 = !DILocation(line: 49, column: 1, scope: !6456)
!6456 = distinct !DILexicalBlock(scope: !6112, file: !5937, line: 49, column: 1)
!6457 = !{i64 2152638334}
!6458 = !DILocation(line: 49, column: 1, scope: !6459)
!6459 = distinct !DILexicalBlock(scope: !6456, file: !5937, line: 49, column: 1)
!6460 = !DILocation(line: 49, column: 1, scope: !6461)
!6461 = distinct !DILexicalBlock(scope: !6459, file: !5937, line: 49, column: 1)
!6462 = !{i64 2152638493}
!6463 = distinct !DISubprogram(name: "__mmap_lock_do_trace_acquire_returned", scope: !3, file: !3, line: 99, type: !6464, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6466)
!6464 = !DISubroutineType(types: !6465)
!6465 = !{null, !315, !1045, !1045}
!6466 = !{!6467, !6468, !6469}
!6467 = !DILocalVariable(name: "mm", arg: 1, scope: !6463, file: !3, line: 99, type: !315)
!6468 = !DILocalVariable(name: "write", arg: 2, scope: !6463, file: !3, line: 99, type: !1045)
!6469 = !DILocalVariable(name: "success", arg: 3, scope: !6463, file: !3, line: 100, type: !1045)
!6470 = !DILocation(line: 99, column: 62, scope: !6463)
!6471 = !DILocation(line: 99, column: 71, scope: !6463)
!6472 = !DILocation(line: 100, column: 14, scope: !6463)
!6473 = !DILocation(line: 102, column: 2, scope: !6463)
!6474 = !DILocation(line: 103, column: 1, scope: !6463)
!6475 = !DILocation(line: 52, column: 1, scope: !6136)
!6476 = !DILocation(line: 52, column: 1, scope: !6146)
!6477 = !DILocation(line: 52, column: 1, scope: !6145)
!6478 = !DILocation(line: 52, column: 1, scope: !6148)
!6479 = !DILocation(line: 52, column: 1, scope: !6151)
!6480 = !DILocation(line: 52, column: 1, scope: !6153)
!6481 = !{i64 2152728202}
!6482 = !DILocation(line: 52, column: 1, scope: !6149)
!6483 = !DILocation(line: 52, column: 1, scope: !6155)
!6484 = !DILocation(line: 52, column: 1, scope: !6159)
!6485 = !DILocation(line: 52, column: 1, scope: !6158)
!6486 = !DILocation(line: 52, column: 1, scope: !6487)
!6487 = distinct !DILexicalBlock(scope: !6158, file: !5937, line: 52, column: 1)
!6488 = !DILocation(line: 52, column: 1, scope: !6489)
!6489 = distinct !DILexicalBlock(scope: !6158, file: !5937, line: 52, column: 1)
!6490 = !{i64 2152729452, i64 2152729481, i64 2152729527, i64 2152729585, i64 2152729639, i64 2152729693, i64 2152729748, i64 2152729779, i64 2152730087, i64 2152730093, i64 2152730140, i64 2152730163, i64 2152730189}
!6491 = !DILocation(line: 52, column: 1, scope: !6492)
!6492 = distinct !DILexicalBlock(scope: !6158, file: !5937, line: 52, column: 1)
!6493 = !DILocation(line: 52, column: 1, scope: !6156)
!6494 = !DILocation(line: 52, column: 1, scope: !6495)
!6495 = distinct !DILexicalBlock(scope: !6145, file: !5937, line: 52, column: 1)
!6496 = !{i64 2152730545}
!6497 = !DILocation(line: 52, column: 1, scope: !6161)
!6498 = !DILocation(line: 52, column: 1, scope: !6164)
!6499 = !DILocation(line: 52, column: 1, scope: !6500)
!6500 = distinct !DILexicalBlock(scope: !6164, file: !5937, line: 52, column: 1)
!6501 = !DILocation(line: 52, column: 1, scope: !6502)
!6502 = distinct !DILexicalBlock(scope: !6500, file: !5937, line: 52, column: 1)
!6503 = !DILocation(line: 52, column: 1, scope: !6504)
!6504 = distinct !DILexicalBlock(scope: !6161, file: !5937, line: 52, column: 1)
!6505 = !DILocation(line: 52, column: 1, scope: !6506)
!6506 = distinct !DILexicalBlock(scope: !6504, file: !5937, line: 52, column: 1)
!6507 = !DILocation(line: 52, column: 1, scope: !6508)
!6508 = distinct !DILexicalBlock(scope: !6506, file: !5937, line: 52, column: 1)
!6509 = !DILocation(line: 52, column: 1, scope: !6510)
!6510 = distinct !DILexicalBlock(scope: !6145, file: !5937, line: 52, column: 1)
!6511 = !{i64 2152737678}
!6512 = !DILocation(line: 52, column: 1, scope: !6513)
!6513 = distinct !DILexicalBlock(scope: !6510, file: !5937, line: 52, column: 1)
!6514 = !DILocation(line: 52, column: 1, scope: !6515)
!6515 = distinct !DILexicalBlock(scope: !6513, file: !5937, line: 52, column: 1)
!6516 = !{i64 2152737837}
!6517 = distinct !DISubprogram(name: "__mmap_lock_do_trace_released", scope: !3, file: !3, line: 106, type: !6412, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6518)
!6518 = !{!6519, !6520}
!6519 = !DILocalVariable(name: "mm", arg: 1, scope: !6517, file: !3, line: 106, type: !315)
!6520 = !DILocalVariable(name: "write", arg: 2, scope: !6517, file: !3, line: 106, type: !1045)
!6521 = !DILocation(line: 106, column: 54, scope: !6517)
!6522 = !DILocation(line: 106, column: 63, scope: !6517)
!6523 = !DILocation(line: 108, column: 2, scope: !6517)
!6524 = !DILocation(line: 109, column: 1, scope: !6517)
!6525 = !DILocation(line: 50, column: 1, scope: !6169)
!6526 = !DILocation(line: 50, column: 1, scope: !6176)
!6527 = !DILocation(line: 50, column: 1, scope: !6175)
!6528 = !DILocation(line: 50, column: 1, scope: !6178)
!6529 = !DILocation(line: 50, column: 1, scope: !6181)
!6530 = !DILocation(line: 50, column: 1, scope: !6183)
!6531 = !{i64 2152680923}
!6532 = !DILocation(line: 50, column: 1, scope: !6179)
!6533 = !DILocation(line: 50, column: 1, scope: !6185)
!6534 = !DILocation(line: 50, column: 1, scope: !6189)
!6535 = !DILocation(line: 50, column: 1, scope: !6188)
!6536 = !DILocation(line: 50, column: 1, scope: !6537)
!6537 = distinct !DILexicalBlock(scope: !6188, file: !5937, line: 50, column: 1)
!6538 = !DILocation(line: 50, column: 1, scope: !6539)
!6539 = distinct !DILexicalBlock(scope: !6188, file: !5937, line: 50, column: 1)
!6540 = !{i64 2152682147, i64 2152682176, i64 2152682222, i64 2152682280, i64 2152682334, i64 2152682388, i64 2152682443, i64 2152682474, i64 2152682782, i64 2152682788, i64 2152682835, i64 2152682858, i64 2152682884}
!6541 = !DILocation(line: 50, column: 1, scope: !6542)
!6542 = distinct !DILexicalBlock(scope: !6188, file: !5937, line: 50, column: 1)
!6543 = !DILocation(line: 50, column: 1, scope: !6186)
!6544 = !DILocation(line: 50, column: 1, scope: !6545)
!6545 = distinct !DILexicalBlock(scope: !6175, file: !5937, line: 50, column: 1)
!6546 = !{i64 2152683240}
!6547 = !DILocation(line: 50, column: 1, scope: !6191)
!6548 = !DILocation(line: 50, column: 1, scope: !6194)
!6549 = !DILocation(line: 50, column: 1, scope: !6550)
!6550 = distinct !DILexicalBlock(scope: !6194, file: !5937, line: 50, column: 1)
!6551 = !DILocation(line: 50, column: 1, scope: !6552)
!6552 = distinct !DILexicalBlock(scope: !6550, file: !5937, line: 50, column: 1)
!6553 = !DILocation(line: 50, column: 1, scope: !6554)
!6554 = distinct !DILexicalBlock(scope: !6191, file: !5937, line: 50, column: 1)
!6555 = !DILocation(line: 50, column: 1, scope: !6556)
!6556 = distinct !DILexicalBlock(scope: !6554, file: !5937, line: 50, column: 1)
!6557 = !DILocation(line: 50, column: 1, scope: !6558)
!6558 = distinct !DILexicalBlock(scope: !6556, file: !5937, line: 50, column: 1)
!6559 = !DILocation(line: 50, column: 1, scope: !6560)
!6560 = distinct !DILexicalBlock(scope: !6175, file: !5937, line: 50, column: 1)
!6561 = !{i64 2152689867}
!6562 = !DILocation(line: 50, column: 1, scope: !6563)
!6563 = distinct !DILexicalBlock(scope: !6560, file: !5937, line: 50, column: 1)
!6564 = !DILocation(line: 50, column: 1, scope: !6565)
!6565 = distinct !DILexicalBlock(scope: !6563, file: !5937, line: 50, column: 1)
!6566 = !{i64 2152690026}
!6567 = distinct !DISubprogram(name: "do_trace_event_raw_event_mmap_lock", scope: !5937, file: !5937, line: 16, type: !313, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6568)
!6568 = !{!6569, !6570, !6571, !6572, !6573, !6592, !6593, !6611, !6612}
!6569 = !DILocalVariable(name: "__data", arg: 1, scope: !6567, file: !5937, line: 16, type: !96)
!6570 = !DILocalVariable(name: "mm", arg: 2, scope: !6567, file: !5937, line: 16, type: !315)
!6571 = !DILocalVariable(name: "memcg_path", arg: 3, scope: !6567, file: !5937, line: 16, type: !92)
!6572 = !DILocalVariable(name: "write", arg: 4, scope: !6567, file: !5937, line: 16, type: !1045)
!6573 = !DILocalVariable(name: "trace_file", scope: !6567, file: !5937, line: 16, type: !6574)
!6574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6575, size: 64)
!6575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_file", file: !246, line: 655, size: 768, elements: !6576)
!6576 = !{!6577, !6578, !6579, !6580, !6583, !6584, !6587, !6588, !6589, !6590, !6591}
!6577 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !6575, file: !246, line: 656, baseType: !173, size: 128)
!6578 = !DIDerivedType(tag: DW_TAG_member, name: "event_call", scope: !6575, file: !246, line: 657, baseType: !2278, size: 64, offset: 128)
!6579 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !6575, file: !246, line: 658, baseType: !2459, size: 64, offset: 192)
!6580 = !DIDerivedType(tag: DW_TAG_member, name: "ei", scope: !6575, file: !246, line: 659, baseType: !6581, size: 64, offset: 256)
!6581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6582, size: 64)
!6582 = !DICompositeType(tag: DW_TAG_structure_type, name: "eventfs_inode", file: !246, line: 659, flags: DIFlagFwdDecl)
!6583 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !6575, file: !246, line: 660, baseType: !2394, size: 64, offset: 320)
!6584 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !6575, file: !246, line: 661, baseType: !6585, size: 64, offset: 384)
!6585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6586, size: 64)
!6586 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_subsystem_dir", file: !246, line: 485, flags: DIFlagFwdDecl)
!6587 = !DIDerivedType(tag: DW_TAG_member, name: "triggers", scope: !6575, file: !246, line: 662, baseType: !173, size: 128, offset: 448)
!6588 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6575, file: !246, line: 680, baseType: !115, size: 64, offset: 576)
!6589 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !6575, file: !246, line: 681, baseType: !125, size: 32, offset: 640)
!6590 = !DIDerivedType(tag: DW_TAG_member, name: "sm_ref", scope: !6575, file: !246, line: 682, baseType: !125, size: 32, offset: 672)
!6591 = !DIDerivedType(tag: DW_TAG_member, name: "tm_ref", scope: !6575, file: !246, line: 683, baseType: !125, size: 32, offset: 704)
!6592 = !DILocalVariable(name: "__data_offsets", scope: !6567, file: !5937, line: 16, type: !6340)
!6593 = !DILocalVariable(name: "fbuffer", scope: !6567, file: !5937, line: 16, type: !6594)
!6594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_buffer", file: !246, line: 308, size: 384, elements: !6595)
!6595 = !{!6596, !6599, !6607, !6608, !6609, !6610}
!6596 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !6594, file: !246, line: 309, baseType: !6597, size: 64)
!6597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6598, size: 64)
!6598 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_buffer", file: !2409, line: 9, flags: DIFlagFwdDecl)
!6599 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !6594, file: !246, line: 310, baseType: !6600, size: 64, offset: 64)
!6600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6601, size: 64)
!6601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_event", file: !2409, line: 15, size: 32, elements: !6602)
!6602 = !{!6603, !6604, !6605}
!6603 = !DIDerivedType(tag: DW_TAG_member, name: "type_len", scope: !6601, file: !2409, line: 16, baseType: !484, size: 5, flags: DIFlagBitField, extraData: i64 0)
!6604 = !DIDerivedType(tag: DW_TAG_member, name: "time_delta", scope: !6601, file: !2409, line: 16, baseType: !484, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!6605 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !6601, file: !2409, line: 18, baseType: !6606, offset: 32)
!6606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, elements: !1276)
!6607 = !DIDerivedType(tag: DW_TAG_member, name: "trace_file", scope: !6594, file: !246, line: 311, baseType: !6574, size: 64, offset: 128)
!6608 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !6594, file: !246, line: 312, baseType: !96, size: 64, offset: 192)
!6609 = !DIDerivedType(tag: DW_TAG_member, name: "trace_ctx", scope: !6594, file: !246, line: 313, baseType: !7, size: 32, offset: 256)
!6610 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !6594, file: !246, line: 314, baseType: !3394, size: 64, offset: 320)
!6611 = !DILocalVariable(name: "entry", scope: !6567, file: !5937, line: 16, type: !5935)
!6612 = !DILocalVariable(name: "__data_size", scope: !6567, file: !5937, line: 16, type: !98)
!6613 = !DILocation(line: 16, column: 1, scope: !6567)
!6614 = !DILocation(line: 16, column: 1, scope: !6615)
!6615 = distinct !DILexicalBlock(scope: !6567, file: !5937, line: 16, column: 1)
!6616 = !DILocation(line: 16, column: 1, scope: !6617)
!6617 = distinct !DILexicalBlock(scope: !6567, file: !5937, line: 16, column: 1)
!6618 = !DILocation(line: 16, column: 1, scope: !6619)
!6619 = distinct !DILexicalBlock(scope: !6567, file: !5937, line: 16, column: 1)
!6620 = distinct !DISubprogram(name: "trace_trigger_soft_disabled", scope: !246, file: !246, line: 746, type: !6621, scopeLine: 747, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6623)
!6621 = !DISubroutineType(types: !6622)
!6622 = !{!1045, !6574}
!6623 = !{!6624, !6625}
!6624 = !DILocalVariable(name: "file", arg: 1, scope: !6620, file: !246, line: 746, type: !6574)
!6625 = !DILocalVariable(name: "eflags", scope: !6620, file: !246, line: 748, type: !115)
!6626 = !DILocation(line: 746, column: 54, scope: !6620)
!6627 = !DILocation(line: 748, column: 2, scope: !6620)
!6628 = !DILocation(line: 748, column: 16, scope: !6620)
!6629 = !DILocation(line: 748, column: 25, scope: !6620)
!6630 = !DILocation(line: 748, column: 31, scope: !6620)
!6631 = !DILocation(line: 750, column: 6, scope: !6632)
!6632 = distinct !DILexicalBlock(scope: !6620, file: !246, line: 750, column: 6)
!6633 = !DILocation(line: 750, column: 6, scope: !6620)
!6634 = !DILocation(line: 753, column: 3, scope: !6632)
!6635 = !DILocation(line: 755, column: 6, scope: !6636)
!6636 = distinct !DILexicalBlock(scope: !6620, file: !246, line: 755, column: 6)
!6637 = !DILocation(line: 755, column: 6, scope: !6620)
!6638 = !DILocation(line: 756, column: 3, scope: !6636)
!6639 = !DILocation(line: 758, column: 39, scope: !6620)
!6640 = !DILocation(line: 758, column: 9, scope: !6620)
!6641 = !DILocation(line: 758, column: 2, scope: !6620)
!6642 = !DILocation(line: 759, column: 1, scope: !6620)
!6643 = distinct !DISubprogram(name: "trace_event_get_offsets_mmap_lock", scope: !5937, file: !5937, line: 16, type: !6644, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6647)
!6644 = !DISubroutineType(types: !6645)
!6645 = !{!98, !6646, !315, !92, !1045}
!6646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6340, size: 64)
!6647 = !{!6648, !6649, !6650, !6651, !6652, !6653, !6654}
!6648 = !DILocalVariable(name: "__data_offsets", arg: 1, scope: !6643, file: !5937, line: 16, type: !6646)
!6649 = !DILocalVariable(name: "mm", arg: 2, scope: !6643, file: !5937, line: 16, type: !315)
!6650 = !DILocalVariable(name: "memcg_path", arg: 3, scope: !6643, file: !5937, line: 16, type: !92)
!6651 = !DILocalVariable(name: "write", arg: 4, scope: !6643, file: !5937, line: 16, type: !1045)
!6652 = !DILocalVariable(name: "__data_size", scope: !6643, file: !5937, line: 16, type: !98)
!6653 = !DILocalVariable(name: "__item_length", scope: !6643, file: !5937, line: 16, type: !98)
!6654 = !DILocalVariable(name: "entry", scope: !6643, file: !5937, line: 16, type: !5935)
!6655 = !DILocation(line: 16, column: 1, scope: !6643)
!6656 = !DISubprogram(name: "trace_event_buffer_reserve", scope: !246, file: !246, line: 317, type: !6657, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6657 = !DISubroutineType(types: !6658)
!6658 = !{!96, !6659, !6574, !115}
!6659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6594, size: 64)
!6660 = !DISubprogram(name: "strcpy", scope: !6661, file: !6661, line: 63, type: !6662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6661 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!6662 = !DISubroutineType(types: !6663)
!6663 = !{!1056, !1056, !92}
!6664 = !DISubprogram(name: "trace_event_buffer_commit", scope: !246, file: !246, line: 321, type: !6665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6665 = !DISubroutineType(types: !6666)
!6666 = !{null, !6659}
!6667 = !DISubprogram(name: "__trace_trigger_soft_disabled", scope: !246, file: !246, line: 734, type: !6621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6668 = !DISubprogram(name: "strlen", scope: !6661, file: !6661, line: 128, type: !6669, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6669 = !DISubroutineType(types: !6670)
!6670 = !{!115, !92}
!6671 = distinct !DISubprogram(name: "trace_raw_output_mmap_lock", scope: !5937, file: !5937, line: 16, type: !2388, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6672)
!6672 = !{!6673, !6674, !6675, !6676, !6678, !6679, !6680}
!6673 = !DILocalVariable(name: "iter", arg: 1, scope: !6671, file: !5937, line: 16, type: !2390)
!6674 = !DILocalVariable(name: "flags", arg: 2, scope: !6671, file: !5937, line: 16, type: !98)
!6675 = !DILocalVariable(name: "trace_event", arg: 3, scope: !6671, file: !5937, line: 16, type: !2453)
!6676 = !DILocalVariable(name: "s", scope: !6671, file: !5937, line: 16, type: !6677)
!6677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!6678 = !DILocalVariable(name: "p", scope: !6671, file: !5937, line: 16, type: !6677)
!6679 = !DILocalVariable(name: "field", scope: !6671, file: !5937, line: 16, type: !5935)
!6680 = !DILocalVariable(name: "ret", scope: !6671, file: !5937, line: 16, type: !98)
!6681 = !DILocation(line: 16, column: 1, scope: !6671)
!6682 = !DILocation(line: 16, column: 1, scope: !6683)
!6683 = distinct !DILexicalBlock(scope: !6671, file: !5937, line: 16, column: 1)
!6684 = !DISubprogram(name: "trace_raw_output_prep", scope: !246, file: !246, line: 57, type: !6685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6685 = !DISubroutineType(types: !6686)
!6686 = !{!98, !2390, !2453}
!6687 = !DISubprogram(name: "trace_event_printf", scope: !246, file: !246, line: 60, type: !6688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6688 = !DISubroutineType(types: !6689)
!6689 = !{null, !2390, !92, null}
!6690 = !DISubprogram(name: "trace_handle_return", scope: !246, file: !246, line: 165, type: !6691, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6691 = !DISubroutineType(types: !6692)
!6692 = !{!256, !6677}
!6693 = distinct !DISubprogram(name: "do_trace_event_raw_event_mmap_lock_acquire_returned", scope: !5937, file: !5937, line: 52, type: !5933, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6694)
!6694 = !{!6695, !6696, !6697, !6698, !6699, !6700, !6701, !6702, !6703, !6704}
!6695 = !DILocalVariable(name: "__data", arg: 1, scope: !6693, file: !5937, line: 52, type: !96)
!6696 = !DILocalVariable(name: "mm", arg: 2, scope: !6693, file: !5937, line: 52, type: !315)
!6697 = !DILocalVariable(name: "memcg_path", arg: 3, scope: !6693, file: !5937, line: 52, type: !92)
!6698 = !DILocalVariable(name: "write", arg: 4, scope: !6693, file: !5937, line: 52, type: !1045)
!6699 = !DILocalVariable(name: "success", arg: 5, scope: !6693, file: !5937, line: 52, type: !1045)
!6700 = !DILocalVariable(name: "trace_file", scope: !6693, file: !5937, line: 52, type: !6574)
!6701 = !DILocalVariable(name: "__data_offsets", scope: !6693, file: !5937, line: 52, type: !6384)
!6702 = !DILocalVariable(name: "fbuffer", scope: !6693, file: !5937, line: 52, type: !6594)
!6703 = !DILocalVariable(name: "entry", scope: !6693, file: !5937, line: 52, type: !5944)
!6704 = !DILocalVariable(name: "__data_size", scope: !6693, file: !5937, line: 52, type: !98)
!6705 = !DILocation(line: 52, column: 1, scope: !6693)
!6706 = !DILocation(line: 52, column: 1, scope: !6707)
!6707 = distinct !DILexicalBlock(scope: !6693, file: !5937, line: 52, column: 1)
!6708 = !DILocation(line: 52, column: 1, scope: !6709)
!6709 = distinct !DILexicalBlock(scope: !6693, file: !5937, line: 52, column: 1)
!6710 = !DILocation(line: 52, column: 1, scope: !6711)
!6711 = distinct !DILexicalBlock(scope: !6693, file: !5937, line: 52, column: 1)
!6712 = distinct !DISubprogram(name: "trace_event_get_offsets_mmap_lock_acquire_returned", scope: !5937, file: !5937, line: 52, type: !6713, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6716)
!6713 = !DISubroutineType(types: !6714)
!6714 = !{!98, !6715, !315, !92, !1045, !1045}
!6715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6384, size: 64)
!6716 = !{!6717, !6718, !6719, !6720, !6721, !6722, !6723, !6724}
!6717 = !DILocalVariable(name: "__data_offsets", arg: 1, scope: !6712, file: !5937, line: 52, type: !6715)
!6718 = !DILocalVariable(name: "mm", arg: 2, scope: !6712, file: !5937, line: 52, type: !315)
!6719 = !DILocalVariable(name: "memcg_path", arg: 3, scope: !6712, file: !5937, line: 52, type: !92)
!6720 = !DILocalVariable(name: "write", arg: 4, scope: !6712, file: !5937, line: 52, type: !1045)
!6721 = !DILocalVariable(name: "success", arg: 5, scope: !6712, file: !5937, line: 52, type: !1045)
!6722 = !DILocalVariable(name: "__data_size", scope: !6712, file: !5937, line: 52, type: !98)
!6723 = !DILocalVariable(name: "__item_length", scope: !6712, file: !5937, line: 52, type: !98)
!6724 = !DILocalVariable(name: "entry", scope: !6712, file: !5937, line: 52, type: !5944)
!6725 = !DILocation(line: 52, column: 1, scope: !6712)
!6726 = distinct !DISubprogram(name: "trace_raw_output_mmap_lock_acquire_returned", scope: !5937, file: !5937, line: 52, type: !2388, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6727)
!6727 = !{!6728, !6729, !6730, !6731, !6732, !6733, !6734}
!6728 = !DILocalVariable(name: "iter", arg: 1, scope: !6726, file: !5937, line: 52, type: !2390)
!6729 = !DILocalVariable(name: "flags", arg: 2, scope: !6726, file: !5937, line: 52, type: !98)
!6730 = !DILocalVariable(name: "trace_event", arg: 3, scope: !6726, file: !5937, line: 52, type: !2453)
!6731 = !DILocalVariable(name: "s", scope: !6726, file: !5937, line: 52, type: !6677)
!6732 = !DILocalVariable(name: "p", scope: !6726, file: !5937, line: 52, type: !6677)
!6733 = !DILocalVariable(name: "field", scope: !6726, file: !5937, line: 52, type: !5944)
!6734 = !DILocalVariable(name: "ret", scope: !6726, file: !5937, line: 52, type: !98)
!6735 = !DILocation(line: 52, column: 1, scope: !6726)
!6736 = !DILocation(line: 52, column: 1, scope: !6737)
!6737 = distinct !DILexicalBlock(scope: !6726, file: !5937, line: 52, column: 1)
!6738 = distinct !DISubprogram(name: "bpf_prog_array_valid", scope: !246, file: !246, line: 443, type: !6739, scopeLine: 444, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6741)
!6739 = !DISubroutineType(types: !6740)
!6740 = !{!1045, !2278}
!6741 = !{!6742}
!6742 = !DILocalVariable(name: "call", arg: 1, scope: !6738, file: !246, line: 443, type: !2278)
!6743 = !DILocation(line: 443, column: 66, scope: !6738)
!6744 = !DILocation(line: 462, column: 11, scope: !6745)
!6745 = distinct !DILexicalBlock(scope: !6738, file: !246, line: 462, column: 11)
!6746 = !DILocation(line: 462, column: 11, scope: !6747)
!6747 = distinct !DILexicalBlock(scope: !6745, file: !246, line: 462, column: 11)
!6748 = !DILocation(line: 462, column: 10, scope: !6738)
!6749 = !DILocation(line: 462, column: 9, scope: !6738)
!6750 = !DILocation(line: 462, column: 2, scope: !6738)
!6751 = distinct !DISubprogram(name: "hlist_empty", scope: !6752, file: !6752, line: 970, type: !6753, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6757)
!6752 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6753 = !DISubroutineType(types: !6754)
!6754 = !{!98, !6755}
!6755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6756, size: 64)
!6756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!6757 = !{!6758}
!6758 = !DILocalVariable(name: "h", arg: 1, scope: !6751, file: !6752, line: 970, type: !6755)
!6759 = !DILocation(line: 970, column: 56, scope: !6751)
!6760 = !DILocation(line: 972, column: 10, scope: !6761)
!6761 = distinct !DILexicalBlock(scope: !6751, file: !6752, line: 972, column: 10)
!6762 = !DILocation(line: 972, column: 10, scope: !6763)
!6763 = distinct !DILexicalBlock(scope: !6761, file: !6752, line: 972, column: 10)
!6764 = !DILocation(line: 972, column: 9, scope: !6751)
!6765 = !DILocation(line: 972, column: 2, scope: !6751)
!6766 = !DISubprogram(name: "perf_trace_buf_alloc", scope: !246, file: !246, line: 904, type: !6767, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6767 = !DISubroutineType(types: !6768)
!6768 = !{!96, !98, !6769, !896}
!6769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!6770 = distinct !DISubprogram(name: "perf_fetch_caller_regs", scope: !237, file: !237, line: 1427, type: !6771, scopeLine: 1428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6773)
!6771 = !DISubroutineType(types: !6772)
!6772 = !{null, !3394}
!6773 = !{!6774}
!6774 = !DILocalVariable(name: "regs", arg: 1, scope: !6770, file: !237, line: 1427, type: !3394)
!6775 = !DILocation(line: 1427, column: 59, scope: !6770)
!6776 = !DILocation(line: 1429, column: 2, scope: !6777)
!6777 = distinct !DILexicalBlock(scope: !6770, file: !237, line: 1429, column: 2)
!6778 = !DILocation(line: 1430, column: 1, scope: !6770)
!6779 = !DISubprogram(name: "perf_trace_run_bpf_submit", scope: !246, file: !246, line: 936, type: !6780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6780 = !DISubroutineType(types: !6781)
!6781 = !{null, !96, !98, !98, !2278, !532, !3394, !2470, !473}
!6782 = distinct !DISubprogram(name: "static_key_false", scope: !2267, file: !2267, line: 205, type: !6783, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6786)
!6783 = !DISubroutineType(types: !6784)
!6784 = !{!1045, !6785}
!6785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!6786 = !{!6787}
!6787 = !DILocalVariable(name: "key", arg: 1, scope: !6782, file: !2267, line: 205, type: !6785)
!6788 = !DILocation(line: 205, column: 65, scope: !6782)
!6789 = !DILocation(line: 207, column: 28, scope: !6782)
!6790 = !DILocation(line: 207, column: 9, scope: !6782)
!6791 = !DILocation(line: 207, column: 2, scope: !6782)
!6792 = distinct !DISubprogram(name: "cpu_online", scope: !725, file: !725, line: 1080, type: !6793, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6795)
!6793 = !DISubroutineType(types: !6794)
!6794 = !{!1045, !7}
!6795 = !{!6796}
!6796 = !DILocalVariable(name: "cpu", arg: 1, scope: !6792, file: !725, line: 1080, type: !7)
!6797 = !DILocation(line: 1080, column: 44, scope: !6792)
!6798 = !DILocation(line: 1082, column: 26, scope: !6792)
!6799 = !DILocation(line: 1082, column: 9, scope: !6792)
!6800 = !DILocation(line: 1082, column: 2, scope: !6792)
!6801 = distinct !DISubprogram(name: "__preempt_count_add", scope: !6802, file: !6802, line: 78, type: !5271, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6803)
!6802 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!6803 = !{!6804, !6805, !6807}
!6804 = !DILocalVariable(name: "val", arg: 1, scope: !6801, file: !6802, line: 78, type: !98)
!6805 = !DILocalVariable(name: "pao_ID__", scope: !6806, file: !6802, line: 80, type: !2163)
!6806 = distinct !DILexicalBlock(scope: !6801, file: !6802, line: 80, column: 2)
!6807 = !DILocalVariable(name: "pto_val__", scope: !6808, file: !6802, line: 80, type: !484)
!6808 = distinct !DILexicalBlock(scope: !6809, file: !6802, line: 80, column: 2)
!6809 = distinct !DILexicalBlock(scope: !6810, file: !6802, line: 80, column: 2)
!6810 = distinct !DILexicalBlock(scope: !6806, file: !6802, line: 80, column: 2)
!6811 = !DILocation(line: 78, column: 53, scope: !6801)
!6812 = !DILocation(line: 80, column: 2, scope: !6801)
!6813 = !DILocation(line: 80, column: 2, scope: !6806)
!6814 = !DILocation(line: 80, column: 2, scope: !6810)
!6815 = !DILocation(line: 80, column: 2, scope: !6816)
!6816 = distinct !DILexicalBlock(scope: !6810, file: !6802, line: 80, column: 2)
!6817 = !{i64 2149481441}
!6818 = !DILocation(line: 80, column: 2, scope: !6809)
!6819 = !DILocation(line: 80, column: 2, scope: !6820)
!6820 = distinct !DILexicalBlock(scope: !6809, file: !6802, line: 80, column: 2)
!6821 = !{i64 2149481736}
!6822 = !DILocation(line: 80, column: 2, scope: !6808)
!6823 = !{i64 2149482441}
!6824 = !DILocation(line: 81, column: 1, scope: !6801)
!6825 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !6802, file: !6802, line: 93, type: !1918, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6826)
!6826 = !{!6827}
!6827 = !DILocalVariable(name: "c", scope: !6828, file: !6802, line: 95, type: !1045)
!6828 = distinct !DILexicalBlock(scope: !6825, file: !6802, line: 95, column: 9)
!6829 = !DILocation(line: 95, column: 9, scope: !6828)
!6830 = !{i64 2149485797, i64 2149485890}
!6831 = !DILocation(line: 95, column: 9, scope: !6825)
!6832 = !DILocation(line: 95, column: 2, scope: !6825)
!6833 = distinct !DISubprogram(name: "arch_static_branch", scope: !6834, file: !6834, line: 25, type: !6835, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6837)
!6834 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!6835 = !DISubroutineType(types: !6836)
!6836 = !{!1045, !6785, !1045}
!6837 = !{!6838, !6839, !6840}
!6838 = !DILocalVariable(name: "key", arg: 1, scope: !6833, file: !6834, line: 25, type: !6785)
!6839 = !DILocalVariable(name: "branch", arg: 2, scope: !6833, file: !6834, line: 25, type: !1045)
!6840 = !DILabel(scope: !6833, name: "l_yes", file: !6834, line: 33)
!6841 = !DILocation(line: 25, column: 67, scope: !6833)
!6842 = !DILocation(line: 25, column: 77, scope: !6833)
!6843 = !DILocation(line: 30, column: 13, scope: !6833)
!6844 = !DILocation(line: 30, column: 28, scope: !6833)
!6845 = !DILocation(line: 30, column: 26, scope: !6833)
!6846 = !DILocation(line: 27, column: 2, scope: !6833)
!6847 = !{i64 860408, i64 860452, i64 2148345135, i64 2148345156, i64 2148345182, i64 2148345215, i64 2148345249, i64 2148345273}
!6848 = !DILocation(line: 32, column: 2, scope: !6833)
!6849 = !DILocation(line: 33, column: 1, scope: !6833)
!6850 = !DILocation(line: 34, column: 2, scope: !6833)
!6851 = !DILocation(line: 35, column: 1, scope: !6833)
!6852 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !725, file: !725, line: 502, type: !6853, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6855)
!6853 = !DISubroutineType(types: !6854)
!6854 = !{!1045, !98, !5959}
!6855 = !{!6856, !6857}
!6856 = !DILocalVariable(name: "cpu", arg: 1, scope: !6852, file: !725, line: 502, type: !98)
!6857 = !DILocalVariable(name: "cpumask", arg: 2, scope: !6852, file: !725, line: 502, type: !5959)
!6858 = !DILocation(line: 502, column: 50, scope: !6852)
!6859 = !DILocation(line: 502, column: 77, scope: !6852)
!6860 = !DILocation(line: 504, column: 9, scope: !6852)
!6861 = !DILocation(line: 504, column: 2, scope: !6852)
!6862 = distinct !DISubprogram(name: "_test_bit", scope: !6863, file: !6863, line: 139, type: !6864, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6869)
!6863 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6864 = !DISubroutineType(types: !6865)
!6865 = !{!1045, !115, !6866}
!6866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6867, size: 64)
!6867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6868)
!6868 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !115)
!6869 = !{!6870, !6871}
!6870 = !DILocalVariable(name: "nr", arg: 1, scope: !6862, file: !6863, line: 139, type: !115)
!6871 = !DILocalVariable(name: "addr", arg: 2, scope: !6862, file: !6863, line: 139, type: !6866)
!6872 = !DILocation(line: 139, column: 25, scope: !6862)
!6873 = !DILocation(line: 139, column: 59, scope: !6862)
!6874 = !DILocation(line: 141, column: 25, scope: !6862)
!6875 = !DILocation(line: 141, column: 32, scope: !6862)
!6876 = !DILocation(line: 141, column: 30, scope: !6862)
!6877 = !DILocation(line: 141, column: 2, scope: !6862)
!6878 = !DILocation(line: 142, column: 23, scope: !6862)
!6879 = !DILocation(line: 142, column: 27, scope: !6862)
!6880 = !DILocation(line: 142, column: 9, scope: !6862)
!6881 = !DILocation(line: 142, column: 2, scope: !6862)
!6882 = distinct !DISubprogram(name: "cpumask_check", scope: !725, file: !725, line: 148, type: !6883, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6885)
!6883 = !DISubroutineType(types: !6884)
!6884 = !{!7, !7}
!6885 = !{!6886}
!6886 = !DILocalVariable(name: "cpu", arg: 1, scope: !6882, file: !725, line: 148, type: !7)
!6887 = !DILocation(line: 148, column: 64, scope: !6882)
!6888 = !DILocation(line: 150, column: 20, scope: !6882)
!6889 = !DILocation(line: 150, column: 2, scope: !6882)
!6890 = !DILocation(line: 151, column: 9, scope: !6882)
!6891 = !DILocation(line: 151, column: 2, scope: !6882)
!6892 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6893, file: !6893, line: 66, type: !6894, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6899)
!6893 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6894 = !DISubroutineType(types: !6895)
!6895 = !{null, !6896, !111}
!6896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6897, size: 64)
!6897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6898)
!6898 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6899 = !{!6900, !6901}
!6900 = !DILocalVariable(name: "v", arg: 1, scope: !6892, file: !6893, line: 66, type: !6896)
!6901 = !DILocalVariable(name: "size", arg: 2, scope: !6892, file: !6893, line: 66, type: !111)
!6902 = !DILocation(line: 66, column: 73, scope: !6892)
!6903 = !DILocation(line: 66, column: 83, scope: !6892)
!6904 = !DILocation(line: 68, column: 19, scope: !6892)
!6905 = !DILocation(line: 68, column: 22, scope: !6892)
!6906 = !DILocation(line: 68, column: 2, scope: !6892)
!6907 = !DILocation(line: 69, column: 2, scope: !6892)
!6908 = !DILocation(line: 70, column: 1, scope: !6892)
!6909 = distinct !DISubprogram(name: "arch_test_bit", scope: !6910, file: !6910, line: 237, type: !6864, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6911)
!6910 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6911 = !{!6912, !6913}
!6912 = !DILocalVariable(name: "nr", arg: 1, scope: !6909, file: !6910, line: 237, type: !115)
!6913 = !DILocalVariable(name: "addr", arg: 2, scope: !6909, file: !6910, line: 237, type: !6866)
!6914 = !DILocation(line: 237, column: 29, scope: !6909)
!6915 = !DILocation(line: 237, column: 63, scope: !6909)
!6916 = !DILocation(line: 239, column: 30, scope: !6909)
!6917 = !DILocation(line: 239, column: 9, scope: !6909)
!6918 = !DILocation(line: 239, column: 54, scope: !6909)
!6919 = !DILocation(line: 239, column: 58, scope: !6909)
!6920 = !DILocation(line: 239, column: 36, scope: !6909)
!6921 = !DILocation(line: 240, column: 26, scope: !6909)
!6922 = !DILocation(line: 240, column: 30, scope: !6909)
!6923 = !DILocation(line: 240, column: 8, scope: !6909)
!6924 = !DILocation(line: 239, column: 2, scope: !6909)
!6925 = distinct !DISubprogram(name: "kasan_check_read", scope: !6926, file: !6926, line: 40, type: !6927, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6929)
!6926 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6927 = !DISubroutineType(types: !6928)
!6928 = !{!1045, !6896, !7}
!6929 = !{!6930, !6931}
!6930 = !DILocalVariable(name: "p", arg: 1, scope: !6925, file: !6926, line: 40, type: !6896)
!6931 = !DILocalVariable(name: "size", arg: 2, scope: !6925, file: !6926, line: 40, type: !7)
!6932 = !DILocation(line: 40, column: 58, scope: !6925)
!6933 = !DILocation(line: 40, column: 74, scope: !6925)
!6934 = !DILocation(line: 42, column: 2, scope: !6925)
!6935 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6936, file: !6936, line: 229, type: !6937, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6939)
!6936 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6937 = !DISubroutineType(types: !6938)
!6938 = !{null, !6896, !111, !98}
!6939 = !{!6940, !6941, !6942}
!6940 = !DILocalVariable(name: "ptr", arg: 1, scope: !6935, file: !6936, line: 229, type: !6896)
!6941 = !DILocalVariable(name: "size", arg: 2, scope: !6935, file: !6936, line: 229, type: !111)
!6942 = !DILocalVariable(name: "type", arg: 3, scope: !6935, file: !6936, line: 230, type: !98)
!6943 = !DILocation(line: 229, column: 60, scope: !6935)
!6944 = !DILocation(line: 229, column: 72, scope: !6935)
!6945 = !DILocation(line: 230, column: 15, scope: !6935)
!6946 = !DILocation(line: 230, column: 23, scope: !6935)
!6947 = distinct !DISubprogram(name: "constant_test_bit", scope: !6910, file: !6910, line: 204, type: !6948, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6950)
!6948 = !DISubroutineType(types: !6949)
!6949 = !{!1045, !808, !6866}
!6950 = !{!6951, !6952}
!6951 = !DILocalVariable(name: "nr", arg: 1, scope: !6947, file: !6910, line: 204, type: !808)
!6952 = !DILocalVariable(name: "addr", arg: 2, scope: !6947, file: !6910, line: 204, type: !6866)
!6953 = !DILocation(line: 204, column: 52, scope: !6947)
!6954 = !DILocation(line: 204, column: 86, scope: !6947)
!6955 = !DILocation(line: 206, column: 19, scope: !6947)
!6956 = !DILocation(line: 206, column: 22, scope: !6947)
!6957 = !DILocation(line: 206, column: 15, scope: !6947)
!6958 = !DILocation(line: 207, column: 4, scope: !6947)
!6959 = !DILocation(line: 207, column: 9, scope: !6947)
!6960 = !DILocation(line: 207, column: 12, scope: !6947)
!6961 = !DILocation(line: 206, column: 44, scope: !6947)
!6962 = !DILocation(line: 207, column: 37, scope: !6947)
!6963 = !DILocation(line: 206, column: 2, scope: !6947)
!6964 = distinct !DISubprogram(name: "variable_test_bit", scope: !6910, file: !6910, line: 224, type: !6948, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6965)
!6965 = !{!6966, !6967, !6968}
!6966 = !DILocalVariable(name: "nr", arg: 1, scope: !6964, file: !6910, line: 224, type: !808)
!6967 = !DILocalVariable(name: "addr", arg: 2, scope: !6964, file: !6910, line: 224, type: !6866)
!6968 = !DILocalVariable(name: "oldbit", scope: !6964, file: !6910, line: 226, type: !1045)
!6969 = !DILocation(line: 224, column: 52, scope: !6964)
!6970 = !DILocation(line: 224, column: 86, scope: !6964)
!6971 = !DILocation(line: 226, column: 2, scope: !6964)
!6972 = !DILocation(line: 226, column: 7, scope: !6964)
!6973 = !DILocation(line: 231, column: 33, scope: !6964)
!6974 = !DILocation(line: 231, column: 46, scope: !6964)
!6975 = !DILocation(line: 228, column: 2, scope: !6964)
!6976 = !{i64 2147980408, i64 2147980482}
!6977 = !DILocation(line: 233, column: 9, scope: !6964)
!6978 = !DILocation(line: 234, column: 1, scope: !6964)
!6979 = !DILocation(line: 233, column: 2, scope: !6964)
!6980 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !725, file: !725, line: 140, type: !6981, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6983)
!6981 = !DISubroutineType(types: !6982)
!6982 = !{null, !7, !7}
!6983 = !{!6984, !6985}
!6984 = !DILocalVariable(name: "cpu", arg: 1, scope: !6980, file: !725, line: 140, type: !7)
!6985 = !DILocalVariable(name: "bits", arg: 2, scope: !6980, file: !725, line: 140, type: !7)
!6986 = !DILocation(line: 140, column: 60, scope: !6980)
!6987 = !DILocation(line: 140, column: 78, scope: !6980)
!6988 = !DILocation(line: 145, column: 1, scope: !6980)
