; ModuleID = 'drivers/pci/vpd.c'
source_filename = "drivers/pci/vpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_vpd_alloc: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_vpd_alloc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_vpd_find_id_string: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_vpd_find_id_string ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_read_vpd: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_read_vpd ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_read_vpd_any: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_read_vpd_any ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_write_vpd: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_write_vpd ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_write_vpd_any: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_write_vpd_any ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_vpd_find_ro_info_keyword: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_vpd_find_ro_info_keyword ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_vpd_check_csum: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_vpd_check_csum ; .previous"
module asm ".section .pci_fixup_early, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x8086, (~0)\09\09\09"
module asm ".long 0x0200, 8\09\09"
module asm ".long __UNIQUE_ID_quirk_f0_vpd_link300 - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_header, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x1000, 0x0060\09\09\09"
module asm ".long (~0), 0\09\09"
module asm ".long __UNIQUE_ID_quirk_blacklist_vpd302 - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_header, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x1000, 0x007c\09\09\09"
module asm ".long (~0), 0\09\09"
module asm ".long __UNIQUE_ID_quirk_blacklist_vpd304 - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_header, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x1000, 0x0413\09\09\09"
module asm ".long (~0), 0\09\09"
module asm ".long __UNIQUE_ID_quirk_blacklist_vpd306 - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_header, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x1000, 0x0078\09\09\09"
module asm ".long (~0), 0\09\09"
module asm ".long __UNIQUE_ID_quirk_blacklist_vpd308 - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_header, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x1000, 0x0079\09\09\09"
module asm ".long (~0), 0\09\09"
module asm ".long __UNIQUE_ID_quirk_blacklist_vpd310 - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_header, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x1000, 0x0073\09\09\09"
module asm ".long (~0), 0\09\09"
module asm ".long __UNIQUE_ID_quirk_blacklist_vpd312 - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_header, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x1000, 0x0071\09\09\09"
module asm ".long (~0), 0\09\09"
module asm ".long __UNIQUE_ID_quirk_blacklist_vpd314 - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_header, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x1000, 0x005b\09\09\09"
module asm ".long (~0), 0\09\09"
module asm ".long __UNIQUE_ID_quirk_blacklist_vpd316 - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_header, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x1000, 0x002f\09\09\09"
module asm ".long (~0), 0\09\09"
module asm ".long __UNIQUE_ID_quirk_blacklist_vpd318 - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_header, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x1000, 0x005d\09\09\09"
module asm ".long (~0), 0\09\09"
module asm ".long __UNIQUE_ID_quirk_blacklist_vpd320 - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_header, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x1000, 0x005f\09\09\09"
module asm ".long (~0), 0\09\09"
module asm ".long __UNIQUE_ID_quirk_blacklist_vpd322 - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_header, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x1969, (~0)\09\09\09"
module asm ".long (~0), 0\09\09"
module asm ".long __UNIQUE_ID_quirk_blacklist_vpd324 - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_header, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x1c36, 0x0031\09\09\09"
module asm ".long 0x0604, 8\09\09"
module asm ".long __UNIQUE_ID_quirk_blacklist_vpd326 - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_header, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x1425, (~0)\09\09\09"
module asm ".long (~0), 0\09\09"
module asm ".long __UNIQUE_ID_quirk_chelsio_extend_vpd328 - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i64, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.pcpu_hot = type { %union.anon.15 }
%union.anon.15 = type { %struct.anon.16, [16 x i8] }
%struct.anon.16 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
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
%struct.anon.14 = type { i16 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, i64, i64, %struct.list_head, i32, i64, i64, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i64, [16 x i8], %struct.sched_avg }
%struct.load_weight = type { i64, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i64, i64, i64, %struct.util_est }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i64, i64, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [32 x i8] }
%struct.cpumask = type { [1 x i64] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i64, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.restart_block = type { i64, ptr, %union.anon.3 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.posix_cputimers_work = type { %struct.callback_head, %struct.mutex, i32 }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i64] }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%struct.page_frag = type { ptr, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.llist_head = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x ptr], i64, i64, i64, i64, i64, ptr, i64, i8, i32, [40 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.fpu = type { i32, i64, ptr, ptr, %struct.fpu_state_perm, %struct.fpu_state_perm, %struct.fpstate }
%struct.fpu_state_perm = type { i64, i32, i32 }
%struct.fpstate = type { i32, i32, i64, i64, i64, i8, [31 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.9, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.12 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { i64, i64 }
%union.anon.12 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.anon.17 = type { i32 }

@pci_vpd_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !0
@.str = private unnamed_addr constant [15 x i8] c"&dev->vpd.lock\00", align 1, !dbg !4946
@vpd_attrs = internal global [2 x ptr] [ptr @bin_attr_vpd, ptr null], align 16, !dbg !5002
@pci_dev_vpd_attr_group = hidden constant %struct.attribute_group { ptr null, ptr null, ptr @vpd_attr_is_visible, ptr null, ptr @vpd_attrs }, align 8, !dbg !4951
@__UNIQUE_ID___addressable_pci_vpd_alloc292 = internal global ptr @pci_vpd_alloc, section ".discard.addressable", align 8, !dbg !4953
@__UNIQUE_ID___addressable_pci_vpd_find_id_string293 = internal global ptr @pci_vpd_find_id_string, section ".discard.addressable", align 8, !dbg !4955
@__UNIQUE_ID___addressable_pci_read_vpd294 = internal global ptr @pci_read_vpd, section ".discard.addressable", align 8, !dbg !4957
@__UNIQUE_ID___addressable_pci_read_vpd_any295 = internal global ptr @pci_read_vpd_any, section ".discard.addressable", align 8, !dbg !4959
@__UNIQUE_ID___addressable_pci_write_vpd296 = internal global ptr @pci_write_vpd, section ".discard.addressable", align 8, !dbg !4961
@__UNIQUE_ID___addressable_pci_write_vpd_any297 = internal global ptr @pci_write_vpd_any, section ".discard.addressable", align 8, !dbg !4963
@__UNIQUE_ID___addressable_pci_vpd_find_ro_info_keyword298 = internal global ptr @pci_vpd_find_ro_info_keyword, section ".discard.addressable", align 8, !dbg !4965
@.str.1 = private unnamed_addr constant [3 x i8] c"RV\00", align 1, !dbg !4967
@__UNIQUE_ID___addressable_pci_vpd_check_csum299 = internal global ptr @pci_vpd_check_csum, section ".discard.addressable", align 8, !dbg !4970
@__UNIQUE_ID___addressable___UNIQUE_ID_quirk_f0_vpd_link300301 = internal global ptr @__UNIQUE_ID_quirk_f0_vpd_link300, section ".discard.addressable", align 8, !dbg !4972
@__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd302303 = internal global ptr @__UNIQUE_ID_quirk_blacklist_vpd302, section ".discard.addressable", align 8, !dbg !4974
@__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd304305 = internal global ptr @__UNIQUE_ID_quirk_blacklist_vpd304, section ".discard.addressable", align 8, !dbg !4976
@__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd306307 = internal global ptr @__UNIQUE_ID_quirk_blacklist_vpd306, section ".discard.addressable", align 8, !dbg !4978
@__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd308309 = internal global ptr @__UNIQUE_ID_quirk_blacklist_vpd308, section ".discard.addressable", align 8, !dbg !4980
@__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd310311 = internal global ptr @__UNIQUE_ID_quirk_blacklist_vpd310, section ".discard.addressable", align 8, !dbg !4982
@__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd312313 = internal global ptr @__UNIQUE_ID_quirk_blacklist_vpd312, section ".discard.addressable", align 8, !dbg !4984
@__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd314315 = internal global ptr @__UNIQUE_ID_quirk_blacklist_vpd314, section ".discard.addressable", align 8, !dbg !4986
@__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd316317 = internal global ptr @__UNIQUE_ID_quirk_blacklist_vpd316, section ".discard.addressable", align 8, !dbg !4988
@__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd318319 = internal global ptr @__UNIQUE_ID_quirk_blacklist_vpd318, section ".discard.addressable", align 8, !dbg !4990
@__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd320321 = internal global ptr @__UNIQUE_ID_quirk_blacklist_vpd320, section ".discard.addressable", align 8, !dbg !4992
@__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd322323 = internal global ptr @__UNIQUE_ID_quirk_blacklist_vpd322, section ".discard.addressable", align 8, !dbg !4994
@__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd324325 = internal global ptr @__UNIQUE_ID_quirk_blacklist_vpd324, section ".discard.addressable", align 8, !dbg !4996
@__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd326327 = internal global ptr @__UNIQUE_ID_quirk_blacklist_vpd326, section ".discard.addressable", align 8, !dbg !4998
@__UNIQUE_ID___addressable___UNIQUE_ID_quirk_chelsio_extend_vpd328329 = internal global ptr @__UNIQUE_ID_quirk_chelsio_extend_vpd328, section ".discard.addressable", align 8, !dbg !5000
@bin_attr_vpd = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.2, i16 384 }, i64 0, ptr null, ptr null, ptr @vpd_read, ptr @vpd_write, ptr null }, align 8, !dbg !5008
@.str.2 = private unnamed_addr constant [4 x i8] c"vpd\00", align 1, !dbg !5005
@.str.3 = private unnamed_addr constant [31 x i8] c"failed VPD read at offset %zu\0A\00", align 1, !dbg !5010
@.str.4 = private unnamed_addr constant [50 x i8] c"invalid VPD tag %#04x (size %zu) at offset %zu%s\0A\00", align 1, !dbg !5015
@.str.5 = private unnamed_addr constant [33 x i8] c"; assume missing optional EEPROM\00", align 1, !dbg !5020
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !5025
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.7 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5028
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@.str.8 = private unnamed_addr constant [114 x i8] c"VPD access failed.  This is likely a firmware bug on this device.  Contact the card vendor for a firmware update\0A\00", align 1, !dbg !5033
@.str.9 = private unnamed_addr constant [88 x i8] c"[Firmware Bug]: disabling VPD access (can't determine size of non-standard VPD format)\0A\00", align 1, !dbg !5038
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID___addressable_pci_vpd_alloc292, ptr @__UNIQUE_ID___addressable_pci_vpd_find_id_string293, ptr @__UNIQUE_ID___addressable_pci_read_vpd294, ptr @__UNIQUE_ID___addressable_pci_read_vpd_any295, ptr @__UNIQUE_ID___addressable_pci_write_vpd296, ptr @__UNIQUE_ID___addressable_pci_write_vpd_any297, ptr @__UNIQUE_ID___addressable_pci_vpd_find_ro_info_keyword298, ptr @__UNIQUE_ID___addressable_pci_vpd_check_csum299, ptr @__UNIQUE_ID___addressable___UNIQUE_ID_quirk_f0_vpd_link300301, ptr @__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd302303, ptr @__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd304305, ptr @__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd306307, ptr @__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd308309, ptr @__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd310311, ptr @__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd312313, ptr @__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd314315, ptr @__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd316317, ptr @__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd318319, ptr @__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd320321, ptr @__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd322323, ptr @__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd324325, ptr @__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd326327, ptr @__UNIQUE_ID___addressable___UNIQUE_ID_quirk_chelsio_extend_vpd328329], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_vpd_init(ptr noundef %dev) #0 align 16 !dbg !2 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5044, metadata !DIExpression()), !dbg !5054
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5055
  %vpd = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 53, !dbg !5057
  %len = getelementptr inbounds %struct.pci_vpd, ptr %vpd, i32 0, i32 1, !dbg !5058
  %1 = load i32, ptr %len, align 8, !dbg !5058
  %cmp = icmp eq i32 %1, -1, !dbg !5059
  br i1 %cmp, label %if.then, label %if.end, !dbg !5060

if.then:                                          ; preds = %entry
  br label %do.end, !dbg !5061

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5062
  %call = call zeroext i8 @pci_find_capability(ptr noundef %2, i32 noundef 3) #14, !dbg !5063
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5064
  %vpd1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 53, !dbg !5065
  %cap = getelementptr inbounds %struct.pci_vpd, ptr %vpd1, i32 0, i32 2, !dbg !5066
  store i8 %call, ptr %cap, align 4, !dbg !5067
  br label %do.body, !dbg !5068

do.body:                                          ; preds = %if.end
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5069
  %vpd2 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 53, !dbg !5069
  %lock = getelementptr inbounds %struct.pci_vpd, ptr %vpd2, i32 0, i32 0, !dbg !5069
  call void @__mutex_init(ptr noundef %lock, ptr noundef @.str, ptr noundef @pci_vpd_init.__key) #14, !dbg !5069
  br label %do.end, !dbg !5069

do.end:                                           ; preds = %if.then, %do.body
  ret void, !dbg !5071
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5072 dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5075 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @vpd_attr_is_visible(ptr noundef %kobj, ptr noundef %a, i32 noundef %n) #0 align 16 !dbg !5080 {
entry:
  %retval = alloca i16, align 2
  %kobj.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %pdev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5082, metadata !DIExpression()), !dbg !5090
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !5083, metadata !DIExpression()), !dbg !5091
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5084, metadata !DIExpression()), !dbg !5092
  call void @llvm.lifetime.start.p0(i64 8, ptr %pdev) #15, !dbg !5093
  call void @llvm.dbg.declare(metadata ptr %pdev, metadata !5085, metadata !DIExpression()), !dbg !5094
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5095
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5086, metadata !DIExpression()), !dbg !5095
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #15, !dbg !5096
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !5088, metadata !DIExpression()), !dbg !5096
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5096
  store ptr %0, ptr %__mptr1, align 8, !dbg !5096
  %1 = load ptr, ptr %__mptr1, align 8, !dbg !5096
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5096
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5096
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #15, !dbg !5095
  %2 = load ptr, ptr %tmp, align 8, !dbg !5096
  store ptr %2, ptr %__mptr, align 8, !dbg !5095
  %3 = load ptr, ptr %__mptr, align 8, !dbg !5095
  %add.ptr3 = getelementptr i8, ptr %3, i64 -184, !dbg !5095
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !5095
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5097
  %4 = load ptr, ptr %tmp2, align 8, !dbg !5095
  store ptr %4, ptr %pdev, align 8, !dbg !5094
  %5 = load ptr, ptr %pdev, align 8, !dbg !5098
  %vpd = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 53, !dbg !5100
  %cap = getelementptr inbounds %struct.pci_vpd, ptr %vpd, i32 0, i32 2, !dbg !5101
  %6 = load i8, ptr %cap, align 4, !dbg !5101
  %tobool = icmp ne i8 %6, 0, !dbg !5098
  br i1 %tobool, label %if.end, label %if.then, !dbg !5102

if.then:                                          ; preds = %entry
  store i16 0, ptr %retval, align 2, !dbg !5103
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5103

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %a.addr, align 8, !dbg !5104
  %attr = getelementptr inbounds %struct.bin_attribute, ptr %7, i32 0, i32 0, !dbg !5105
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1, !dbg !5106
  %8 = load i16, ptr %mode, align 8, !dbg !5106
  store i16 %8, ptr %retval, align 2, !dbg !5107
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5107

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pdev) #15, !dbg !5108
  %9 = load i16, ptr %retval, align 2, !dbg !5108
  ret i16 %9, !dbg !5108
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @pci_vpd_alloc(ptr noundef %dev, ptr noundef %size) #0 align 16 !dbg !5109 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %size.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %buf = alloca ptr, align 8
  %cnt = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5113, metadata !DIExpression()), !dbg !5118
  store ptr %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5114, metadata !DIExpression()), !dbg !5119
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #15, !dbg !5120
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5115, metadata !DIExpression()), !dbg !5121
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #15, !dbg !5122
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5116, metadata !DIExpression()), !dbg !5123
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnt) #15, !dbg !5124
  call void @llvm.dbg.declare(metadata ptr %cnt, metadata !5117, metadata !DIExpression()), !dbg !5125
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5126
  %call = call zeroext i1 @pci_vpd_available(ptr noundef %0, i1 noundef zeroext true) #14, !dbg !5128
  br i1 %call, label %if.end, label %if.then, !dbg !5129

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -19) #14, !dbg !5130
  store ptr %call1, ptr %retval, align 8, !dbg !5131
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5131

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5132
  %vpd = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 53, !dbg !5133
  %len2 = getelementptr inbounds %struct.pci_vpd, ptr %vpd, i32 0, i32 1, !dbg !5134
  %2 = load i32, ptr %len2, align 8, !dbg !5134
  store i32 %2, ptr %len, align 4, !dbg !5135
  %3 = load i32, ptr %len, align 4, !dbg !5136
  %conv = zext i32 %3 to i64, !dbg !5136
  %call3 = call noalias ptr @kmalloc(i64 noundef %conv, i32 noundef 3264) #16, !dbg !5137
  store ptr %call3, ptr %buf, align 8, !dbg !5138
  %4 = load ptr, ptr %buf, align 8, !dbg !5139
  %tobool = icmp ne ptr %4, null, !dbg !5139
  br i1 %tobool, label %if.end6, label %if.then4, !dbg !5141

if.then4:                                         ; preds = %if.end
  %call5 = call ptr @ERR_PTR(i64 noundef -12) #14, !dbg !5142
  store ptr %call5, ptr %retval, align 8, !dbg !5143
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5143

if.end6:                                          ; preds = %if.end
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5144
  %6 = load i32, ptr %len, align 4, !dbg !5145
  %conv7 = zext i32 %6 to i64, !dbg !5145
  %7 = load ptr, ptr %buf, align 8, !dbg !5146
  %call8 = call i64 @pci_read_vpd(ptr noundef %5, i64 noundef 0, i64 noundef %conv7, ptr noundef %7) #14, !dbg !5147
  %conv9 = trunc i64 %call8 to i32, !dbg !5147
  store i32 %conv9, ptr %cnt, align 4, !dbg !5148
  %8 = load i32, ptr %cnt, align 4, !dbg !5149
  %9 = load i32, ptr %len, align 4, !dbg !5151
  %cmp = icmp ne i32 %8, %9, !dbg !5152
  br i1 %cmp, label %if.then11, label %if.end13, !dbg !5153

if.then11:                                        ; preds = %if.end6
  %10 = load ptr, ptr %buf, align 8, !dbg !5154
  call void @kfree(ptr noundef %10) #14, !dbg !5156
  %call12 = call ptr @ERR_PTR(i64 noundef -5) #14, !dbg !5157
  store ptr %call12, ptr %retval, align 8, !dbg !5158
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5158

if.end13:                                         ; preds = %if.end6
  %11 = load ptr, ptr %size.addr, align 8, !dbg !5159
  %tobool14 = icmp ne ptr %11, null, !dbg !5159
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !5161

if.then15:                                        ; preds = %if.end13
  %12 = load i32, ptr %len, align 4, !dbg !5162
  %13 = load ptr, ptr %size.addr, align 8, !dbg !5163
  store i32 %12, ptr %13, align 4, !dbg !5164
  br label %if.end16, !dbg !5165

if.end16:                                         ; preds = %if.then15, %if.end13
  %14 = load ptr, ptr %buf, align 8, !dbg !5166
  store ptr %14, ptr %retval, align 8, !dbg !5167
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5167

cleanup:                                          ; preds = %if.end16, %if.then11, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnt) #15, !dbg !5168
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #15, !dbg !5168
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #15, !dbg !5168
  %15 = load ptr, ptr %retval, align 8, !dbg !5168
  ret ptr %15, !dbg !5168
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pci_vpd_available(ptr noundef %dev, i1 noundef zeroext %check_size) #0 align 16 !dbg !5169 {
entry:
  %retval = alloca i1, align 1
  %dev.addr = alloca ptr, align 8
  %check_size.addr = alloca i8, align 1
  %vpd = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5173, metadata !DIExpression()), !dbg !5177
  %frombool = zext i1 %check_size to i8
  store i8 %frombool, ptr %check_size.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %check_size.addr, metadata !5174, metadata !DIExpression()), !dbg !5178
  call void @llvm.lifetime.start.p0(i64 8, ptr %vpd) #15, !dbg !5179
  call void @llvm.dbg.declare(metadata ptr %vpd, metadata !5175, metadata !DIExpression()), !dbg !5180
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5181
  %vpd1 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 53, !dbg !5182
  store ptr %vpd1, ptr %vpd, align 8, !dbg !5180
  %1 = load ptr, ptr %vpd, align 8, !dbg !5183
  %cap = getelementptr inbounds %struct.pci_vpd, ptr %1, i32 0, i32 2, !dbg !5185
  %2 = load i8, ptr %cap, align 4, !dbg !5185
  %tobool = icmp ne i8 %2, 0, !dbg !5183
  br i1 %tobool, label %if.end, label %if.then, !dbg !5186

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5187
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5187

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %vpd, align 8, !dbg !5188
  %len = getelementptr inbounds %struct.pci_vpd, ptr %3, i32 0, i32 1, !dbg !5190
  %4 = load i32, ptr %len, align 8, !dbg !5190
  %cmp = icmp eq i32 %4, 0, !dbg !5191
  br i1 %cmp, label %land.lhs.true, label %if.end11, !dbg !5192

land.lhs.true:                                    ; preds = %if.end
  %5 = load i8, ptr %check_size.addr, align 1, !dbg !5193, !range !5194, !noundef !819
  %tobool2 = trunc i8 %5 to i1, !dbg !5193
  br i1 %tobool2, label %if.then3, label %if.end11, !dbg !5195

if.then3:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5196
  %call = call i64 @pci_vpd_size(ptr noundef %6) #14, !dbg !5198
  %conv = trunc i64 %call to i32, !dbg !5198
  %7 = load ptr, ptr %vpd, align 8, !dbg !5199
  %len4 = getelementptr inbounds %struct.pci_vpd, ptr %7, i32 0, i32 1, !dbg !5200
  store i32 %conv, ptr %len4, align 8, !dbg !5201
  %8 = load ptr, ptr %vpd, align 8, !dbg !5202
  %len5 = getelementptr inbounds %struct.pci_vpd, ptr %8, i32 0, i32 1, !dbg !5204
  %9 = load i32, ptr %len5, align 8, !dbg !5204
  %cmp6 = icmp eq i32 %9, -1, !dbg !5205
  br i1 %cmp6, label %if.then8, label %if.end10, !dbg !5206

if.then8:                                         ; preds = %if.then3
  %10 = load ptr, ptr %vpd, align 8, !dbg !5207
  %cap9 = getelementptr inbounds %struct.pci_vpd, ptr %10, i32 0, i32 2, !dbg !5209
  store i8 0, ptr %cap9, align 4, !dbg !5210
  store i1 false, ptr %retval, align 1, !dbg !5211
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5211

if.end10:                                         ; preds = %if.then3
  br label %if.end11, !dbg !5212

if.end11:                                         ; preds = %if.end10, %land.lhs.true, %if.end
  store i1 true, ptr %retval, align 1, !dbg !5213
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5213

cleanup:                                          ; preds = %if.end11, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %vpd) #15, !dbg !5214
  %11 = load i1, ptr %retval, align 1, !dbg !5214
  ret i1 %11, !dbg !5214
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #4 align 16 !dbg !5215 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !5220, metadata !DIExpression()), !dbg !5221
  %0 = load i64, ptr %error.addr, align 8, !dbg !5222
  %1 = inttoptr i64 %0 to ptr, !dbg !5223
  ret ptr %1, !dbg !5224
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !5225 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5229, metadata !DIExpression()), !dbg !5234
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5230, metadata !DIExpression()), !dbg !5235
  %0 = load i64, ptr %size.addr, align 8, !dbg !5236
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5237
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5238

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5239
  %tobool = icmp ne i64 %2, 0, !dbg !5239
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5240

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !5241
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5231, metadata !DIExpression()), !dbg !5242
  %3 = load i64, ptr %size.addr, align 8, !dbg !5243
  %cmp = icmp ugt i64 %3, 8192, !dbg !5245
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5246

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5247
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5248
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !5249
  store ptr %call, ptr %retval, align 8, !dbg !5250
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5250

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5251
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !5251
  store i32 %call2, ptr %index, align 4, !dbg !5252
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5253
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5254
  %9 = ptrtoint ptr %8 to i64, !dbg !5254
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !5255
  %idxprom = zext i32 %call3 to i64, !dbg !5256
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5256
  %10 = load i32, ptr %index, align 4, !dbg !5257
  %idxprom4 = zext i32 %10 to i64, !dbg !5256
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5256
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5256
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5258
  %13 = load i64, ptr %size.addr, align 8, !dbg !5259
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !5260
  store ptr %call6, ptr %retval, align 8, !dbg !5261
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5261

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !5262
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5263
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5264
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !5265
  store ptr %call8, ptr %retval, align 8, !dbg !5266
  br label %return, !dbg !5266

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5267
  ret ptr %16, !dbg !5267
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @pci_read_vpd(ptr noundef %dev, i64 noundef %pos, i64 noundef %count, ptr noundef %buf) #0 align 16 !dbg !5268 {
entry:
  %dev.addr = alloca ptr, align 8
  %pos.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5272, metadata !DIExpression()), !dbg !5276
  store i64 %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5273, metadata !DIExpression()), !dbg !5277
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5274, metadata !DIExpression()), !dbg !5278
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5275, metadata !DIExpression()), !dbg !5279
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5280
  %1 = load i64, ptr %pos.addr, align 8, !dbg !5281
  %2 = load i64, ptr %count.addr, align 8, !dbg !5282
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !5283
  %call = call i64 @__pci_read_vpd(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext true) #14, !dbg !5284
  ret i64 %call, !dbg !5285
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5286 dso_local void @kfree(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_vpd_find_id_string(ptr noundef %buf, i32 noundef %len, ptr noundef %size) #0 align 16 !dbg !5289 {
entry:
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %size.addr = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5295, metadata !DIExpression()), !dbg !5298
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5296, metadata !DIExpression()), !dbg !5299
  store ptr %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5297, metadata !DIExpression()), !dbg !5300
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5301
  %1 = load i32, ptr %len.addr, align 4, !dbg !5302
  %2 = load ptr, ptr %size.addr, align 8, !dbg !5303
  %call = call i32 @pci_vpd_find_tag(ptr noundef %0, i32 noundef %1, i8 noundef zeroext -126, ptr noundef %2) #14, !dbg !5304
  ret i32 %call, !dbg !5305
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_vpd_find_tag(ptr noundef %buf, i32 noundef %len, i8 noundef zeroext %rdt, ptr noundef %size) #0 align 16 !dbg !5306 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %rdt.addr = alloca i8, align 1
  %size.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %lrdt_len = alloca i32, align 4
  %tag = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5310, metadata !DIExpression()), !dbg !5318
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5311, metadata !DIExpression()), !dbg !5319
  store i8 %rdt, ptr %rdt.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %rdt.addr, metadata !5312, metadata !DIExpression()), !dbg !5320
  store ptr %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5313, metadata !DIExpression()), !dbg !5321
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !5322
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5314, metadata !DIExpression()), !dbg !5323
  store i32 0, ptr %i, align 4, !dbg !5323
  br label %while.cond, !dbg !5324

while.cond:                                       ; preds = %cleanup.cont, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5325
  %add = add i32 %0, 3, !dbg !5326
  %1 = load i32, ptr %len.addr, align 4, !dbg !5327
  %cmp = icmp ule i32 %add, %1, !dbg !5328
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5329

land.rhs:                                         ; preds = %while.cond
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !5330
  %3 = load i32, ptr %i, align 4, !dbg !5331
  %idxprom = sext i32 %3 to i64, !dbg !5330
  %arrayidx = getelementptr i8, ptr %2, i64 %idxprom, !dbg !5330
  %4 = load i8, ptr %arrayidx, align 1, !dbg !5330
  %conv = zext i8 %4 to i32, !dbg !5330
  %and = and i32 %conv, 128, !dbg !5332
  %tobool = icmp ne i32 %and, 0, !dbg !5329
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ], !dbg !5333
  br i1 %5, label %while.body, label %while.end, !dbg !5324

while.body:                                       ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %lrdt_len) #15, !dbg !5334
  call void @llvm.dbg.declare(metadata ptr %lrdt_len, metadata !5315, metadata !DIExpression()), !dbg !5335
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !5336
  %7 = load i32, ptr %i, align 4, !dbg !5337
  %idx.ext = sext i32 %7 to i64, !dbg !5338
  %add.ptr = getelementptr i8, ptr %6, i64 %idx.ext, !dbg !5338
  %call = call zeroext i16 @pci_vpd_lrdt_size(ptr noundef %add.ptr) #14, !dbg !5339
  %conv1 = zext i16 %call to i32, !dbg !5339
  store i32 %conv1, ptr %lrdt_len, align 4, !dbg !5335
  call void @llvm.lifetime.start.p0(i64 1, ptr %tag) #15, !dbg !5340
  call void @llvm.dbg.declare(metadata ptr %tag, metadata !5317, metadata !DIExpression()), !dbg !5341
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !5342
  %9 = load i32, ptr %i, align 4, !dbg !5343
  %idxprom2 = sext i32 %9 to i64, !dbg !5342
  %arrayidx3 = getelementptr i8, ptr %8, i64 %idxprom2, !dbg !5342
  %10 = load i8, ptr %arrayidx3, align 1, !dbg !5342
  store i8 %10, ptr %tag, align 1, !dbg !5341
  %11 = load i32, ptr %i, align 4, !dbg !5344
  %add4 = add i32 %11, 3, !dbg !5344
  store i32 %add4, ptr %i, align 4, !dbg !5344
  %12 = load i8, ptr %tag, align 1, !dbg !5345
  %conv5 = zext i8 %12 to i32, !dbg !5345
  %13 = load i8, ptr %rdt.addr, align 1, !dbg !5347
  %conv6 = zext i8 %13 to i32, !dbg !5347
  %cmp7 = icmp eq i32 %conv5, %conv6, !dbg !5348
  br i1 %cmp7, label %if.then, label %if.end16, !dbg !5349

if.then:                                          ; preds = %while.body
  %14 = load i32, ptr %i, align 4, !dbg !5350
  %15 = load i32, ptr %lrdt_len, align 4, !dbg !5353
  %add9 = add i32 %14, %15, !dbg !5354
  %16 = load i32, ptr %len.addr, align 4, !dbg !5355
  %cmp10 = icmp ugt i32 %add9, %16, !dbg !5356
  br i1 %cmp10, label %if.then12, label %if.end, !dbg !5357

if.then12:                                        ; preds = %if.then
  %17 = load i32, ptr %len.addr, align 4, !dbg !5358
  %18 = load i32, ptr %i, align 4, !dbg !5359
  %sub = sub i32 %17, %18, !dbg !5360
  store i32 %sub, ptr %lrdt_len, align 4, !dbg !5361
  br label %if.end, !dbg !5362

if.end:                                           ; preds = %if.then12, %if.then
  %19 = load ptr, ptr %size.addr, align 8, !dbg !5363
  %tobool13 = icmp ne ptr %19, null, !dbg !5363
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !5365

if.then14:                                        ; preds = %if.end
  %20 = load i32, ptr %lrdt_len, align 4, !dbg !5366
  %21 = load ptr, ptr %size.addr, align 8, !dbg !5367
  store i32 %20, ptr %21, align 4, !dbg !5368
  br label %if.end15, !dbg !5369

if.end15:                                         ; preds = %if.then14, %if.end
  %22 = load i32, ptr %i, align 4, !dbg !5370
  store i32 %22, ptr %retval, align 4, !dbg !5371
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5371

if.end16:                                         ; preds = %while.body
  %23 = load i32, ptr %lrdt_len, align 4, !dbg !5372
  %24 = load i32, ptr %i, align 4, !dbg !5373
  %add17 = add i32 %24, %23, !dbg !5373
  store i32 %add17, ptr %i, align 4, !dbg !5373
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5374
  br label %cleanup, !dbg !5374

cleanup:                                          ; preds = %if.end16, %if.end15
  call void @llvm.lifetime.end.p0(i64 1, ptr %tag) #15, !dbg !5374
  call void @llvm.lifetime.end.p0(i64 4, ptr %lrdt_len) #15, !dbg !5374
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup19 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !5324, !llvm.loop !5375

while.end:                                        ; preds = %land.end
  store i32 -2, ptr %retval, align 4, !dbg !5378
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup19, !dbg !5378

cleanup19:                                        ; preds = %while.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5379
  %25 = load i32, ptr %retval, align 4, !dbg !5379
  ret i32 %25, !dbg !5379
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__pci_read_vpd(ptr noundef %dev, i64 noundef %pos, i64 noundef %count, ptr noundef %buf, i1 noundef zeroext %check_size) #0 align 16 !dbg !5380 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %pos.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %check_size.addr = alloca i8, align 1
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5384, metadata !DIExpression()), !dbg !5390
  store i64 %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5385, metadata !DIExpression()), !dbg !5391
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5386, metadata !DIExpression()), !dbg !5392
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5387, metadata !DIExpression()), !dbg !5393
  %frombool = zext i1 %check_size to i8
  store i8 %frombool, ptr %check_size.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %check_size.addr, metadata !5388, metadata !DIExpression()), !dbg !5394
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #15, !dbg !5395
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5389, metadata !DIExpression()), !dbg !5396
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5397
  %dev_flags = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, !dbg !5399
  %1 = load i16, ptr %dev_flags, align 2, !dbg !5399
  %conv = zext i16 %1 to i32, !dbg !5397
  %and = and i32 %conv, 256, !dbg !5400
  %tobool = icmp ne i32 %and, 0, !dbg !5400
  br i1 %tobool, label %if.then, label %if.end5, !dbg !5401

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5402
  %call = call ptr @pci_get_func0_dev(ptr noundef %2) #14, !dbg !5404
  store ptr %call, ptr %dev.addr, align 8, !dbg !5405
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5406
  %tobool1 = icmp ne ptr %3, null, !dbg !5406
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !5408

if.then2:                                         ; preds = %if.then
  store i64 -19, ptr %retval, align 8, !dbg !5409
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5409

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5410
  %5 = load i64, ptr %pos.addr, align 8, !dbg !5411
  %6 = load i64, ptr %count.addr, align 8, !dbg !5412
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !5413
  %8 = load i8, ptr %check_size.addr, align 1, !dbg !5414, !range !5194, !noundef !819
  %tobool3 = trunc i8 %8 to i1, !dbg !5414
  %call4 = call i64 @pci_vpd_read(ptr noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7, i1 noundef zeroext %tobool3) #14, !dbg !5415
  store i64 %call4, ptr %ret, align 8, !dbg !5416
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5417
  call void @pci_dev_put(ptr noundef %9) #14, !dbg !5418
  %10 = load i64, ptr %ret, align 8, !dbg !5419
  store i64 %10, ptr %retval, align 8, !dbg !5420
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5420

if.end5:                                          ; preds = %entry
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !5421
  %12 = load i64, ptr %pos.addr, align 8, !dbg !5422
  %13 = load i64, ptr %count.addr, align 8, !dbg !5423
  %14 = load ptr, ptr %buf.addr, align 8, !dbg !5424
  %15 = load i8, ptr %check_size.addr, align 1, !dbg !5425, !range !5194, !noundef !819
  %tobool6 = trunc i8 %15 to i1, !dbg !5425
  %call7 = call i64 @pci_vpd_read(ptr noundef %11, i64 noundef %12, i64 noundef %13, ptr noundef %14, i1 noundef zeroext %tobool6) #14, !dbg !5426
  store i64 %call7, ptr %retval, align 8, !dbg !5427
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5427

cleanup:                                          ; preds = %if.end5, %if.end, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #15, !dbg !5428
  %16 = load i64, ptr %retval, align 8, !dbg !5428
  ret i64 %16, !dbg !5428
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @pci_read_vpd_any(ptr noundef %dev, i64 noundef %pos, i64 noundef %count, ptr noundef %buf) #0 align 16 !dbg !5429 {
entry:
  %dev.addr = alloca ptr, align 8
  %pos.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5431, metadata !DIExpression()), !dbg !5435
  store i64 %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5432, metadata !DIExpression()), !dbg !5436
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5433, metadata !DIExpression()), !dbg !5437
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5434, metadata !DIExpression()), !dbg !5438
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5439
  %1 = load i64, ptr %pos.addr, align 8, !dbg !5440
  %2 = load i64, ptr %count.addr, align 8, !dbg !5441
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !5442
  %call = call i64 @__pci_read_vpd(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext false) #14, !dbg !5443
  ret i64 %call, !dbg !5444
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @pci_write_vpd(ptr noundef %dev, i64 noundef %pos, i64 noundef %count, ptr noundef %buf) #0 align 16 !dbg !5445 {
entry:
  %dev.addr = alloca ptr, align 8
  %pos.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5449, metadata !DIExpression()), !dbg !5453
  store i64 %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5450, metadata !DIExpression()), !dbg !5454
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5451, metadata !DIExpression()), !dbg !5455
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5452, metadata !DIExpression()), !dbg !5456
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5457
  %1 = load i64, ptr %pos.addr, align 8, !dbg !5458
  %2 = load i64, ptr %count.addr, align 8, !dbg !5459
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !5460
  %call = call i64 @__pci_write_vpd(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext true) #14, !dbg !5461
  ret i64 %call, !dbg !5462
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__pci_write_vpd(ptr noundef %dev, i64 noundef %pos, i64 noundef %count, ptr noundef %buf, i1 noundef zeroext %check_size) #0 align 16 !dbg !5463 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %pos.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %check_size.addr = alloca i8, align 1
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5467, metadata !DIExpression()), !dbg !5473
  store i64 %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5468, metadata !DIExpression()), !dbg !5474
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5469, metadata !DIExpression()), !dbg !5475
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5470, metadata !DIExpression()), !dbg !5476
  %frombool = zext i1 %check_size to i8
  store i8 %frombool, ptr %check_size.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %check_size.addr, metadata !5471, metadata !DIExpression()), !dbg !5477
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #15, !dbg !5478
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5472, metadata !DIExpression()), !dbg !5479
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5480
  %dev_flags = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, !dbg !5482
  %1 = load i16, ptr %dev_flags, align 2, !dbg !5482
  %conv = zext i16 %1 to i32, !dbg !5480
  %and = and i32 %conv, 256, !dbg !5483
  %tobool = icmp ne i32 %and, 0, !dbg !5483
  br i1 %tobool, label %if.then, label %if.end5, !dbg !5484

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5485
  %call = call ptr @pci_get_func0_dev(ptr noundef %2) #14, !dbg !5487
  store ptr %call, ptr %dev.addr, align 8, !dbg !5488
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5489
  %tobool1 = icmp ne ptr %3, null, !dbg !5489
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !5491

if.then2:                                         ; preds = %if.then
  store i64 -19, ptr %retval, align 8, !dbg !5492
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5492

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5493
  %5 = load i64, ptr %pos.addr, align 8, !dbg !5494
  %6 = load i64, ptr %count.addr, align 8, !dbg !5495
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !5496
  %8 = load i8, ptr %check_size.addr, align 1, !dbg !5497, !range !5194, !noundef !819
  %tobool3 = trunc i8 %8 to i1, !dbg !5497
  %call4 = call i64 @pci_vpd_write(ptr noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7, i1 noundef zeroext %tobool3) #14, !dbg !5498
  store i64 %call4, ptr %ret, align 8, !dbg !5499
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5500
  call void @pci_dev_put(ptr noundef %9) #14, !dbg !5501
  %10 = load i64, ptr %ret, align 8, !dbg !5502
  store i64 %10, ptr %retval, align 8, !dbg !5503
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5503

if.end5:                                          ; preds = %entry
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !5504
  %12 = load i64, ptr %pos.addr, align 8, !dbg !5505
  %13 = load i64, ptr %count.addr, align 8, !dbg !5506
  %14 = load ptr, ptr %buf.addr, align 8, !dbg !5507
  %15 = load i8, ptr %check_size.addr, align 1, !dbg !5508, !range !5194, !noundef !819
  %tobool6 = trunc i8 %15 to i1, !dbg !5508
  %call7 = call i64 @pci_vpd_write(ptr noundef %11, i64 noundef %12, i64 noundef %13, ptr noundef %14, i1 noundef zeroext %tobool6) #14, !dbg !5509
  store i64 %call7, ptr %retval, align 8, !dbg !5510
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5510

cleanup:                                          ; preds = %if.end5, %if.end, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #15, !dbg !5511
  %16 = load i64, ptr %retval, align 8, !dbg !5511
  ret i64 %16, !dbg !5511
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @pci_write_vpd_any(ptr noundef %dev, i64 noundef %pos, i64 noundef %count, ptr noundef %buf) #0 align 16 !dbg !5512 {
entry:
  %dev.addr = alloca ptr, align 8
  %pos.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5514, metadata !DIExpression()), !dbg !5518
  store i64 %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5515, metadata !DIExpression()), !dbg !5519
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5516, metadata !DIExpression()), !dbg !5520
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5517, metadata !DIExpression()), !dbg !5521
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5522
  %1 = load i64, ptr %pos.addr, align 8, !dbg !5523
  %2 = load i64, ptr %count.addr, align 8, !dbg !5524
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !5525
  %call = call i64 @__pci_write_vpd(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext false) #14, !dbg !5526
  ret i64 %call, !dbg !5527
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_vpd_find_ro_info_keyword(ptr noundef %buf, i32 noundef %len, ptr noundef %kw, ptr noundef %size) #0 align 16 !dbg !5528 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %kw.addr = alloca ptr, align 8
  %size.addr = alloca ptr, align 8
  %ro_start = alloca i32, align 4
  %infokw_start = alloca i32, align 4
  %ro_len = alloca i32, align 4
  %infokw_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5532, metadata !DIExpression()), !dbg !5540
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5533, metadata !DIExpression()), !dbg !5541
  store ptr %kw, ptr %kw.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kw.addr, metadata !5534, metadata !DIExpression()), !dbg !5542
  store ptr %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5535, metadata !DIExpression()), !dbg !5543
  call void @llvm.lifetime.start.p0(i64 4, ptr %ro_start) #15, !dbg !5544
  call void @llvm.dbg.declare(metadata ptr %ro_start, metadata !5536, metadata !DIExpression()), !dbg !5545
  call void @llvm.lifetime.start.p0(i64 4, ptr %infokw_start) #15, !dbg !5544
  call void @llvm.dbg.declare(metadata ptr %infokw_start, metadata !5537, metadata !DIExpression()), !dbg !5546
  call void @llvm.lifetime.start.p0(i64 4, ptr %ro_len) #15, !dbg !5547
  call void @llvm.dbg.declare(metadata ptr %ro_len, metadata !5538, metadata !DIExpression()), !dbg !5548
  call void @llvm.lifetime.start.p0(i64 4, ptr %infokw_size) #15, !dbg !5547
  call void @llvm.dbg.declare(metadata ptr %infokw_size, metadata !5539, metadata !DIExpression()), !dbg !5549
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5550
  %1 = load i32, ptr %len.addr, align 4, !dbg !5551
  %call = call i32 @pci_vpd_find_tag(ptr noundef %0, i32 noundef %1, i8 noundef zeroext -112, ptr noundef %ro_len) #14, !dbg !5552
  store i32 %call, ptr %ro_start, align 4, !dbg !5553
  %2 = load i32, ptr %ro_start, align 4, !dbg !5554
  %cmp = icmp slt i32 %2, 0, !dbg !5556
  br i1 %cmp, label %if.then, label %if.end, !dbg !5557

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %ro_start, align 4, !dbg !5558
  store i32 %3, ptr %retval, align 4, !dbg !5559
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5559

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !5560
  %5 = load i32, ptr %ro_start, align 4, !dbg !5561
  %6 = load i32, ptr %ro_len, align 4, !dbg !5562
  %7 = load ptr, ptr %kw.addr, align 8, !dbg !5563
  %call1 = call i32 @pci_vpd_find_info_keyword(ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) #14, !dbg !5564
  store i32 %call1, ptr %infokw_start, align 4, !dbg !5565
  %8 = load i32, ptr %infokw_start, align 4, !dbg !5566
  %cmp2 = icmp slt i32 %8, 0, !dbg !5568
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !5569

if.then3:                                         ; preds = %if.end
  %9 = load i32, ptr %infokw_start, align 4, !dbg !5570
  store i32 %9, ptr %retval, align 4, !dbg !5571
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5571

if.end4:                                          ; preds = %if.end
  %10 = load ptr, ptr %buf.addr, align 8, !dbg !5572
  %11 = load i32, ptr %infokw_start, align 4, !dbg !5573
  %idx.ext = sext i32 %11 to i64, !dbg !5574
  %add.ptr = getelementptr i8, ptr %10, i64 %idx.ext, !dbg !5574
  %call5 = call zeroext i8 @pci_vpd_info_field_size(ptr noundef %add.ptr) #14, !dbg !5575
  %conv = zext i8 %call5 to i32, !dbg !5575
  store i32 %conv, ptr %infokw_size, align 4, !dbg !5576
  %12 = load i32, ptr %infokw_start, align 4, !dbg !5577
  %add = add i32 %12, 3, !dbg !5577
  store i32 %add, ptr %infokw_start, align 4, !dbg !5577
  %13 = load i32, ptr %infokw_start, align 4, !dbg !5578
  %14 = load i32, ptr %infokw_size, align 4, !dbg !5580
  %add6 = add i32 %13, %14, !dbg !5581
  %15 = load i32, ptr %len.addr, align 4, !dbg !5582
  %cmp7 = icmp ugt i32 %add6, %15, !dbg !5583
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !5584

if.then9:                                         ; preds = %if.end4
  store i32 -22, ptr %retval, align 4, !dbg !5585
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5585

if.end10:                                         ; preds = %if.end4
  %16 = load ptr, ptr %size.addr, align 8, !dbg !5586
  %tobool = icmp ne ptr %16, null, !dbg !5586
  br i1 %tobool, label %if.then11, label %if.end12, !dbg !5588

if.then11:                                        ; preds = %if.end10
  %17 = load i32, ptr %infokw_size, align 4, !dbg !5589
  %18 = load ptr, ptr %size.addr, align 8, !dbg !5590
  store i32 %17, ptr %18, align 4, !dbg !5591
  br label %if.end12, !dbg !5592

if.end12:                                         ; preds = %if.then11, %if.end10
  %19 = load i32, ptr %infokw_start, align 4, !dbg !5593
  store i32 %19, ptr %retval, align 4, !dbg !5594
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5594

cleanup:                                          ; preds = %if.end12, %if.then9, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %infokw_size) #15, !dbg !5595
  call void @llvm.lifetime.end.p0(i64 4, ptr %ro_len) #15, !dbg !5595
  call void @llvm.lifetime.end.p0(i64 4, ptr %infokw_start) #15, !dbg !5595
  call void @llvm.lifetime.end.p0(i64 4, ptr %ro_start) #15, !dbg !5595
  %20 = load i32, ptr %retval, align 4, !dbg !5595
  ret i32 %20, !dbg !5595
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_vpd_find_info_keyword(ptr noundef %buf, i32 noundef %off, i32 noundef %len, ptr noundef %kw) #0 align 16 !dbg !5596 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %off.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %kw.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5600, metadata !DIExpression()), !dbg !5605
  store i32 %off, ptr %off.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !5601, metadata !DIExpression()), !dbg !5606
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5602, metadata !DIExpression()), !dbg !5607
  store ptr %kw, ptr %kw.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kw.addr, metadata !5603, metadata !DIExpression()), !dbg !5608
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !5609
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5604, metadata !DIExpression()), !dbg !5610
  %0 = load i32, ptr %off.addr, align 4, !dbg !5611
  store i32 %0, ptr %i, align 4, !dbg !5613
  br label %for.cond, !dbg !5614

for.cond:                                         ; preds = %if.end, %entry
  %1 = load i32, ptr %i, align 4, !dbg !5615
  %add = add i32 %1, 3, !dbg !5617
  %2 = load i32, ptr %off.addr, align 4, !dbg !5618
  %3 = load i32, ptr %len.addr, align 4, !dbg !5619
  %add1 = add i32 %2, %3, !dbg !5620
  %cmp = icmp ule i32 %add, %add1, !dbg !5621
  br i1 %cmp, label %for.body, label %for.end, !dbg !5622

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !5623
  %5 = load i32, ptr %i, align 4, !dbg !5626
  %add2 = add i32 %5, 0, !dbg !5627
  %idxprom = sext i32 %add2 to i64, !dbg !5623
  %arrayidx = getelementptr i8, ptr %4, i64 %idxprom, !dbg !5623
  %6 = load i8, ptr %arrayidx, align 1, !dbg !5623
  %conv = zext i8 %6 to i32, !dbg !5623
  %7 = load ptr, ptr %kw.addr, align 8, !dbg !5628
  %arrayidx3 = getelementptr i8, ptr %7, i64 0, !dbg !5628
  %8 = load i8, ptr %arrayidx3, align 1, !dbg !5628
  %conv4 = zext i8 %8 to i32, !dbg !5628
  %cmp5 = icmp eq i32 %conv, %conv4, !dbg !5629
  br i1 %cmp5, label %land.lhs.true, label %if.end, !dbg !5630

land.lhs.true:                                    ; preds = %for.body
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !5631
  %10 = load i32, ptr %i, align 4, !dbg !5632
  %add7 = add i32 %10, 1, !dbg !5633
  %idxprom8 = sext i32 %add7 to i64, !dbg !5631
  %arrayidx9 = getelementptr i8, ptr %9, i64 %idxprom8, !dbg !5631
  %11 = load i8, ptr %arrayidx9, align 1, !dbg !5631
  %conv10 = zext i8 %11 to i32, !dbg !5631
  %12 = load ptr, ptr %kw.addr, align 8, !dbg !5634
  %arrayidx11 = getelementptr i8, ptr %12, i64 1, !dbg !5634
  %13 = load i8, ptr %arrayidx11, align 1, !dbg !5634
  %conv12 = zext i8 %13 to i32, !dbg !5634
  %cmp13 = icmp eq i32 %conv10, %conv12, !dbg !5635
  br i1 %cmp13, label %if.then, label %if.end, !dbg !5636

if.then:                                          ; preds = %land.lhs.true
  %14 = load i32, ptr %i, align 4, !dbg !5637
  store i32 %14, ptr %retval, align 4, !dbg !5638
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5638

if.end:                                           ; preds = %land.lhs.true, %for.body
  %15 = load ptr, ptr %buf.addr, align 8, !dbg !5639
  %16 = load i32, ptr %i, align 4, !dbg !5640
  %idxprom15 = sext i32 %16 to i64, !dbg !5639
  %arrayidx16 = getelementptr i8, ptr %15, i64 %idxprom15, !dbg !5639
  %call = call zeroext i8 @pci_vpd_info_field_size(ptr noundef %arrayidx16) #14, !dbg !5641
  %conv17 = zext i8 %call to i32, !dbg !5641
  %add18 = add i32 3, %conv17, !dbg !5642
  %17 = load i32, ptr %i, align 4, !dbg !5643
  %add19 = add i32 %17, %add18, !dbg !5643
  store i32 %add19, ptr %i, align 4, !dbg !5643
  br label %for.cond, !dbg !5644, !llvm.loop !5645

for.end:                                          ; preds = %for.cond
  store i32 -2, ptr %retval, align 4, !dbg !5647
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5647

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5648
  %18 = load i32, ptr %retval, align 4, !dbg !5648
  ret i32 %18, !dbg !5648
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @pci_vpd_info_field_size(ptr noundef %info_field) #0 align 16 !dbg !5649 {
entry:
  %info_field.addr = alloca ptr, align 8
  store ptr %info_field, ptr %info_field.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info_field.addr, metadata !5653, metadata !DIExpression()), !dbg !5654
  %0 = load ptr, ptr %info_field.addr, align 8, !dbg !5655
  %arrayidx = getelementptr i8, ptr %0, i64 2, !dbg !5655
  %1 = load i8, ptr %arrayidx, align 1, !dbg !5655
  ret i8 %1, !dbg !5656
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_vpd_check_csum(ptr noundef %buf, i32 noundef %len) #0 align 16 !dbg !5657 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %vpd = alloca ptr, align 8
  %size = alloca i32, align 4
  %csum = alloca i8, align 1
  %rv_start = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5661, metadata !DIExpression()), !dbg !5667
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5662, metadata !DIExpression()), !dbg !5668
  call void @llvm.lifetime.start.p0(i64 8, ptr %vpd) #15, !dbg !5669
  call void @llvm.dbg.declare(metadata ptr %vpd, metadata !5663, metadata !DIExpression()), !dbg !5670
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5671
  store ptr %0, ptr %vpd, align 8, !dbg !5670
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #15, !dbg !5672
  call void @llvm.dbg.declare(metadata ptr %size, metadata !5664, metadata !DIExpression()), !dbg !5673
  call void @llvm.lifetime.start.p0(i64 1, ptr %csum) #15, !dbg !5674
  call void @llvm.dbg.declare(metadata ptr %csum, metadata !5665, metadata !DIExpression()), !dbg !5675
  store i8 0, ptr %csum, align 1, !dbg !5675
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv_start) #15, !dbg !5676
  call void @llvm.dbg.declare(metadata ptr %rv_start, metadata !5666, metadata !DIExpression()), !dbg !5677
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !5678
  %2 = load i32, ptr %len.addr, align 4, !dbg !5679
  %call = call i32 @pci_vpd_find_ro_info_keyword(ptr noundef %1, i32 noundef %2, ptr noundef @.str.1, ptr noundef %size) #14, !dbg !5680
  store i32 %call, ptr %rv_start, align 4, !dbg !5681
  %3 = load i32, ptr %rv_start, align 4, !dbg !5682
  %cmp = icmp eq i32 %3, -2, !dbg !5684
  br i1 %cmp, label %if.then, label %if.else, !dbg !5685

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !5686
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5686

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %rv_start, align 4, !dbg !5687
  %cmp1 = icmp slt i32 %4, 0, !dbg !5689
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !5690

if.then2:                                         ; preds = %if.else
  %5 = load i32, ptr %rv_start, align 4, !dbg !5691
  store i32 %5, ptr %retval, align 4, !dbg !5692
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5692

if.end:                                           ; preds = %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end
  %6 = load i32, ptr %size, align 4, !dbg !5693
  %tobool = icmp ne i32 %6, 0, !dbg !5693
  br i1 %tobool, label %if.end5, label %if.then4, !dbg !5695

if.then4:                                         ; preds = %if.end3
  store i32 -22, ptr %retval, align 4, !dbg !5696
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5696

if.end5:                                          ; preds = %if.end3
  br label %while.cond, !dbg !5697

while.cond:                                       ; preds = %while.body, %if.end5
  %7 = load i32, ptr %rv_start, align 4, !dbg !5698
  %cmp6 = icmp sge i32 %7, 0, !dbg !5699
  br i1 %cmp6, label %while.body, label %while.end, !dbg !5697

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %vpd, align 8, !dbg !5700
  %9 = load i32, ptr %rv_start, align 4, !dbg !5701
  %dec = add i32 %9, -1, !dbg !5701
  store i32 %dec, ptr %rv_start, align 4, !dbg !5701
  %idxprom = sext i32 %9 to i64, !dbg !5700
  %arrayidx = getelementptr i8, ptr %8, i64 %idxprom, !dbg !5700
  %10 = load i8, ptr %arrayidx, align 1, !dbg !5700
  %conv = zext i8 %10 to i32, !dbg !5700
  %11 = load i8, ptr %csum, align 1, !dbg !5702
  %conv7 = zext i8 %11 to i32, !dbg !5702
  %add = add i32 %conv7, %conv, !dbg !5702
  %conv8 = trunc i32 %add to i8, !dbg !5702
  store i8 %conv8, ptr %csum, align 1, !dbg !5702
  br label %while.cond, !dbg !5697, !llvm.loop !5703

while.end:                                        ; preds = %while.cond
  %12 = load i8, ptr %csum, align 1, !dbg !5705
  %conv9 = zext i8 %12 to i32, !dbg !5705
  %tobool10 = icmp ne i32 %conv9, 0, !dbg !5705
  %13 = zext i1 %tobool10 to i64, !dbg !5705
  %cond = select i1 %tobool10, i32 -84, i32 0, !dbg !5705
  store i32 %cond, ptr %retval, align 4, !dbg !5706
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5706

cleanup:                                          ; preds = %while.end, %if.then4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv_start) #15, !dbg !5707
  call void @llvm.lifetime.end.p0(i64 1, ptr %csum) #15, !dbg !5707
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #15, !dbg !5707
  call void @llvm.lifetime.end.p0(i64 8, ptr %vpd) #15, !dbg !5707
  %14 = load i32, ptr %retval, align 4, !dbg !5707
  ret i32 %14, !dbg !5707
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__UNIQUE_ID_quirk_f0_vpd_link300(ptr noundef %dev) #0 align 16 !dbg !5708 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5710, metadata !DIExpression()), !dbg !5711
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5711
  call void @quirk_f0_vpd_link(ptr noundef %0) #14, !dbg !5711
  ret void, !dbg !5711
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @quirk_f0_vpd_link(ptr noundef %dev) #0 align 16 !dbg !5712 {
entry:
  %dev.addr = alloca ptr, align 8
  %f0 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5714, metadata !DIExpression()), !dbg !5716
  call void @llvm.lifetime.start.p0(i64 8, ptr %f0) #15, !dbg !5717
  call void @llvm.dbg.declare(metadata ptr %f0, metadata !5715, metadata !DIExpression()), !dbg !5718
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5719
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6, !dbg !5719
  %1 = load i32, ptr %devfn, align 8, !dbg !5719
  %and = and i32 %1, 7, !dbg !5719
  %tobool = icmp ne i32 %and, 0, !dbg !5719
  br i1 %tobool, label %if.end, label %if.then, !dbg !5721

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5722

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5723
  %call = call ptr @pci_get_func0_dev(ptr noundef %2) #14, !dbg !5724
  store ptr %call, ptr %f0, align 8, !dbg !5725
  %3 = load ptr, ptr %f0, align 8, !dbg !5726
  %tobool1 = icmp ne ptr %3, null, !dbg !5726
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !5728

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5729

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %f0, align 8, !dbg !5730
  %vpd = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 53, !dbg !5732
  %cap = getelementptr inbounds %struct.pci_vpd, ptr %vpd, i32 0, i32 2, !dbg !5733
  %5 = load i8, ptr %cap, align 4, !dbg !5733
  %conv = zext i8 %5 to i32, !dbg !5730
  %tobool4 = icmp ne i32 %conv, 0, !dbg !5730
  br i1 %tobool4, label %land.lhs.true, label %if.end22, !dbg !5734

land.lhs.true:                                    ; preds = %if.end3
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5735
  %class = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 11, !dbg !5736
  %7 = load i32, ptr %class, align 4, !dbg !5736
  %8 = load ptr, ptr %f0, align 8, !dbg !5737
  %class5 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 11, !dbg !5738
  %9 = load i32, ptr %class5, align 4, !dbg !5738
  %cmp = icmp eq i32 %7, %9, !dbg !5739
  br i1 %cmp, label %land.lhs.true7, label %if.end22, !dbg !5740

land.lhs.true7:                                   ; preds = %land.lhs.true
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !5741
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 7, !dbg !5742
  %11 = load i16, ptr %vendor, align 4, !dbg !5742
  %conv8 = zext i16 %11 to i32, !dbg !5741
  %12 = load ptr, ptr %f0, align 8, !dbg !5743
  %vendor9 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 7, !dbg !5744
  %13 = load i16, ptr %vendor9, align 4, !dbg !5744
  %conv10 = zext i16 %13 to i32, !dbg !5743
  %cmp11 = icmp eq i32 %conv8, %conv10, !dbg !5745
  br i1 %cmp11, label %land.lhs.true13, label %if.end22, !dbg !5746

land.lhs.true13:                                  ; preds = %land.lhs.true7
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !5747
  %device = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 8, !dbg !5748
  %15 = load i16, ptr %device, align 2, !dbg !5748
  %conv14 = zext i16 %15 to i32, !dbg !5747
  %16 = load ptr, ptr %f0, align 8, !dbg !5749
  %device15 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 8, !dbg !5750
  %17 = load i16, ptr %device15, align 2, !dbg !5750
  %conv16 = zext i16 %17 to i32, !dbg !5749
  %cmp17 = icmp eq i32 %conv14, %conv16, !dbg !5751
  br i1 %cmp17, label %if.then19, label %if.end22, !dbg !5752

if.then19:                                        ; preds = %land.lhs.true13
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !5753
  %dev_flags = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44, !dbg !5754
  %19 = load i16, ptr %dev_flags, align 2, !dbg !5755
  %conv20 = zext i16 %19 to i32, !dbg !5755
  %or = or i32 %conv20, 256, !dbg !5755
  %conv21 = trunc i32 %or to i16, !dbg !5755
  store i16 %conv21, ptr %dev_flags, align 2, !dbg !5755
  br label %if.end22, !dbg !5753

if.end22:                                         ; preds = %if.then19, %land.lhs.true13, %land.lhs.true7, %land.lhs.true, %if.end3
  %20 = load ptr, ptr %f0, align 8, !dbg !5756
  call void @pci_dev_put(ptr noundef %20) #14, !dbg !5757
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5758
  br label %cleanup, !dbg !5758

cleanup:                                          ; preds = %if.end22, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %f0) #15, !dbg !5758
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5758

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__UNIQUE_ID_quirk_blacklist_vpd302(ptr noundef %dev) #0 align 16 !dbg !5759 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5761, metadata !DIExpression()), !dbg !5762
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5762
  call void @quirk_blacklist_vpd(ptr noundef %0) #14, !dbg !5762
  ret void, !dbg !5762
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @quirk_blacklist_vpd(ptr noundef %dev) #0 align 16 !dbg !5763 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5765, metadata !DIExpression()), !dbg !5766
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5767
  %vpd = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 53, !dbg !5768
  %len = getelementptr inbounds %struct.pci_vpd, ptr %vpd, i32 0, i32 1, !dbg !5769
  store i32 -1, ptr %len, align 8, !dbg !5770
  br label %do.body, !dbg !5771

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5773

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5771
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 37, !dbg !5771
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef @.str.9) #18, !dbg !5771
  ret void, !dbg !5775
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__UNIQUE_ID_quirk_blacklist_vpd304(ptr noundef %dev) #0 align 16 !dbg !5776 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5778, metadata !DIExpression()), !dbg !5779
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5779
  call void @quirk_blacklist_vpd(ptr noundef %0) #14, !dbg !5779
  ret void, !dbg !5779
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__UNIQUE_ID_quirk_blacklist_vpd306(ptr noundef %dev) #0 align 16 !dbg !5780 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5782, metadata !DIExpression()), !dbg !5783
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5783
  call void @quirk_blacklist_vpd(ptr noundef %0) #14, !dbg !5783
  ret void, !dbg !5783
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__UNIQUE_ID_quirk_blacklist_vpd308(ptr noundef %dev) #0 align 16 !dbg !5784 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5786, metadata !DIExpression()), !dbg !5787
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5787
  call void @quirk_blacklist_vpd(ptr noundef %0) #14, !dbg !5787
  ret void, !dbg !5787
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__UNIQUE_ID_quirk_blacklist_vpd310(ptr noundef %dev) #0 align 16 !dbg !5788 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5790, metadata !DIExpression()), !dbg !5791
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5791
  call void @quirk_blacklist_vpd(ptr noundef %0) #14, !dbg !5791
  ret void, !dbg !5791
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__UNIQUE_ID_quirk_blacklist_vpd312(ptr noundef %dev) #0 align 16 !dbg !5792 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5794, metadata !DIExpression()), !dbg !5795
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5795
  call void @quirk_blacklist_vpd(ptr noundef %0) #14, !dbg !5795
  ret void, !dbg !5795
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__UNIQUE_ID_quirk_blacklist_vpd314(ptr noundef %dev) #0 align 16 !dbg !5796 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5798, metadata !DIExpression()), !dbg !5799
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5799
  call void @quirk_blacklist_vpd(ptr noundef %0) #14, !dbg !5799
  ret void, !dbg !5799
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__UNIQUE_ID_quirk_blacklist_vpd316(ptr noundef %dev) #0 align 16 !dbg !5800 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5802, metadata !DIExpression()), !dbg !5803
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5803
  call void @quirk_blacklist_vpd(ptr noundef %0) #14, !dbg !5803
  ret void, !dbg !5803
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__UNIQUE_ID_quirk_blacklist_vpd318(ptr noundef %dev) #0 align 16 !dbg !5804 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5806, metadata !DIExpression()), !dbg !5807
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5807
  call void @quirk_blacklist_vpd(ptr noundef %0) #14, !dbg !5807
  ret void, !dbg !5807
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__UNIQUE_ID_quirk_blacklist_vpd320(ptr noundef %dev) #0 align 16 !dbg !5808 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5810, metadata !DIExpression()), !dbg !5811
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5811
  call void @quirk_blacklist_vpd(ptr noundef %0) #14, !dbg !5811
  ret void, !dbg !5811
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__UNIQUE_ID_quirk_blacklist_vpd322(ptr noundef %dev) #0 align 16 !dbg !5812 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5814, metadata !DIExpression()), !dbg !5815
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5815
  call void @quirk_blacklist_vpd(ptr noundef %0) #14, !dbg !5815
  ret void, !dbg !5815
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__UNIQUE_ID_quirk_blacklist_vpd324(ptr noundef %dev) #0 align 16 !dbg !5816 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5818, metadata !DIExpression()), !dbg !5819
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5819
  call void @quirk_blacklist_vpd(ptr noundef %0) #14, !dbg !5819
  ret void, !dbg !5819
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__UNIQUE_ID_quirk_blacklist_vpd326(ptr noundef %dev) #0 align 16 !dbg !5820 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5822, metadata !DIExpression()), !dbg !5823
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5823
  call void @quirk_blacklist_vpd(ptr noundef %0) #14, !dbg !5823
  ret void, !dbg !5823
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__UNIQUE_ID_quirk_chelsio_extend_vpd328(ptr noundef %dev) #0 align 16 !dbg !5824 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5826, metadata !DIExpression()), !dbg !5827
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5827
  call void @quirk_chelsio_extend_vpd(ptr noundef %0) #14, !dbg !5827
  ret void, !dbg !5827
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @quirk_chelsio_extend_vpd(ptr noundef %dev) #0 align 16 !dbg !5828 {
entry:
  %dev.addr = alloca ptr, align 8
  %chip = alloca i32, align 4
  %func = alloca i32, align 4
  %prod = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5830, metadata !DIExpression()), !dbg !5834
  call void @llvm.lifetime.start.p0(i64 4, ptr %chip) #15, !dbg !5835
  call void @llvm.dbg.declare(metadata ptr %chip, metadata !5831, metadata !DIExpression()), !dbg !5836
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5837
  %device = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8, !dbg !5838
  %1 = load i16, ptr %device, align 2, !dbg !5838
  %conv = zext i16 %1 to i32, !dbg !5837
  %and = and i32 %conv, 61440, !dbg !5839
  %shr = ashr i32 %and, 12, !dbg !5840
  store i32 %shr, ptr %chip, align 4, !dbg !5836
  call void @llvm.lifetime.start.p0(i64 4, ptr %func) #15, !dbg !5841
  call void @llvm.dbg.declare(metadata ptr %func, metadata !5832, metadata !DIExpression()), !dbg !5842
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5843
  %device1 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 8, !dbg !5844
  %3 = load i16, ptr %device1, align 2, !dbg !5844
  %conv2 = zext i16 %3 to i32, !dbg !5843
  %and3 = and i32 %conv2, 3840, !dbg !5845
  %shr4 = ashr i32 %and3, 8, !dbg !5846
  store i32 %shr4, ptr %func, align 4, !dbg !5842
  call void @llvm.lifetime.start.p0(i64 4, ptr %prod) #15, !dbg !5847
  call void @llvm.dbg.declare(metadata ptr %prod, metadata !5833, metadata !DIExpression()), !dbg !5848
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5849
  %device5 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 8, !dbg !5850
  %5 = load i16, ptr %device5, align 2, !dbg !5850
  %conv6 = zext i16 %5 to i32, !dbg !5849
  %and7 = and i32 %conv6, 255, !dbg !5851
  %shr8 = ashr i32 %and7, 0, !dbg !5852
  store i32 %shr8, ptr %prod, align 4, !dbg !5848
  %6 = load i32, ptr %chip, align 4, !dbg !5853
  %cmp = icmp eq i32 %6, 0, !dbg !5855
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !5856

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, ptr %prod, align 4, !dbg !5857
  %cmp10 = icmp sge i32 %7, 32, !dbg !5858
  br i1 %cmp10, label %if.then, label %if.else, !dbg !5859

if.then:                                          ; preds = %land.lhs.true
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !5860
  %vpd = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 53, !dbg !5861
  %len = getelementptr inbounds %struct.pci_vpd, ptr %vpd, i32 0, i32 1, !dbg !5862
  store i32 8192, ptr %len, align 8, !dbg !5863
  br label %if.end20, !dbg !5860

if.else:                                          ; preds = %land.lhs.true, %entry
  %9 = load i32, ptr %chip, align 4, !dbg !5864
  %cmp12 = icmp sge i32 %9, 4, !dbg !5866
  br i1 %cmp12, label %land.lhs.true14, label %if.end, !dbg !5867

land.lhs.true14:                                  ; preds = %if.else
  %10 = load i32, ptr %func, align 4, !dbg !5868
  %cmp15 = icmp slt i32 %10, 8, !dbg !5869
  br i1 %cmp15, label %if.then17, label %if.end, !dbg !5870

if.then17:                                        ; preds = %land.lhs.true14
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !5871
  %vpd18 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 53, !dbg !5872
  %len19 = getelementptr inbounds %struct.pci_vpd, ptr %vpd18, i32 0, i32 1, !dbg !5873
  store i32 2048, ptr %len19, align 8, !dbg !5874
  br label %if.end, !dbg !5871

if.end:                                           ; preds = %if.then17, %land.lhs.true14, %if.else
  br label %if.end20

if.end20:                                         ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %prod) #15, !dbg !5875
  call void @llvm.lifetime.end.p0(i64 4, ptr %func) #15, !dbg !5875
  call void @llvm.lifetime.end.p0(i64 4, ptr %chip) #15, !dbg !5875
  ret void, !dbg !5875
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @vpd_read(ptr noundef %filp, ptr noundef %kobj, ptr noundef %bin_attr, ptr noundef %buf, i64 noundef %off, i64 noundef %count) #0 align 16 !dbg !5876 {
entry:
  %retval = alloca i64, align 8
  %filp.addr = alloca ptr, align 8
  %kobj.addr = alloca ptr, align 8
  %bin_attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %off.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %vpd_dev = alloca ptr, align 8
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !5878, metadata !DIExpression()), !dbg !5891
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5879, metadata !DIExpression()), !dbg !5892
  store ptr %bin_attr, ptr %bin_attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bin_attr.addr, metadata !5880, metadata !DIExpression()), !dbg !5893
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5881, metadata !DIExpression()), !dbg !5894
  store i64 %off, ptr %off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !5882, metadata !DIExpression()), !dbg !5895
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5883, metadata !DIExpression()), !dbg !5896
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !5897
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5884, metadata !DIExpression()), !dbg !5898
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5899
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5885, metadata !DIExpression()), !dbg !5899
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #15, !dbg !5900
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !5887, metadata !DIExpression()), !dbg !5900
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5900
  store ptr %0, ptr %__mptr1, align 8, !dbg !5900
  %1 = load ptr, ptr %__mptr1, align 8, !dbg !5900
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5900
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5900
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #15, !dbg !5899
  %2 = load ptr, ptr %tmp, align 8, !dbg !5900
  store ptr %2, ptr %__mptr, align 8, !dbg !5899
  %3 = load ptr, ptr %__mptr, align 8, !dbg !5899
  %add.ptr3 = getelementptr i8, ptr %3, i64 -184, !dbg !5899
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !5899
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5901
  %4 = load ptr, ptr %tmp2, align 8, !dbg !5899
  store ptr %4, ptr %dev, align 8, !dbg !5898
  call void @llvm.lifetime.start.p0(i64 8, ptr %vpd_dev) #15, !dbg !5902
  call void @llvm.dbg.declare(metadata ptr %vpd_dev, metadata !5889, metadata !DIExpression()), !dbg !5903
  %5 = load ptr, ptr %dev, align 8, !dbg !5904
  store ptr %5, ptr %vpd_dev, align 8, !dbg !5903
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #15, !dbg !5905
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5890, metadata !DIExpression()), !dbg !5906
  %6 = load ptr, ptr %dev, align 8, !dbg !5907
  %dev_flags = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44, !dbg !5909
  %7 = load i16, ptr %dev_flags, align 2, !dbg !5909
  %conv = zext i16 %7 to i32, !dbg !5907
  %and = and i32 %conv, 256, !dbg !5910
  %tobool = icmp ne i32 %and, 0, !dbg !5910
  br i1 %tobool, label %if.then, label %if.end6, !dbg !5911

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %dev, align 8, !dbg !5912
  %call = call ptr @pci_get_func0_dev(ptr noundef %8) #14, !dbg !5914
  store ptr %call, ptr %vpd_dev, align 8, !dbg !5915
  %9 = load ptr, ptr %vpd_dev, align 8, !dbg !5916
  %tobool4 = icmp ne ptr %9, null, !dbg !5916
  br i1 %tobool4, label %if.end, label %if.then5, !dbg !5918

if.then5:                                         ; preds = %if.then
  store i64 -19, ptr %retval, align 8, !dbg !5919
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5919

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !5920

if.end6:                                          ; preds = %if.end, %entry
  %10 = load ptr, ptr %vpd_dev, align 8, !dbg !5921
  call void @pci_config_pm_runtime_get(ptr noundef %10) #14, !dbg !5922
  %11 = load ptr, ptr %vpd_dev, align 8, !dbg !5923
  %12 = load i64, ptr %off.addr, align 8, !dbg !5924
  %13 = load i64, ptr %count.addr, align 8, !dbg !5925
  %14 = load ptr, ptr %buf.addr, align 8, !dbg !5926
  %call7 = call i64 @pci_read_vpd(ptr noundef %11, i64 noundef %12, i64 noundef %13, ptr noundef %14) #14, !dbg !5927
  store i64 %call7, ptr %ret, align 8, !dbg !5928
  %15 = load ptr, ptr %vpd_dev, align 8, !dbg !5929
  call void @pci_config_pm_runtime_put(ptr noundef %15) #14, !dbg !5930
  %16 = load ptr, ptr %dev, align 8, !dbg !5931
  %dev_flags8 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44, !dbg !5933
  %17 = load i16, ptr %dev_flags8, align 2, !dbg !5933
  %conv9 = zext i16 %17 to i32, !dbg !5931
  %and10 = and i32 %conv9, 256, !dbg !5934
  %tobool11 = icmp ne i32 %and10, 0, !dbg !5934
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !5935

if.then12:                                        ; preds = %if.end6
  %18 = load ptr, ptr %vpd_dev, align 8, !dbg !5936
  call void @pci_dev_put(ptr noundef %18) #14, !dbg !5937
  br label %if.end13, !dbg !5937

if.end13:                                         ; preds = %if.then12, %if.end6
  %19 = load i64, ptr %ret, align 8, !dbg !5938
  store i64 %19, ptr %retval, align 8, !dbg !5939
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5939

cleanup:                                          ; preds = %if.end13, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #15, !dbg !5940
  call void @llvm.lifetime.end.p0(i64 8, ptr %vpd_dev) #15, !dbg !5940
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !5940
  %20 = load i64, ptr %retval, align 8, !dbg !5940
  ret i64 %20, !dbg !5940
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @vpd_write(ptr noundef %filp, ptr noundef %kobj, ptr noundef %bin_attr, ptr noundef %buf, i64 noundef %off, i64 noundef %count) #0 align 16 !dbg !5941 {
entry:
  %retval = alloca i64, align 8
  %filp.addr = alloca ptr, align 8
  %kobj.addr = alloca ptr, align 8
  %bin_attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %off.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %vpd_dev = alloca ptr, align 8
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !5943, metadata !DIExpression()), !dbg !5956
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5944, metadata !DIExpression()), !dbg !5957
  store ptr %bin_attr, ptr %bin_attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bin_attr.addr, metadata !5945, metadata !DIExpression()), !dbg !5958
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5946, metadata !DIExpression()), !dbg !5959
  store i64 %off, ptr %off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !5947, metadata !DIExpression()), !dbg !5960
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5948, metadata !DIExpression()), !dbg !5961
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !5962
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5949, metadata !DIExpression()), !dbg !5963
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5964
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5950, metadata !DIExpression()), !dbg !5964
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #15, !dbg !5965
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !5952, metadata !DIExpression()), !dbg !5965
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5965
  store ptr %0, ptr %__mptr1, align 8, !dbg !5965
  %1 = load ptr, ptr %__mptr1, align 8, !dbg !5965
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5965
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5965
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #15, !dbg !5964
  %2 = load ptr, ptr %tmp, align 8, !dbg !5965
  store ptr %2, ptr %__mptr, align 8, !dbg !5964
  %3 = load ptr, ptr %__mptr, align 8, !dbg !5964
  %add.ptr3 = getelementptr i8, ptr %3, i64 -184, !dbg !5964
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !5964
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5966
  %4 = load ptr, ptr %tmp2, align 8, !dbg !5964
  store ptr %4, ptr %dev, align 8, !dbg !5963
  call void @llvm.lifetime.start.p0(i64 8, ptr %vpd_dev) #15, !dbg !5967
  call void @llvm.dbg.declare(metadata ptr %vpd_dev, metadata !5954, metadata !DIExpression()), !dbg !5968
  %5 = load ptr, ptr %dev, align 8, !dbg !5969
  store ptr %5, ptr %vpd_dev, align 8, !dbg !5968
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #15, !dbg !5970
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5955, metadata !DIExpression()), !dbg !5971
  %6 = load ptr, ptr %dev, align 8, !dbg !5972
  %dev_flags = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44, !dbg !5974
  %7 = load i16, ptr %dev_flags, align 2, !dbg !5974
  %conv = zext i16 %7 to i32, !dbg !5972
  %and = and i32 %conv, 256, !dbg !5975
  %tobool = icmp ne i32 %and, 0, !dbg !5975
  br i1 %tobool, label %if.then, label %if.end6, !dbg !5976

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %dev, align 8, !dbg !5977
  %call = call ptr @pci_get_func0_dev(ptr noundef %8) #14, !dbg !5979
  store ptr %call, ptr %vpd_dev, align 8, !dbg !5980
  %9 = load ptr, ptr %vpd_dev, align 8, !dbg !5981
  %tobool4 = icmp ne ptr %9, null, !dbg !5981
  br i1 %tobool4, label %if.end, label %if.then5, !dbg !5983

if.then5:                                         ; preds = %if.then
  store i64 -19, ptr %retval, align 8, !dbg !5984
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5984

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !5985

if.end6:                                          ; preds = %if.end, %entry
  %10 = load ptr, ptr %vpd_dev, align 8, !dbg !5986
  call void @pci_config_pm_runtime_get(ptr noundef %10) #14, !dbg !5987
  %11 = load ptr, ptr %vpd_dev, align 8, !dbg !5988
  %12 = load i64, ptr %off.addr, align 8, !dbg !5989
  %13 = load i64, ptr %count.addr, align 8, !dbg !5990
  %14 = load ptr, ptr %buf.addr, align 8, !dbg !5991
  %call7 = call i64 @pci_write_vpd(ptr noundef %11, i64 noundef %12, i64 noundef %13, ptr noundef %14) #14, !dbg !5992
  store i64 %call7, ptr %ret, align 8, !dbg !5993
  %15 = load ptr, ptr %vpd_dev, align 8, !dbg !5994
  call void @pci_config_pm_runtime_put(ptr noundef %15) #14, !dbg !5995
  %16 = load ptr, ptr %dev, align 8, !dbg !5996
  %dev_flags8 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44, !dbg !5998
  %17 = load i16, ptr %dev_flags8, align 2, !dbg !5998
  %conv9 = zext i16 %17 to i32, !dbg !5996
  %and10 = and i32 %conv9, 256, !dbg !5999
  %tobool11 = icmp ne i32 %and10, 0, !dbg !5999
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !6000

if.then12:                                        ; preds = %if.end6
  %18 = load ptr, ptr %vpd_dev, align 8, !dbg !6001
  call void @pci_dev_put(ptr noundef %18) #14, !dbg !6002
  br label %if.end13, !dbg !6002

if.end13:                                         ; preds = %if.then12, %if.end6
  %19 = load i64, ptr %ret, align 8, !dbg !6003
  store i64 %19, ptr %retval, align 8, !dbg !6004
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6004

cleanup:                                          ; preds = %if.end13, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #15, !dbg !6005
  call void @llvm.lifetime.end.p0(i64 8, ptr %vpd_dev) #15, !dbg !6005
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !6005
  %20 = load i64, ptr %retval, align 8, !dbg !6005
  ret i64 %20, !dbg !6005
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pci_get_func0_dev(ptr noundef %dev) #0 align 16 !dbg !6006 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6010, metadata !DIExpression()), !dbg !6011
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6012
  %bus = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1, !dbg !6013
  %1 = load ptr, ptr %bus, align 8, !dbg !6013
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !6014
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 6, !dbg !6014
  %3 = load i32, ptr %devfn, align 8, !dbg !6014
  %shr = lshr i32 %3, 3, !dbg !6014
  %and = and i32 %shr, 31, !dbg !6014
  %and1 = and i32 %and, 31, !dbg !6014
  %shl = shl i32 %and1, 3, !dbg !6014
  %or = or i32 %shl, 0, !dbg !6014
  %call = call ptr @pci_get_slot(ptr noundef %1, i32 noundef %or) #14, !dbg !6015
  ret ptr %call, !dbg !6016
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6017 dso_local void @pci_config_pm_runtime_get(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6018 dso_local void @pci_config_pm_runtime_put(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6019 dso_local void @pci_dev_put(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6020 dso_local ptr @pci_get_slot(ptr noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pci_vpd_size(ptr noundef %dev) #0 align 16 !dbg !6023 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %off = alloca i64, align 8
  %size = alloca i64, align 8
  %tag = alloca i8, align 1
  %header = alloca [3 x i8], align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6027, metadata !DIExpression()), !dbg !6034
  call void @llvm.lifetime.start.p0(i64 8, ptr %off) #15, !dbg !6035
  call void @llvm.dbg.declare(metadata ptr %off, metadata !6028, metadata !DIExpression()), !dbg !6036
  store i64 0, ptr %off, align 8, !dbg !6036
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #15, !dbg !6035
  call void @llvm.dbg.declare(metadata ptr %size, metadata !6029, metadata !DIExpression()), !dbg !6037
  call void @llvm.lifetime.start.p0(i64 1, ptr %tag) #15, !dbg !6038
  call void @llvm.dbg.declare(metadata ptr %tag, metadata !6030, metadata !DIExpression()), !dbg !6039
  call void @llvm.lifetime.start.p0(i64 3, ptr %header) #15, !dbg !6038
  call void @llvm.dbg.declare(metadata ptr %header, metadata !6031, metadata !DIExpression()), !dbg !6040
  br label %while.cond, !dbg !6041

while.cond:                                       ; preds = %if.end47, %entry
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6042
  %1 = load i64, ptr %off, align 8, !dbg !6043
  %arraydecay = getelementptr inbounds [3 x i8], ptr %header, i64 0, i64 0, !dbg !6044
  %call = call i64 @pci_read_vpd_any(ptr noundef %0, i64 noundef %1, i64 noundef 1, ptr noundef %arraydecay) #14, !dbg !6045
  %cmp = icmp eq i64 %call, 1, !dbg !6046
  br i1 %cmp, label %while.body, label %while.end, !dbg !6041

while.body:                                       ; preds = %while.cond
  store i64 0, ptr %size, align 8, !dbg !6047
  %2 = load i64, ptr %off, align 8, !dbg !6049
  %cmp1 = icmp eq i64 %2, 0, !dbg !6051
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !6052

land.lhs.true:                                    ; preds = %while.body
  %arrayidx = getelementptr [3 x i8], ptr %header, i64 0, i64 0, !dbg !6053
  %3 = load i8, ptr %arrayidx, align 1, !dbg !6053
  %conv = zext i8 %3 to i32, !dbg !6053
  %cmp2 = icmp eq i32 %conv, 0, !dbg !6054
  br i1 %cmp2, label %if.then, label %lor.lhs.false, !dbg !6055

lor.lhs.false:                                    ; preds = %land.lhs.true
  %arrayidx4 = getelementptr [3 x i8], ptr %header, i64 0, i64 0, !dbg !6056
  %4 = load i8, ptr %arrayidx4, align 1, !dbg !6056
  %conv5 = zext i8 %4 to i32, !dbg !6056
  %cmp6 = icmp eq i32 %conv5, 255, !dbg !6057
  br i1 %cmp6, label %if.then, label %if.end, !dbg !6058

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  br label %error, !dbg !6059

if.end:                                           ; preds = %lor.lhs.false, %while.body
  %arrayidx8 = getelementptr [3 x i8], ptr %header, i64 0, i64 0, !dbg !6060
  %5 = load i8, ptr %arrayidx8, align 1, !dbg !6060
  %conv9 = zext i8 %5 to i32, !dbg !6060
  %and = and i32 %conv9, 128, !dbg !6062
  %tobool = icmp ne i32 %and, 0, !dbg !6062
  br i1 %tobool, label %if.then10, label %if.else, !dbg !6063

if.then10:                                        ; preds = %if.end
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !6064
  %7 = load i64, ptr %off, align 8, !dbg !6067
  %add = add i64 %7, 1, !dbg !6068
  %arrayidx11 = getelementptr [3 x i8], ptr %header, i64 0, i64 1, !dbg !6069
  %call12 = call i64 @pci_read_vpd_any(ptr noundef %6, i64 noundef %add, i64 noundef 2, ptr noundef %arrayidx11) #14, !dbg !6070
  %cmp13 = icmp ne i64 %call12, 2, !dbg !6071
  br i1 %cmp13, label %if.then15, label %if.end19, !dbg !6072

if.then15:                                        ; preds = %if.then10
  br label %do.body, !dbg !6073

do.body:                                          ; preds = %if.then15
  br label %do.cond, !dbg !6076

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6076

do.end:                                           ; preds = %do.cond
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !6073
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 37, !dbg !6073
  %9 = load i64, ptr %off, align 8, !dbg !6073
  %add17 = add i64 %9, 1, !dbg !6073
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev16, ptr noundef @.str.3, i64 noundef %add17) #18, !dbg !6073
  %10 = load i64, ptr %off, align 8, !dbg !6078
  %tobool18 = icmp ne i64 %10, 0, !dbg !6078
  br i1 %tobool18, label %cond.true, label %cond.false, !dbg !6078

cond.true:                                        ; preds = %do.end
  br label %cond.end, !dbg !6078

cond.false:                                       ; preds = %do.end
  br label %cond.end, !dbg !6078

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %10, %cond.true ], [ 4294967295, %cond.false ], !dbg !6078
  store i64 %cond, ptr %retval, align 8, !dbg !6079
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6079

if.end19:                                         ; preds = %if.then10
  %arraydecay20 = getelementptr inbounds [3 x i8], ptr %header, i64 0, i64 0, !dbg !6080
  %call21 = call zeroext i16 @pci_vpd_lrdt_size(ptr noundef %arraydecay20) #14, !dbg !6081
  %conv22 = zext i16 %call21 to i64, !dbg !6081
  store i64 %conv22, ptr %size, align 8, !dbg !6082
  %11 = load i64, ptr %off, align 8, !dbg !6083
  %12 = load i64, ptr %size, align 8, !dbg !6085
  %add23 = add i64 %11, %12, !dbg !6086
  %cmp24 = icmp ugt i64 %add23, 32768, !dbg !6087
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !6088

if.then26:                                        ; preds = %if.end19
  br label %error, !dbg !6089

if.end27:                                         ; preds = %if.end19
  %13 = load i64, ptr %size, align 8, !dbg !6090
  %add28 = add i64 3, %13, !dbg !6091
  %14 = load i64, ptr %off, align 8, !dbg !6092
  %add29 = add i64 %14, %add28, !dbg !6092
  store i64 %add29, ptr %off, align 8, !dbg !6092
  br label %if.end47, !dbg !6093

if.else:                                          ; preds = %if.end
  %arraydecay30 = getelementptr inbounds [3 x i8], ptr %header, i64 0, i64 0, !dbg !6094
  %call31 = call zeroext i8 @pci_vpd_srdt_tag(ptr noundef %arraydecay30) #14, !dbg !6096
  store i8 %call31, ptr %tag, align 1, !dbg !6097
  %arraydecay32 = getelementptr inbounds [3 x i8], ptr %header, i64 0, i64 0, !dbg !6098
  %call33 = call zeroext i8 @pci_vpd_srdt_size(ptr noundef %arraydecay32) #14, !dbg !6099
  %conv34 = zext i8 %call33 to i64, !dbg !6099
  store i64 %conv34, ptr %size, align 8, !dbg !6100
  %15 = load i64, ptr %off, align 8, !dbg !6101
  %16 = load i64, ptr %size, align 8, !dbg !6103
  %add35 = add i64 %15, %16, !dbg !6104
  %cmp36 = icmp ugt i64 %add35, 32768, !dbg !6105
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !6106

if.then38:                                        ; preds = %if.else
  br label %error, !dbg !6107

if.end39:                                         ; preds = %if.else
  %17 = load i64, ptr %size, align 8, !dbg !6108
  %add40 = add i64 1, %17, !dbg !6109
  %18 = load i64, ptr %off, align 8, !dbg !6110
  %add41 = add i64 %18, %add40, !dbg !6110
  store i64 %add41, ptr %off, align 8, !dbg !6110
  %19 = load i8, ptr %tag, align 1, !dbg !6111
  %conv42 = zext i8 %19 to i32, !dbg !6111
  %cmp43 = icmp eq i32 %conv42, 15, !dbg !6113
  br i1 %cmp43, label %if.then45, label %if.end46, !dbg !6114

if.then45:                                        ; preds = %if.end39
  %20 = load i64, ptr %off, align 8, !dbg !6115
  store i64 %20, ptr %retval, align 8, !dbg !6116
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6116

if.end46:                                         ; preds = %if.end39
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end27
  br label %while.cond, !dbg !6041, !llvm.loop !6117

while.end:                                        ; preds = %while.cond
  %21 = load i64, ptr %off, align 8, !dbg !6119
  store i64 %21, ptr %retval, align 8, !dbg !6120
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6120

error:                                            ; preds = %if.then38, %if.then26, %if.then
  call void @llvm.dbg.label(metadata !6033), !dbg !6121
  br label %do.body48, !dbg !6122

do.body48:                                        ; preds = %error
  br label %do.cond49, !dbg !6124

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !6124

do.end50:                                         ; preds = %do.cond49
  %22 = load ptr, ptr %dev.addr, align 8, !dbg !6122
  %dev51 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 37, !dbg !6122
  %arrayidx52 = getelementptr [3 x i8], ptr %header, i64 0, i64 0, !dbg !6122
  %23 = load i8, ptr %arrayidx52, align 1, !dbg !6122
  %conv53 = zext i8 %23 to i32, !dbg !6122
  %24 = load i64, ptr %size, align 8, !dbg !6122
  %25 = load i64, ptr %off, align 8, !dbg !6122
  %26 = load i64, ptr %off, align 8, !dbg !6122
  %cmp54 = icmp eq i64 %26, 0, !dbg !6122
  %27 = zext i1 %cmp54 to i64, !dbg !6122
  %cond56 = select i1 %cmp54, ptr @.str.5, ptr @.str.6, !dbg !6122
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev51, ptr noundef @.str.4, i32 noundef %conv53, i64 noundef %24, i64 noundef %25, ptr noundef %cond56) #18, !dbg !6122
  %28 = load i64, ptr %off, align 8, !dbg !6126
  %tobool57 = icmp ne i64 %28, 0, !dbg !6126
  br i1 %tobool57, label %cond.true58, label %cond.false59, !dbg !6126

cond.true58:                                      ; preds = %do.end50
  br label %cond.end60, !dbg !6126

cond.false59:                                     ; preds = %do.end50
  br label %cond.end60, !dbg !6126

cond.end60:                                       ; preds = %cond.false59, %cond.true58
  %cond61 = phi i64 [ %28, %cond.true58 ], [ 4294967295, %cond.false59 ], !dbg !6126
  store i64 %cond61, ptr %retval, align 8, !dbg !6127
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6127

cleanup:                                          ; preds = %cond.end60, %while.end, %if.then45, %cond.end
  call void @llvm.lifetime.end.p0(i64 3, ptr %header) #15, !dbg !6128
  call void @llvm.lifetime.end.p0(i64 1, ptr %tag) #15, !dbg !6128
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #15, !dbg !6128
  call void @llvm.lifetime.end.p0(i64 8, ptr %off) #15, !dbg !6128
  %29 = load i64, ptr %retval, align 8, !dbg !6128
  ret i64 %29, !dbg !6128
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6129 dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @pci_vpd_lrdt_size(ptr noundef %lrdt) #0 align 16 !dbg !6133 {
entry:
  %lrdt.addr = alloca ptr, align 8
  store ptr %lrdt, ptr %lrdt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lrdt.addr, metadata !6137, metadata !DIExpression()), !dbg !6138
  %0 = load ptr, ptr %lrdt.addr, align 8, !dbg !6139
  %add.ptr = getelementptr i8, ptr %0, i64 1, !dbg !6140
  %call = call zeroext i16 @get_unaligned_le16(ptr noundef %add.ptr) #14, !dbg !6141
  ret i16 %call, !dbg !6142
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @pci_vpd_srdt_tag(ptr noundef %srdt) #0 align 16 !dbg !6143 {
entry:
  %srdt.addr = alloca ptr, align 8
  store ptr %srdt, ptr %srdt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srdt.addr, metadata !6145, metadata !DIExpression()), !dbg !6146
  %0 = load ptr, ptr %srdt.addr, align 8, !dbg !6147
  %1 = load i8, ptr %0, align 1, !dbg !6148
  %conv = zext i8 %1 to i32, !dbg !6148
  %shr = ashr i32 %conv, 3, !dbg !6149
  %conv1 = trunc i32 %shr to i8, !dbg !6148
  ret i8 %conv1, !dbg !6150
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @pci_vpd_srdt_size(ptr noundef %srdt) #0 align 16 !dbg !6151 {
entry:
  %srdt.addr = alloca ptr, align 8
  store ptr %srdt, ptr %srdt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srdt.addr, metadata !6153, metadata !DIExpression()), !dbg !6154
  %0 = load ptr, ptr %srdt.addr, align 8, !dbg !6155
  %1 = load i8, ptr %0, align 1, !dbg !6156
  %conv = zext i8 %1 to i32, !dbg !6156
  %and = and i32 %conv, 7, !dbg !6157
  %conv1 = trunc i32 %and to i8, !dbg !6156
  ret i8 %conv1, !dbg !6158
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6159 dso_local void @_dev_info(ptr noundef, ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @get_unaligned_le16(ptr noundef %p) #4 align 16 !dbg !4920 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i16, align 2
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4924, metadata !DIExpression()), !dbg !6160
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #15, !dbg !6161
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !4925, metadata !DIExpression()), !dbg !6161
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6161
  store ptr %0, ptr %__pptr, align 8, !dbg !6161
  %1 = load ptr, ptr %__pptr, align 8, !dbg !6161
  %x = getelementptr inbounds %struct.anon.14, ptr %1, i32 0, i32 0, !dbg !6161
  %2 = load i16, ptr %x, align 1, !dbg !6161
  store i16 %2, ptr %tmp, align 2, !dbg !6161
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #15, !dbg !6162
  %3 = load i16, ptr %tmp, align 2, !dbg !6161
  ret i16 %3, !dbg !6163
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6164 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #9 align 16 !dbg !6165 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6169, metadata !DIExpression()), !dbg !6171
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6170, metadata !DIExpression()), !dbg !6172
  %0 = load i64, ptr %size.addr, align 8, !dbg !6173
  %tobool = icmp ne i64 %0, 0, !dbg !6173
  br i1 %tobool, label %if.end, label %if.then, !dbg !6175

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6176
  br label %return, !dbg !6176

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6177
  %cmp = icmp ule i64 %1, 8, !dbg !6179
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6180

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6181
  br label %return, !dbg !6181

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6182
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6184
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6185

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6186
  %cmp4 = icmp ule i64 %3, 96, !dbg !6187
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6188

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6189
  br label %return, !dbg !6189

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6190
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6192
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6193

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6194
  %cmp9 = icmp ule i64 %5, 192, !dbg !6195
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6196

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6197
  br label %return, !dbg !6197

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6198
  %cmp12 = icmp ule i64 %6, 8, !dbg !6200
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6201

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6202
  br label %return, !dbg !6202

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6203
  %cmp15 = icmp ule i64 %7, 16, !dbg !6205
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6206

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6207
  br label %return, !dbg !6207

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6208
  %cmp18 = icmp ule i64 %8, 32, !dbg !6210
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6211

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6212
  br label %return, !dbg !6212

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6213
  %cmp21 = icmp ule i64 %9, 64, !dbg !6215
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6216

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6217
  br label %return, !dbg !6217

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6218
  %cmp24 = icmp ule i64 %10, 128, !dbg !6220
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6221

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6222
  br label %return, !dbg !6222

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6223
  %cmp27 = icmp ule i64 %11, 256, !dbg !6225
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6226

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6227
  br label %return, !dbg !6227

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6228
  %cmp30 = icmp ule i64 %12, 512, !dbg !6230
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6231

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6232
  br label %return, !dbg !6232

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6233
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6235
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6236

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6237
  br label %return, !dbg !6237

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6238
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6240
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6241

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6242
  br label %return, !dbg !6242

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6243
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6245
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6246

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6247
  br label %return, !dbg !6247

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6248
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6250
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6251

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6252
  br label %return, !dbg !6252

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6253
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6255
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6256

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6257
  br label %return, !dbg !6257

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6258
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6260
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6261

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6262
  br label %return, !dbg !6262

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6263
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6265
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6266

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6267
  br label %return, !dbg !6267

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6268
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6270
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6271

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6272
  br label %return, !dbg !6272

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6273
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6275
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6276

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6277
  br label %return, !dbg !6277

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6278
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6280
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6281

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6282
  br label %return, !dbg !6282

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6283
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6285
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6286

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6287
  br label %return, !dbg !6287

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6288
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6290
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6291

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6292
  br label %return, !dbg !6292

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6293, !range !5194, !noundef !819
  %tobool69 = trunc i8 %25 to i1, !dbg !6293
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6295

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6296

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #19, !dbg !6297, !srcloc !6300
  unreachable, !dbg !6297

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6301

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6302

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6303

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6305

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6303

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, i32 480, i32 0, i64 12) #15, !dbg !6307, !srcloc !6309
  br label %do.end75, !dbg !6307

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6303

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6310
  br label %return, !dbg !6310

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6311
  ret i32 %26, !dbg !6311
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6312 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #9 align 16 !dbg !6318 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6322, metadata !DIExpression()), !dbg !6324
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6323, metadata !DIExpression()), !dbg !6325
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6326
  %and = and i32 %0, 17, !dbg !6326
  %cmp = icmp eq i32 %and, 0, !dbg !6326
  %lnot = xor i1 %cmp, true, !dbg !6326
  %lnot1 = xor i1 %lnot, true, !dbg !6326
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6326
  %conv = sext i32 %lnot.ext to i64, !dbg !6326
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6326
  %tobool = icmp ne i64 %expval, 0, !dbg !6326
  br i1 %tobool, label %if.then, label %if.end, !dbg !6328

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6329
  br label %return, !dbg !6329

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6330
  %and2 = and i32 %1, 1, !dbg !6332
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6332
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6333

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6334
  br label %return, !dbg !6334

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6335
  br label %return, !dbg !6335

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6337
  ret i32 %2, !dbg !6337
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6338 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6339 dso_local void @__compiletime_assert_204() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pci_vpd_read(ptr noundef %dev, i64 noundef %pos, i64 noundef %count, ptr noundef %arg, i1 noundef zeroext %check_size) #0 align 16 !dbg !6340 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %pos.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %arg.addr = alloca ptr, align 8
  %check_size.addr = alloca i8, align 1
  %vpd = alloca ptr, align 8
  %max_len = alloca i32, align 4
  %ret = alloca i32, align 4
  %end = alloca i64, align 8
  %buf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %val = alloca i32, align 4
  %i = alloca i32, align 4
  %skip = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6342, metadata !DIExpression()), !dbg !6357
  store i64 %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !6343, metadata !DIExpression()), !dbg !6358
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6344, metadata !DIExpression()), !dbg !6359
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !6345, metadata !DIExpression()), !dbg !6360
  %frombool = zext i1 %check_size to i8
  store i8 %frombool, ptr %check_size.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %check_size.addr, metadata !6346, metadata !DIExpression()), !dbg !6361
  call void @llvm.lifetime.start.p0(i64 8, ptr %vpd) #15, !dbg !6362
  call void @llvm.dbg.declare(metadata ptr %vpd, metadata !6347, metadata !DIExpression()), !dbg !6363
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6364
  %vpd1 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 53, !dbg !6365
  store ptr %vpd1, ptr %vpd, align 8, !dbg !6363
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_len) #15, !dbg !6366
  call void @llvm.dbg.declare(metadata ptr %max_len, metadata !6348, metadata !DIExpression()), !dbg !6367
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6368
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6349, metadata !DIExpression()), !dbg !6369
  store i32 0, ptr %ret, align 4, !dbg !6369
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #15, !dbg !6370
  call void @llvm.dbg.declare(metadata ptr %end, metadata !6350, metadata !DIExpression()), !dbg !6371
  %1 = load i64, ptr %pos.addr, align 8, !dbg !6372
  %2 = load i64, ptr %count.addr, align 8, !dbg !6373
  %add = add i64 %1, %2, !dbg !6374
  store i64 %add, ptr %end, align 8, !dbg !6371
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #15, !dbg !6375
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !6351, metadata !DIExpression()), !dbg !6376
  %3 = load ptr, ptr %arg.addr, align 8, !dbg !6377
  store ptr %3, ptr %buf, align 8, !dbg !6376
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !6378
  %5 = load i8, ptr %check_size.addr, align 1, !dbg !6380, !range !5194, !noundef !819
  %tobool = trunc i8 %5 to i1, !dbg !6380
  %call = call zeroext i1 @pci_vpd_available(ptr noundef %4, i1 noundef zeroext %tobool) #14, !dbg !6381
  br i1 %call, label %if.end, label %if.then, !dbg !6382

if.then:                                          ; preds = %entry
  store i64 -19, ptr %retval, align 8, !dbg !6383
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup71, !dbg !6383

if.end:                                           ; preds = %entry
  %6 = load i64, ptr %pos.addr, align 8, !dbg !6384
  %cmp = icmp slt i64 %6, 0, !dbg !6386
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6387

if.then2:                                         ; preds = %if.end
  store i64 -22, ptr %retval, align 8, !dbg !6388
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup71, !dbg !6388

if.end3:                                          ; preds = %if.end
  %7 = load i8, ptr %check_size.addr, align 1, !dbg !6389, !range !5194, !noundef !819
  %tobool4 = trunc i8 %7 to i1, !dbg !6389
  br i1 %tobool4, label %cond.true, label %cond.false, !dbg !6389

cond.true:                                        ; preds = %if.end3
  %8 = load ptr, ptr %vpd, align 8, !dbg !6390
  %len = getelementptr inbounds %struct.pci_vpd, ptr %8, i32 0, i32 1, !dbg !6391
  %9 = load i32, ptr %len, align 8, !dbg !6391
  br label %cond.end, !dbg !6389

cond.false:                                       ; preds = %if.end3
  br label %cond.end, !dbg !6389

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ 32768, %cond.false ], !dbg !6389
  store i32 %cond, ptr %max_len, align 4, !dbg !6392
  %10 = load i64, ptr %pos.addr, align 8, !dbg !6393
  %11 = load i32, ptr %max_len, align 4, !dbg !6395
  %conv = zext i32 %11 to i64, !dbg !6395
  %cmp5 = icmp sge i64 %10, %conv, !dbg !6396
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !6397

if.then7:                                         ; preds = %cond.end
  store i64 0, ptr %retval, align 8, !dbg !6398
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup71, !dbg !6398

if.end8:                                          ; preds = %cond.end
  %12 = load i64, ptr %end, align 8, !dbg !6399
  %13 = load i32, ptr %max_len, align 4, !dbg !6401
  %conv9 = zext i32 %13 to i64, !dbg !6401
  %cmp10 = icmp sgt i64 %12, %conv9, !dbg !6402
  br i1 %cmp10, label %if.then12, label %if.end14, !dbg !6403

if.then12:                                        ; preds = %if.end8
  %14 = load i32, ptr %max_len, align 4, !dbg !6404
  %conv13 = zext i32 %14 to i64, !dbg !6404
  store i64 %conv13, ptr %end, align 8, !dbg !6406
  %15 = load i64, ptr %end, align 8, !dbg !6407
  %16 = load i64, ptr %pos.addr, align 8, !dbg !6408
  %sub = sub i64 %15, %16, !dbg !6409
  store i64 %sub, ptr %count.addr, align 8, !dbg !6410
  br label %if.end14, !dbg !6411

if.end14:                                         ; preds = %if.then12, %if.end8
  %17 = load ptr, ptr %vpd, align 8, !dbg !6412
  %lock = getelementptr inbounds %struct.pci_vpd, ptr %17, i32 0, i32 0, !dbg !6414
  %call15 = call i32 @mutex_lock_killable(ptr noundef %lock) #14, !dbg !6415
  %tobool16 = icmp ne i32 %call15, 0, !dbg !6415
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !6416

if.then17:                                        ; preds = %if.end14
  store i64 -4, ptr %retval, align 8, !dbg !6417
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup71, !dbg !6417

if.end18:                                         ; preds = %if.end14
  br label %while.cond, !dbg !6418

while.cond:                                       ; preds = %cleanup.cont, %if.end18
  %18 = load i64, ptr %pos.addr, align 8, !dbg !6419
  %19 = load i64, ptr %end, align 8, !dbg !6420
  %cmp19 = icmp slt i64 %18, %19, !dbg !6421
  br i1 %cmp19, label %while.body, label %while.end, !dbg !6418

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #15, !dbg !6422
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6353, metadata !DIExpression()), !dbg !6423
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !6424
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6355, metadata !DIExpression()), !dbg !6425
  call void @llvm.lifetime.start.p0(i64 4, ptr %skip) #15, !dbg !6424
  call void @llvm.dbg.declare(metadata ptr %skip, metadata !6356, metadata !DIExpression()), !dbg !6426
  %call21 = call ptr @get_current() #14, !dbg !6427
  %call22 = call i32 @fatal_signal_pending(ptr noundef %call21) #14, !dbg !6429
  %tobool23 = icmp ne i32 %call22, 0, !dbg !6429
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !6430

if.then24:                                        ; preds = %while.body
  store i32 -4, ptr %ret, align 4, !dbg !6431
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6433

if.end25:                                         ; preds = %while.body
  %20 = load ptr, ptr %dev.addr, align 8, !dbg !6434
  %21 = load ptr, ptr %vpd, align 8, !dbg !6435
  %cap = getelementptr inbounds %struct.pci_vpd, ptr %21, i32 0, i32 2, !dbg !6436
  %22 = load i8, ptr %cap, align 4, !dbg !6436
  %conv26 = zext i8 %22 to i32, !dbg !6435
  %add27 = add i32 %conv26, 2, !dbg !6437
  %23 = load i64, ptr %pos.addr, align 8, !dbg !6438
  %and = and i64 %23, -4, !dbg !6439
  %conv28 = trunc i64 %and to i16, !dbg !6438
  %call29 = call i32 @pci_user_write_config_word(ptr noundef %20, i32 noundef %add27, i16 noundef zeroext %conv28) #14, !dbg !6440
  store i32 %call29, ptr %ret, align 4, !dbg !6441
  %24 = load i32, ptr %ret, align 4, !dbg !6442
  %cmp30 = icmp slt i32 %24, 0, !dbg !6444
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !6445

if.then32:                                        ; preds = %if.end25
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6446

if.end33:                                         ; preds = %if.end25
  %25 = load ptr, ptr %dev.addr, align 8, !dbg !6447
  %call34 = call i32 @pci_vpd_wait(ptr noundef %25, i1 noundef zeroext true) #14, !dbg !6448
  store i32 %call34, ptr %ret, align 4, !dbg !6449
  %26 = load i32, ptr %ret, align 4, !dbg !6450
  %cmp35 = icmp slt i32 %26, 0, !dbg !6452
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !6453

if.then37:                                        ; preds = %if.end33
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6454

if.end38:                                         ; preds = %if.end33
  %27 = load ptr, ptr %dev.addr, align 8, !dbg !6455
  %28 = load ptr, ptr %vpd, align 8, !dbg !6456
  %cap39 = getelementptr inbounds %struct.pci_vpd, ptr %28, i32 0, i32 2, !dbg !6457
  %29 = load i8, ptr %cap39, align 4, !dbg !6457
  %conv40 = zext i8 %29 to i32, !dbg !6456
  %add41 = add i32 %conv40, 4, !dbg !6458
  %call42 = call i32 @pci_user_read_config_dword(ptr noundef %27, i32 noundef %add41, ptr noundef %val) #14, !dbg !6459
  store i32 %call42, ptr %ret, align 4, !dbg !6460
  %30 = load i32, ptr %ret, align 4, !dbg !6461
  %cmp43 = icmp slt i32 %30, 0, !dbg !6463
  br i1 %cmp43, label %if.then45, label %if.end46, !dbg !6464

if.then45:                                        ; preds = %if.end38
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6465

if.end46:                                         ; preds = %if.end38
  %31 = load i64, ptr %pos.addr, align 8, !dbg !6466
  %and47 = and i64 %31, 3, !dbg !6467
  %conv48 = trunc i64 %and47 to i32, !dbg !6466
  store i32 %conv48, ptr %skip, align 4, !dbg !6468
  store i32 0, ptr %i, align 4, !dbg !6469
  br label %for.cond, !dbg !6471

for.cond:                                         ; preds = %for.inc, %if.end46
  %32 = load i32, ptr %i, align 4, !dbg !6472
  %conv49 = zext i32 %32 to i64, !dbg !6472
  %cmp50 = icmp ult i64 %conv49, 4, !dbg !6474
  br i1 %cmp50, label %for.body, label %for.end, !dbg !6475

for.body:                                         ; preds = %for.cond
  %33 = load i32, ptr %i, align 4, !dbg !6476
  %34 = load i32, ptr %skip, align 4, !dbg !6479
  %cmp52 = icmp uge i32 %33, %34, !dbg !6480
  br i1 %cmp52, label %if.then54, label %if.end60, !dbg !6481

if.then54:                                        ; preds = %for.body
  %35 = load i32, ptr %val, align 4, !dbg !6482
  %conv55 = trunc i32 %35 to i8, !dbg !6482
  %36 = load ptr, ptr %buf, align 8, !dbg !6484
  %incdec.ptr = getelementptr i8, ptr %36, i32 1, !dbg !6484
  store ptr %incdec.ptr, ptr %buf, align 8, !dbg !6484
  store i8 %conv55, ptr %36, align 1, !dbg !6485
  %37 = load i64, ptr %pos.addr, align 8, !dbg !6486
  %inc = add i64 %37, 1, !dbg !6486
  store i64 %inc, ptr %pos.addr, align 8, !dbg !6486
  %38 = load i64, ptr %end, align 8, !dbg !6488
  %cmp56 = icmp eq i64 %inc, %38, !dbg !6489
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !6490

if.then58:                                        ; preds = %if.then54
  br label %for.end, !dbg !6491

if.end59:                                         ; preds = %if.then54
  br label %if.end60, !dbg !6492

if.end60:                                         ; preds = %if.end59, %for.body
  %39 = load i32, ptr %val, align 4, !dbg !6493
  %shr = lshr i32 %39, 8, !dbg !6493
  store i32 %shr, ptr %val, align 4, !dbg !6493
  br label %for.inc, !dbg !6494

for.inc:                                          ; preds = %if.end60
  %40 = load i32, ptr %i, align 4, !dbg !6495
  %inc61 = add i32 %40, 1, !dbg !6495
  store i32 %inc61, ptr %i, align 4, !dbg !6495
  br label %for.cond, !dbg !6496, !llvm.loop !6497

for.end:                                          ; preds = %if.then58, %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6499
  br label %cleanup, !dbg !6499

cleanup:                                          ; preds = %for.end, %if.then45, %if.then37, %if.then32, %if.then24
  call void @llvm.lifetime.end.p0(i64 4, ptr %skip) #15, !dbg !6499
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !6499
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #15, !dbg !6499
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !6418, !llvm.loop !6500

while.end:                                        ; preds = %cleanup, %while.cond
  %41 = load ptr, ptr %vpd, align 8, !dbg !6501
  %lock64 = getelementptr inbounds %struct.pci_vpd, ptr %41, i32 0, i32 0, !dbg !6502
  call void @mutex_unlock(ptr noundef %lock64) #14, !dbg !6503
  %42 = load i32, ptr %ret, align 4, !dbg !6504
  %tobool65 = icmp ne i32 %42, 0, !dbg !6504
  br i1 %tobool65, label %cond.true66, label %cond.false68, !dbg !6504

cond.true66:                                      ; preds = %while.end
  %43 = load i32, ptr %ret, align 4, !dbg !6505
  %conv67 = sext i32 %43 to i64, !dbg !6505
  br label %cond.end69, !dbg !6504

cond.false68:                                     ; preds = %while.end
  %44 = load i64, ptr %count.addr, align 8, !dbg !6506
  br label %cond.end69, !dbg !6504

cond.end69:                                       ; preds = %cond.false68, %cond.true66
  %cond70 = phi i64 [ %conv67, %cond.true66 ], [ %44, %cond.false68 ], !dbg !6504
  store i64 %cond70, ptr %retval, align 8, !dbg !6507
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup71, !dbg !6507

cleanup71:                                        ; preds = %cond.end69, %if.then17, %if.then7, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #15, !dbg !6508
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #15, !dbg !6508
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !6508
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_len) #15, !dbg !6508
  call void @llvm.lifetime.end.p0(i64 8, ptr %vpd) #15, !dbg !6508
  %45 = load i64, ptr %retval, align 8, !dbg !6508
  ret i64 %45, !dbg !6508

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6509 dso_local i32 @mutex_lock_killable(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fatal_signal_pending(ptr noundef %p) #4 align 16 !dbg !6512 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6516, metadata !DIExpression()), !dbg !6517
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6518
  %call = call i32 @task_sigpending(ptr noundef %0) #14, !dbg !6519
  %tobool = icmp ne i32 %call, 0, !dbg !6519
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6520

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !6521
  %call1 = call i32 @__fatal_signal_pending(ptr noundef %1) #14, !dbg !6522
  %tobool2 = icmp ne i32 %call1, 0, !dbg !6520
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ], !dbg !6523
  %land.ext = zext i1 %2 to i32, !dbg !6520
  ret i32 %land.ext, !dbg !6524
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #9 align 16 !dbg !6525 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #15, !dbg !6536
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6530, metadata !DIExpression()), !dbg !6536
  br label %do.body, !dbg !6536

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !6537
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6532, metadata !DIExpression()), !dbg !6537
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6537
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6537
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !6536
  br label %do.cond, !dbg !6537

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6537

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #15, !dbg !6538
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6534, metadata !DIExpression()), !dbg !6538
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #20, !dbg !6538, !srcloc !6539
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6538
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6538
  %3 = inttoptr i64 %2 to ptr, !dbg !6538
  store ptr %3, ptr %tmp, align 8, !dbg !6538
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #15, !dbg !6536
  %4 = load ptr, ptr %tmp, align 8, !dbg !6538
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6536
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6536
  store ptr %5, ptr %tmp1, align 8, !dbg !6536
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #15, !dbg !6540
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6536
  ret ptr %6, !dbg !6541
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6542 dso_local i32 @pci_user_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_vpd_wait(ptr noundef %dev, i1 noundef zeroext %set) #0 align 16 !dbg !6545 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %set.addr = alloca i8, align 1
  %vpd = alloca ptr, align 8
  %timeout = alloca i64, align 8
  %max_sleep = alloca i64, align 8
  %status = alloca i16, align 2
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6549, metadata !DIExpression()), !dbg !6556
  %frombool = zext i1 %set to i8
  store i8 %frombool, ptr %set.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !6550, metadata !DIExpression()), !dbg !6557
  call void @llvm.lifetime.start.p0(i64 8, ptr %vpd) #15, !dbg !6558
  call void @llvm.dbg.declare(metadata ptr %vpd, metadata !6551, metadata !DIExpression()), !dbg !6559
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6560
  %vpd1 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 53, !dbg !6561
  store ptr %vpd1, ptr %vpd, align 8, !dbg !6559
  call void @llvm.lifetime.start.p0(i64 8, ptr %timeout) #15, !dbg !6562
  call void @llvm.dbg.declare(metadata ptr %timeout, metadata !6552, metadata !DIExpression()), !dbg !6563
  %1 = load volatile i64, ptr @jiffies, align 64, !dbg !6564
  %call = call i64 @msecs_to_jiffies(i32 noundef 125) #14, !dbg !6565
  %add = add i64 %1, %call, !dbg !6566
  store i64 %add, ptr %timeout, align 8, !dbg !6563
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_sleep) #15, !dbg !6567
  call void @llvm.dbg.declare(metadata ptr %max_sleep, metadata !6553, metadata !DIExpression()), !dbg !6568
  store i64 16, ptr %max_sleep, align 8, !dbg !6568
  call void @llvm.lifetime.start.p0(i64 2, ptr %status) #15, !dbg !6569
  call void @llvm.dbg.declare(metadata ptr %status, metadata !6554, metadata !DIExpression()), !dbg !6570
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6571
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6555, metadata !DIExpression()), !dbg !6572
  br label %do.body, !dbg !6573

do.body:                                          ; preds = %do.cond, %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !6574
  %3 = load ptr, ptr %vpd, align 8, !dbg !6576
  %cap = getelementptr inbounds %struct.pci_vpd, ptr %3, i32 0, i32 2, !dbg !6577
  %4 = load i8, ptr %cap, align 4, !dbg !6577
  %conv = zext i8 %4 to i32, !dbg !6576
  %add2 = add i32 %conv, 2, !dbg !6578
  %call3 = call i32 @pci_user_read_config_word(ptr noundef %2, i32 noundef %add2, ptr noundef %status) #14, !dbg !6579
  store i32 %call3, ptr %ret, align 4, !dbg !6580
  %5 = load i32, ptr %ret, align 4, !dbg !6581
  %cmp = icmp slt i32 %5, 0, !dbg !6583
  br i1 %cmp, label %if.then, label %if.end, !dbg !6584

if.then:                                          ; preds = %do.body
  %6 = load i32, ptr %ret, align 4, !dbg !6585
  store i32 %6, ptr %retval, align 4, !dbg !6586
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6586

if.end:                                           ; preds = %do.body
  %7 = load i16, ptr %status, align 2, !dbg !6587
  %conv5 = zext i16 %7 to i32, !dbg !6587
  %and = and i32 %conv5, 32768, !dbg !6589
  %tobool = icmp ne i32 %and, 0, !dbg !6590
  %lnot = xor i1 %tobool, true, !dbg !6590
  %lnot6 = xor i1 %lnot, true, !dbg !6591
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !6591
  %8 = load i8, ptr %set.addr, align 1, !dbg !6592, !range !5194, !noundef !819
  %tobool7 = trunc i8 %8 to i1, !dbg !6592
  %conv8 = zext i1 %tobool7 to i32, !dbg !6592
  %cmp9 = icmp eq i32 %lnot.ext, %conv8, !dbg !6593
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !6594

if.then11:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6595
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6595

if.end12:                                         ; preds = %if.end
  %9 = load i64, ptr %timeout, align 8, !dbg !6596
  %10 = load volatile i64, ptr @jiffies, align 64, !dbg !6596
  %sub = sub i64 %9, %10, !dbg !6596
  %cmp13 = icmp slt i64 %sub, 0, !dbg !6596
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !6598

if.then15:                                        ; preds = %if.end12
  br label %do.end, !dbg !6599

if.end16:                                         ; preds = %if.end12
  %11 = load i64, ptr %max_sleep, align 8, !dbg !6600
  call void @usleep_range(i64 noundef 10, i64 noundef %11) #14, !dbg !6601
  %12 = load i64, ptr %max_sleep, align 8, !dbg !6602
  %cmp17 = icmp ult i64 %12, 1024, !dbg !6604
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !6605

if.then19:                                        ; preds = %if.end16
  %13 = load i64, ptr %max_sleep, align 8, !dbg !6606
  %mul = mul i64 %13, 2, !dbg !6606
  store i64 %mul, ptr %max_sleep, align 8, !dbg !6606
  br label %if.end20, !dbg !6607

if.end20:                                         ; preds = %if.then19, %if.end16
  br label %do.cond, !dbg !6608

do.cond:                                          ; preds = %if.end20
  br i1 true, label %do.body, label %do.end, !dbg !6608, !llvm.loop !6609

do.end:                                           ; preds = %do.cond, %if.then15
  br label %do.body21, !dbg !6611

do.body21:                                        ; preds = %do.end
  br label %do.cond22, !dbg !6613

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !6613

do.end23:                                         ; preds = %do.cond22
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !6611
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 37, !dbg !6611
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev24, ptr noundef @.str.8) #18, !dbg !6611
  store i32 -110, ptr %retval, align 4, !dbg !6615
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6615

cleanup:                                          ; preds = %do.end23, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !6616
  call void @llvm.lifetime.end.p0(i64 2, ptr %status) #15, !dbg !6616
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_sleep) #15, !dbg !6616
  call void @llvm.lifetime.end.p0(i64 8, ptr %timeout) #15, !dbg !6616
  call void @llvm.lifetime.end.p0(i64 8, ptr %vpd) #15, !dbg !6616
  %15 = load i32, ptr %retval, align 4, !dbg !6616
  ret i32 %15, !dbg !6616
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6617 dso_local i32 @pci_user_read_config_dword(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6620 dso_local void @mutex_unlock(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_sigpending(ptr noundef %p) #4 align 16 !dbg !6623 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6625, metadata !DIExpression()), !dbg !6626
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6627
  %call = call i32 @test_tsk_thread_flag(ptr noundef %0, i32 noundef 2) #14, !dbg !6627
  %tobool = icmp ne i32 %call, 0, !dbg !6627
  %lnot = xor i1 %tobool, true, !dbg !6627
  %lnot1 = xor i1 %lnot, true, !dbg !6627
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6627
  %conv = sext i32 %lnot.ext to i64, !dbg !6627
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6627
  %conv2 = trunc i64 %expval to i32, !dbg !6627
  ret i32 %conv2, !dbg !6628
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__fatal_signal_pending(ptr noundef %p) #4 align 16 !dbg !6629 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6631, metadata !DIExpression()), !dbg !6632
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6633
  %pending = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 109, !dbg !6633
  %signal = getelementptr inbounds %struct.sigpending, ptr %pending, i32 0, i32 1, !dbg !6633
  %call = call i32 @sigismember(ptr noundef %signal, i32 noundef 9) #14, !dbg !6633
  %tobool = icmp ne i32 %call, 0, !dbg !6633
  %lnot = xor i1 %tobool, true, !dbg !6633
  %lnot1 = xor i1 %lnot, true, !dbg !6633
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6633
  %conv = sext i32 %lnot.ext to i64, !dbg !6633
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6633
  %conv2 = trunc i64 %expval to i32, !dbg !6633
  ret i32 %conv2, !dbg !6634
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_tsk_thread_flag(ptr noundef %tsk, i32 noundef %flag) #4 align 16 !dbg !6635 {
entry:
  %tsk.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !6639, metadata !DIExpression()), !dbg !6641
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !6640, metadata !DIExpression()), !dbg !6642
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !6643
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 0, !dbg !6643
  %1 = load i32, ptr %flag.addr, align 4, !dbg !6644
  %call = call i32 @test_ti_thread_flag(ptr noundef %thread_info, i32 noundef %1) #14, !dbg !6645
  ret i32 %call, !dbg !6646
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #4 align 16 !dbg !6647 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !6653, metadata !DIExpression()), !dbg !6655
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !6654, metadata !DIExpression()), !dbg !6656
  %0 = load i32, ptr %flag.addr, align 4, !dbg !6657
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6657
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !6657

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ti.addr, align 8, !dbg !6657
  %flags = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 0, !dbg !6657
  %3 = ptrtoint ptr %flags to i64, !dbg !6657
  %cmp = icmp ne i64 %3, 0, !dbg !6657
  %conv = zext i1 %cmp to i32, !dbg !6657
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6657
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !6657

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %ti.addr, align 8, !dbg !6657
  %flags2 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 0, !dbg !6657
  %6 = ptrtoint ptr %flags2 to i64, !dbg !6657
  %cmp3 = icmp ne i64 %6, 0, !dbg !6657
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !6657

land.lhs.true5:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %ti.addr, align 8, !dbg !6657
  %flags6 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 0, !dbg !6657
  %8 = load i64, ptr %flags6, align 8, !dbg !6657
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !6657
  br i1 %9, label %cond.true, label %cond.false, !dbg !6657

cond.true:                                        ; preds = %land.lhs.true5
  %10 = load i32, ptr %flag.addr, align 4, !dbg !6657
  %conv7 = sext i32 %10 to i64, !dbg !6657
  %11 = load ptr, ptr %ti.addr, align 8, !dbg !6657
  %flags8 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 0, !dbg !6657
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv7, ptr noundef %flags8) #14, !dbg !6657
  %conv9 = zext i1 %call to i32, !dbg !6657
  br label %cond.end, !dbg !6657

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %flag.addr, align 4, !dbg !6657
  %conv10 = sext i32 %12 to i64, !dbg !6657
  %13 = load ptr, ptr %ti.addr, align 8, !dbg !6657
  %flags11 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 0, !dbg !6657
  %call12 = call zeroext i1 @_test_bit(i64 noundef %conv10, ptr noundef %flags11) #14, !dbg !6657
  %conv13 = zext i1 %call12 to i32, !dbg !6657
  br label %cond.end, !dbg !6657

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ %conv13, %cond.false ], !dbg !6657
  ret i32 %cond, !dbg !6658
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !6659 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6667, metadata !DIExpression()), !dbg !6672
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6668, metadata !DIExpression()), !dbg !6673
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !6674
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6669, metadata !DIExpression()), !dbg !6675
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6676
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6677
  %div = udiv i64 %1, 64, !dbg !6677
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6678
  store ptr %add.ptr, ptr %p, align 8, !dbg !6675
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #15, !dbg !6679
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6670, metadata !DIExpression()), !dbg !6680
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6681
  %rem = urem i64 %2, 64, !dbg !6681
  %shl = shl i64 1, %rem, !dbg !6681
  store i64 %shl, ptr %mask, align 8, !dbg !6680
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #15, !dbg !6682
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6671, metadata !DIExpression()), !dbg !6683
  %3 = load ptr, ptr %p, align 8, !dbg !6684
  %4 = load i64, ptr %3, align 8, !dbg !6685
  store i64 %4, ptr %val, align 8, !dbg !6683
  %5 = load i64, ptr %val, align 8, !dbg !6686
  %6 = load i64, ptr %mask, align 8, !dbg !6687
  %and = and i64 %5, %6, !dbg !6688
  %tobool = icmp ne i64 %and, 0, !dbg !6689
  %lnot = xor i1 %tobool, true, !dbg !6689
  %lnot1 = xor i1 %lnot, true, !dbg !6690
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #15, !dbg !6691
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #15, !dbg !6691
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !6691
  ret i1 %lnot1, !dbg !6692
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !6693 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6696, metadata !DIExpression()), !dbg !6698
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6697, metadata !DIExpression()), !dbg !6699
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6700
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6701
  %div = udiv i64 %1, 64, !dbg !6701
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6702
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #14, !dbg !6703
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6704
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6705
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !6706
  ret i1 %call, !dbg !6707
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #9 align 16 !dbg !6708 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6716, metadata !DIExpression()), !dbg !6718
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6717, metadata !DIExpression()), !dbg !6719
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6720
  %1 = load i64, ptr %size.addr, align 8, !dbg !6721
  %conv = trunc i64 %1 to i32, !dbg !6721
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #14, !dbg !6722
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6723
  %3 = load i64, ptr %size.addr, align 8, !dbg !6723
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #14, !dbg !6723
  ret void, !dbg !6724
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !6725 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6728, metadata !DIExpression()), !dbg !6730
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6729, metadata !DIExpression()), !dbg !6731
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6732
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6733
  br i1 %1, label %cond.true, label %cond.false, !dbg !6733

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6734
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6735
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !6736
  %conv = zext i1 %call to i32, !dbg !6736
  br label %cond.end, !dbg !6733

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6737
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6738
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #14, !dbg !6739
  %conv2 = zext i1 %call1 to i32, !dbg !6739
  br label %cond.end, !dbg !6733

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6733
  %tobool = icmp ne i32 %cond, 0, !dbg !6733
  ret i1 %tobool, !dbg !6740
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !6741 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6746, metadata !DIExpression()), !dbg !6748
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6747, metadata !DIExpression()), !dbg !6749
  ret i1 true, !dbg !6750
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !6751 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6756, metadata !DIExpression()), !dbg !6759
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6757, metadata !DIExpression()), !dbg !6760
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6758, metadata !DIExpression()), !dbg !6761
  ret void, !dbg !6762
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !6763 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6767, metadata !DIExpression()), !dbg !6769
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6768, metadata !DIExpression()), !dbg !6770
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6771
  %and = and i64 %0, 63, !dbg !6772
  %shl = shl i64 1, %and, !dbg !6773
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6774
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6775
  %shr = ashr i64 %2, 6, !dbg !6776
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6774
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6774
  %and1 = and i64 %shl, %3, !dbg !6777
  %cmp = icmp ne i64 %and1, 0, !dbg !6778
  ret i1 %cmp, !dbg !6779
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !6780 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6782, metadata !DIExpression()), !dbg !6785
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6783, metadata !DIExpression()), !dbg !6786
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #15, !dbg !6787
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6784, metadata !DIExpression()), !dbg !6788
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6789
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6790
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #15, !dbg !6791, !srcloc !6792
  %3 = icmp ult i8 %2, 2, !dbg !6791
  call void @llvm.assume(i1 %3), !dbg !6791
  store i8 %2, ptr %oldbit, align 1, !dbg !6791
  %4 = load i8, ptr %oldbit, align 1, !dbg !6793, !range !5194, !noundef !819
  %tobool = trunc i8 %4 to i1, !dbg !6793
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #15, !dbg !6794
  ret i1 %tobool, !dbg !6795
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sigismember(ptr noundef %set, i32 noundef %_sig) #4 align 16 !dbg !6796 {
entry:
  %set.addr = alloca ptr, align 8
  %_sig.addr = alloca i32, align 4
  %sig = alloca i64, align 8
  store ptr %set, ptr %set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !6802, metadata !DIExpression()), !dbg !6805
  store i32 %_sig, ptr %_sig.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %_sig.addr, metadata !6803, metadata !DIExpression()), !dbg !6806
  call void @llvm.lifetime.start.p0(i64 8, ptr %sig) #15, !dbg !6807
  call void @llvm.dbg.declare(metadata ptr %sig, metadata !6804, metadata !DIExpression()), !dbg !6808
  %0 = load i32, ptr %_sig.addr, align 4, !dbg !6809
  %sub = sub i32 %0, 1, !dbg !6810
  %conv = sext i32 %sub to i64, !dbg !6809
  store i64 %conv, ptr %sig, align 8, !dbg !6808
  %1 = load ptr, ptr %set.addr, align 8, !dbg !6811
  %sig1 = getelementptr inbounds %struct.sigset_t, ptr %1, i32 0, i32 0, !dbg !6813
  %arrayidx = getelementptr [1 x i64], ptr %sig1, i64 0, i64 0, !dbg !6811
  %2 = load i64, ptr %arrayidx, align 8, !dbg !6811
  %3 = load i64, ptr %sig, align 8, !dbg !6814
  %shr = lshr i64 %2, %3, !dbg !6815
  %and = and i64 1, %shr, !dbg !6816
  %conv2 = trunc i64 %and to i32, !dbg !6817
  call void @llvm.lifetime.end.p0(i64 8, ptr %sig) #15, !dbg !6818
  ret i32 %conv2, !dbg !6819
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @msecs_to_jiffies(i32 noundef %m) #9 align 16 !dbg !6820 {
entry:
  %retval = alloca i64, align 8
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6825, metadata !DIExpression()), !dbg !6826
  %0 = load i32, ptr %m.addr, align 4, !dbg !6827
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6829
  br i1 %1, label %if.then, label %if.else, !dbg !6830

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %m.addr, align 4, !dbg !6831
  %cmp = icmp slt i32 %2, 0, !dbg !6834
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6835

if.then1:                                         ; preds = %if.then
  store i64 4611686018427387902, ptr %retval, align 8, !dbg !6836
  br label %return, !dbg !6836

if.end:                                           ; preds = %if.then
  %3 = load i32, ptr %m.addr, align 4, !dbg !6837
  %call = call i64 @_msecs_to_jiffies(i32 noundef %3) #14, !dbg !6838
  store i64 %call, ptr %retval, align 8, !dbg !6839
  br label %return, !dbg !6839

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %m.addr, align 4, !dbg !6840
  %call2 = call i64 @__msecs_to_jiffies(i32 noundef %4) #14, !dbg !6842
  store i64 %call2, ptr %retval, align 8, !dbg !6843
  br label %return, !dbg !6843

return:                                           ; preds = %if.else, %if.end, %if.then1
  %5 = load i64, ptr %retval, align 8, !dbg !6844
  ret i64 %5, !dbg !6844
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6845 dso_local i32 @pci_user_read_config_word(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @usleep_range(i64 noundef %min, i64 noundef %max) #4 align 16 !dbg !6849 {
entry:
  %min.addr = alloca i64, align 8
  %max.addr = alloca i64, align 8
  store i64 %min, ptr %min.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %min.addr, metadata !6854, metadata !DIExpression()), !dbg !6856
  store i64 %max, ptr %max.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !6855, metadata !DIExpression()), !dbg !6857
  %0 = load i64, ptr %min.addr, align 8, !dbg !6858
  %1 = load i64, ptr %max.addr, align 8, !dbg !6859
  call void @usleep_range_state(i64 noundef %0, i64 noundef %1, i32 noundef 2) #14, !dbg !6860
  ret void, !dbg !6861
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @_msecs_to_jiffies(i32 noundef %m) #4 align 16 !dbg !6862 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6864, metadata !DIExpression()), !dbg !6865
  %0 = load i32, ptr %m.addr, align 4, !dbg !6866
  %conv = zext i32 %0 to i64, !dbg !6866
  %add = add i64 %conv, 1, !dbg !6867
  %sub = sub i64 %add, 1, !dbg !6868
  %div = sdiv i64 %sub, 1, !dbg !6869
  ret i64 %div, !dbg !6870
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6871 dso_local i64 @__msecs_to_jiffies(i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6872 dso_local void @usleep_range_state(i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pci_vpd_write(ptr noundef %dev, i64 noundef %pos, i64 noundef %count, ptr noundef %arg, i1 noundef zeroext %check_size) #0 align 16 !dbg !6875 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %pos.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %arg.addr = alloca ptr, align 8
  %check_size.addr = alloca i8, align 1
  %vpd = alloca ptr, align 8
  %max_len = alloca i32, align 4
  %buf = alloca ptr, align 8
  %end = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6877, metadata !DIExpression()), !dbg !6887
  store i64 %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !6878, metadata !DIExpression()), !dbg !6888
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6879, metadata !DIExpression()), !dbg !6889
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !6880, metadata !DIExpression()), !dbg !6890
  %frombool = zext i1 %check_size to i8
  store i8 %frombool, ptr %check_size.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %check_size.addr, metadata !6881, metadata !DIExpression()), !dbg !6891
  call void @llvm.lifetime.start.p0(i64 8, ptr %vpd) #15, !dbg !6892
  call void @llvm.dbg.declare(metadata ptr %vpd, metadata !6882, metadata !DIExpression()), !dbg !6893
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6894
  %vpd1 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 53, !dbg !6895
  store ptr %vpd1, ptr %vpd, align 8, !dbg !6893
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_len) #15, !dbg !6896
  call void @llvm.dbg.declare(metadata ptr %max_len, metadata !6883, metadata !DIExpression()), !dbg !6897
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #15, !dbg !6898
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !6884, metadata !DIExpression()), !dbg !6899
  %1 = load ptr, ptr %arg.addr, align 8, !dbg !6900
  store ptr %1, ptr %buf, align 8, !dbg !6899
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #15, !dbg !6901
  call void @llvm.dbg.declare(metadata ptr %end, metadata !6885, metadata !DIExpression()), !dbg !6902
  %2 = load i64, ptr %pos.addr, align 8, !dbg !6903
  %3 = load i64, ptr %count.addr, align 8, !dbg !6904
  %add = add i64 %2, %3, !dbg !6905
  store i64 %add, ptr %end, align 8, !dbg !6902
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6906
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6886, metadata !DIExpression()), !dbg !6907
  store i32 0, ptr %ret, align 4, !dbg !6907
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !6908
  %5 = load i8, ptr %check_size.addr, align 1, !dbg !6910, !range !5194, !noundef !819
  %tobool = trunc i8 %5 to i1, !dbg !6910
  %call = call zeroext i1 @pci_vpd_available(ptr noundef %4, i1 noundef zeroext %tobool) #14, !dbg !6911
  br i1 %call, label %if.end, label %if.then, !dbg !6912

if.then:                                          ; preds = %entry
  store i64 -19, ptr %retval, align 8, !dbg !6913
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6913

if.end:                                           ; preds = %entry
  %6 = load i64, ptr %pos.addr, align 8, !dbg !6914
  %cmp = icmp slt i64 %6, 0, !dbg !6916
  br i1 %cmp, label %if.then6, label %lor.lhs.false, !dbg !6917

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i64, ptr %pos.addr, align 8, !dbg !6918
  %and = and i64 %7, 3, !dbg !6919
  %tobool2 = icmp ne i64 %and, 0, !dbg !6919
  br i1 %tobool2, label %if.then6, label %lor.lhs.false3, !dbg !6920

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %8 = load i64, ptr %count.addr, align 8, !dbg !6921
  %and4 = and i64 %8, 3, !dbg !6922
  %tobool5 = icmp ne i64 %and4, 0, !dbg !6922
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !6923

if.then6:                                         ; preds = %lor.lhs.false3, %lor.lhs.false, %if.end
  store i64 -22, ptr %retval, align 8, !dbg !6924
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6924

if.end7:                                          ; preds = %lor.lhs.false3
  %9 = load i8, ptr %check_size.addr, align 1, !dbg !6925, !range !5194, !noundef !819
  %tobool8 = trunc i8 %9 to i1, !dbg !6925
  br i1 %tobool8, label %cond.true, label %cond.false, !dbg !6925

cond.true:                                        ; preds = %if.end7
  %10 = load ptr, ptr %vpd, align 8, !dbg !6926
  %len = getelementptr inbounds %struct.pci_vpd, ptr %10, i32 0, i32 1, !dbg !6927
  %11 = load i32, ptr %len, align 8, !dbg !6927
  br label %cond.end, !dbg !6925

cond.false:                                       ; preds = %if.end7
  br label %cond.end, !dbg !6925

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ 32768, %cond.false ], !dbg !6925
  store i32 %cond, ptr %max_len, align 4, !dbg !6928
  %12 = load i64, ptr %end, align 8, !dbg !6929
  %13 = load i32, ptr %max_len, align 4, !dbg !6931
  %conv = zext i32 %13 to i64, !dbg !6931
  %cmp9 = icmp sgt i64 %12, %conv, !dbg !6932
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !6933

if.then11:                                        ; preds = %cond.end
  store i64 -22, ptr %retval, align 8, !dbg !6934
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6934

if.end12:                                         ; preds = %cond.end
  %14 = load ptr, ptr %vpd, align 8, !dbg !6935
  %lock = getelementptr inbounds %struct.pci_vpd, ptr %14, i32 0, i32 0, !dbg !6937
  %call13 = call i32 @mutex_lock_killable(ptr noundef %lock) #14, !dbg !6938
  %tobool14 = icmp ne i32 %call13, 0, !dbg !6938
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !6939

if.then15:                                        ; preds = %if.end12
  store i64 -4, ptr %retval, align 8, !dbg !6940
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6940

if.end16:                                         ; preds = %if.end12
  br label %while.cond, !dbg !6941

while.cond:                                       ; preds = %if.end40, %if.end16
  %15 = load i64, ptr %pos.addr, align 8, !dbg !6942
  %16 = load i64, ptr %end, align 8, !dbg !6943
  %cmp17 = icmp slt i64 %15, %16, !dbg !6944
  br i1 %cmp17, label %while.body, label %while.end, !dbg !6941

while.body:                                       ; preds = %while.cond
  %17 = load ptr, ptr %dev.addr, align 8, !dbg !6945
  %18 = load ptr, ptr %vpd, align 8, !dbg !6947
  %cap = getelementptr inbounds %struct.pci_vpd, ptr %18, i32 0, i32 2, !dbg !6948
  %19 = load i8, ptr %cap, align 4, !dbg !6948
  %conv19 = zext i8 %19 to i32, !dbg !6947
  %add20 = add i32 %conv19, 4, !dbg !6949
  %20 = load ptr, ptr %buf, align 8, !dbg !6950
  %call21 = call i32 @get_unaligned_le32(ptr noundef %20) #14, !dbg !6951
  %call22 = call i32 @pci_user_write_config_dword(ptr noundef %17, i32 noundef %add20, i32 noundef %call21) #14, !dbg !6952
  store i32 %call22, ptr %ret, align 4, !dbg !6953
  %21 = load i32, ptr %ret, align 4, !dbg !6954
  %cmp23 = icmp slt i32 %21, 0, !dbg !6956
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !6957

if.then25:                                        ; preds = %while.body
  br label %while.end, !dbg !6958

if.end26:                                         ; preds = %while.body
  %22 = load ptr, ptr %dev.addr, align 8, !dbg !6959
  %23 = load ptr, ptr %vpd, align 8, !dbg !6960
  %cap27 = getelementptr inbounds %struct.pci_vpd, ptr %23, i32 0, i32 2, !dbg !6961
  %24 = load i8, ptr %cap27, align 4, !dbg !6961
  %conv28 = zext i8 %24 to i32, !dbg !6960
  %add29 = add i32 %conv28, 2, !dbg !6962
  %25 = load i64, ptr %pos.addr, align 8, !dbg !6963
  %or = or i64 %25, 32768, !dbg !6964
  %conv30 = trunc i64 %or to i16, !dbg !6963
  %call31 = call i32 @pci_user_write_config_word(ptr noundef %22, i32 noundef %add29, i16 noundef zeroext %conv30) #14, !dbg !6965
  store i32 %call31, ptr %ret, align 4, !dbg !6966
  %26 = load i32, ptr %ret, align 4, !dbg !6967
  %cmp32 = icmp slt i32 %26, 0, !dbg !6969
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !6970

if.then34:                                        ; preds = %if.end26
  br label %while.end, !dbg !6971

if.end35:                                         ; preds = %if.end26
  %27 = load ptr, ptr %dev.addr, align 8, !dbg !6972
  %call36 = call i32 @pci_vpd_wait(ptr noundef %27, i1 noundef zeroext false) #14, !dbg !6973
  store i32 %call36, ptr %ret, align 4, !dbg !6974
  %28 = load i32, ptr %ret, align 4, !dbg !6975
  %cmp37 = icmp slt i32 %28, 0, !dbg !6977
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !6978

if.then39:                                        ; preds = %if.end35
  br label %while.end, !dbg !6979

if.end40:                                         ; preds = %if.end35
  %29 = load ptr, ptr %buf, align 8, !dbg !6980
  %add.ptr = getelementptr i8, ptr %29, i64 4, !dbg !6980
  store ptr %add.ptr, ptr %buf, align 8, !dbg !6980
  %30 = load i64, ptr %pos.addr, align 8, !dbg !6981
  %add41 = add i64 %30, 4, !dbg !6981
  store i64 %add41, ptr %pos.addr, align 8, !dbg !6981
  br label %while.cond, !dbg !6941, !llvm.loop !6982

while.end:                                        ; preds = %if.then39, %if.then34, %if.then25, %while.cond
  %31 = load ptr, ptr %vpd, align 8, !dbg !6984
  %lock42 = getelementptr inbounds %struct.pci_vpd, ptr %31, i32 0, i32 0, !dbg !6985
  call void @mutex_unlock(ptr noundef %lock42) #14, !dbg !6986
  %32 = load i32, ptr %ret, align 4, !dbg !6987
  %tobool43 = icmp ne i32 %32, 0, !dbg !6987
  br i1 %tobool43, label %cond.true44, label %cond.false46, !dbg !6987

cond.true44:                                      ; preds = %while.end
  %33 = load i32, ptr %ret, align 4, !dbg !6988
  %conv45 = sext i32 %33 to i64, !dbg !6988
  br label %cond.end47, !dbg !6987

cond.false46:                                     ; preds = %while.end
  %34 = load i64, ptr %count.addr, align 8, !dbg !6989
  br label %cond.end47, !dbg !6987

cond.end47:                                       ; preds = %cond.false46, %cond.true44
  %cond48 = phi i64 [ %conv45, %cond.true44 ], [ %34, %cond.false46 ], !dbg !6987
  store i64 %cond48, ptr %retval, align 8, !dbg !6990
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6990

cleanup:                                          ; preds = %cond.end47, %if.then15, %if.then11, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !6991
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #15, !dbg !6991
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #15, !dbg !6991
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_len) #15, !dbg !6991
  call void @llvm.lifetime.end.p0(i64 8, ptr %vpd) #15, !dbg !6991
  %35 = load i64, ptr %retval, align 8, !dbg !6991
  ret i64 %35, !dbg !6991
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6992 dso_local i32 @pci_user_write_config_dword(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_unaligned_le32(ptr noundef %p) #4 align 16 !dbg !4936 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4940, metadata !DIExpression()), !dbg !6995
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #15, !dbg !6996
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !4941, metadata !DIExpression()), !dbg !6996
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6996
  store ptr %0, ptr %__pptr, align 8, !dbg !6996
  %1 = load ptr, ptr %__pptr, align 8, !dbg !6996
  %x = getelementptr inbounds %struct.anon.17, ptr %1, i32 0, i32 0, !dbg !6996
  %2 = load i32, ptr %x, align 1, !dbg !6996
  store i32 %2, ptr %tmp, align 4, !dbg !6996
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #15, !dbg !6997
  %3 = load i32, ptr %tmp, align 4, !dbg !6996
  ret i32 %3, !dbg !6998
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { noredzone }
attributes #15 = { nounwind }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone noreturn }
attributes #20 = { nounwind memory(none) }

!llvm.dbg.cu = !{!4883}
!llvm.module.flags = !{!5045, !5046, !5047, !5048, !5049, !5050, !5051, !5052}
!llvm.ident = !{!5053}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__key", scope: !2, file: !3, line: 270, type: !904, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "pci_vpd_init", scope: !3, file: !3, line: 264, type: !4, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5043)
!3 = !DIFile(filename: "drivers/pci/vpd.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7c13a1e2f664d85d3233caeab1eb25a2")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !8, line: 322, size: 16640, elements: !9)
!8 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!9 = !{!10, !17, !4631, !4632, !4633, !4634, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4743, !4744, !4745, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !4822, !4823, !4824, !4826, !4827, !4829, !4830, !4831, !4832, !4838, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !7, file: !8, line: 323, baseType: !11, size: 128)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !12, line: 190, size: 128, elements: !13)
!12 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!13 = !{!14, !16}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !11, file: !12, line: 191, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !11, file: !12, line: 191, baseType: !15, size: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !7, file: !8, line: 324, baseType: !18, size: 64, offset: 128)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !8, line: 647, size: 8256, elements: !20)
!20 = !{!21, !22, !23, !24, !25, !26, !27, !54, !55, !56, !86, !87, !91, !93, !94, !95, !96, !100, !102, !104, !4626, !4627, !4628, !4629, !4630}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !19, file: !8, line: 648, baseType: !11, size: 128)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !19, file: !8, line: 649, baseType: !18, size: 64, offset: 128)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !19, file: !8, line: 650, baseType: !11, size: 128, offset: 192)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !19, file: !8, line: 651, baseType: !11, size: 128, offset: 320)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !19, file: !8, line: 652, baseType: !6, size: 64, offset: 448)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !19, file: !8, line: 653, baseType: !11, size: 128, offset: 512)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !19, file: !8, line: 655, baseType: !28, size: 256, offset: 640)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 256, elements: !52)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !31, line: 21, size: 512, elements: !32)
!31 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!32 = !{!33, !41, !42, !46, !48, !49, !50, !51}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !30, file: !31, line: 22, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !12, line: 164, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !12, line: 159, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !37, line: 23, baseType: !38)
!37 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !39, line: 31, baseType: !40)
!39 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!40 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !30, file: !31, line: 23, baseType: !34, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !30, file: !31, line: 24, baseType: !43, size: 64, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !30, file: !31, line: 25, baseType: !47, size: 64, offset: 192)
!47 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !30, file: !31, line: 26, baseType: !47, size: 64, offset: 256)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !30, file: !31, line: 27, baseType: !29, size: 64, offset: 320)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !30, file: !31, line: 27, baseType: !29, size: 64, offset: 384)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !30, file: !31, line: 27, baseType: !29, size: 64, offset: 448)
!52 = !{!53}
!53 = !DISubrange(count: 4)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !19, file: !8, line: 656, baseType: !11, size: 128, offset: 896)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !19, file: !8, line: 657, baseType: !30, size: 512, offset: 1024)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !19, file: !8, line: 659, baseType: !57, size: 64, offset: 1536)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !8, line: 773, size: 320, elements: !59)
!59 = !{!60, !65, !69, !75, !82}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !58, file: !8, line: 774, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!64, !18}
!64 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !58, file: !8, line: 775, baseType: !66, size: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !18}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !58, file: !8, line: 776, baseType: !70, size: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{!73, !18, !74, !64}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!74 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !58, file: !8, line: 777, baseType: !76, size: 64, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!64, !18, !74, !64, !64, !79}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !37, line: 21, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !39, line: 27, baseType: !74)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !58, file: !8, line: 778, baseType: !83, size: 64, offset: 256)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{!64, !18, !74, !64, !64, !80}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !19, file: !8, line: 660, baseType: !73, size: 64, offset: 1600)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !19, file: !8, line: 661, baseType: !88, size: 64, offset: 1664)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !90, line: 131, flags: DIFlagFwdDecl)
!90 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!91 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !19, file: !8, line: 663, baseType: !92, size: 8, offset: 1728)
!92 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !19, file: !8, line: 664, baseType: !92, size: 8, offset: 1736)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !19, file: !8, line: 665, baseType: !92, size: 8, offset: 1744)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !19, file: !8, line: 666, baseType: !92, size: 8, offset: 1752)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !19, file: !8, line: 671, baseType: !97, size: 384, offset: 1760)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 384, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 48)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !19, file: !8, line: 673, baseType: !101, size: 16, offset: 2144)
!101 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !19, file: !8, line: 674, baseType: !103, size: 16, offset: 2160)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !8, line: 255, baseType: !101)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !19, file: !8, line: 675, baseType: !105, size: 64, offset: 2176)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !107, line: 705, size: 5824, elements: !108)
!107 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!108 = !{!109, !4113, !4114, !4117, !4118, !4172, !4263, !4264, !4265, !4266, !4267, !4280, !4386, !4399, !4409, !4413, !4415, !4416, !4417, !4421, !4428, !4429, !4432, !4435, !4439, !4543, !4544, !4545, !4546, !4547, !4548, !4578, !4579, !4580, !4583, !4586, !4614, !4621, !4622, !4623, !4624, !4625}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !106, file: !107, line: 706, baseType: !110, size: 512)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !111, line: 64, size: 512, elements: !112)
!111 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!112 = !{!113, !114, !115, !117, !202, !4000, !4103, !4108, !4109, !4110, !4111, !4112}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !110, file: !111, line: 65, baseType: !43, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !110, file: !111, line: 66, baseType: !11, size: 128, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !110, file: !111, line: 67, baseType: !116, size: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !110, file: !111, line: 68, baseType: !118, size: 64, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !111, line: 168, size: 768, elements: !120)
!120 = !{!121, !122, !161, !162}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !119, file: !111, line: 169, baseType: !11, size: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !119, file: !111, line: 170, baseType: !123, size: 32, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !124, line: 29, baseType: !125)
!124 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !124, line: 17, size: 32, elements: !126)
!126 = !{!127}
!127 = !DIDerivedType(tag: DW_TAG_member, scope: !125, file: !124, line: 18, baseType: !128, size: 32)
!128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !125, file: !124, line: 18, size: 32, elements: !129)
!129 = !{!130}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !128, file: !124, line: 19, baseType: !131, size: 32)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !132, line: 14, size: 32, elements: !133)
!132 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!133 = !{!134}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !131, file: !132, line: 15, baseType: !135, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !136, line: 44, baseType: !137)
!136 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !136, line: 14, size: 32, elements: !138)
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_member, scope: !137, file: !136, line: 15, baseType: !140, size: 32)
!140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !137, file: !136, line: 15, size: 32, elements: !141)
!141 = !{!142, !147, !154}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !140, file: !136, line: 16, baseType: !143, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !12, line: 174, baseType: !144)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 172, size: 32, elements: !145)
!145 = !{!146}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !144, file: !12, line: 173, baseType: !64, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, scope: !140, file: !136, line: 24, baseType: !148, size: 16)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !136, line: 24, size: 16, elements: !149)
!149 = !{!150, !153}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !148, file: !136, line: 25, baseType: !151, size: 8)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !37, line: 17, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !39, line: 21, baseType: !92)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !148, file: !136, line: 26, baseType: !151, size: 8, offset: 8)
!154 = !DIDerivedType(tag: DW_TAG_member, scope: !140, file: !136, line: 28, baseType: !155, size: 32)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !136, line: 28, size: 32, elements: !156)
!156 = !{!157, !160}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !155, file: !136, line: 29, baseType: !158, size: 16)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !37, line: 19, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !39, line: 24, baseType: !101)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !155, file: !136, line: 30, baseType: !158, size: 16, offset: 16)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !119, file: !111, line: 171, baseType: !110, size: 512, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !119, file: !111, line: 172, baseType: !163, size: 64, offset: 704)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !111, line: 133, size: 192, elements: !166)
!166 = !{!167, !174, !179}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !165, file: !111, line: 134, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{!64, !172}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !165, file: !111, line: 135, baseType: !175, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!43, !172}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !165, file: !111, line: 136, baseType: !180, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!64, !172, !184}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !111, line: 125, size: 20736, elements: !186)
!186 = !{!187, !192, !196, !197, !201}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !185, file: !111, line: 126, baseType: !188, size: 192)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 192, elements: !190)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!190 = !{!191}
!191 = !DISubrange(count: 3)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !185, file: !111, line: 127, baseType: !193, size: 4096, offset: 192)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 4096, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !185, file: !111, line: 128, baseType: !64, size: 32, offset: 4288)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !185, file: !111, line: 129, baseType: !198, size: 16384, offset: 4320)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 16384, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 2048)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !185, file: !111, line: 130, baseType: !64, size: 32, offset: 20704)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !110, file: !111, line: 69, baseType: !203, size: 64, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !111, line: 116, size: 384, elements: !206)
!206 = !{!207, !211, !239, !3956, !3990, !3994}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !205, file: !111, line: 117, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !116}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !205, file: !111, line: 118, baseType: !212, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !215, line: 254, size: 128, elements: !216)
!215 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!216 = !{!217, !232}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !214, file: !215, line: 255, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!221, !116, !226, !189}
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !12, line: 66, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !223, line: 73, baseType: !224)
!223 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !223, line: 15, baseType: !225)
!225 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !215, line: 30, size: 128, elements: !228)
!228 = !{!229, !230}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !227, file: !215, line: 31, baseType: !43, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !227, file: !215, line: 32, baseType: !231, size: 16, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !12, line: 24, baseType: !101)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !214, file: !215, line: 256, baseType: !233, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!221, !116, !226, !43, !236}
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !12, line: 61, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !223, line: 72, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !223, line: 16, baseType: !47)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !205, file: !111, line: 119, baseType: !240, size: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !215, line: 84, size: 320, elements: !244)
!244 = !{!245, !246, !250, !3952, !3954}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !243, file: !215, line: 85, baseType: !43, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !243, file: !215, line: 86, baseType: !247, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!231, !116, !226, !64}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !243, file: !215, line: 88, baseType: !251, size: 64, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!231, !116, !254, !64}
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !215, line: 175, size: 512, elements: !256)
!256 = !{!257, !258, !259, !260, !3943, !3947, !3948}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !255, file: !215, line: 176, baseType: !227, size: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !255, file: !215, line: 177, baseType: !236, size: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !255, file: !215, line: 178, baseType: !73, size: 64, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !255, file: !215, line: 179, baseType: !261, size: 64, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!264}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !266, line: 472, size: 1536, align: 64, elements: !267)
!266 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!267 = !{!268, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3937, !3938, !3939, !3940, !3941, !3942}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !265, file: !266, line: 473, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !266, line: 641, size: 4800, elements: !271)
!271 = !{!272, !273, !274, !282, !283, !290, !291, !294, !295, !3709, !3710, !3711, !3712, !3713, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3753, !3756, !3757, !3758, !3767, !3768, !3769, !3770}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !270, file: !266, line: 642, baseType: !231, size: 16)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !270, file: !266, line: 643, baseType: !101, size: 16, offset: 16)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !270, file: !266, line: 644, baseType: !275, size: 32, offset: 32)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !276, line: 23, baseType: !277)
!276 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !276, line: 21, size: 32, elements: !278)
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !277, file: !276, line: 22, baseType: !280, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !12, line: 37, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !223, line: 49, baseType: !74)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !270, file: !266, line: 645, baseType: !11, size: 128, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !270, file: !266, line: 646, baseType: !284, size: 32, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !276, line: 28, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !276, line: 26, size: 32, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !285, file: !276, line: 27, baseType: !288, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !12, line: 38, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !223, line: 50, baseType: !74)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !270, file: !266, line: 647, baseType: !74, size: 32, offset: 224)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !270, file: !266, line: 650, baseType: !292, size: 64, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !266, line: 607, flags: DIFlagFwdDecl)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !270, file: !266, line: 651, baseType: !292, size: 64, offset: 320)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !270, file: !266, line: 654, baseType: !296, size: 64, offset: 384)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !266, line: 1966, size: 2048, align: 512, elements: !299)
!299 = !{!300, !3537, !3547, !3551, !3555, !3559, !3563, !3567, !3571, !3575, !3579, !3580, !3584, !3588, !3625, !3654, !3658, !3664, !3668, !3672, !3676, !3680, !3684, !3690, !3694}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !298, file: !266, line: 1967, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!304, !269, !304, !74}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !306, line: 82, size: 1536, elements: !307)
!306 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!307 = !{!308, !309, !319, !327, !328, !343, !344, !348, !361, !3520, !3521, !3522, !3523, !3529, !3530, !3531}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !305, file: !306, line: 84, baseType: !74, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !305, file: !306, line: 85, baseType: !310, size: 32, offset: 32)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !311, line: 275, baseType: !312)
!311 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !311, line: 275, size: 32, elements: !313)
!313 = !{!314}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !312, file: !311, line: 275, baseType: !315, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !311, line: 69, baseType: !316)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !311, line: 64, size: 32, elements: !317)
!317 = !{!318}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !316, file: !311, line: 65, baseType: !74, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !305, file: !306, line: 86, baseType: !320, size: 128, offset: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !321, line: 38, size: 128, elements: !322)
!321 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!322 = !{!323, !325}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !321, line: 39, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !320, file: !321, line: 39, baseType: !326, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !305, file: !306, line: 87, baseType: !304, size: 64, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !305, file: !306, line: 88, baseType: !329, size: 128, offset: 256)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !306, line: 49, size: 128, elements: !330)
!330 = !{!331, !340}
!331 = !DIDerivedType(tag: DW_TAG_member, scope: !329, file: !306, line: 50, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !329, file: !306, line: 50, size: 64, elements: !333)
!333 = !{!334, !339}
!334 = !DIDerivedType(tag: DW_TAG_member, scope: !332, file: !306, line: 51, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !332, file: !306, line: 51, size: 64, elements: !336)
!336 = !{!337, !338}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !335, file: !306, line: 52, baseType: !80, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !335, file: !306, line: 52, baseType: !80, size: 32, offset: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !332, file: !306, line: 54, baseType: !36, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !329, file: !306, line: 56, baseType: !341, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !305, file: !306, line: 89, baseType: !269, size: 64, offset: 384)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !305, file: !306, line: 91, baseType: !345, size: 256, offset: 448)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 256, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !305, file: !306, line: 94, baseType: !349, size: 64, offset: 704)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !350, line: 25, size: 64, elements: !351)
!350 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!351 = !{!352}
!352 = !DIDerivedType(tag: DW_TAG_member, scope: !349, file: !350, line: 26, baseType: !353, size: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !349, file: !350, line: 26, size: 64, elements: !354)
!354 = !{!355, !356}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !353, file: !350, line: 28, baseType: !38, size: 64, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, scope: !353, file: !350, line: 30, baseType: !357, size: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !353, file: !350, line: 30, size: 64, elements: !358)
!358 = !{!359, !360}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !357, file: !350, line: 31, baseType: !123, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !357, file: !350, line: 32, baseType: !64, size: 32, offset: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !305, file: !306, line: 95, baseType: !362, size: 64, offset: 768)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !306, line: 128, size: 1024, align: 512, elements: !365)
!365 = !{!366, !370, !371, !378, !384, !388, !392, !396, !397, !401, !405, !3510, !3514}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !364, file: !306, line: 129, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{!64, !304, !74}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !364, file: !306, line: 130, baseType: !367, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !364, file: !306, line: 131, baseType: !372, size: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!64, !375, !377}
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !364, file: !306, line: 132, baseType: !379, size: 64, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{!64, !375, !74, !43, !382}
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !364, file: !306, line: 134, baseType: !385, size: 64, offset: 256)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{!64, !375}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !364, file: !306, line: 135, baseType: !389, size: 64, offset: 320)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!64, !304}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !364, file: !306, line: 136, baseType: !393, size: 64, offset: 384)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !304}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !364, file: !306, line: 137, baseType: !393, size: 64, offset: 448)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !364, file: !306, line: 138, baseType: !398, size: 64, offset: 512)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !304, !269}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !364, file: !306, line: 139, baseType: !402, size: 64, offset: 576)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!189, !304, !189, !64}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !364, file: !306, line: 140, baseType: !406, size: 64, offset: 640)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!409, !3509}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !411, line: 70, size: 256, elements: !412)
!411 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!412 = !{!413, !414, !3505, !3506}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !410, file: !411, line: 71, baseType: !304, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !410, file: !411, line: 72, baseType: !415, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !266, line: 1190, size: 10752, elements: !417)
!417 = !{!418, !419, !422, !423, !424, !428, !913, !1064, !1104, !1194, !1198, !1199, !1200, !1201, !1202, !1211, !1212, !1213, !1214, !1219, !1223, !1224, !1227, !1230, !1233, !1236, !1237, !1238, !1279, !3438, !3439, !3440, !3441, !3442, !3443, !3446, !3448, !3455, !3456, !3457, !3458, !3459, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !416, file: !266, line: 1191, baseType: !11, size: 128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !416, file: !266, line: 1192, baseType: !420, size: 32, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !12, line: 21, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !12, line: 18, baseType: !80)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !416, file: !266, line: 1193, baseType: !92, size: 8, offset: 160)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !416, file: !266, line: 1194, baseType: !47, size: 64, offset: 192)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !416, file: !266, line: 1195, baseType: !425, size: 64, offset: 256)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !12, line: 52, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !223, line: 88, baseType: !427)
!427 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !416, file: !266, line: 1196, baseType: !429, size: 64, offset: 320)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !266, line: 2366, size: 576, elements: !431)
!431 = !{!432, !433, !434, !441, !445, !449, !453, !898, !899, !903, !905, !906, !907, !909, !910, !911, !912}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !430, file: !266, line: 2367, baseType: !43, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !430, file: !266, line: 2368, baseType: !64, size: 32, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !430, file: !266, line: 2376, baseType: !435, size: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!64, !438}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !440, line: 32, flags: DIFlagFwdDecl)
!440 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!441 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !430, file: !266, line: 2377, baseType: !442, size: 64, offset: 192)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!444 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !266, line: 75, flags: DIFlagFwdDecl)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !430, file: !266, line: 2378, baseType: !446, size: 64, offset: 256)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!304, !429, !64, !43, !73}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !430, file: !266, line: 2380, baseType: !450, size: 64, offset: 320)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{null, !415}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !430, file: !266, line: 2381, baseType: !454, size: 64, offset: 384)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !456, line: 402, size: 9216, align: 512, elements: !457)
!456 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!457 = !{!458, !465, !466, !470, !492, !518, !519, !520, !521, !525, !530, !531, !551, !607, !608, !609, !610, !611, !614, !615, !616, !624, !628, !655, !676, !677, !678, !679, !688, !711, !712, !715, !718, !719, !720, !721, !722, !723, !724, !729, !730, !856, !864, !865, !866, !868, !872, !873, !877, !878, !879, !880, !882, !883, !884, !891, !892, !893, !897}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !455, file: !456, line: 403, baseType: !459, size: 32)
!459 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !456, line: 312, baseType: !74, size: 32, elements: !460)
!460 = !{!461, !462, !463, !464}
!461 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!462 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!463 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!464 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !455, file: !456, line: 406, baseType: !11, size: 128, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !455, file: !456, line: 409, baseType: !467, size: 448, offset: 192)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 448, elements: !468)
!468 = !{!469}
!469 = !DISubrange(count: 56)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !455, file: !456, line: 417, baseType: !471, size: 768, offset: 640)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !456, line: 45, size: 768, elements: !472)
!472 = !{!473, !474, !475, !476, !479}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !471, file: !456, line: 46, baseType: !110, size: 512)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !471, file: !456, line: 47, baseType: !454, size: 64, offset: 512)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !471, file: !456, line: 48, baseType: !116, size: 64, offset: 576)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !471, file: !456, line: 49, baseType: !477, size: 64, offset: 640)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !456, line: 49, flags: DIFlagFwdDecl)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !471, file: !456, line: 50, baseType: !480, size: 64, offset: 704)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !482, line: 26, size: 256, elements: !483)
!482 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!483 = !{!484, !485}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !481, file: !482, line: 27, baseType: !74, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !481, file: !482, line: 28, baseType: !486, size: 192, offset: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !487, line: 43, size: 192, elements: !488)
!487 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!488 = !{!489, !491}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !486, file: !487, line: 44, baseType: !490, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !132, line: 23, baseType: !131)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !486, file: !487, line: 45, baseType: !11, size: 128, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !455, file: !456, line: 418, baseType: !493, size: 64, offset: 1408)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !456, line: 53, size: 448, elements: !495)
!495 = !{!496, !497, !502, !506, !510, !514}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !494, file: !456, line: 54, baseType: !227, size: 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !494, file: !456, line: 55, baseType: !498, size: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!221, !493, !501, !189}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !494, file: !456, line: 57, baseType: !503, size: 64, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!221, !493, !501, !43, !236}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !494, file: !456, line: 59, baseType: !507, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !454, !43}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !494, file: !456, line: 60, baseType: !511, size: 64, offset: 320)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!64, !454}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !494, file: !456, line: 61, baseType: !515, size: 64, offset: 384)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !454}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !455, file: !456, line: 419, baseType: !43, size: 64, offset: 1472)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !455, file: !456, line: 420, baseType: !43, size: 64, offset: 1536)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !455, file: !456, line: 421, baseType: !116, size: 64, offset: 1600)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !455, file: !456, line: 424, baseType: !522, size: 64, offset: 1664)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !524)
!524 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !456, line: 424, flags: DIFlagFwdDecl)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !455, file: !456, line: 425, baseType: !526, size: 64, offset: 1728)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !528)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !37, line: 20, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !39, line: 26, baseType: !64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !455, file: !456, line: 426, baseType: !74, size: 32, offset: 1792)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !455, file: !456, line: 435, baseType: !532, size: 256, offset: 1856)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !533, line: 66, size: 256, elements: !534)
!533 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!534 = !{!535, !544, !545, !550}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !532, file: !533, line: 67, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !537, line: 13, baseType: !538)
!537 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !12, line: 181, baseType: !539)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 179, size: 64, elements: !540)
!540 = !{!541}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !539, file: !12, line: 180, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !37, line: 22, baseType: !543)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !39, line: 30, baseType: !427)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !532, file: !533, line: 68, baseType: !490, size: 32, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !532, file: !533, line: 70, baseType: !546, size: 32, offset: 96)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !547, line: 15, size: 32, elements: !548)
!547 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!548 = !{!549}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !546, file: !547, line: 20, baseType: !143, size: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !532, file: !533, line: 72, baseType: !11, size: 128, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !455, file: !456, line: 437, baseType: !552, size: 64, offset: 2112)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !554, line: 69, size: 320, elements: !555)
!554 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!555 = !{!556, !557, !558, !578, !580, !584, !585}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !553, file: !554, line: 70, baseType: !43, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !553, file: !554, line: 71, baseType: !454, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !553, file: !554, line: 72, baseType: !559, size: 64, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !561)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !554, line: 47, size: 256, elements: !562)
!562 = !{!563, !564, !570, !574}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !561, file: !554, line: 49, baseType: !74, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !561, file: !554, line: 51, baseType: !565, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!64, !43, !568}
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !553)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !561, file: !554, line: 53, baseType: !571, size: 64, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!64, !189, !568}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !561, file: !554, line: 55, baseType: !575, size: 64, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !73}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !553, file: !554, line: 73, baseType: !579, size: 16, offset: 192)
!579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !553, file: !554, line: 74, baseType: !581, size: 8, offset: 208)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !37, line: 16, baseType: !582)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !39, line: 20, baseType: !583)
!583 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !553, file: !554, line: 75, baseType: !151, size: 8, offset: 216)
!585 = !DIDerivedType(tag: DW_TAG_member, scope: !553, file: !554, line: 76, baseType: !586, size: 64, offset: 256)
!586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !553, file: !554, line: 76, size: 64, elements: !587)
!587 = !{!588, !589, !596}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !586, file: !554, line: 77, baseType: !73, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !586, file: !554, line: 78, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !592)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !554, line: 86, size: 128, elements: !593)
!593 = !{!594, !595}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !592, file: !554, line: 87, baseType: !74, size: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !592, file: !554, line: 88, baseType: !189, size: 64, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !586, file: !554, line: 79, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !554, line: 92, size: 256, elements: !600)
!600 = !{!601, !602, !603, !605, !606}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !599, file: !554, line: 94, baseType: !74, size: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !599, file: !554, line: 95, baseType: !74, size: 32, offset: 32)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !599, file: !554, line: 96, baseType: !604, size: 64, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !599, file: !554, line: 97, baseType: !559, size: 64, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !599, file: !554, line: 98, baseType: !73, size: 64, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !455, file: !456, line: 438, baseType: !74, size: 32, offset: 2176)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !455, file: !456, line: 441, baseType: !74, size: 32, offset: 2208)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !455, file: !456, line: 442, baseType: !522, size: 64, offset: 2240)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !455, file: !456, line: 443, baseType: !526, size: 64, offset: 2304)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !455, file: !456, line: 444, baseType: !612, size: 8, offset: 2368)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !12, line: 35, baseType: !613)
!613 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !455, file: !456, line: 451, baseType: !612, size: 8, offset: 2376)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !455, file: !456, line: 454, baseType: !74, size: 32, offset: 2400)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !455, file: !456, line: 455, baseType: !617, size: 64, offset: 2432)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !619, line: 23, size: 96, elements: !620)
!619 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!620 = !{!621, !622, !623}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !618, file: !619, line: 24, baseType: !64, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !618, file: !619, line: 24, baseType: !64, size: 32, offset: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !618, file: !619, line: 24, baseType: !64, size: 32, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !455, file: !456, line: 458, baseType: !625, size: 64, offset: 2496)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!64}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !455, file: !456, line: 460, baseType: !629, size: 4032, align: 512, offset: 2560)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, size: 4032, elements: !653)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !456, line: 362, size: 576, elements: !631)
!631 = !{!632, !633, !634}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !630, file: !456, line: 363, baseType: !73, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !630, file: !456, line: 364, baseType: !74, size: 32, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !630, file: !456, line: 367, baseType: !635, size: 448, offset: 128)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !456, line: 319, size: 448, elements: !636)
!636 = !{!637, !638}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !635, file: !456, line: 320, baseType: !454, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !635, file: !456, line: 321, baseType: !639, size: 384, offset: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !640, line: 40, size: 384, elements: !641)
!640 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!641 = !{!642}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !639, file: !640, line: 41, baseType: !643, size: 384, align: 64)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 384, align: 64, elements: !651)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !645, line: 5, size: 192, align: 64, elements: !646)
!645 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!646 = !{!647, !648, !650}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !644, file: !645, line: 6, baseType: !47, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !644, file: !645, line: 7, baseType: !649, size: 64, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !644, file: !645, line: 8, baseType: !649, size: 64, offset: 128)
!651 = !{!652}
!652 = !DISubrange(count: 2)
!653 = !{!654}
!654 = !DISubrange(count: 7)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !455, file: !456, line: 463, baseType: !656, size: 192, offset: 6592)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !657, line: 8, size: 192, elements: !658)
!657 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!658 = !{!659, !660, !662}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !656, file: !657, line: 10, baseType: !74, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !656, file: !657, line: 11, baseType: !661, size: 64, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !656, file: !657, line: 12, baseType: !663, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !665, line: 59, size: 48, elements: !666)
!665 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!666 = !{!667, !671, !672, !673, !674, !675}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !664, file: !665, line: 60, baseType: !668, size: 16)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !37, line: 18, baseType: !669)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !39, line: 23, baseType: !670)
!670 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !664, file: !665, line: 61, baseType: !668, size: 16, offset: 16)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !664, file: !665, line: 63, baseType: !74, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !664, file: !665, line: 64, baseType: !74, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !664, file: !665, line: 65, baseType: !74, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !664, file: !665, line: 66, baseType: !74, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !455, file: !456, line: 465, baseType: !47, size: 64, offset: 6784)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !455, file: !456, line: 469, baseType: !74, size: 32, offset: 6848)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !455, file: !456, line: 470, baseType: !11, size: 128, offset: 6912)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !455, file: !456, line: 471, baseType: !680, size: 64, offset: 7040)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !682, line: 33, size: 96, elements: !683)
!682 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!683 = !{!684, !685, !686, !687}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !681, file: !682, line: 37, baseType: !64, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !681, file: !682, line: 43, baseType: !64, size: 32, offset: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !681, file: !682, line: 45, baseType: !101, size: 16, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !681, file: !682, line: 47, baseType: !101, size: 16, offset: 80)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !455, file: !456, line: 476, baseType: !689, size: 64, offset: 7104)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !456, line: 378, size: 256, elements: !691)
!691 = !{!692, !708, !709, !710}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !690, file: !456, line: 379, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !695, line: 204, baseType: !696)
!695 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !695, line: 197, size: 192, elements: !697)
!697 = !{!698, !700, !701, !702, !704, !706}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !696, file: !695, line: 198, baseType: !699, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !695, line: 21, baseType: !81)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !696, file: !695, line: 199, baseType: !92, size: 8, offset: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !696, file: !695, line: 200, baseType: !92, size: 8, offset: 40)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !696, file: !695, line: 201, baseType: !703, size: 16, offset: 48)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !695, line: 17, baseType: !159)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !696, file: !695, line: 202, baseType: !705, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !695, line: 16, baseType: !38)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !696, file: !695, line: 203, baseType: !707, size: 64, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !695, line: 22, baseType: !38)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !690, file: !456, line: 380, baseType: !74, size: 32, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !690, file: !456, line: 381, baseType: !189, size: 64, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !690, file: !456, line: 382, baseType: !189, size: 64, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !455, file: !456, line: 477, baseType: !690, size: 256, offset: 7168)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !455, file: !456, line: 480, baseType: !713, size: 64, offset: 7424)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !456, line: 480, flags: DIFlagFwdDecl)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !455, file: !456, line: 483, baseType: !716, size: 64, offset: 7488)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !456, line: 483, flags: DIFlagFwdDecl)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !455, file: !456, line: 488, baseType: !189, size: 64, offset: 7552)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !455, file: !456, line: 492, baseType: !73, size: 64, offset: 7616)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !455, file: !456, line: 493, baseType: !74, size: 32, offset: 7680)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !455, file: !456, line: 495, baseType: !73, size: 64, offset: 7744)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !455, file: !456, line: 496, baseType: !74, size: 32, offset: 7808)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !455, file: !456, line: 499, baseType: !74, size: 32, offset: 7840)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !455, file: !456, line: 500, baseType: !725, size: 64, offset: 7872)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !727, line: 45, baseType: !728)
!727 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !455, file: !456, line: 503, baseType: !74, size: 32, offset: 7936)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !455, file: !456, line: 504, baseType: !731, size: 64, offset: 8000)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !734, line: 96, size: 192, elements: !735)
!734 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!735 = !{!736, !737, !816, !820}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !733, file: !734, line: 97, baseType: !74, size: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !733, file: !734, line: 98, baseType: !738, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !734, line: 24, size: 3072, elements: !740)
!740 = !{!741, !743, !744, !745, !746, !768, !769, !770, !771, !789, !801, !802, !813, !814, !815}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !739, file: !734, line: 26, baseType: !742, size: 128)
!742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 128, elements: !651)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !739, file: !734, line: 27, baseType: !742, size: 128, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !739, file: !734, line: 28, baseType: !64, size: 32, offset: 256)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !739, file: !734, line: 31, baseType: !123, size: 32, align: 512, offset: 512)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !739, file: !734, line: 32, baseType: !747, size: 960, offset: 576)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !748, line: 206, size: 960, elements: !749)
!748 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!749 = !{!750, !759, !762, !764, !765, !767}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !747, file: !748, line: 207, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !12, line: 232, size: 128, align: 64, elements: !753)
!753 = !{!754, !755}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !752, file: !12, line: 233, baseType: !751, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !752, file: !12, line: 234, baseType: !756, size: 64, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{null, !751}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !747, file: !748, line: 208, baseType: !760, size: 256, offset: 64)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !761, size: 256, elements: !52)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !747, file: !748, line: 209, baseType: !763, size: 256, offset: 320)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 256, elements: !52)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !747, file: !748, line: 213, baseType: !225, size: 64, offset: 576)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !747, file: !748, line: 215, baseType: !766, size: 256, offset: 640)
!766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 256, elements: !52)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !747, file: !748, line: 216, baseType: !151, size: 8, offset: 896)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !739, file: !734, line: 33, baseType: !47, size: 64, offset: 1536)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !739, file: !734, line: 34, baseType: !47, size: 64, offset: 1600)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !739, file: !734, line: 35, baseType: !612, size: 8, offset: 1664)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !739, file: !734, line: 36, baseType: !772, size: 320, offset: 1728)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !773, line: 11, size: 320, elements: !774)
!773 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!774 = !{!775, !782, !783, !788}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !772, file: !773, line: 16, baseType: !776, size: 128)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !12, line: 198, size: 128, elements: !777)
!777 = !{!778, !780}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !776, file: !12, line: 199, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !776, file: !12, line: 199, baseType: !781, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !772, file: !773, line: 17, baseType: !47, size: 64, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !772, file: !773, line: 18, baseType: !784, size: 64, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{null, !787}
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !772, file: !773, line: 19, baseType: !80, size: 32, offset: 256)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !739, file: !734, line: 37, baseType: !790, size: 256, offset: 2048)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !791, line: 98, size: 256, elements: !792)
!791 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!792 = !{!793, !794, !795}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !790, file: !791, line: 99, baseType: !536, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !790, file: !791, line: 100, baseType: !11, size: 128, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !790, file: !791, line: 101, baseType: !796, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !791, line: 21, baseType: !797)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !800}
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !739, file: !734, line: 38, baseType: !752, size: 128, align: 64, offset: 2304)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !739, file: !734, line: 39, baseType: !803, size: 64, offset: 2432)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !734, line: 49, size: 768, elements: !805)
!805 = !{!806, !807, !808, !809, !810, !811, !812}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !804, file: !734, line: 50, baseType: !123, size: 32)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !804, file: !734, line: 51, baseType: !763, size: 256, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !804, file: !734, line: 53, baseType: !763, size: 256, offset: 320)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !804, file: !734, line: 54, baseType: !47, size: 64, offset: 576)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !804, file: !734, line: 55, baseType: !803, size: 64, offset: 640)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !804, file: !734, line: 56, baseType: !64, size: 32, offset: 704)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !804, file: !734, line: 57, baseType: !64, size: 32, offset: 736)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !739, file: !734, line: 40, baseType: !47, size: 64, offset: 2496)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !739, file: !734, line: 42, baseType: !64, size: 32, offset: 2560)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !739, file: !734, line: 43, baseType: !732, size: 64, offset: 2624)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !733, file: !734, line: 99, baseType: !817, offset: 128)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !818, line: 211, elements: !819)
!818 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!819 = !{}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !733, file: !734, line: 100, baseType: !821, size: 64, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !734, line: 63, size: 3008, elements: !823)
!823 = !{!824, !825, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !855}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !822, file: !734, line: 64, baseType: !803, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !822, file: !734, line: 65, baseType: !826, size: 192, offset: 64)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !803, size: 192, elements: !190)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !822, file: !734, line: 67, baseType: !64, size: 32, offset: 256)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !822, file: !734, line: 68, baseType: !532, size: 256, offset: 320)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !822, file: !734, line: 69, baseType: !123, size: 32, offset: 576)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !822, file: !734, line: 70, baseType: !532, size: 256, offset: 640)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !822, file: !734, line: 71, baseType: !47, size: 64, offset: 896)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !822, file: !734, line: 72, baseType: !47, size: 64, offset: 960)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !822, file: !734, line: 73, baseType: !47, size: 64, offset: 1024)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !822, file: !734, line: 74, baseType: !47, size: 64, offset: 1088)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !822, file: !734, line: 75, baseType: !47, size: 64, offset: 1152)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !822, file: !734, line: 76, baseType: !47, size: 64, offset: 1216)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !822, file: !734, line: 77, baseType: !47, size: 64, offset: 1280)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !822, file: !734, line: 78, baseType: !47, size: 64, offset: 1344)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !822, file: !734, line: 79, baseType: !612, size: 8, offset: 1408)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !822, file: !734, line: 80, baseType: !47, size: 64, offset: 1472)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !822, file: !734, line: 81, baseType: !532, size: 256, offset: 1536)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !822, file: !734, line: 82, baseType: !481, size: 256, offset: 1792)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !822, file: !734, line: 84, baseType: !143, size: 32, offset: 2048)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !822, file: !734, line: 87, baseType: !47, size: 64, offset: 2112)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !822, file: !734, line: 88, baseType: !47, size: 64, offset: 2176)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !822, file: !734, line: 89, baseType: !847, size: 704, offset: 2240)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !791, line: 111, size: 704, elements: !848)
!848 = !{!849, !850, !851, !854}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !847, file: !791, line: 112, baseType: !790, size: 256)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !847, file: !791, line: 113, baseType: !772, size: 320, offset: 256)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !847, file: !791, line: 116, baseType: !852, size: 64, offset: 576)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !791, line: 18, flags: DIFlagFwdDecl)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !847, file: !791, line: 117, baseType: !64, size: 32, offset: 640)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !822, file: !734, line: 90, baseType: !732, size: 64, offset: 2944)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !455, file: !456, line: 515, baseType: !857, size: 64, offset: 8064)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !859, line: 117, size: 128, elements: !860)
!859 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!860 = !{!861, !862, !863}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !858, file: !859, line: 118, baseType: !528, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !858, file: !859, line: 119, baseType: !528, size: 32, offset: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !858, file: !859, line: 120, baseType: !225, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !455, file: !456, line: 516, baseType: !74, size: 32, offset: 8128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !455, file: !456, line: 519, baseType: !74, size: 32, offset: 8160)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !455, file: !456, line: 520, baseType: !867, size: 64, offset: 8192)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !455, file: !456, line: 523, baseType: !869, size: 64, offset: 8256)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !456, line: 523, flags: DIFlagFwdDecl)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !455, file: !456, line: 524, baseType: !74, size: 32, offset: 8320)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !455, file: !456, line: 525, baseType: !874, size: 64, offset: 8384)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !456, line: 525, flags: DIFlagFwdDecl)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !455, file: !456, line: 526, baseType: !74, size: 32, offset: 8448)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !455, file: !456, line: 533, baseType: !73, size: 64, offset: 8512)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !455, file: !456, line: 534, baseType: !74, size: 32, offset: 8576)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !455, file: !456, line: 535, baseType: !881, size: 64, offset: 8640)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !455, file: !456, line: 536, baseType: !74, size: 32, offset: 8704)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !455, file: !456, line: 539, baseType: !64, size: 32, offset: 8736)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !455, file: !456, line: 540, baseType: !885, size: 64, offset: 8768)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !887, line: 32, size: 64, elements: !888)
!887 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!888 = !{!889, !890}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !886, file: !887, line: 33, baseType: !528, size: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !886, file: !887, line: 34, baseType: !528, size: 32, offset: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !455, file: !456, line: 563, baseType: !11, size: 128, offset: 8832)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !455, file: !456, line: 565, baseType: !11, size: 128, offset: 8960)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !455, file: !456, line: 568, baseType: !894, size: 64, offset: 9088)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{null}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !455, file: !456, line: 570, baseType: !143, size: 32, offset: 9152)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !430, file: !266, line: 2382, baseType: !429, size: 64, offset: 448)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !430, file: !266, line: 2383, baseType: !900, size: 64, offset: 512)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !12, line: 194, size: 64, elements: !901)
!901 = !{!902}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !900, file: !12, line: 195, baseType: !779, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !430, file: !266, line: 2385, baseType: !904, offset: 576)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !818, line: 206, elements: !819)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !430, file: !266, line: 2386, baseType: !904, offset: 576)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !430, file: !266, line: 2387, baseType: !904, offset: 576)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !430, file: !266, line: 2388, baseType: !908, offset: 576)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !904, elements: !190)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !430, file: !266, line: 2390, baseType: !904, offset: 576)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !430, file: !266, line: 2391, baseType: !904, offset: 576)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !430, file: !266, line: 2392, baseType: !904, offset: 576)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !430, file: !266, line: 2393, baseType: !904, offset: 576)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !416, file: !266, line: 1197, baseType: !914, size: 64, offset: 384)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !916)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !266, line: 2057, size: 1664, elements: !917)
!917 = !{!918, !922, !926, !927, !931, !937, !941, !942, !943, !947, !955, !959, !960, !961, !967, !971, !972, !979, !980, !981, !982, !986, !990, !1045, !1062, !1063}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !916, file: !266, line: 2058, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{!269, !415}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !916, file: !266, line: 2059, baseType: !923, size: 64, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{null, !269}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !916, file: !266, line: 2060, baseType: !923, size: 64, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !916, file: !266, line: 2062, baseType: !928, size: 64, offset: 192)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{null, !269, !64}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !916, file: !266, line: 2063, baseType: !932, size: 64, offset: 256)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!64, !269, !935}
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !266, line: 309, flags: DIFlagFwdDecl)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !916, file: !266, line: 2064, baseType: !938, size: 64, offset: 320)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!64, !269}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !916, file: !266, line: 2065, baseType: !923, size: 64, offset: 384)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !916, file: !266, line: 2066, baseType: !450, size: 64, offset: 448)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !916, file: !266, line: 2067, baseType: !944, size: 64, offset: 512)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!64, !415, !64}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !916, file: !266, line: 2068, baseType: !948, size: 64, offset: 576)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!64, !415, !951}
!951 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !266, line: 2052, baseType: !74, size: 32, elements: !952)
!952 = !{!953, !954}
!953 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!954 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !916, file: !266, line: 2069, baseType: !956, size: 64, offset: 640)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{!64, !415}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !916, file: !266, line: 2070, baseType: !948, size: 64, offset: 704)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !916, file: !266, line: 2071, baseType: !956, size: 64, offset: 768)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !916, file: !266, line: 2072, baseType: !962, size: 64, offset: 832)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{!64, !304, !965}
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !266, line: 62, flags: DIFlagFwdDecl)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !916, file: !266, line: 2073, baseType: !968, size: 64, offset: 896)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DISubroutineType(types: !970)
!970 = !{!64, !415, !661, !189}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !916, file: !266, line: 2074, baseType: !450, size: 64, offset: 960)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !916, file: !266, line: 2076, baseType: !973, size: 64, offset: 1024)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{!64, !976, !304}
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !978, line: 66, flags: DIFlagFwdDecl)
!978 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!979 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !916, file: !266, line: 2077, baseType: !973, size: 64, offset: 1088)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !916, file: !266, line: 2078, baseType: !973, size: 64, offset: 1152)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !916, file: !266, line: 2079, baseType: !973, size: 64, offset: 1216)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !916, file: !266, line: 2081, baseType: !983, size: 64, offset: 1280)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{!221, !415, !64, !189, !236, !425}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !916, file: !266, line: 2082, baseType: !987, size: 64, offset: 1344)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!221, !415, !64, !43, !236, !425}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !916, file: !266, line: 2083, baseType: !991, size: 64, offset: 1408)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{!994, !269}
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !997, line: 296, size: 1664, elements: !998)
!997 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!998 = !{!999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1028, !1029, !1030}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !996, file: !997, line: 297, baseType: !776, size: 128)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !996, file: !997, line: 298, baseType: !11, size: 128, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !996, file: !997, line: 299, baseType: !11, size: 128, offset: 256)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !996, file: !997, line: 300, baseType: !11, size: 128, offset: 384)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !996, file: !997, line: 301, baseType: !532, size: 256, offset: 512)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !996, file: !997, line: 302, baseType: !123, size: 32, offset: 768)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !996, file: !997, line: 303, baseType: !143, size: 32, offset: 800)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !996, file: !997, line: 304, baseType: !415, size: 64, offset: 832)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !996, file: !997, line: 305, baseType: !1008, size: 64, offset: 896)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !997, line: 68, size: 64, elements: !1009)
!1009 = !{!1010, !1022}
!1010 = !DIDerivedType(tag: DW_TAG_member, scope: !1008, file: !997, line: 69, baseType: !1011, size: 32)
!1011 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1008, file: !997, line: 69, size: 32, elements: !1012)
!1012 = !{!1013, !1014, !1015}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1011, file: !997, line: 70, baseType: !275, size: 32)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1011, file: !997, line: 71, baseType: !284, size: 32)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1011, file: !997, line: 72, baseType: !1016, size: 32)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1017, line: 24, baseType: !1018)
!1017 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1017, line: 22, size: 32, elements: !1019)
!1019 = !{!1020}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1018, file: !1017, line: 23, baseType: !1021, size: 32)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1017, line: 20, baseType: !281)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1008, file: !997, line: 74, baseType: !1023, size: 32, offset: 32)
!1023 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !997, line: 54, baseType: !74, size: 32, elements: !1024)
!1024 = !{!1025, !1026, !1027}
!1025 = !DIEnumerator(name: "USRQUOTA", value: 0)
!1026 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!1027 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !996, file: !997, line: 306, baseType: !425, size: 64, offset: 960)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !996, file: !997, line: 307, baseType: !47, size: 64, offset: 1024)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !996, file: !997, line: 308, baseType: !1031, size: 576, offset: 1088)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !997, line: 205, size: 576, elements: !1032)
!1032 = !{!1033, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1044}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1031, file: !997, line: 206, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !997, line: 66, baseType: !427)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1031, file: !997, line: 207, baseType: !1034, size: 64, offset: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1031, file: !997, line: 208, baseType: !1034, size: 64, offset: 128)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1031, file: !997, line: 209, baseType: !1034, size: 64, offset: 192)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1031, file: !997, line: 210, baseType: !1034, size: 64, offset: 256)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1031, file: !997, line: 211, baseType: !1034, size: 64, offset: 320)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1031, file: !997, line: 212, baseType: !1034, size: 64, offset: 384)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1031, file: !997, line: 213, baseType: !1042, size: 64, offset: 448)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1043, line: 8, baseType: !543)
!1043 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1031, file: !997, line: 214, baseType: !1042, size: 64, offset: 512)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !916, file: !266, line: 2085, baseType: !1046, size: 64, offset: 1472)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!225, !415, !1049}
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1051, line: 15, size: 256, elements: !1052)
!1051 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1052 = !{!1053, !1055, !1056, !1057, !1058}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1050, file: !1051, line: 16, baseType: !1054, size: 32)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !12, line: 154, baseType: !74)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1050, file: !1051, line: 19, baseType: !64, size: 32, offset: 32)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1050, file: !1051, line: 26, baseType: !47, size: 64, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1050, file: !1051, line: 33, baseType: !47, size: 64, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1050, file: !1051, line: 36, baseType: !1059, size: 64, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1061, line: 33, flags: DIFlagFwdDecl)
!1061 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !916, file: !266, line: 2087, baseType: !1046, size: 64, offset: 1536)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !916, file: !266, line: 2089, baseType: !450, size: 64, offset: 1600)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !416, file: !266, line: 1198, baseType: !1065, size: 64, offset: 448)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1067)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !997, line: 324, size: 704, elements: !1068)
!1068 = !{!1069, !1073, !1077, !1081, !1082, !1083, !1084, !1085, !1090, !1095, !1099}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1067, file: !997, line: 325, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!64, !995}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1067, file: !997, line: 326, baseType: !1074, size: 64, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!995, !415, !64}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1067, file: !997, line: 327, baseType: !1078, size: 64, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{null, !995}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1067, file: !997, line: 328, baseType: !1070, size: 64, offset: 192)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1067, file: !997, line: 329, baseType: !1070, size: 64, offset: 256)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1067, file: !997, line: 330, baseType: !1070, size: 64, offset: 320)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1067, file: !997, line: 331, baseType: !944, size: 64, offset: 384)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1067, file: !997, line: 334, baseType: !1086, size: 64, offset: 448)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!1089, !269}
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1067, file: !997, line: 335, baseType: !1091, size: 64, offset: 512)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!64, !269, !1094}
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1067, file: !997, line: 337, baseType: !1096, size: 64, offset: 576)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!64, !269, !1089}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1067, file: !997, line: 339, baseType: !1100, size: 64, offset: 640)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!64, !415, !1103}
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !416, file: !266, line: 1199, baseType: !1105, size: 64, offset: 512)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1107)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !997, line: 430, size: 704, elements: !1108)
!1108 = !{!1109, !1120, !1121, !1125, !1126, !1127, !1142, !1165, !1169, !1170, !1193}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1107, file: !997, line: 431, baseType: !1110, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!64, !415, !64, !64, !1113}
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1115)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1116, line: 8, size: 128, elements: !1117)
!1116 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1117 = !{!1118, !1119}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1115, file: !1116, line: 9, baseType: !409, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1115, file: !1116, line: 10, baseType: !304, size: 64, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1107, file: !997, line: 432, baseType: !944, size: 64, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1107, file: !997, line: 433, baseType: !1122, size: 64, offset: 128)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!64, !415, !74}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1107, file: !997, line: 434, baseType: !1122, size: 64, offset: 192)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1107, file: !997, line: 435, baseType: !944, size: 64, offset: 256)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1107, file: !997, line: 436, baseType: !1128, size: 64, offset: 320)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!64, !415, !64, !1131}
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !997, line: 417, size: 256, elements: !1133)
!1133 = !{!1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1132, file: !997, line: 418, baseType: !64, size: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1132, file: !997, line: 419, baseType: !74, size: 32, offset: 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1132, file: !997, line: 420, baseType: !74, size: 32, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1132, file: !997, line: 422, baseType: !74, size: 32, offset: 96)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1132, file: !997, line: 423, baseType: !74, size: 32, offset: 128)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1132, file: !997, line: 424, baseType: !74, size: 32, offset: 160)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1132, file: !997, line: 425, baseType: !74, size: 32, offset: 192)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1132, file: !997, line: 426, baseType: !74, size: 32, offset: 224)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1107, file: !997, line: 437, baseType: !1143, size: 64, offset: 384)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!64, !415, !1008, !1146}
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !997, line: 345, size: 960, elements: !1148)
!1148 = !{!1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1147, file: !997, line: 346, baseType: !64, size: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1147, file: !997, line: 347, baseType: !36, size: 64, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1147, file: !997, line: 348, baseType: !36, size: 64, offset: 128)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1147, file: !997, line: 349, baseType: !36, size: 64, offset: 192)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1147, file: !997, line: 350, baseType: !36, size: 64, offset: 256)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1147, file: !997, line: 351, baseType: !36, size: 64, offset: 320)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1147, file: !997, line: 352, baseType: !36, size: 64, offset: 384)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1147, file: !997, line: 353, baseType: !542, size: 64, offset: 448)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1147, file: !997, line: 355, baseType: !542, size: 64, offset: 512)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1147, file: !997, line: 356, baseType: !64, size: 32, offset: 576)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1147, file: !997, line: 357, baseType: !64, size: 32, offset: 608)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1147, file: !997, line: 358, baseType: !36, size: 64, offset: 640)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1147, file: !997, line: 359, baseType: !36, size: 64, offset: 704)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1147, file: !997, line: 360, baseType: !36, size: 64, offset: 768)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1147, file: !997, line: 361, baseType: !542, size: 64, offset: 832)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1147, file: !997, line: 362, baseType: !64, size: 32, offset: 896)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1107, file: !997, line: 438, baseType: !1166, size: 64, offset: 448)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!64, !415, !1103, !1146}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1107, file: !997, line: 440, baseType: !1143, size: 64, offset: 512)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1107, file: !997, line: 441, baseType: !1171, size: 64, offset: 576)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!64, !415, !1174}
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !997, line: 411, size: 1408, elements: !1176)
!1176 = !{!1177, !1178}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1175, file: !997, line: 412, baseType: !74, size: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1175, file: !997, line: 413, baseType: !1179, size: 1344, offset: 64)
!1179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1180, size: 1344, elements: !190)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !997, line: 397, size: 448, elements: !1181)
!1181 = !{!1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1192}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1180, file: !997, line: 398, baseType: !74, size: 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1180, file: !997, line: 399, baseType: !74, size: 32, offset: 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1180, file: !997, line: 401, baseType: !74, size: 32, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1180, file: !997, line: 402, baseType: !74, size: 32, offset: 96)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1180, file: !997, line: 403, baseType: !74, size: 32, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1180, file: !997, line: 404, baseType: !74, size: 32, offset: 160)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1180, file: !997, line: 405, baseType: !74, size: 32, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1180, file: !997, line: 406, baseType: !40, size: 64, offset: 256)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1180, file: !997, line: 407, baseType: !1191, size: 64, offset: 320)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !12, line: 132, baseType: !36)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1180, file: !997, line: 408, baseType: !1191, size: 64, offset: 384)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1107, file: !997, line: 442, baseType: !1122, size: 64, offset: 640)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !416, file: !266, line: 1200, baseType: !1195, size: 64, offset: 576)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1197)
!1197 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !266, line: 54, flags: DIFlagFwdDecl)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !416, file: !266, line: 1201, baseType: !47, size: 64, offset: 640)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !416, file: !266, line: 1202, baseType: !47, size: 64, offset: 704)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !416, file: !266, line: 1203, baseType: !47, size: 64, offset: 768)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !416, file: !266, line: 1204, baseType: !304, size: 64, offset: 832)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !416, file: !266, line: 1205, baseType: !1203, size: 320, offset: 896)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1204, line: 48, size: 320, elements: !1205)
!1204 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1205 = !{!1206, !1207, !1208, !1209, !1210}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1203, file: !1204, line: 49, baseType: !536, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1203, file: !1204, line: 55, baseType: !536, size: 64, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1203, file: !1204, line: 57, baseType: !546, size: 32, offset: 128)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1203, file: !1204, line: 59, baseType: !490, size: 32, offset: 160)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1203, file: !1204, line: 60, baseType: !11, size: 128, offset: 192)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !416, file: !266, line: 1206, baseType: !64, size: 32, offset: 1216)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !416, file: !266, line: 1207, baseType: !143, size: 32, offset: 1248)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !416, file: !266, line: 1209, baseType: !73, size: 64, offset: 1280)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !416, file: !266, line: 1211, baseType: !1215, size: 64, offset: 1344)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1218)
!1218 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !266, line: 1211, flags: DIFlagFwdDecl)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !416, file: !266, line: 1223, baseType: !1220, size: 64, offset: 1408)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !321, line: 34, size: 64, elements: !1221)
!1221 = !{!1222}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1220, file: !321, line: 35, baseType: !324, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !416, file: !266, line: 1224, baseType: !11, size: 128, offset: 1472)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !416, file: !266, line: 1225, baseType: !1225, size: 64, offset: 1600)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !266, line: 1225, flags: DIFlagFwdDecl)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !416, file: !266, line: 1226, baseType: !1228, size: 64, offset: 1664)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !266, line: 1226, flags: DIFlagFwdDecl)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !416, file: !266, line: 1227, baseType: !1231, size: 64, offset: 1728)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !266, line: 50, flags: DIFlagFwdDecl)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !416, file: !266, line: 1228, baseType: !1234, size: 64, offset: 1792)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !266, line: 1228, flags: DIFlagFwdDecl)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !416, file: !266, line: 1229, baseType: !776, size: 128, offset: 1856)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !416, file: !266, line: 1230, baseType: !74, size: 32, offset: 1984)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !416, file: !266, line: 1231, baseType: !1239, size: 2496, offset: 2048)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !997, line: 521, size: 2496, elements: !1240)
!1240 = !{!1241, !1242, !1243, !1245, !1277}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1239, file: !997, line: 522, baseType: !74, size: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1239, file: !997, line: 523, baseType: !1203, size: 320, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1239, file: !997, line: 524, baseType: !1244, size: 192, offset: 384)
!1244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 192, elements: !190)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1239, file: !997, line: 525, baseType: !1246, size: 1728, offset: 576)
!1246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1247, size: 1728, elements: !190)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !997, line: 222, size: 576, elements: !1248)
!1248 = !{!1249, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1247, file: !997, line: 223, baseType: !1250, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !997, line: 445, size: 256, elements: !1252)
!1252 = !{!1253, !1254, !1267, !1268}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1251, file: !997, line: 446, baseType: !64, size: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1251, file: !997, line: 447, baseType: !1255, size: 64, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1257)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !997, line: 312, size: 512, elements: !1258)
!1258 = !{!1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1257, file: !997, line: 313, baseType: !944, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1257, file: !997, line: 314, baseType: !944, size: 64, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1257, file: !997, line: 315, baseType: !944, size: 64, offset: 128)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1257, file: !997, line: 316, baseType: !944, size: 64, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1257, file: !997, line: 317, baseType: !1070, size: 64, offset: 256)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1257, file: !997, line: 318, baseType: !1070, size: 64, offset: 320)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1257, file: !997, line: 319, baseType: !1070, size: 64, offset: 384)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1257, file: !997, line: 320, baseType: !1100, size: 64, offset: 448)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1251, file: !997, line: 448, baseType: !454, size: 64, offset: 128)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1251, file: !997, line: 449, baseType: !1250, size: 64, offset: 192)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1247, file: !997, line: 224, baseType: !64, size: 32, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1247, file: !997, line: 226, baseType: !11, size: 128, offset: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1247, file: !997, line: 227, baseType: !47, size: 64, offset: 256)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1247, file: !997, line: 228, baseType: !74, size: 32, offset: 320)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1247, file: !997, line: 229, baseType: !74, size: 32, offset: 352)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1247, file: !997, line: 230, baseType: !1034, size: 64, offset: 384)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1247, file: !997, line: 231, baseType: !1034, size: 64, offset: 448)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1247, file: !997, line: 232, baseType: !73, size: 64, offset: 512)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1239, file: !997, line: 526, baseType: !1278, size: 192, offset: 2304)
!1278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1255, size: 192, elements: !190)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !416, file: !266, line: 1233, baseType: !1280, size: 2368, offset: 4544)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !266, line: 1184, size: 2368, elements: !1281)
!1281 = !{!1282, !1283, !1284}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1280, file: !266, line: 1185, baseType: !101, size: 16)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1280, file: !266, line: 1186, baseType: !101, size: 16, offset: 16)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1280, file: !266, line: 1187, baseType: !1285, size: 2304, offset: 64)
!1285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1286, size: 2304, elements: !190)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1287, line: 12, size: 768, elements: !1288)
!1287 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1288 = !{!1289, !1303, !1304, !3436, !3437}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1286, file: !1287, line: 13, baseType: !1290, size: 384)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1291, line: 17, size: 384, elements: !1292)
!1291 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1292 = !{!1293, !1294, !1295, !1302}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1290, file: !1291, line: 18, baseType: !64, size: 32)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1290, file: !1291, line: 19, baseType: !64, size: 32, offset: 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1290, file: !1291, line: 20, baseType: !1296, size: 192, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1297, line: 41, baseType: !1298)
!1297 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1297, line: 37, size: 192, elements: !1299)
!1299 = !{!1300, !1301}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1298, file: !1297, line: 38, baseType: !123, size: 32)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1298, file: !1297, line: 39, baseType: !11, size: 128, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1290, file: !1291, line: 22, baseType: !752, size: 128, align: 64, offset: 256)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1286, file: !1287, line: 14, baseType: !604, size: 64, offset: 384)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1286, file: !1287, line: 15, baseType: !1305, size: 64, offset: 448)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1306, line: 16, size: 64, elements: !1307)
!1306 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1307 = !{!1308}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1305, file: !1306, line: 17, baseType: !1309, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !978, line: 746, size: 58368, elements: !1311)
!1311 = !{!1312, !1320, !1321, !1322, !1328, !1329, !1330, !1331, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1402, !1413, !1513, !1517, !1520, !1551, !1552, !1553, !1554, !1565, !1567, !1568, !1569, !1570, !1571, !1572, !1583, !1584, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1601, !1602, !1609, !1610, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2606, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2654, !2660, !2661, !2662, !2663, !2664, !2668, !2671, !2678, !2683, !2686, !2689, !2692, !2695, !2833, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2871, !2872, !2873, !2882, !2890, !2891, !2892, !2893, !2894, !2899, !2900, !2901, !2904, !2905, !2908, !2911, !2914, !2922, !2925, !2926, !3012, !3013, !3014, !3015, !3016, !3022, !3023, !3024, !3025, !3028, !3029, !3032, !3035, !3036, !3039, !3040, !3041, !3044, !3045, !3046, !3047, !3048, !3049, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3081, !3082, !3088, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3100, !3178, !3180, !3181, !3182, !3183, !3184, !3185, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3213, !3214, !3215}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1310, file: !978, line: 752, baseType: !1313, size: 192)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1314, line: 56, size: 192, elements: !1315)
!1314 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1315 = !{!1316, !1317, !1318, !1319}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1313, file: !1314, line: 57, baseType: !47, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1313, file: !1314, line: 58, baseType: !47, size: 64, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1313, file: !1314, line: 59, baseType: !80, size: 32, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1313, file: !1314, line: 61, baseType: !80, size: 32, offset: 160)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1310, file: !978, line: 754, baseType: !74, size: 32, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1310, file: !978, line: 767, baseType: !73, size: 64, offset: 256)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1310, file: !978, line: 768, baseType: !1323, size: 32, offset: 320)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1324, line: 113, baseType: !1325)
!1324 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1324, line: 111, size: 32, elements: !1326)
!1326 = !{!1327}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1325, file: !1324, line: 112, baseType: !143, size: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1310, file: !978, line: 770, baseType: !74, size: 32, offset: 352)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1310, file: !978, line: 771, baseType: !74, size: 32, offset: 384)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1310, file: !978, line: 774, baseType: !64, size: 32, offset: 416)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1310, file: !978, line: 775, baseType: !1332, size: 128, offset: 448)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1333, line: 58, size: 128, elements: !1334)
!1333 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1334 = !{!1335, !1341, !1346, !1347}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1332, file: !1333, line: 59, baseType: !1336, size: 64)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1337, line: 60, size: 64, elements: !1338)
!1337 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1338 = !{!1339}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1336, file: !1337, line: 61, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, scope: !1332, file: !1333, line: 60, baseType: !1342, size: 32, offset: 64)
!1342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1332, file: !1333, line: 60, size: 32, elements: !1343)
!1343 = !{!1344, !1345}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1342, file: !1333, line: 61, baseType: !74, size: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1342, file: !1333, line: 62, baseType: !143, size: 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1332, file: !1333, line: 65, baseType: !158, size: 16, offset: 96)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1332, file: !1333, line: 65, baseType: !158, size: 16, offset: 112)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1310, file: !978, line: 776, baseType: !74, size: 32, offset: 576)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1310, file: !978, line: 777, baseType: !47, size: 64, offset: 640)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1310, file: !978, line: 778, baseType: !1309, size: 64, offset: 704)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1310, file: !978, line: 787, baseType: !64, size: 32, offset: 768)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1310, file: !978, line: 788, baseType: !64, size: 32, offset: 800)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1310, file: !978, line: 790, baseType: !64, size: 32, offset: 832)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1310, file: !978, line: 792, baseType: !64, size: 32, offset: 864)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1310, file: !978, line: 793, baseType: !64, size: 32, offset: 896)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1310, file: !978, line: 794, baseType: !64, size: 32, offset: 928)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1310, file: !978, line: 795, baseType: !74, size: 32, offset: 960)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1310, file: !978, line: 797, baseType: !1359, size: 2048, offset: 1024)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !978, line: 551, size: 2048, elements: !1360)
!1360 = !{!1361, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1381, !1384, !1385, !1386}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1359, file: !978, line: 553, baseType: !1362, size: 128)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !978, line: 411, size: 128, elements: !1363)
!1363 = !{!1364, !1365}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1362, file: !978, line: 412, baseType: !47, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1362, file: !978, line: 413, baseType: !80, size: 32, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1359, file: !978, line: 554, baseType: !644, size: 192, align: 64, offset: 128)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1359, file: !978, line: 555, baseType: !36, size: 64, offset: 320)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1359, file: !978, line: 556, baseType: !36, size: 64, offset: 384)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1359, file: !978, line: 558, baseType: !11, size: 128, offset: 448)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1359, file: !978, line: 559, baseType: !74, size: 32, offset: 576)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1359, file: !978, line: 561, baseType: !36, size: 64, offset: 640)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1359, file: !978, line: 562, baseType: !36, size: 64, offset: 704)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1359, file: !978, line: 563, baseType: !36, size: 64, offset: 768)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1359, file: !978, line: 564, baseType: !36, size: 64, offset: 832)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1359, file: !978, line: 565, baseType: !542, size: 64, offset: 896)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1359, file: !978, line: 566, baseType: !36, size: 64, offset: 960)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1359, file: !978, line: 568, baseType: !36, size: 64, offset: 1024)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1359, file: !978, line: 571, baseType: !64, size: 32, offset: 1088)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1359, file: !978, line: 572, baseType: !1380, size: 64, offset: 1152)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1359, file: !978, line: 574, baseType: !1382, size: 64, offset: 1216)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !978, line: 49, flags: DIFlagFwdDecl)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1359, file: !978, line: 576, baseType: !1382, size: 64, offset: 1280)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1359, file: !978, line: 578, baseType: !47, size: 64, offset: 1344)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1359, file: !978, line: 588, baseType: !1387, size: 512, align: 512, offset: 1536)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !978, line: 497, size: 512, align: 512, elements: !1388)
!1388 = !{!1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1387, file: !978, line: 498, baseType: !36, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1387, file: !978, line: 499, baseType: !36, size: 64, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1387, file: !978, line: 500, baseType: !36, size: 64, offset: 128)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1387, file: !978, line: 501, baseType: !80, size: 32, offset: 192)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1387, file: !978, line: 502, baseType: !80, size: 32, offset: 224)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1387, file: !978, line: 503, baseType: !47, size: 64, offset: 256)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1387, file: !978, line: 504, baseType: !47, size: 64, offset: 320)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1387, file: !978, line: 505, baseType: !47, size: 64, offset: 384)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1387, file: !978, line: 506, baseType: !1398, size: 64, align: 64, offset: 448)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !978, line: 445, size: 64, align: 64, elements: !1399)
!1399 = !{!1400, !1401}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1398, file: !978, line: 446, baseType: !74, size: 32)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1398, file: !978, line: 447, baseType: !74, size: 32, offset: 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1310, file: !978, line: 798, baseType: !1403, size: 384, offset: 3072)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !978, line: 592, size: 384, elements: !1404)
!1404 = !{!1405, !1406, !1407, !1408, !1409, !1410, !1411}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1403, file: !978, line: 593, baseType: !11, size: 128)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1403, file: !978, line: 594, baseType: !47, size: 64, offset: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1403, file: !978, line: 595, baseType: !47, size: 64, offset: 192)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1403, file: !978, line: 596, baseType: !74, size: 32, offset: 256)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1403, file: !978, line: 597, baseType: !101, size: 16, offset: 288)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1403, file: !978, line: 598, baseType: !101, size: 16, offset: 304)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1403, file: !978, line: 600, baseType: !1412, size: 64, offset: 320)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1310, file: !978, line: 799, baseType: !1414, size: 1792, offset: 3456)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !978, line: 610, size: 1792, elements: !1415)
!1415 = !{!1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1510, !1511}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1414, file: !978, line: 611, baseType: !644, size: 192, align: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1414, file: !978, line: 618, baseType: !36, size: 64, offset: 192)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1414, file: !978, line: 619, baseType: !36, size: 64, offset: 256)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1414, file: !978, line: 620, baseType: !36, size: 64, offset: 320)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1414, file: !978, line: 621, baseType: !36, size: 64, offset: 384)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1414, file: !978, line: 622, baseType: !36, size: 64, offset: 448)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1414, file: !978, line: 629, baseType: !542, size: 64, offset: 512)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1414, file: !978, line: 630, baseType: !36, size: 64, offset: 576)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1414, file: !978, line: 631, baseType: !74, size: 32, offset: 640)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1414, file: !978, line: 653, baseType: !74, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1414, file: !978, line: 654, baseType: !74, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1414, file: !978, line: 655, baseType: !74, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1414, file: !978, line: 656, baseType: !74, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1414, file: !978, line: 662, baseType: !1430, size: 512, offset: 704)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !1431, line: 118, size: 512, elements: !1432)
!1431 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!1432 = !{!1433, !1441, !1442, !1451, !1506, !1507, !1508, !1509}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1430, file: !1431, line: 119, baseType: !1434, size: 256)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1435, line: 9, size: 256, elements: !1436)
!1435 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1436 = !{!1437, !1438}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1434, file: !1435, line: 10, baseType: !644, size: 192, align: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1434, file: !1435, line: 11, baseType: !1439, size: 64, offset: 192)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1440, line: 29, baseType: !542)
!1440 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1430, file: !1431, line: 120, baseType: !1439, size: 64, offset: 256)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1430, file: !1431, line: 121, baseType: !1443, size: 64, offset: 320)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!1446, !1450}
!1446 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !1431, line: 65, baseType: !74, size: 32, elements: !1447)
!1447 = !{!1448, !1449}
!1448 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!1449 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1430, file: !1431, line: 122, baseType: !1452, size: 64, offset: 384)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !1431, line: 159, size: 512, align: 512, elements: !1454)
!1454 = !{!1455, !1480, !1481, !1484, !1489, !1490, !1501, !1505}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1453, file: !1431, line: 160, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !1431, line: 215, size: 4608, align: 512, elements: !1458)
!1458 = !{!1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1457, file: !1431, line: 216, baseType: !490, size: 32)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1457, file: !1431, line: 217, baseType: !74, size: 32, offset: 32)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1457, file: !1431, line: 218, baseType: !74, size: 32, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1457, file: !1431, line: 219, baseType: !74, size: 32, offset: 96)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1457, file: !1431, line: 220, baseType: !74, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1457, file: !1431, line: 221, baseType: !74, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1457, file: !1431, line: 222, baseType: !74, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1457, file: !1431, line: 223, baseType: !74, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1457, file: !1431, line: 224, baseType: !74, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1457, file: !1431, line: 226, baseType: !74, size: 32, offset: 160)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1457, file: !1431, line: 227, baseType: !101, size: 16, offset: 192)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1457, file: !1431, line: 228, baseType: !101, size: 16, offset: 208)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1457, file: !1431, line: 229, baseType: !74, size: 32, offset: 224)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1457, file: !1431, line: 235, baseType: !1439, size: 64, offset: 256)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1457, file: !1431, line: 236, baseType: !1450, size: 64, offset: 320)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1457, file: !1431, line: 237, baseType: !1439, size: 64, offset: 384)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1457, file: !1431, line: 238, baseType: !1450, size: 64, offset: 448)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1457, file: !1431, line: 239, baseType: !1477, size: 4096, align: 512, offset: 512)
!1477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1453, size: 4096, align: 512, elements: !1478)
!1478 = !{!1479}
!1479 = !DISubrange(count: 8)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1453, file: !1431, line: 161, baseType: !74, size: 32, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1453, file: !1431, line: 162, baseType: !1482, size: 32, offset: 96)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !12, line: 32, baseType: !1483)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !223, line: 96, baseType: !64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1453, file: !1431, line: 163, baseType: !1485, size: 32, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !311, line: 274, baseType: !1486)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !311, line: 274, size: 32, elements: !1487)
!1487 = !{!1488}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1486, file: !311, line: 274, baseType: !315, size: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1453, file: !1431, line: 164, baseType: !1450, size: 64, offset: 192)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1453, file: !1431, line: 165, baseType: !1491, size: 128, offset: 256)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1435, line: 14, size: 128, elements: !1492)
!1492 = !{!1493}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1491, file: !1435, line: 15, baseType: !1494, size: 128)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !645, line: 26, size: 128, elements: !1495)
!1495 = !{!1496, !1500}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1494, file: !645, line: 27, baseType: !1497, size: 64)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !645, line: 12, size: 64, elements: !1498)
!1498 = !{!1499}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1497, file: !645, line: 13, baseType: !649, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1494, file: !645, line: 28, baseType: !649, size: 64, offset: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1453, file: !1431, line: 166, baseType: !1502, size: 64, offset: 384)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!1439}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1453, file: !1431, line: 167, baseType: !1439, size: 64, offset: 448)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1430, file: !1431, line: 123, baseType: !151, size: 8, offset: 448)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1430, file: !1431, line: 124, baseType: !151, size: 8, offset: 456)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1430, file: !1431, line: 125, baseType: !151, size: 8, offset: 464)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1430, file: !1431, line: 126, baseType: !151, size: 8, offset: 472)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1414, file: !978, line: 671, baseType: !1430, size: 512, offset: 1216)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1414, file: !978, line: 679, baseType: !1512, size: 64, offset: 1728)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1310, file: !978, line: 800, baseType: !1514, size: 64, offset: 5248)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1516)
!1516 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !978, line: 800, flags: DIFlagFwdDecl)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1310, file: !978, line: 809, baseType: !1518, size: 64, offset: 5312)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !978, line: 70, flags: DIFlagFwdDecl)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1310, file: !978, line: 825, baseType: !1521, size: 2048, align: 512, offset: 5632)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !978, line: 509, size: 2048, align: 512, elements: !1522)
!1522 = !{!1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1521, file: !978, line: 511, baseType: !36, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1521, file: !978, line: 512, baseType: !36, size: 64, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1521, file: !978, line: 513, baseType: !36, size: 64, offset: 128)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1521, file: !978, line: 514, baseType: !36, size: 64, offset: 192)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1521, file: !978, line: 515, baseType: !36, size: 64, offset: 256)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1521, file: !978, line: 516, baseType: !36, size: 64, offset: 320)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1521, file: !978, line: 518, baseType: !36, size: 64, offset: 384)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1521, file: !978, line: 519, baseType: !36, size: 64, offset: 448)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1521, file: !978, line: 520, baseType: !542, size: 64, offset: 512)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1521, file: !978, line: 522, baseType: !36, size: 64, offset: 576)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1521, file: !978, line: 523, baseType: !36, size: 64, offset: 640)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1521, file: !978, line: 524, baseType: !542, size: 64, offset: 704)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1521, file: !978, line: 526, baseType: !542, size: 64, offset: 768)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1521, file: !978, line: 527, baseType: !36, size: 64, offset: 832)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1521, file: !978, line: 529, baseType: !36, size: 64, offset: 896)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1521, file: !978, line: 530, baseType: !36, size: 64, offset: 960)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1521, file: !978, line: 531, baseType: !36, size: 64, offset: 1024)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1521, file: !978, line: 532, baseType: !36, size: 64, offset: 1088)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1521, file: !978, line: 533, baseType: !36, size: 64, offset: 1152)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1521, file: !978, line: 535, baseType: !36, size: 64, offset: 1216)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1521, file: !978, line: 536, baseType: !36, size: 64, offset: 1280)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1521, file: !978, line: 537, baseType: !36, size: 64, offset: 1344)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1521, file: !978, line: 538, baseType: !36, size: 64, offset: 1408)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1521, file: !978, line: 539, baseType: !36, size: 64, offset: 1472)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1521, file: !978, line: 540, baseType: !36, size: 64, offset: 1536)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1521, file: !978, line: 541, baseType: !36, size: 64, offset: 1600)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1521, file: !978, line: 542, baseType: !36, size: 64, offset: 1664)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1521, file: !978, line: 543, baseType: !36, size: 64, offset: 1728)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1310, file: !978, line: 833, baseType: !74, size: 32, offset: 7680)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1310, file: !978, line: 836, baseType: !74, size: 32, offset: 7712)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1310, file: !978, line: 837, baseType: !64, size: 32, offset: 7744)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1310, file: !978, line: 838, baseType: !1555, size: 64, offset: 7808)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1557)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1558, line: 19, baseType: !1559)
!1558 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1558, line: 19, size: 64, elements: !1560)
!1560 = !{!1561}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1559, file: !1558, line: 19, baseType: !1562, size: 64)
!1562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 64, elements: !1563)
!1563 = !{!1564}
!1564 = !DISubrange(count: 1)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1310, file: !978, line: 839, baseType: !1566, size: 64, offset: 7872)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1310, file: !978, line: 840, baseType: !1557, size: 64, offset: 7936)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1310, file: !978, line: 841, baseType: !73, size: 64, offset: 8000)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1310, file: !978, line: 843, baseType: !101, size: 16, offset: 8064)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1310, file: !978, line: 845, baseType: !101, size: 16, offset: 8080)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1310, file: !978, line: 848, baseType: !64, size: 32, offset: 8096)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1310, file: !978, line: 849, baseType: !1573, size: 32, offset: 8128)
!1573 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !978, line: 718, size: 32, elements: !1574)
!1574 = !{!1575, !1582}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1573, file: !978, line: 724, baseType: !1576, size: 32)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1573, file: !978, line: 719, size: 32, elements: !1577)
!1577 = !{!1578, !1579, !1580, !1581}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1576, file: !978, line: 720, baseType: !151, size: 8)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1576, file: !978, line: 721, baseType: !151, size: 8, offset: 8)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1576, file: !978, line: 722, baseType: !151, size: 8, offset: 16)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1576, file: !978, line: 723, baseType: !151, size: 8, offset: 24)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1573, file: !978, line: 725, baseType: !80, size: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1310, file: !978, line: 850, baseType: !11, size: 128, offset: 8192)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1310, file: !978, line: 851, baseType: !1585, size: 64, offset: 8320)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !978, line: 60, flags: DIFlagFwdDecl)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1310, file: !978, line: 855, baseType: !47, size: 64, offset: 8384)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1310, file: !978, line: 856, baseType: !151, size: 8, offset: 8448)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1310, file: !978, line: 857, baseType: !151, size: 8, offset: 8456)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1310, file: !978, line: 858, baseType: !64, size: 32, offset: 8480)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1310, file: !978, line: 859, baseType: !11, size: 128, offset: 8512)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1310, file: !978, line: 860, baseType: !64, size: 32, offset: 8640)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1310, file: !978, line: 861, baseType: !11, size: 128, offset: 8704)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1310, file: !978, line: 873, baseType: !1595, size: 256, offset: 8832)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !978, line: 376, size: 256, elements: !1596)
!1596 = !{!1597, !1598, !1599, !1600}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1595, file: !978, line: 381, baseType: !47, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1595, file: !978, line: 384, baseType: !40, size: 64, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1595, file: !978, line: 389, baseType: !40, size: 64, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1595, file: !978, line: 392, baseType: !40, size: 64, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1310, file: !978, line: 875, baseType: !11, size: 128, offset: 9088)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1310, file: !978, line: 877, baseType: !1603, size: 320, offset: 9216)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1604, line: 86, size: 320, elements: !1605)
!1604 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1605 = !{!1606, !1607, !1608}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1603, file: !1604, line: 87, baseType: !64, size: 32)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1603, file: !1604, line: 88, baseType: !11, size: 128, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1603, file: !1604, line: 89, baseType: !11, size: 128, offset: 192)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1310, file: !978, line: 878, baseType: !644, size: 192, align: 64, offset: 9536)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1310, file: !978, line: 881, baseType: !1611, size: 64, offset: 9728)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1061, line: 733, size: 10240, elements: !1613)
!1613 = !{!1614, !2520}
!1614 = !DIDerivedType(tag: DW_TAG_member, scope: !1612, file: !1061, line: 734, baseType: !1615, size: 10240)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1612, file: !1061, line: 734, size: 10240, elements: !1616)
!1616 = !{!1617, !1621, !1634, !2396, !2397, !2398, !2399, !2400, !2401, !2408, !2409, !2410, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2449, !2451, !2454, !2499, !2500, !2501, !2504, !2505, !2506, !2509, !2510, !2511, !2518, !2519}
!1617 = !DIDerivedType(tag: DW_TAG_member, scope: !1615, file: !1061, line: 739, baseType: !1618, size: 512, align: 512)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1615, file: !1061, line: 739, size: 512, align: 512, elements: !1619)
!1619 = !{!1620}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1618, file: !1061, line: 747, baseType: !143, size: 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1615, file: !1061, line: 750, baseType: !1622, size: 128, offset: 512)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1623, line: 218, size: 128, elements: !1624)
!1623 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1624 = !{!1625, !1632, !1633}
!1625 = !DIDerivedType(tag: DW_TAG_member, scope: !1622, file: !1623, line: 219, baseType: !1626, size: 32)
!1626 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1622, file: !1623, line: 219, size: 32, elements: !1627)
!1627 = !{!1628, !1629}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1626, file: !1623, line: 220, baseType: !123, size: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1626, file: !1623, line: 221, baseType: !1630)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1623, line: 197, baseType: !1631)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1623, line: 197, elements: !819)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1622, file: !1623, line: 223, baseType: !74, size: 32, offset: 32)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1622, file: !1623, line: 224, baseType: !73, size: 64, offset: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1615, file: !1061, line: 752, baseType: !1635, size: 64, offset: 640)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!47, !1638, !47, !47, !47, !47}
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !266, line: 994, size: 1856, align: 64, elements: !1640)
!1640 = !{!1641, !1647, !1648, !1650, !1651, !1652, !1653, !1654, !1712, !1902, !1911, !1912, !1913, !2386, !2387, !2388, !2389, !2391, !2392, !2395}
!1641 = !DIDerivedType(tag: DW_TAG_member, scope: !1639, file: !266, line: 995, baseType: !1642, size: 128)
!1642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1639, file: !266, line: 995, size: 128, elements: !1643)
!1643 = !{!1644, !1645, !1646}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1642, file: !266, line: 996, baseType: !1336, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1642, file: !266, line: 997, baseType: !752, size: 128, align: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1642, file: !266, line: 998, baseType: !74, size: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1639, file: !266, line: 1005, baseType: !123, size: 32, offset: 128)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1639, file: !266, line: 1006, baseType: !1649, size: 32, offset: 160)
!1649 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !12, line: 156, baseType: !74)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1639, file: !266, line: 1007, baseType: !536, size: 64, offset: 192)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1639, file: !266, line: 1008, baseType: !532, size: 256, offset: 256)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1639, file: !266, line: 1009, baseType: !425, size: 64, offset: 512)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1639, file: !266, line: 1010, baseType: !74, size: 32, offset: 576)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1639, file: !266, line: 1011, baseType: !1655, size: 256, offset: 640)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !266, line: 948, size: 256, elements: !1656)
!1656 = !{!1657, !1678, !1701, !1709, !1710, !1711}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1655, file: !266, line: 949, baseType: !1658, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1659, line: 34, baseType: !1660)
!1659 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1659, line: 25, size: 64, elements: !1661)
!1661 = !{!1662}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1660, file: !1659, line: 26, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1664, line: 27, baseType: !1665)
!1664 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1664, line: 13, size: 64, elements: !1666)
!1666 = !{!1667, !1677}
!1667 = !DIDerivedType(tag: DW_TAG_member, scope: !1665, file: !1664, line: 14, baseType: !1668, size: 32)
!1668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1665, file: !1664, line: 14, size: 32, elements: !1669)
!1669 = !{!1670, !1671}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1668, file: !1664, line: 15, baseType: !143, size: 32)
!1671 = !DIDerivedType(tag: DW_TAG_member, scope: !1668, file: !1664, line: 16, baseType: !1672, size: 32)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1668, file: !1664, line: 16, size: 32, elements: !1673)
!1673 = !{!1674, !1675}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1672, file: !1664, line: 18, baseType: !151, size: 8)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1672, file: !1664, line: 19, baseType: !1676, size: 24, offset: 8)
!1676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 24, elements: !190)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1665, file: !1664, line: 26, baseType: !135, size: 32, offset: 32)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1655, file: !266, line: 950, baseType: !1679, size: 64, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !1681, line: 59, size: 768, elements: !1682)
!1681 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!1682 = !{!1683, !1684, !1685, !1686, !1688, !1689, !1690, !1691}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1680, file: !1681, line: 61, baseType: !1323, size: 32)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1680, file: !1681, line: 62, baseType: !74, size: 32, offset: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1680, file: !1681, line: 63, baseType: !123, size: 32, offset: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1680, file: !1681, line: 65, baseType: !1687, size: 256, offset: 128)
!1687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !900, size: 256, elements: !52)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1680, file: !1681, line: 66, baseType: !900, size: 64, offset: 384)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1680, file: !1681, line: 68, baseType: !1296, size: 192, offset: 448)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1680, file: !1681, line: 69, baseType: !752, size: 128, align: 64, offset: 640)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1680, file: !1681, line: 70, baseType: !1692, offset: 768)
!1692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1693, elements: !1699)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !1681, line: 54, size: 128, elements: !1694)
!1694 = !{!1695, !1696}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1693, file: !1681, line: 55, baseType: !64, size: 32)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1693, file: !1681, line: 56, baseType: !1697, size: 64, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1681, line: 56, flags: DIFlagFwdDecl)
!1699 = !{!1700}
!1700 = !DISubrange(count: -1)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1655, file: !266, line: 951, baseType: !1702, size: 32, offset: 128)
!1702 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !1681, line: 9, baseType: !74, size: 32, elements: !1703)
!1703 = !{!1704, !1705, !1706, !1707, !1708}
!1704 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!1705 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!1706 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!1707 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!1708 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1655, file: !266, line: 952, baseType: !275, size: 32, offset: 160)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1655, file: !266, line: 952, baseType: !275, size: 32, offset: 192)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1655, file: !266, line: 953, baseType: !64, size: 32, offset: 224)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1639, file: !266, line: 1012, baseType: !1713, size: 64, offset: 896)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1715)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1716, line: 110, size: 1472, elements: !1717)
!1716 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1717 = !{!1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1734, !1735, !1736, !1737, !1738, !1739, !1847, !1848, !1849, !1850, !1851, !1882, !1885, !1889, !1897}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1715, file: !1716, line: 111, baseType: !536, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1715, file: !1716, line: 112, baseType: !275, size: 32, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1715, file: !1716, line: 113, baseType: !284, size: 32, offset: 96)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1715, file: !1716, line: 114, baseType: !275, size: 32, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1715, file: !1716, line: 115, baseType: !284, size: 32, offset: 160)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1715, file: !1716, line: 116, baseType: !275, size: 32, offset: 192)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1715, file: !1716, line: 117, baseType: !284, size: 32, offset: 224)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1715, file: !1716, line: 118, baseType: !275, size: 32, offset: 256)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1715, file: !1716, line: 119, baseType: !284, size: 32, offset: 288)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1715, file: !1716, line: 120, baseType: !74, size: 32, offset: 320)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1715, file: !1716, line: 121, baseType: !1729, size: 64, offset: 384)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1730, line: 24, baseType: !1731)
!1730 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1730, line: 24, size: 64, elements: !1732)
!1732 = !{!1733}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1731, file: !1730, line: 24, baseType: !36, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1715, file: !1716, line: 122, baseType: !1729, size: 64, offset: 448)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1715, file: !1716, line: 123, baseType: !1729, size: 64, offset: 512)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1715, file: !1716, line: 124, baseType: !1729, size: 64, offset: 576)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1715, file: !1716, line: 125, baseType: !1729, size: 64, offset: 640)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1715, file: !1716, line: 127, baseType: !92, size: 8, offset: 704)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1715, file: !1716, line: 129, baseType: !1740, size: 64, offset: 768)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1742, line: 195, size: 1728, elements: !1743)
!1742 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1743 = !{!1744, !1745, !1748, !1753, !1754, !1757, !1758, !1763, !1764, !1765, !1766, !1769, !1770, !1771, !1772, !1773, !1811, !1832}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1741, file: !1742, line: 196, baseType: !1323, size: 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1741, file: !1742, line: 197, baseType: !1746, size: 32, offset: 32)
!1746 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1742, line: 28, baseType: !1747)
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !12, line: 104, baseType: !528)
!1748 = !DIDerivedType(tag: DW_TAG_member, scope: !1741, file: !1742, line: 198, baseType: !1749, size: 192, offset: 64)
!1749 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1741, file: !1742, line: 198, size: 192, elements: !1750)
!1750 = !{!1751, !1752}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1749, file: !1742, line: 199, baseType: !11, size: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1749, file: !1742, line: 200, baseType: !644, size: 192, align: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1741, file: !1742, line: 205, baseType: !1203, size: 320, offset: 256)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1741, file: !1742, line: 206, baseType: !1755, size: 64, offset: 576)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1742, line: 206, flags: DIFlagFwdDecl)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1741, file: !1742, line: 207, baseType: !73, size: 64, offset: 640)
!1758 = !DIDerivedType(tag: DW_TAG_member, scope: !1741, file: !1742, line: 208, baseType: !1759, size: 64, offset: 704)
!1759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1741, file: !1742, line: 208, size: 64, elements: !1760)
!1760 = !{!1761, !1762}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1759, file: !1742, line: 209, baseType: !1042, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1759, file: !1742, line: 210, baseType: !1042, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1741, file: !1742, line: 212, baseType: !1042, size: 64, offset: 768)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1741, file: !1742, line: 213, baseType: !275, size: 32, offset: 832)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1741, file: !1742, line: 214, baseType: !284, size: 32, offset: 864)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1741, file: !1742, line: 215, baseType: !1767, size: 32, offset: 896)
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1742, line: 31, baseType: !1768)
!1768 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !12, line: 110, baseType: !80)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1741, file: !1742, line: 216, baseType: !101, size: 16, offset: 928)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1741, file: !1742, line: 217, baseType: !101, size: 16, offset: 944)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1741, file: !1742, line: 221, baseType: !670, size: 16, offset: 960)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1741, file: !1742, line: 228, baseType: !47, size: 64, offset: 1024)
!1773 = !DIDerivedType(tag: DW_TAG_member, scope: !1741, file: !1742, line: 245, baseType: !1774, size: 320, offset: 1088)
!1774 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1741, file: !1742, line: 245, size: 320, elements: !1775)
!1775 = !{!1776, !1803}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1774, file: !1742, line: 246, baseType: !1777, size: 320)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1742, line: 114, size: 320, elements: !1778)
!1778 = !{!1779, !1780, !1792, !1795, !1802}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1777, file: !1742, line: 116, baseType: !47, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, scope: !1777, file: !1742, line: 117, baseType: !1781, size: 64, offset: 64)
!1781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1777, file: !1742, line: 117, size: 64, elements: !1782)
!1782 = !{!1783, !1791}
!1783 = !DIDerivedType(tag: DW_TAG_member, scope: !1781, file: !1742, line: 118, baseType: !1784, size: 64)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1781, file: !1742, line: 118, size: 64, elements: !1785)
!1785 = !{!1786, !1787}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1784, file: !1742, line: 120, baseType: !158, size: 16)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1784, file: !1742, line: 121, baseType: !1788, size: 48, offset: 16)
!1788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 48, elements: !1789)
!1789 = !{!1790}
!1790 = !DISubrange(count: 6)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1781, file: !1742, line: 127, baseType: !47, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1777, file: !1742, line: 129, baseType: !1793, size: 64, offset: 128)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1742, line: 102, flags: DIFlagFwdDecl)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1777, file: !1742, line: 130, baseType: !1796, size: 64, offset: 192)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1742, line: 108, size: 192, elements: !1798)
!1798 = !{!1799, !1800, !1801}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1797, file: !1742, line: 109, baseType: !752, size: 128, align: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1797, file: !1742, line: 110, baseType: !1323, size: 32, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1797, file: !1742, line: 111, baseType: !612, size: 8, offset: 160)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1777, file: !1742, line: 131, baseType: !43, size: 64, offset: 256)
!1803 = !DIDerivedType(tag: DW_TAG_member, scope: !1774, file: !1742, line: 247, baseType: !1804, size: 320)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1774, file: !1742, line: 247, size: 320, elements: !1805)
!1805 = !{!1806, !1807, !1808, !1809, !1810}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1804, file: !1742, line: 248, baseType: !47, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1804, file: !1742, line: 249, baseType: !47, size: 64, offset: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1804, file: !1742, line: 250, baseType: !1793, size: 64, offset: 128)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1804, file: !1742, line: 251, baseType: !1796, size: 64, offset: 192)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1804, file: !1742, line: 252, baseType: !189, size: 64, offset: 256)
!1811 = !DIDerivedType(tag: DW_TAG_member, scope: !1741, file: !1742, line: 260, baseType: !1812, size: 256, offset: 1408)
!1812 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1741, file: !1742, line: 260, size: 256, elements: !1813)
!1813 = !{!1814, !1820}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1812, file: !1742, line: 261, baseType: !1815, size: 256)
!1815 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1742, line: 134, size: 256, elements: !1816)
!1816 = !{!1817, !1818}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1815, file: !1742, line: 135, baseType: !73, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1815, file: !1742, line: 136, baseType: !1819, size: 256)
!1819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 256, elements: !52)
!1820 = !DIDerivedType(tag: DW_TAG_member, scope: !1812, file: !1742, line: 262, baseType: !1821, size: 256)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1812, file: !1742, line: 262, size: 256, elements: !1822)
!1822 = !{!1823, !1824}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1821, file: !1742, line: 264, baseType: !11, size: 128)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1821, file: !1742, line: 265, baseType: !1825, size: 128, offset: 128)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1826, line: 22, size: 128, elements: !1827)
!1826 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1827 = !{!1828, !1831}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1825, file: !1826, line: 23, baseType: !1829, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1826, line: 23, flags: DIFlagFwdDecl)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1825, file: !1826, line: 24, baseType: !47, size: 64, offset: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1741, file: !1742, line: 280, baseType: !1833, size: 64, offset: 1664)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1742, line: 176, size: 192, elements: !1835)
!1835 = !{!1836, !1845, !1846}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1834, file: !1742, line: 177, baseType: !1837, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1742, line: 171, baseType: !1838)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!64, !1740, !1841, !1843, !1740}
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1794)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1815)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1834, file: !1742, line: 178, baseType: !1740, size: 64, offset: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1834, file: !1742, line: 179, baseType: !1793, size: 64, offset: 128)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1715, file: !1716, line: 130, baseType: !1740, size: 64, offset: 832)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1715, file: !1716, line: 131, baseType: !1740, size: 64, offset: 896)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1715, file: !1716, line: 132, baseType: !1740, size: 64, offset: 960)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1715, file: !1716, line: 135, baseType: !73, size: 64, offset: 1024)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1715, file: !1716, line: 137, baseType: !1852, size: 64, offset: 1088)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1854, line: 14, size: 1088, elements: !1855)
!1854 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1855 = !{!1856, !1857, !1866, !1867, !1868, !1869, !1870, !1871}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1853, file: !1854, line: 15, baseType: !1323, size: 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1853, file: !1854, line: 17, baseType: !1858, size: 320, offset: 64)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1859, line: 22, size: 320, elements: !1860)
!1859 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1860 = !{!1861, !1862, !1863, !1864}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1858, file: !1859, line: 23, baseType: !490, size: 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1858, file: !1859, line: 24, baseType: !542, size: 64, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1858, file: !1859, line: 26, baseType: !11, size: 128, offset: 128)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1858, file: !1859, line: 28, baseType: !1865, size: 64, offset: 256)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1853, file: !1854, line: 19, baseType: !47, size: 64, offset: 384)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1853, file: !1854, line: 20, baseType: !536, size: 64, offset: 448)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1853, file: !1854, line: 23, baseType: !776, size: 128, offset: 512)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1853, file: !1854, line: 24, baseType: !275, size: 32, offset: 640)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1853, file: !1854, line: 29, baseType: !536, size: 64, offset: 704)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1853, file: !1854, line: 36, baseType: !1872, size: 320, offset: 768)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1873, line: 15, size: 320, elements: !1874)
!1873 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1874 = !{!1875, !1876, !1877, !1878, !1879, !1880, !1881}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1872, file: !1873, line: 16, baseType: !490, size: 32)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1872, file: !1873, line: 18, baseType: !64, size: 32, offset: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1872, file: !1873, line: 19, baseType: !64, size: 32, offset: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1872, file: !1873, line: 20, baseType: !64, size: 32, offset: 96)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1872, file: !1873, line: 21, baseType: !64, size: 32, offset: 128)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1872, file: !1873, line: 22, baseType: !47, size: 64, offset: 192)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1872, file: !1873, line: 23, baseType: !47, size: 64, offset: 256)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1715, file: !1716, line: 138, baseType: !1883, size: 64, offset: 1152)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1061, line: 901, flags: DIFlagFwdDecl)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1715, file: !1716, line: 139, baseType: !1886, size: 64, offset: 1216)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1888, line: 16, flags: DIFlagFwdDecl)
!1888 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1715, file: !1716, line: 140, baseType: !1890, size: 64, offset: 1280)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1716, line: 25, size: 64, elements: !1892)
!1892 = !{!1893, !1894, !1895}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1891, file: !1716, line: 26, baseType: !143, size: 32)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1891, file: !1716, line: 27, baseType: !64, size: 32, offset: 32)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1891, file: !1716, line: 28, baseType: !1896, offset: 64)
!1896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, elements: !1699)
!1897 = !DIDerivedType(tag: DW_TAG_member, scope: !1715, file: !1716, line: 142, baseType: !1898, size: 128, offset: 1344)
!1898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1715, file: !1716, line: 142, size: 128, elements: !1899)
!1899 = !{!1900, !1901}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1898, file: !1716, line: 143, baseType: !64, size: 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1898, file: !1716, line: 144, baseType: !752, size: 128, align: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1639, file: !266, line: 1013, baseType: !1903, size: 256, offset: 960)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !266, line: 970, size: 256, elements: !1904)
!1904 = !{!1905, !1906, !1907, !1908, !1909, !1910}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1903, file: !266, line: 971, baseType: !47, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1903, file: !266, line: 972, baseType: !74, size: 32, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1903, file: !266, line: 973, baseType: !74, size: 32, offset: 96)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1903, file: !266, line: 974, baseType: !74, size: 32, offset: 128)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1903, file: !266, line: 975, baseType: !74, size: 32, offset: 160)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1903, file: !266, line: 976, baseType: !425, size: 64, offset: 192)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1639, file: !266, line: 1014, baseType: !1115, size: 128, offset: 1216)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1639, file: !266, line: 1015, baseType: !269, size: 64, offset: 1344)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1639, file: !266, line: 1016, baseType: !1914, size: 64, offset: 1408)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1916)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !266, line: 1914, size: 2112, elements: !1917)
!1917 = !{!1918, !1919, !1923, !1928, !1932, !1961, !1962, !1968, !1981, !1989, !1993, !1994, !2308, !2309, !2313, !2318, !2319, !2323, !2327, !2333, !2334, !2338, !2339, !2345, !2349, !2353, !2359, !2363, !2367, !2371, !2375, !2376, !2382}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1916, file: !266, line: 1915, baseType: !454, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1916, file: !266, line: 1916, baseType: !1920, size: 64, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!425, !1638, !425, !64}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1916, file: !266, line: 1917, baseType: !1924, size: 64, offset: 128)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!221, !1638, !189, !236, !1927}
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1916, file: !266, line: 1918, baseType: !1929, size: 64, offset: 192)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!221, !1638, !43, !236, !1927}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1916, file: !266, line: 1919, baseType: !1933, size: 64, offset: 256)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!221, !1936, !1958}
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !266, line: 373, size: 384, elements: !1938)
!1938 = !{!1939, !1940, !1941, !1945, !1946, !1947, !1948}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1937, file: !266, line: 374, baseType: !1638, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1937, file: !266, line: 375, baseType: !425, size: 64, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1937, file: !266, line: 376, baseType: !1942, size: 64, offset: 128)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{null, !1936, !225}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1937, file: !266, line: 377, baseType: !73, size: 64, offset: 192)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1937, file: !266, line: 378, baseType: !64, size: 32, offset: 256)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1937, file: !266, line: 379, baseType: !158, size: 16, offset: 288)
!1948 = !DIDerivedType(tag: DW_TAG_member, scope: !1937, file: !266, line: 380, baseType: !1949, size: 64, offset: 320)
!1949 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1937, file: !266, line: 380, size: 64, elements: !1950)
!1950 = !{!1951, !1954}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1949, file: !266, line: 386, baseType: !1952, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !266, line: 386, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1949, file: !266, line: 395, baseType: !1955, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!221, !73}
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1960, line: 17, flags: DIFlagFwdDecl)
!1960 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1916, file: !266, line: 1920, baseType: !1933, size: 64, offset: 320)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1916, file: !266, line: 1921, baseType: !1963, size: 64, offset: 384)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!64, !1936, !1966, !74}
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !266, line: 53, flags: DIFlagFwdDecl)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1916, file: !266, line: 1923, baseType: !1969, size: 64, offset: 448)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!64, !1638, !1972}
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !266, line: 1858, size: 128, elements: !1974)
!1974 = !{!1975, !1980}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1973, file: !266, line: 1859, baseType: !1976, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !266, line: 1855, baseType: !1977)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!612, !1972, !43, !64, !425, !36, !74}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1973, file: !266, line: 1860, baseType: !425, size: 64, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1916, file: !266, line: 1924, baseType: !1982, size: 64, offset: 512)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!1985, !1638, !1987}
!1985 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1986, line: 59, baseType: !74)
!1986 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !440, line: 31, flags: DIFlagFwdDecl)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1916, file: !266, line: 1925, baseType: !1990, size: 64, offset: 576)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!225, !1638, !74, !47}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1916, file: !266, line: 1926, baseType: !1990, size: 64, offset: 640)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1916, file: !266, line: 1927, baseType: !1995, size: 64, offset: 704)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!64, !1638, !1998}
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1061, line: 625, size: 1344, elements: !2000)
!2000 = !{!2001, !2010, !2011, !2019, !2026, !2027, !2032, !2033, !2038, !2039, !2042, !2301, !2302, !2303, !2304, !2305, !2306}
!2001 = !DIDerivedType(tag: DW_TAG_member, scope: !1999, file: !1061, line: 628, baseType: !2002, size: 128)
!2002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1999, file: !1061, line: 628, size: 128, elements: !2003)
!2003 = !{!2004, !2009}
!2004 = !DIDerivedType(tag: DW_TAG_member, scope: !2002, file: !1061, line: 629, baseType: !2005, size: 128)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2002, file: !1061, line: 629, size: 128, elements: !2006)
!2006 = !{!2007, !2008}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2005, file: !1061, line: 631, baseType: !47, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2005, file: !1061, line: 632, baseType: !47, size: 64, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2002, file: !1061, line: 635, baseType: !752, size: 128, align: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1999, file: !1061, line: 639, baseType: !1611, size: 64, offset: 128)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1999, file: !1061, line: 640, baseType: !2012, size: 64, offset: 192)
!2012 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2013, line: 297, baseType: !2014)
!2013 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2013, line: 297, size: 64, elements: !2015)
!2015 = !{!2016}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2014, file: !2013, line: 297, baseType: !2017, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2018, line: 19, baseType: !47)
!2018 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2019 = !DIDerivedType(tag: DW_TAG_member, scope: !1999, file: !1061, line: 646, baseType: !2020, size: 64, offset: 256)
!2020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1999, file: !1061, line: 646, size: 64, elements: !2021)
!2021 = !{!2022, !2025}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2020, file: !1061, line: 647, baseType: !2023, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2024)
!2024 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1061, line: 542, baseType: !47)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2020, file: !1061, line: 648, baseType: !2024, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1999, file: !1061, line: 666, baseType: !64, size: 32, offset: 320)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1999, file: !1061, line: 667, baseType: !2028, size: 64, offset: 384)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1061, line: 579, size: 320, elements: !2030)
!2030 = !{!2031}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2029, file: !1061, line: 580, baseType: !1203, size: 320)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1999, file: !1061, line: 670, baseType: !612, size: 8, offset: 448)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1999, file: !1061, line: 681, baseType: !2034, size: 256, offset: 512)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1999, file: !1061, line: 678, size: 256, elements: !2035)
!2035 = !{!2036, !2037}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2034, file: !1061, line: 679, baseType: !644, size: 192, align: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2034, file: !1061, line: 680, baseType: !47, size: 64, offset: 192)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1999, file: !1061, line: 689, baseType: !11, size: 128, offset: 768)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1999, file: !1061, line: 691, baseType: !2040, size: 64, offset: 896)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1061, line: 691, flags: DIFlagFwdDecl)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1999, file: !1061, line: 694, baseType: !2043, size: 64, offset: 960)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2045)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2046, line: 563, size: 1024, elements: !2047)
!2046 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2047 = !{!2048, !2052, !2053, !2057, !2061, !2065, !2265, !2269, !2273, !2277, !2278, !2279, !2283, !2287, !2293, !2297}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2045, file: !2046, line: 564, baseType: !2049, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{null, !1998}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2045, file: !2046, line: 569, baseType: !2049, size: 64, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2045, file: !2046, line: 571, baseType: !2054, size: 64, offset: 128)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!64, !1998, !47}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2045, file: !2046, line: 572, baseType: !2058, size: 64, offset: 192)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!64, !1998}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2045, file: !2046, line: 578, baseType: !2062, size: 64, offset: 256)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!64, !1998, !47, !47, !47}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2045, file: !2046, line: 580, baseType: !2066, size: 64, offset: 320)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!2069, !2070}
!2069 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !1061, line: 1184, baseType: !74)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2046, line: 512, size: 896, elements: !2072)
!2072 = !{!2073, !2081, !2097, !2104, !2111, !2121, !2258, !2259, !2261, !2263}
!2073 = !DIDerivedType(tag: DW_TAG_member, scope: !2071, file: !2046, line: 513, baseType: !2074, size: 320)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2071, file: !2046, line: 513, size: 320, elements: !2075)
!2075 = !{!2076, !2077, !2078, !2079, !2080}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2074, file: !2046, line: 514, baseType: !1998, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2074, file: !2046, line: 515, baseType: !1054, size: 32, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2074, file: !2046, line: 516, baseType: !47, size: 64, offset: 128)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2074, file: !2046, line: 517, baseType: !47, size: 64, offset: 192)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2074, file: !2046, line: 518, baseType: !47, size: 64, offset: 256)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2071, file: !2046, line: 520, baseType: !2082, size: 32, offset: 320)
!2082 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !1061, line: 1325, baseType: !74, size: 32, elements: !2083)
!2083 = !{!2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096}
!2084 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!2085 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!2086 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!2087 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!2088 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!2089 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!2090 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!2091 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!2092 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!2093 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!2094 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!2095 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!2096 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2071, file: !2046, line: 522, baseType: !2098, size: 64, offset: 384)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2018, line: 22, baseType: !2100)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2018, line: 22, size: 64, elements: !2101)
!2101 = !{!2102}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2100, file: !2018, line: 22, baseType: !2103, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2018, line: 15, baseType: !47)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2071, file: !2046, line: 524, baseType: !2105, size: 64, offset: 448)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2013, line: 372, baseType: !2107)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2013, line: 372, size: 64, elements: !2108)
!2108 = !{!2109}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2107, file: !2013, line: 372, baseType: !2110, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2018, line: 16, baseType: !47)
!2111 = !DIDerivedType(tag: DW_TAG_member, scope: !2071, file: !2046, line: 527, baseType: !2112, size: 64, offset: 512)
!2112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2071, file: !2046, line: 527, size: 64, elements: !2113)
!2113 = !{!2114, !2120}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2112, file: !2046, line: 528, baseType: !2115, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2018, line: 21, baseType: !2116)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2018, line: 21, size: 64, elements: !2117)
!2117 = !{!2118}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2116, file: !2018, line: 21, baseType: !2119, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2018, line: 14, baseType: !47)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2112, file: !2046, line: 529, baseType: !2099, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2071, file: !2046, line: 534, baseType: !2122, size: 64, offset: 576)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1061, line: 74, size: 512, align: 128, elements: !2124)
!2124 = !{!2125, !2126, !2252, !2257}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2123, file: !1061, line: 75, baseType: !47, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, scope: !2123, file: !1061, line: 83, baseType: !2127, size: 320, offset: 64)
!2127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2123, file: !1061, line: 83, size: 320, elements: !2128)
!2128 = !{!2129, !2150, !2164, !2168, !2251}
!2129 = !DIDerivedType(tag: DW_TAG_member, scope: !2127, file: !1061, line: 84, baseType: !2130, size: 320)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2127, file: !1061, line: 84, size: 320, elements: !2131)
!2131 = !{!2132, !2143, !2144, !2149}
!2132 = !DIDerivedType(tag: DW_TAG_member, scope: !2130, file: !1061, line: 90, baseType: !2133, size: 128)
!2133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2130, file: !1061, line: 90, size: 128, elements: !2134)
!2134 = !{!2135, !2136, !2141, !2142}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2133, file: !1061, line: 91, baseType: !11, size: 128)
!2136 = !DIDerivedType(tag: DW_TAG_member, scope: !2133, file: !1061, line: 94, baseType: !2137, size: 128)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2133, file: !1061, line: 94, size: 128, elements: !2138)
!2138 = !{!2139, !2140}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2137, file: !1061, line: 96, baseType: !73, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2137, file: !1061, line: 98, baseType: !74, size: 32, offset: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2133, file: !1061, line: 102, baseType: !11, size: 128)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2133, file: !1061, line: 103, baseType: !11, size: 128)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2130, file: !1061, line: 106, baseType: !264, size: 64, offset: 128)
!2144 = !DIDerivedType(tag: DW_TAG_member, scope: !2130, file: !1061, line: 107, baseType: !2145, size: 64, offset: 192)
!2145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2130, file: !1061, line: 107, size: 64, elements: !2146)
!2146 = !{!2147, !2148}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2145, file: !1061, line: 108, baseType: !47, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2145, file: !1061, line: 109, baseType: !47, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2130, file: !1061, line: 117, baseType: !47, size: 64, offset: 256)
!2150 = !DIDerivedType(tag: DW_TAG_member, scope: !2127, file: !1061, line: 119, baseType: !2151, size: 320)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2127, file: !1061, line: 119, size: 320, elements: !2152)
!2152 = !{!2153, !2154, !2157, !2158, !2159}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2151, file: !1061, line: 124, baseType: !47, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2151, file: !1061, line: 125, baseType: !2155, size: 64, offset: 64)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1061, line: 125, flags: DIFlagFwdDecl)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2151, file: !1061, line: 126, baseType: !47, size: 64, offset: 128)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2151, file: !1061, line: 127, baseType: !47, size: 64, offset: 192)
!2159 = !DIDerivedType(tag: DW_TAG_member, scope: !2151, file: !1061, line: 128, baseType: !2160, size: 64, offset: 256)
!2160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2151, file: !1061, line: 128, size: 64, elements: !2161)
!2161 = !{!2162, !2163}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2160, file: !1061, line: 133, baseType: !47, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2160, file: !1061, line: 138, baseType: !536, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, scope: !2127, file: !1061, line: 141, baseType: !2165, size: 64)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2127, file: !1061, line: 141, size: 64, elements: !2166)
!2166 = !{!2167}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2165, file: !1061, line: 142, baseType: !47, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, scope: !2127, file: !1061, line: 144, baseType: !2169, size: 128)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2127, file: !1061, line: 144, size: 128, elements: !2170)
!2170 = !{!2171, !2250}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2169, file: !1061, line: 146, baseType: !2172, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !2174, line: 126, size: 1216, elements: !2175)
!2174 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!2175 = !{!2176, !2186, !2207, !2208, !2216, !2217, !2218, !2232, !2233, !2234}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2173, file: !2174, line: 127, baseType: !2177, size: 384)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !2174, line: 21, size: 384, elements: !2178)
!2178 = !{!2179, !2180, !2182, !2183, !2184, !2185}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2177, file: !2174, line: 22, baseType: !47, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2177, file: !2174, line: 23, baseType: !2181, size: 64, offset: 64)
!2181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2177, file: !2174, line: 24, baseType: !2181, size: 64, offset: 128)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2177, file: !2174, line: 25, baseType: !47, size: 64, offset: 192)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2177, file: !2174, line: 26, baseType: !47, size: 64, offset: 256)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2177, file: !2174, line: 27, baseType: !47, size: 64, offset: 320)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2173, file: !2174, line: 128, baseType: !2187, size: 128, offset: 384)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2188, line: 105, size: 128, elements: !2189)
!2188 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2189 = !{!2190, !2191}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2187, file: !2188, line: 110, baseType: !47, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2187, file: !2188, line: 118, baseType: !2192, size: 64, offset: 64)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2188, line: 95, size: 448, elements: !2194)
!2194 = !{!2195, !2196, !2202, !2203, !2204, !2205, !2206}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2193, file: !2188, line: 96, baseType: !536, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2193, file: !2188, line: 97, baseType: !2197, size: 64, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2188, line: 60, baseType: !2199)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{null, !2201}
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2193, file: !2188, line: 98, baseType: !2197, size: 64, offset: 128)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2193, file: !2188, line: 99, baseType: !612, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2193, file: !2188, line: 100, baseType: !612, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2193, file: !2188, line: 101, baseType: !752, size: 128, align: 64, offset: 256)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2193, file: !2188, line: 102, baseType: !2201, size: 64, offset: 384)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2173, file: !2174, line: 129, baseType: !481, size: 256, offset: 512)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2173, file: !2174, line: 130, baseType: !2209, size: 32, offset: 768)
!2209 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !2174, line: 68, baseType: !74, size: 32, elements: !2210)
!2210 = !{!2211, !2212, !2213, !2214, !2215}
!2211 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!2212 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!2213 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!2214 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!2215 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2173, file: !2174, line: 131, baseType: !74, size: 32, offset: 800)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2173, file: !2174, line: 132, baseType: !47, size: 64, offset: 832)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2173, file: !2174, line: 133, baseType: !2219, size: 64, offset: 896)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2221)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !2174, line: 77, size: 192, elements: !2222)
!2222 = !{!2223, !2227, !2228}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2221, file: !2174, line: 83, baseType: !2224, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{null, !2122}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2221, file: !2174, line: 89, baseType: !2066, size: 64, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2221, file: !2174, line: 100, baseType: !2229, size: 64, offset: 128)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!64, !2172, !47, !47, !64}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2173, file: !2174, line: 134, baseType: !73, size: 64, offset: 960)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2173, file: !2174, line: 135, baseType: !64, size: 32, offset: 1024)
!2234 = !DIDerivedType(tag: DW_TAG_member, scope: !2173, file: !2174, line: 136, baseType: !2235, size: 128, offset: 1088)
!2235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2173, file: !2174, line: 136, size: 128, elements: !2236)
!2236 = !{!2237, !2243}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2235, file: !2174, line: 137, baseType: !2238, size: 128)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2239, line: 6, size: 128, elements: !2240)
!2239 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2240 = !{!2241, !2242}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2238, file: !2239, line: 7, baseType: !36, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2238, file: !2239, line: 8, baseType: !36, size: 64, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, scope: !2235, file: !2174, line: 138, baseType: !2244)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2235, file: !2174, line: 138, elements: !2245)
!2245 = !{!2246, !2248}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2244, file: !2174, line: 138, baseType: !2247)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2244, file: !2174, line: 138, elements: !819)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2244, file: !2174, line: 138, baseType: !2249)
!2249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2238, elements: !1699)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2169, file: !1061, line: 147, baseType: !73, size: 64, offset: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2127, file: !1061, line: 161, baseType: !752, size: 128, align: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, scope: !2123, file: !1061, line: 164, baseType: !2253, size: 32, offset: 384)
!2253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2123, file: !1061, line: 164, size: 32, elements: !2254)
!2254 = !{!2255, !2256}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2253, file: !1061, line: 169, baseType: !143, size: 32)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2253, file: !1061, line: 177, baseType: !74, size: 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2123, file: !1061, line: 181, baseType: !143, size: 32, offset: 416)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2071, file: !2046, line: 535, baseType: !2122, size: 64, offset: 640)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2071, file: !2046, line: 541, baseType: !2260, size: 64, offset: 704)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2071, file: !2046, line: 545, baseType: !2262, size: 64, offset: 768)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2071, file: !2046, line: 549, baseType: !2264, size: 64, offset: 832)
!2264 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2013, line: 520, baseType: !2122)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2045, file: !2046, line: 581, baseType: !2266, size: 64, offset: 384)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!2069, !2070, !74}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2045, file: !2046, line: 582, baseType: !2270, size: 64, offset: 448)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!2069, !2070, !47, !47}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2045, file: !2046, line: 584, baseType: !2274, size: 64, offset: 512)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!47, !1998}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2045, file: !2046, line: 588, baseType: !2066, size: 64, offset: 576)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2045, file: !2046, line: 591, baseType: !2066, size: 64, offset: 640)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2045, file: !2046, line: 597, baseType: !2280, size: 64, offset: 704)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!64, !1998, !47, !73, !64, !64}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2045, file: !2046, line: 603, baseType: !2284, size: 64, offset: 768)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!43, !1998}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2045, file: !2046, line: 613, baseType: !2288, size: 64, offset: 832)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!64, !1998, !2291}
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1061, line: 717, flags: DIFlagFwdDecl)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2045, file: !2046, line: 625, baseType: !2294, size: 64, offset: 896)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!2291, !1998, !47}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2045, file: !2046, line: 633, baseType: !2298, size: 64, offset: 960)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!2122, !1998, !47}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1999, file: !1061, line: 697, baseType: !47, size: 64, offset: 1024)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1999, file: !1061, line: 699, baseType: !1638, size: 64, offset: 1088)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1999, file: !1061, line: 700, baseType: !73, size: 64, offset: 1152)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1999, file: !1061, line: 711, baseType: !536, size: 64, offset: 1216)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1999, file: !1061, line: 717, baseType: !2291, size: 64, offset: 1280)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1999, file: !1061, line: 722, baseType: !2307, offset: 1344)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1061, line: 570, elements: !819)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1916, file: !266, line: 1928, baseType: !47, size: 64, offset: 768)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1916, file: !266, line: 1929, baseType: !2310, size: 64, offset: 832)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!64, !269, !1638}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1916, file: !266, line: 1930, baseType: !2314, size: 64, offset: 896)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!64, !1638, !2317}
!2317 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !266, line: 1061, baseType: !73)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1916, file: !266, line: 1931, baseType: !2310, size: 64, offset: 960)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1916, file: !266, line: 1932, baseType: !2320, size: 64, offset: 1024)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!64, !1638, !425, !425, !64}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1916, file: !266, line: 1933, baseType: !2324, size: 64, offset: 1088)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!64, !64, !1638, !64}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1916, file: !266, line: 1934, baseType: !2328, size: 64, offset: 1152)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!64, !1638, !64, !2331}
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !266, line: 1063, flags: DIFlagFwdDecl)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1916, file: !266, line: 1935, baseType: !1635, size: 64, offset: 1216)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1916, file: !266, line: 1936, baseType: !2335, size: 64, offset: 1280)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!64, !64}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1916, file: !266, line: 1937, baseType: !2328, size: 64, offset: 1344)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1916, file: !266, line: 1938, baseType: !2340, size: 64, offset: 1408)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!221, !2343, !1638, !1927, !236, !74}
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !978, line: 59, flags: DIFlagFwdDecl)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1916, file: !266, line: 1939, baseType: !2346, size: 64, offset: 1472)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!221, !1638, !1927, !2343, !236, !74}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1916, file: !266, line: 1940, baseType: !2350, size: 64, offset: 1536)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{null, !1638}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1916, file: !266, line: 1941, baseType: !2354, size: 64, offset: 1600)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!64, !1638, !64, !2357, !2358}
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1916, file: !266, line: 1942, baseType: !2360, size: 64, offset: 1664)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!225, !1638, !64, !425, !425}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1916, file: !266, line: 1944, baseType: !2364, size: 64, offset: 1728)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{null, !976, !1638}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1916, file: !266, line: 1948, baseType: !2368, size: 64, offset: 1792)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!221, !1638, !425, !1638, !425, !236, !74}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1916, file: !266, line: 1950, baseType: !2372, size: 64, offset: 1856)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!425, !1638, !425, !1638, !425, !425, !74}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1916, file: !266, line: 1953, baseType: !2320, size: 64, offset: 1920)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1916, file: !266, line: 1954, baseType: !2377, size: 64, offset: 1984)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!64, !2380, !74}
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !266, line: 1911, flags: DIFlagFwdDecl)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1916, file: !266, line: 1955, baseType: !2383, size: 64, offset: 2048)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!64, !2380, !1966, !74}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1639, file: !266, line: 1018, baseType: !36, size: 64, offset: 1472)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1639, file: !266, line: 1020, baseType: !73, size: 64, offset: 1536)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1639, file: !266, line: 1023, baseType: !73, size: 64, offset: 1600)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1639, file: !266, line: 1027, baseType: !2390, size: 64, offset: 1664)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1639, file: !266, line: 1029, baseType: !264, size: 64, offset: 1728)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1639, file: !266, line: 1030, baseType: !2393, size: 32, offset: 1792)
!2393 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2394, line: 8, baseType: !80)
!2394 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1639, file: !266, line: 1031, baseType: !2393, size: 32, offset: 1824)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1615, file: !1061, line: 756, baseType: !47, size: 64, offset: 704)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1615, file: !1061, line: 757, baseType: !47, size: 64, offset: 768)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1615, file: !1061, line: 760, baseType: !47, size: 64, offset: 832)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1615, file: !1061, line: 761, baseType: !47, size: 64, offset: 896)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1615, file: !1061, line: 763, baseType: !47, size: 64, offset: 960)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1615, file: !1061, line: 764, baseType: !2402, size: 64, offset: 1024)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2013, line: 299, baseType: !2404)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2013, line: 299, size: 64, elements: !2405)
!2405 = !{!2406}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2404, file: !2013, line: 299, baseType: !2407, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2018, line: 18, baseType: !47)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1615, file: !1061, line: 773, baseType: !143, size: 32, offset: 1088)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1615, file: !1061, line: 785, baseType: !143, size: 32, offset: 1120)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1615, file: !1061, line: 795, baseType: !2411, size: 64, offset: 1152)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1061, line: 726, size: 128, elements: !2413)
!2413 = !{!2414, !2415}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2412, file: !1061, line: 727, baseType: !36, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2412, file: !1061, line: 728, baseType: !64, size: 32, offset: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1615, file: !1061, line: 801, baseType: !47, size: 64, offset: 1216)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1615, file: !1061, line: 804, baseType: !536, size: 64, offset: 1280)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1615, file: !1061, line: 806, baseType: !64, size: 32, offset: 1344)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1615, file: !1061, line: 808, baseType: !123, size: 32, offset: 1376)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1615, file: !1061, line: 823, baseType: !1203, size: 320, offset: 1408)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1615, file: !1061, line: 825, baseType: !11, size: 128, offset: 1728)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1615, file: !1061, line: 845, baseType: !64, size: 32, offset: 1856)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1615, file: !1061, line: 849, baseType: !47, size: 64, offset: 1920)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1615, file: !1061, line: 850, baseType: !47, size: 64, offset: 1984)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1615, file: !1061, line: 852, baseType: !47, size: 64, offset: 2048)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1615, file: !1061, line: 853, baseType: !47, size: 64, offset: 2112)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1615, file: !1061, line: 854, baseType: !538, size: 64, offset: 2176)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1615, file: !1061, line: 855, baseType: !47, size: 64, offset: 2240)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1615, file: !1061, line: 856, baseType: !47, size: 64, offset: 2304)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1615, file: !1061, line: 857, baseType: !47, size: 64, offset: 2368)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1615, file: !1061, line: 858, baseType: !47, size: 64, offset: 2432)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1615, file: !1061, line: 865, baseType: !315, size: 32, offset: 2496)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1615, file: !1061, line: 867, baseType: !123, size: 32, offset: 2528)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1615, file: !1061, line: 869, baseType: !47, size: 64, offset: 2560)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1615, file: !1061, line: 869, baseType: !47, size: 64, offset: 2624)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1615, file: !1061, line: 869, baseType: !47, size: 64, offset: 2688)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1615, file: !1061, line: 869, baseType: !47, size: 64, offset: 2752)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1615, file: !1061, line: 870, baseType: !47, size: 64, offset: 2816)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1615, file: !1061, line: 870, baseType: !47, size: 64, offset: 2880)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1615, file: !1061, line: 870, baseType: !47, size: 64, offset: 2944)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1615, file: !1061, line: 871, baseType: !47, size: 64, offset: 3008)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1615, file: !1061, line: 871, baseType: !47, size: 64, offset: 3072)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1615, file: !1061, line: 871, baseType: !47, size: 64, offset: 3136)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1615, file: !1061, line: 871, baseType: !47, size: 64, offset: 3200)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1615, file: !1061, line: 873, baseType: !2446, size: 3328, offset: 3264)
!2446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 3328, elements: !2447)
!2447 = !{!2448}
!2448 = !DISubrange(count: 52)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1615, file: !1061, line: 875, baseType: !2450, size: 1280, offset: 6592)
!2450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1858, size: 1280, elements: !52)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1615, file: !1061, line: 877, baseType: !2452, size: 64, offset: 7872)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1061, line: 877, flags: DIFlagFwdDecl)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1615, file: !1061, line: 880, baseType: !2455, size: 1088, offset: 7936)
!2455 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2456, line: 72, baseType: !2457)
!2456 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2456, line: 23, size: 1088, elements: !2458)
!2458 = !{!2459, !2460, !2461, !2462, !2463, !2466, !2467, !2468, !2469, !2496, !2497, !2498}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2457, file: !2456, line: 28, baseType: !36, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2457, file: !2456, line: 38, baseType: !538, size: 64, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2457, file: !2456, line: 40, baseType: !47, size: 64, offset: 128)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2457, file: !2456, line: 43, baseType: !1203, size: 320, offset: 192)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2457, file: !2456, line: 44, baseType: !2464, size: 64, offset: 512)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2456, line: 44, flags: DIFlagFwdDecl)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2457, file: !2456, line: 48, baseType: !47, size: 64, offset: 576)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2457, file: !2456, line: 59, baseType: !532, size: 256, offset: 640)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2457, file: !2456, line: 60, baseType: !73, size: 64, offset: 896)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2457, file: !2456, line: 61, baseType: !2470, size: 64, offset: 960)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2472)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2473, line: 13, size: 1216, elements: !2474)
!2473 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2474 = !{!2475, !2476, !2477, !2478, !2479, !2480, !2481, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2472, file: !2473, line: 14, baseType: !73, size: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2472, file: !2473, line: 15, baseType: !47, size: 64, offset: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2472, file: !2473, line: 17, baseType: !47, size: 64, offset: 128)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2472, file: !2473, line: 17, baseType: !47, size: 64, offset: 192)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2472, file: !2473, line: 18, baseType: !47, size: 64, offset: 256)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2472, file: !2473, line: 18, baseType: !47, size: 64, offset: 320)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2472, file: !2473, line: 19, baseType: !2482, size: 64, offset: 384)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2472, file: !2473, line: 21, baseType: !225, size: 64, offset: 448)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2472, file: !2473, line: 23, baseType: !225, size: 64, offset: 512)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2472, file: !2473, line: 24, baseType: !225, size: 64, offset: 576)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2472, file: !2473, line: 25, baseType: !225, size: 64, offset: 640)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2472, file: !2473, line: 26, baseType: !225, size: 64, offset: 704)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2472, file: !2473, line: 27, baseType: !225, size: 64, offset: 768)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2472, file: !2473, line: 28, baseType: !225, size: 64, offset: 832)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2472, file: !2473, line: 29, baseType: !225, size: 64, offset: 896)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2472, file: !2473, line: 30, baseType: !225, size: 64, offset: 960)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2472, file: !2473, line: 31, baseType: !225, size: 64, offset: 1024)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2472, file: !2473, line: 32, baseType: !225, size: 64, offset: 1088)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2472, file: !2473, line: 33, baseType: !225, size: 64, offset: 1152)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2457, file: !2456, line: 63, baseType: !143, size: 32, offset: 1024)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2457, file: !2456, line: 69, baseType: !158, size: 16, offset: 1056)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2457, file: !2456, line: 70, baseType: !668, size: 16, offset: 1072)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1615, file: !1061, line: 882, baseType: !47, size: 64, offset: 9024)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1615, file: !1061, line: 885, baseType: !123, size: 32, offset: 9088)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1615, file: !1061, line: 886, baseType: !2502, size: 64, offset: 9152)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1061, line: 732, flags: DIFlagFwdDecl)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1615, file: !1061, line: 901, baseType: !1883, size: 64, offset: 9216)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1615, file: !1061, line: 904, baseType: !1638, size: 64, offset: 9280)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1615, file: !1061, line: 906, baseType: !2507, size: 64, offset: 9344)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1061, line: 906, flags: DIFlagFwdDecl)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1615, file: !1061, line: 930, baseType: !143, size: 32, offset: 9408)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1615, file: !1061, line: 933, baseType: !143, size: 32, offset: 9440)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1615, file: !1061, line: 935, baseType: !2512, size: 64, offset: 9472)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2513, line: 103, size: 64, elements: !2514)
!2513 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!2514 = !{!2515}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2512, file: !2513, line: 104, baseType: !2516, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !2513, line: 101, flags: DIFlagFwdDecl)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1615, file: !1061, line: 940, baseType: !536, size: 64, offset: 9536)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1615, file: !1061, line: 942, baseType: !790, size: 256, offset: 9600)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1612, file: !1061, line: 986, baseType: !2521, offset: 10240)
!2521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, elements: !1699)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1310, file: !978, line: 882, baseType: !1611, size: 64, offset: 9792)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1310, file: !978, line: 884, baseType: !64, size: 32, offset: 9856)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1310, file: !978, line: 885, baseType: !64, size: 32, offset: 9888)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1310, file: !978, line: 886, baseType: !64, size: 32, offset: 9920)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1310, file: !978, line: 888, baseType: !64, size: 32, offset: 9952)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1310, file: !978, line: 890, baseType: !47, size: 64, offset: 9984)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1310, file: !978, line: 893, baseType: !74, size: 32, offset: 10048)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1310, file: !978, line: 896, baseType: !74, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1310, file: !978, line: 897, baseType: !74, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1310, file: !978, line: 898, baseType: !74, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1310, file: !978, line: 899, baseType: !74, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1310, file: !978, line: 919, baseType: !74, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1310, file: !978, line: 922, baseType: !74, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1310, file: !978, line: 923, baseType: !74, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1310, file: !978, line: 925, baseType: !74, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1310, file: !978, line: 939, baseType: !74, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1310, file: !978, line: 941, baseType: !74, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1310, file: !978, line: 944, baseType: !74, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1310, file: !978, line: 956, baseType: !74, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1310, file: !978, line: 962, baseType: !74, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1310, file: !978, line: 966, baseType: !74, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1310, file: !978, line: 969, baseType: !47, size: 64, offset: 10176)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1310, file: !978, line: 971, baseType: !2545, size: 448, offset: 10240)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !2546, line: 25, size: 448, elements: !2547)
!2546 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!2547 = !{!2548, !2549, !2554}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2545, file: !2546, line: 26, baseType: !47, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2545, file: !2546, line: 27, baseType: !2550, size: 64, offset: 64)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!225, !2553}
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, scope: !2545, file: !2546, line: 28, baseType: !2555, size: 320, offset: 128)
!2555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2545, file: !2546, line: 28, size: 320, elements: !2556)
!2556 = !{!2557, !2566, !2596}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2555, file: !2546, line: 37, baseType: !2558, size: 320)
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2555, file: !2546, line: 30, size: 320, elements: !2559)
!2559 = !{!2560, !2561, !2562, !2563, !2564, !2565}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2558, file: !2546, line: 31, baseType: !79, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2558, file: !2546, line: 32, baseType: !80, size: 32, offset: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2558, file: !2546, line: 33, baseType: !80, size: 32, offset: 96)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2558, file: !2546, line: 34, baseType: !80, size: 32, offset: 128)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2558, file: !2546, line: 35, baseType: !36, size: 64, offset: 192)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2558, file: !2546, line: 36, baseType: !79, size: 64, offset: 256)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2555, file: !2546, line: 47, baseType: !2567, size: 192)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2555, file: !2546, line: 39, size: 192, elements: !2568)
!2568 = !{!2569, !2570, !2576, !2595}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2567, file: !2546, line: 40, baseType: !1482, size: 32)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2567, file: !2546, line: 41, baseType: !2571, size: 32, offset: 32)
!2571 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !2546, line: 16, baseType: !74, size: 32, elements: !2572)
!2572 = !{!2573, !2574, !2575}
!2573 = !DIEnumerator(name: "TT_NONE", value: 0)
!2574 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!2575 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!2576 = !DIDerivedType(tag: DW_TAG_member, scope: !2567, file: !2546, line: 42, baseType: !2577, size: 64, offset: 64)
!2577 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2567, file: !2546, line: 42, size: 64, elements: !2578)
!2578 = !{!2579, !2587}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2577, file: !2546, line: 43, baseType: !2580, size: 64)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2582, line: 7, size: 128, elements: !2583)
!2582 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2583 = !{!2584, !2586}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2581, file: !2582, line: 8, baseType: !2585, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !223, line: 93, baseType: !427)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2581, file: !2582, line: 9, baseType: !427, size: 64, offset: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2577, file: !2546, line: 44, baseType: !2588, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2590, line: 7, size: 64, elements: !2591)
!2590 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2591 = !{!2592, !2594}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2589, file: !2590, line: 8, baseType: !2593, size: 32)
!2593 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2590, line: 5, baseType: !528)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2589, file: !2590, line: 9, baseType: !528, size: 32, offset: 32)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2567, file: !2546, line: 46, baseType: !36, size: 64, offset: 128)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2555, file: !2546, line: 55, baseType: !2597, size: 256)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2555, file: !2546, line: 49, size: 256, elements: !2598)
!2598 = !{!2599, !2602, !2603, !2604, !2605}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2597, file: !2546, line: 50, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2546, line: 14, flags: DIFlagFwdDecl)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2597, file: !2546, line: 51, baseType: !64, size: 32, offset: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2597, file: !2546, line: 52, baseType: !64, size: 32, offset: 96)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2597, file: !2546, line: 53, baseType: !47, size: 64, offset: 128)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2597, file: !2546, line: 54, baseType: !47, size: 64, offset: 192)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1310, file: !978, line: 973, baseType: !2607, size: 32, offset: 10688)
!2607 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !12, line: 27, baseType: !2608)
!2608 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !223, line: 28, baseType: !64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1310, file: !978, line: 974, baseType: !2607, size: 32, offset: 10720)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1310, file: !978, line: 978, baseType: !47, size: 64, offset: 10752)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1310, file: !978, line: 987, baseType: !1309, size: 64, offset: 10816)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1310, file: !978, line: 990, baseType: !1309, size: 64, offset: 10880)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1310, file: !978, line: 995, baseType: !11, size: 128, offset: 10944)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1310, file: !978, line: 996, baseType: !11, size: 128, offset: 11072)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1310, file: !978, line: 997, baseType: !1309, size: 64, offset: 11200)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1310, file: !978, line: 1005, baseType: !11, size: 128, offset: 11264)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1310, file: !978, line: 1006, baseType: !11, size: 128, offset: 11392)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1310, file: !978, line: 1009, baseType: !1679, size: 64, offset: 11520)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1310, file: !978, line: 1010, baseType: !2620, size: 512, offset: 11584)
!2620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !776, size: 512, elements: !52)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1310, file: !978, line: 1011, baseType: !11, size: 128, offset: 12096)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1310, file: !978, line: 1012, baseType: !11, size: 128, offset: 12224)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1310, file: !978, line: 1014, baseType: !480, size: 64, offset: 12352)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1310, file: !978, line: 1017, baseType: !661, size: 64, offset: 12416)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1310, file: !978, line: 1020, baseType: !661, size: 64, offset: 12480)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1310, file: !978, line: 1023, baseType: !73, size: 64, offset: 12544)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1310, file: !978, line: 1025, baseType: !36, size: 64, offset: 12608)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1310, file: !978, line: 1026, baseType: !36, size: 64, offset: 12672)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1310, file: !978, line: 1031, baseType: !36, size: 64, offset: 12736)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1310, file: !978, line: 1032, baseType: !2631, size: 192, offset: 12800)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !978, line: 324, size: 192, elements: !2632)
!2632 = !{!2633, !2634, !2635}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2631, file: !978, line: 326, baseType: !36, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2631, file: !978, line: 327, baseType: !36, size: 64, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2631, file: !978, line: 328, baseType: !490, size: 32, offset: 128)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1310, file: !978, line: 1041, baseType: !47, size: 64, offset: 12992)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1310, file: !978, line: 1042, baseType: !47, size: 64, offset: 13056)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1310, file: !978, line: 1045, baseType: !36, size: 64, offset: 13120)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1310, file: !978, line: 1048, baseType: !36, size: 64, offset: 13184)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1310, file: !978, line: 1051, baseType: !47, size: 64, offset: 13248)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1310, file: !978, line: 1052, baseType: !47, size: 64, offset: 13312)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1310, file: !978, line: 1055, baseType: !2643, size: 640, offset: 13376)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2644, line: 132, size: 640, elements: !2645)
!2644 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2645 = !{!2646, !2652, !2653}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2643, file: !2644, line: 133, baseType: !2647, size: 576)
!2647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2648, size: 576, elements: !190)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2644, line: 117, size: 192, elements: !2649)
!2649 = !{!2650, !2651}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2648, file: !2644, line: 118, baseType: !36, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2648, file: !2644, line: 119, baseType: !1491, size: 128, offset: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2643, file: !2644, line: 134, baseType: !74, size: 32, offset: 576)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2643, file: !2644, line: 135, baseType: !74, size: 32, offset: 608)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1310, file: !978, line: 1058, baseType: !2655, size: 448, offset: 14016)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2644, line: 144, size: 448, elements: !2656)
!2656 = !{!2657, !2658, !2659}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2655, file: !2644, line: 145, baseType: !752, size: 128, align: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2655, file: !2644, line: 146, baseType: !532, size: 256, offset: 128)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2655, file: !2644, line: 147, baseType: !74, size: 32, offset: 384)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1310, file: !978, line: 1064, baseType: !1713, size: 64, offset: 14464)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1310, file: !978, line: 1067, baseType: !1713, size: 64, offset: 14528)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1310, file: !978, line: 1070, baseType: !1713, size: 64, offset: 14592)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1310, file: !978, line: 1074, baseType: !1740, size: 64, offset: 14656)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1310, file: !978, line: 1084, baseType: !2665, size: 128, offset: 14720)
!2665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 128, elements: !2666)
!2666 = !{!2667}
!2667 = !DISubrange(count: 16)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1310, file: !978, line: 1086, baseType: !2669, size: 64, offset: 14848)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !978, line: 55, flags: DIFlagFwdDecl)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1310, file: !978, line: 1089, baseType: !2672, size: 64, offset: 14912)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2673, line: 12, size: 64, elements: !2674)
!2673 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2674 = !{!2675}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2672, file: !2673, line: 13, baseType: !2676, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2673, line: 8, flags: DIFlagFwdDecl)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1310, file: !978, line: 1090, baseType: !2679, size: 128, offset: 14976)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2680, line: 13, size: 128, elements: !2681)
!2680 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2681 = !{!2682}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2679, file: !2680, line: 14, baseType: !11, size: 128)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1310, file: !978, line: 1097, baseType: !2684, size: 64, offset: 15104)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !978, line: 50, flags: DIFlagFwdDecl)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1310, file: !978, line: 1100, baseType: !2687, size: 64, offset: 15168)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !978, line: 1100, flags: DIFlagFwdDecl)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1310, file: !978, line: 1103, baseType: !2690, size: 64, offset: 15232)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !978, line: 53, flags: DIFlagFwdDecl)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1310, file: !978, line: 1107, baseType: !2693, size: 64, offset: 15296)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !978, line: 56, flags: DIFlagFwdDecl)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1310, file: !978, line: 1110, baseType: !2696, size: 64, offset: 15360)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2698, line: 93, size: 8768, elements: !2699)
!2698 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2699 = !{!2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2747, !2756, !2757, !2759, !2760, !2761, !2764, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2802, !2803, !2810, !2820, !2823, !2824, !2827, !2828, !2829, !2830, !2831, !2832}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2697, file: !2698, line: 94, baseType: !1323, size: 32)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2697, file: !2698, line: 95, baseType: !143, size: 32, offset: 32)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2697, file: !2698, line: 96, baseType: !64, size: 32, offset: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2697, file: !2698, line: 97, baseType: !64, size: 32, offset: 96)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2697, file: !2698, line: 98, baseType: !11, size: 128, offset: 128)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2697, file: !2698, line: 100, baseType: !1296, size: 192, offset: 256)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2697, file: !2698, line: 103, baseType: !1309, size: 64, offset: 448)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2697, file: !2698, line: 106, baseType: !2708, size: 192, offset: 512)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1888, line: 32, size: 192, elements: !2709)
!2709 = !{!2710, !2711}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2708, file: !1888, line: 33, baseType: !11, size: 128)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2708, file: !1888, line: 34, baseType: !2712, size: 64, offset: 128)
!2712 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2713, line: 25, baseType: !2714)
!2713 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2713, line: 23, size: 64, elements: !2715)
!2715 = !{!2716}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2714, file: !2713, line: 24, baseType: !1562, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2697, file: !2698, line: 109, baseType: !900, size: 64, offset: 704)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2697, file: !2698, line: 112, baseType: !64, size: 32, offset: 768)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2697, file: !2698, line: 114, baseType: !64, size: 32, offset: 800)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2697, file: !2698, line: 115, baseType: !1309, size: 64, offset: 832)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2697, file: !2698, line: 118, baseType: !64, size: 32, offset: 896)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2697, file: !2698, line: 119, baseType: !74, size: 32, offset: 928)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2697, file: !2698, line: 121, baseType: !2724, size: 64, offset: 960)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2698, line: 80, size: 448, elements: !2726)
!2726 = !{!2727, !2728, !2734}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2725, file: !2698, line: 81, baseType: !143, size: 32)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2725, file: !2698, line: 82, baseType: !2729, size: 128, offset: 64)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2698, line: 75, size: 128, elements: !2730)
!2730 = !{!2731, !2732}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2729, file: !2698, line: 76, baseType: !1309, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2729, file: !2698, line: 77, baseType: !2733, size: 64, offset: 64)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2725, file: !2698, line: 83, baseType: !481, size: 256, offset: 192)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2697, file: !2698, line: 132, baseType: !74, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2697, file: !2698, line: 133, baseType: !74, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2697, file: !2698, line: 138, baseType: !74, size: 32, offset: 1056)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2697, file: !2698, line: 139, baseType: !11, size: 128, offset: 1088)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2697, file: !2698, line: 142, baseType: !1430, size: 512, offset: 1216)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2697, file: !2698, line: 143, baseType: !1439, size: 64, offset: 1728)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2697, file: !2698, line: 150, baseType: !2742, size: 256, offset: 1792)
!2742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2743, size: 256, elements: !651)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2698, line: 38, size: 128, elements: !2744)
!2744 = !{!2745, !2746}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2743, file: !2698, line: 39, baseType: !36, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2743, file: !2698, line: 40, baseType: !36, size: 64, offset: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2697, file: !2698, line: 156, baseType: !2748, size: 192, offset: 2048)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2698, line: 66, size: 192, elements: !2749)
!2749 = !{!2750}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2748, file: !2698, line: 67, baseType: !2751, size: 192)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2698, line: 47, size: 192, elements: !2752)
!2752 = !{!2753, !2754, !2755}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2751, file: !2698, line: 48, baseType: !538, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2751, file: !2698, line: 49, baseType: !538, size: 64, offset: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2751, file: !2698, line: 50, baseType: !538, size: 64, offset: 128)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2697, file: !2698, line: 160, baseType: !2643, size: 640, offset: 2240)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2697, file: !2698, line: 163, baseType: !2758, size: 256, offset: 2880)
!2758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1679, size: 256, elements: !52)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2697, file: !2698, line: 169, baseType: !1679, size: 64, offset: 3136)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2697, file: !2698, line: 172, baseType: !64, size: 32, offset: 3200)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2697, file: !2698, line: 174, baseType: !2762, size: 64, offset: 3264)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2698, line: 174, flags: DIFlagFwdDecl)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2697, file: !2698, line: 185, baseType: !2765, size: 64, offset: 3328)
!2765 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !311, line: 860, baseType: !2766)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !311, line: 853, size: 64, elements: !2767)
!2767 = !{!2768, !2769}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2766, file: !311, line: 858, baseType: !310, size: 32)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2766, file: !311, line: 859, baseType: !123, size: 32, offset: 32)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2697, file: !2698, line: 186, baseType: !36, size: 64, offset: 3392)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2697, file: !2698, line: 186, baseType: !36, size: 64, offset: 3456)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2697, file: !2698, line: 186, baseType: !36, size: 64, offset: 3520)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2697, file: !2698, line: 186, baseType: !36, size: 64, offset: 3584)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2697, file: !2698, line: 187, baseType: !36, size: 64, offset: 3648)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2697, file: !2698, line: 188, baseType: !36, size: 64, offset: 3712)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2697, file: !2698, line: 189, baseType: !2631, size: 192, offset: 3776)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2697, file: !2698, line: 190, baseType: !47, size: 64, offset: 3968)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2697, file: !2698, line: 190, baseType: !47, size: 64, offset: 4032)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2697, file: !2698, line: 190, baseType: !47, size: 64, offset: 4096)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2697, file: !2698, line: 190, baseType: !47, size: 64, offset: 4160)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2697, file: !2698, line: 191, baseType: !47, size: 64, offset: 4224)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2697, file: !2698, line: 191, baseType: !47, size: 64, offset: 4288)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2697, file: !2698, line: 191, baseType: !47, size: 64, offset: 4352)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2697, file: !2698, line: 191, baseType: !47, size: 64, offset: 4416)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2697, file: !2698, line: 192, baseType: !47, size: 64, offset: 4480)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2697, file: !2698, line: 192, baseType: !47, size: 64, offset: 4544)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2697, file: !2698, line: 192, baseType: !47, size: 64, offset: 4608)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2697, file: !2698, line: 192, baseType: !47, size: 64, offset: 4672)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2697, file: !2698, line: 193, baseType: !47, size: 64, offset: 4736)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2697, file: !2698, line: 193, baseType: !47, size: 64, offset: 4800)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2697, file: !2698, line: 194, baseType: !2792, size: 448, offset: 4864)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2793, line: 12, size: 448, elements: !2794)
!2793 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2794 = !{!2795, !2796, !2797, !2798, !2799, !2800, !2801}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2792, file: !2793, line: 15, baseType: !36, size: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2792, file: !2793, line: 17, baseType: !36, size: 64, offset: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2792, file: !2793, line: 19, baseType: !36, size: 64, offset: 128)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2792, file: !2793, line: 21, baseType: !36, size: 64, offset: 192)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2792, file: !2793, line: 29, baseType: !36, size: 64, offset: 256)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2792, file: !2793, line: 35, baseType: !36, size: 64, offset: 320)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2792, file: !2793, line: 44, baseType: !36, size: 64, offset: 384)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2697, file: !2698, line: 202, baseType: !40, size: 64, offset: 5312)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2697, file: !2698, line: 213, baseType: !2804, size: 2048, offset: 5376)
!2804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2805, size: 2048, elements: !2666)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2806, line: 43, size: 128, elements: !2807)
!2806 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2807 = !{!2808, !2809}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2805, file: !2806, line: 44, baseType: !238, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2805, file: !2806, line: 45, baseType: !238, size: 64, offset: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2697, file: !2698, line: 216, baseType: !2811, size: 448, offset: 7424)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2698, line: 30, size: 448, elements: !2812)
!2812 = !{!2813, !2814, !2815, !2816, !2817, !2818, !2819}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2811, file: !2698, line: 31, baseType: !64, size: 32)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2811, file: !2698, line: 32, baseType: !225, size: 64, offset: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2811, file: !2698, line: 33, baseType: !47, size: 64, offset: 128)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2811, file: !2698, line: 34, baseType: !36, size: 64, offset: 192)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2811, file: !2698, line: 34, baseType: !36, size: 64, offset: 256)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2811, file: !2698, line: 35, baseType: !47, size: 64, offset: 320)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2811, file: !2698, line: 35, baseType: !47, size: 64, offset: 384)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2697, file: !2698, line: 219, baseType: !2821, size: 64, offset: 7872)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2698, line: 219, flags: DIFlagFwdDecl)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2697, file: !2698, line: 222, baseType: !74, size: 32, offset: 7936)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2697, file: !2698, line: 223, baseType: !2825, size: 64, offset: 8000)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2698, line: 223, flags: DIFlagFwdDecl)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2697, file: !2698, line: 230, baseType: !612, size: 8, offset: 8064)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2697, file: !2698, line: 231, baseType: !670, size: 16, offset: 8080)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2697, file: !2698, line: 232, baseType: !670, size: 16, offset: 8096)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2697, file: !2698, line: 234, baseType: !1611, size: 64, offset: 8128)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2697, file: !2698, line: 237, baseType: !532, size: 256, offset: 8192)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2697, file: !2698, line: 243, baseType: !1203, size: 320, offset: 8448)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1310, file: !978, line: 1111, baseType: !2834, size: 64, offset: 15424)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2698, line: 20, size: 16640, elements: !2836)
!2836 = !{!2837, !2838, !2839, !2840}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2835, file: !2698, line: 21, baseType: !123, size: 32)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2835, file: !2698, line: 22, baseType: !1323, size: 32, offset: 32)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2835, file: !2698, line: 23, baseType: !1296, size: 192, offset: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2835, file: !2698, line: 24, baseType: !2841, size: 16384, offset: 256)
!2841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2842, size: 16384, elements: !194)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1888, line: 51, size: 256, elements: !2843)
!2843 = !{!2844}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2842, file: !1888, line: 52, baseType: !2845, size: 256)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1888, line: 37, size: 256, elements: !2846)
!2846 = !{!2847, !2854, !2855, !2859}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2845, file: !1888, line: 39, baseType: !2848, size: 64)
!2848 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2849, line: 83, baseType: !2850)
!2849 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2849, line: 82, baseType: !2852)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{null, !64}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2845, file: !1888, line: 40, baseType: !47, size: 64, offset: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2845, file: !1888, line: 46, baseType: !2856, size: 64, offset: 128)
!2856 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2849, line: 86, baseType: !2857)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2849, line: 85, baseType: !895)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2845, file: !1888, line: 48, baseType: !2712, size: 64, offset: 192)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1310, file: !978, line: 1112, baseType: !2712, size: 64, offset: 15488)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1310, file: !978, line: 1113, baseType: !2712, size: 64, offset: 15552)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1310, file: !978, line: 1115, baseType: !2712, size: 64, offset: 15616)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1310, file: !978, line: 1116, baseType: !2708, size: 192, offset: 15680)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1310, file: !978, line: 1117, baseType: !47, size: 64, offset: 15872)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1310, file: !978, line: 1118, baseType: !236, size: 64, offset: 15936)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1310, file: !978, line: 1119, baseType: !74, size: 32, offset: 16000)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1310, file: !978, line: 1121, baseType: !751, size: 64, offset: 16064)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1310, file: !978, line: 1125, baseType: !2869, size: 64, offset: 16128)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !978, line: 43, flags: DIFlagFwdDecl)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1310, file: !978, line: 1127, baseType: !275, size: 32, offset: 16192)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1310, file: !978, line: 1128, baseType: !74, size: 32, offset: 16224)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1310, file: !978, line: 1130, baseType: !2874, size: 128, offset: 16256)
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2875, line: 37, size: 128, elements: !2876)
!2875 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2876 = !{!2877, !2878, !2879}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2874, file: !2875, line: 38, baseType: !64, size: 32)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2874, file: !2875, line: 39, baseType: !143, size: 32, offset: 32)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2874, file: !2875, line: 40, baseType: !2880, size: 64, offset: 64)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2875, line: 24, flags: DIFlagFwdDecl)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1310, file: !978, line: 1131, baseType: !2883, size: 256, offset: 16384)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2884, line: 12, size: 256, elements: !2885)
!2884 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2885 = !{!2886, !2887, !2888, !2889}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2883, file: !2884, line: 13, baseType: !189, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2883, file: !2884, line: 14, baseType: !47, size: 64, offset: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2883, file: !2884, line: 15, baseType: !47, size: 64, offset: 128)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2883, file: !2884, line: 16, baseType: !612, size: 8, offset: 192)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1310, file: !978, line: 1134, baseType: !36, size: 64, offset: 16640)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1310, file: !978, line: 1135, baseType: !36, size: 64, offset: 16704)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1310, file: !978, line: 1138, baseType: !123, size: 32, offset: 16768)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1310, file: !978, line: 1141, baseType: !490, size: 32, offset: 16800)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1310, file: !978, line: 1143, baseType: !2895, size: 64, offset: 16832)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !978, line: 735, size: 64, elements: !2896)
!2896 = !{!2897}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2895, file: !978, line: 736, baseType: !2898, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1310, file: !978, line: 1147, baseType: !1494, size: 128, offset: 16896)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1310, file: !978, line: 1149, baseType: !1309, size: 64, offset: 17024)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1310, file: !978, line: 1151, baseType: !2902, size: 64, offset: 17088)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !978, line: 1151, flags: DIFlagFwdDecl)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1310, file: !978, line: 1188, baseType: !73, size: 64, offset: 17152)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1310, file: !978, line: 1191, baseType: !2906, size: 64, offset: 17216)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !978, line: 44, flags: DIFlagFwdDecl)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1310, file: !978, line: 1194, baseType: !2909, size: 64, offset: 17280)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !978, line: 45, flags: DIFlagFwdDecl)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1310, file: !978, line: 1197, baseType: !2912, size: 64, offset: 17344)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !978, line: 61, flags: DIFlagFwdDecl)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1310, file: !978, line: 1199, baseType: !2915, size: 64, offset: 17408)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2917, line: 99, size: 128, elements: !2918)
!2917 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2918 = !{!2919, !2920, !2921}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2916, file: !2917, line: 100, baseType: !536, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2916, file: !2917, line: 101, baseType: !143, size: 32, offset: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2916, file: !2917, line: 103, baseType: !101, size: 16, offset: 96)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1310, file: !978, line: 1202, baseType: !2923, size: 64, offset: 17472)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !978, line: 48, flags: DIFlagFwdDecl)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1310, file: !978, line: 1205, baseType: !47, size: 64, offset: 17536)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1310, file: !978, line: 1206, baseType: !2927, size: 64, offset: 17600)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1888, line: 14, baseType: !2929)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1888, line: 12, size: 384, elements: !2930)
!2930 = !{!2931}
!2931 = !DIDerivedType(tag: DW_TAG_member, scope: !2929, file: !1888, line: 13, baseType: !2932, size: 384)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2929, file: !1888, line: 13, size: 384, elements: !2933)
!2933 = !{!2934, !2935, !2936, !2937}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2932, file: !1888, line: 13, baseType: !64, size: 32)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2932, file: !1888, line: 13, baseType: !64, size: 32, offset: 32)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2932, file: !1888, line: 13, baseType: !64, size: 32, offset: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2932, file: !1888, line: 13, baseType: !2938, size: 256, offset: 128)
!2938 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2939, line: 37, size: 256, elements: !2940)
!2939 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2940 = !{!2941, !2946, !2959, !2965, !2974, !3001, !3006}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2938, file: !2939, line: 42, baseType: !2942, size: 64)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2938, file: !2939, line: 39, size: 64, elements: !2943)
!2943 = !{!2944, !2945}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2942, file: !2939, line: 40, baseType: !2608, size: 32)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2942, file: !2939, line: 41, baseType: !281, size: 32, offset: 32)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2938, file: !2939, line: 50, baseType: !2947, size: 192)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2938, file: !2939, line: 45, size: 192, elements: !2948)
!2948 = !{!2949, !2951, !2952, !2958}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2947, file: !2939, line: 46, baseType: !2950, size: 32)
!2950 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !223, line: 95, baseType: !64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2947, file: !2939, line: 47, baseType: !64, size: 32, offset: 32)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2947, file: !2939, line: 48, baseType: !2953, size: 64, offset: 64)
!2953 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2939, line: 11, baseType: !2954)
!2954 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2939, line: 8, size: 64, elements: !2955)
!2955 = !{!2956, !2957}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2954, file: !2939, line: 9, baseType: !64, size: 32)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2954, file: !2939, line: 10, baseType: !73, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2947, file: !2939, line: 49, baseType: !64, size: 32, offset: 128)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2938, file: !2939, line: 57, baseType: !2960, size: 128)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2938, file: !2939, line: 53, size: 128, elements: !2961)
!2961 = !{!2962, !2963, !2964}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2960, file: !2939, line: 54, baseType: !2608, size: 32)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2960, file: !2939, line: 55, baseType: !281, size: 32, offset: 32)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2960, file: !2939, line: 56, baseType: !2953, size: 64, offset: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2938, file: !2939, line: 66, baseType: !2966, size: 256)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2938, file: !2939, line: 60, size: 256, elements: !2967)
!2967 = !{!2968, !2969, !2970, !2971, !2973}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2966, file: !2939, line: 61, baseType: !2608, size: 32)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2966, file: !2939, line: 62, baseType: !281, size: 32, offset: 32)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2966, file: !2939, line: 63, baseType: !64, size: 32, offset: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2966, file: !2939, line: 64, baseType: !2972, size: 64, offset: 128)
!2972 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !223, line: 94, baseType: !224)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2966, file: !2939, line: 65, baseType: !2972, size: 64, offset: 192)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2938, file: !2939, line: 105, baseType: !2975, size: 256)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2938, file: !2939, line: 69, size: 256, elements: !2976)
!2976 = !{!2977, !2978}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2975, file: !2939, line: 70, baseType: !73, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_member, scope: !2975, file: !2939, line: 79, baseType: !2979, size: 192, offset: 64)
!2979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2975, file: !2939, line: 79, size: 192, elements: !2980)
!2980 = !{!2981, !2982, !2983, !2990, !2995}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2979, file: !2939, line: 81, baseType: !64, size: 32)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2979, file: !2939, line: 86, baseType: !670, size: 16)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2979, file: !2939, line: 92, baseType: !2984, size: 192)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2979, file: !2939, line: 88, size: 192, elements: !2985)
!2985 = !{!2986, !2988, !2989}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2984, file: !2939, line: 89, baseType: !2987, size: 64)
!2987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 64, elements: !1478)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2984, file: !2939, line: 90, baseType: !73, size: 64, offset: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2984, file: !2939, line: 91, baseType: !73, size: 64, offset: 128)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2979, file: !2939, line: 97, baseType: !2991, size: 96)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2979, file: !2939, line: 94, size: 96, elements: !2992)
!2992 = !{!2993, !2994}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2991, file: !2939, line: 95, baseType: !2987, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2991, file: !2939, line: 96, baseType: !81, size: 32, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2979, file: !2939, line: 103, baseType: !2996, size: 128)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2979, file: !2939, line: 99, size: 128, elements: !2997)
!2997 = !{!2998, !2999, !3000}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2996, file: !2939, line: 100, baseType: !47, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2996, file: !2939, line: 101, baseType: !81, size: 32, offset: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2996, file: !2939, line: 102, baseType: !81, size: 32, offset: 96)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2938, file: !2939, line: 111, baseType: !3002, size: 128)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2938, file: !2939, line: 108, size: 128, elements: !3003)
!3003 = !{!3004, !3005}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3002, file: !2939, line: 109, baseType: !225, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3002, file: !2939, line: 110, baseType: !64, size: 32, offset: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2938, file: !2939, line: 118, baseType: !3007, size: 128)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2938, file: !2939, line: 114, size: 128, elements: !3008)
!3008 = !{!3009, !3010, !3011}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3007, file: !2939, line: 115, baseType: !73, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3007, file: !2939, line: 116, baseType: !64, size: 32, offset: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3007, file: !2939, line: 117, baseType: !74, size: 32, offset: 96)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1310, file: !978, line: 1208, baseType: !2792, size: 448, offset: 17664)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1310, file: !978, line: 1215, baseType: !36, size: 64, offset: 18112)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1310, file: !978, line: 1217, baseType: !36, size: 64, offset: 18176)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1310, file: !978, line: 1219, baseType: !36, size: 64, offset: 18240)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1310, file: !978, line: 1223, baseType: !3017, size: 64, offset: 18304)
!3017 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3018, line: 99, baseType: !3019)
!3018 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3018, line: 99, size: 64, elements: !3020)
!3020 = !{!3021}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3019, file: !3018, line: 99, baseType: !1562, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1310, file: !978, line: 1225, baseType: !310, size: 32, offset: 18368)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1310, file: !978, line: 1226, baseType: !64, size: 32, offset: 18400)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1310, file: !978, line: 1227, baseType: !64, size: 32, offset: 18432)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1310, file: !978, line: 1231, baseType: !3026, size: 64, offset: 18496)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !978, line: 1231, flags: DIFlagFwdDecl)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1310, file: !978, line: 1233, baseType: !11, size: 128, offset: 18560)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1310, file: !978, line: 1240, baseType: !3030, size: 64, offset: 18688)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !978, line: 62, flags: DIFlagFwdDecl)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1310, file: !978, line: 1242, baseType: !3033, size: 64, offset: 18752)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !978, line: 1242, flags: DIFlagFwdDecl)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1310, file: !978, line: 1244, baseType: !11, size: 128, offset: 18816)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1310, file: !978, line: 1245, baseType: !3037, size: 64, offset: 18944)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !978, line: 51, flags: DIFlagFwdDecl)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1310, file: !978, line: 1246, baseType: !532, size: 256, offset: 19008)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1310, file: !978, line: 1247, baseType: !74, size: 32, offset: 19264)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1310, file: !978, line: 1250, baseType: !3042, size: 64, offset: 19328)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !978, line: 57, flags: DIFlagFwdDecl)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1310, file: !978, line: 1251, baseType: !532, size: 256, offset: 19392)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1310, file: !978, line: 1252, baseType: !11, size: 128, offset: 19648)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1310, file: !978, line: 1259, baseType: !2291, size: 64, offset: 19776)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1310, file: !978, line: 1260, baseType: !670, size: 16, offset: 19840)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1310, file: !978, line: 1261, baseType: !670, size: 16, offset: 19856)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1310, file: !978, line: 1314, baseType: !3050, size: 64, offset: 19904)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3052, line: 62, size: 256, align: 256, elements: !3053)
!3052 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3053 = !{!3054, !3055, !3056, !3057, !3058, !3059, !3060}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3051, file: !3052, line: 75, baseType: !81, size: 32)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3051, file: !3052, line: 90, baseType: !81, size: 32, offset: 32)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3051, file: !3052, line: 112, baseType: !38, size: 64, offset: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3051, file: !3052, line: 132, baseType: !81, size: 32, offset: 128)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3051, file: !3052, line: 140, baseType: !81, size: 32, offset: 160)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3051, file: !3052, line: 149, baseType: !81, size: 32, offset: 192)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3051, file: !3052, line: 154, baseType: !3061, offset: 224)
!3061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, elements: !1699)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1310, file: !978, line: 1315, baseType: !80, size: 32, offset: 19968)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1310, file: !978, line: 1316, baseType: !80, size: 32, offset: 20000)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1310, file: !978, line: 1321, baseType: !47, size: 64, offset: 20032)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1310, file: !978, line: 1325, baseType: !64, size: 32, offset: 20096)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1310, file: !978, line: 1326, baseType: !64, size: 32, offset: 20128)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1310, file: !978, line: 1327, baseType: !64, size: 32, offset: 20160)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1310, file: !978, line: 1328, baseType: !64, size: 32, offset: 20192)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1310, file: !978, line: 1329, baseType: !752, size: 128, align: 64, offset: 20224)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1310, file: !978, line: 1332, baseType: !3071, size: 128, offset: 20352)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3072, line: 51, size: 128, elements: !3073)
!3072 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3073 = !{!3074, !3079, !3080}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3071, file: !3072, line: 60, baseType: !3075, size: 64)
!3075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3076, line: 7, size: 64, elements: !3077)
!3076 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3077 = !{!3078}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3075, file: !3076, line: 12, baseType: !1559, size: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3071, file: !3072, line: 63, baseType: !612, size: 8, offset: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3071, file: !3072, line: 70, baseType: !612, size: 8, offset: 72)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1310, file: !978, line: 1335, baseType: !2343, size: 64, offset: 20480)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1310, file: !978, line: 1337, baseType: !3083, size: 128, offset: 20544)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3072, line: 39, size: 128, elements: !3084)
!3084 = !{!3085, !3086, !3087}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3083, file: !3072, line: 40, baseType: !2122, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3083, file: !3072, line: 42, baseType: !81, size: 32, offset: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3083, file: !3072, line: 43, baseType: !81, size: 32, offset: 96)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1310, file: !978, line: 1340, baseType: !3089, size: 64, offset: 20672)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !978, line: 69, flags: DIFlagFwdDecl)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1310, file: !978, line: 1351, baseType: !64, size: 32, offset: 20736)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1310, file: !978, line: 1352, baseType: !64, size: 32, offset: 20768)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1310, file: !978, line: 1354, baseType: !47, size: 64, offset: 20800)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1310, file: !978, line: 1364, baseType: !36, size: 64, offset: 20864)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1310, file: !978, line: 1365, baseType: !36, size: 64, offset: 20928)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1310, file: !978, line: 1412, baseType: !47, size: 64, offset: 20992)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1310, file: !978, line: 1453, baseType: !3098, size: 64, offset: 21056)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !978, line: 1453, flags: DIFlagFwdDecl)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1310, file: !978, line: 1457, baseType: !3101, size: 64, offset: 21120)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !2513, line: 61, size: 576, elements: !3103)
!3103 = !{!3104, !3111, !3130, !3133, !3134, !3167, !3177}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3102, file: !2513, line: 62, baseType: !3105, size: 32)
!3105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !2513, line: 51, baseType: !74, size: 32, elements: !3106)
!3106 = !{!3107, !3108, !3109, !3110}
!3107 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!3108 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!3109 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!3110 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!3111 = !DIDerivedType(tag: DW_TAG_member, scope: !3102, file: !2513, line: 64, baseType: !3112, size: 192, offset: 64)
!3112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3102, file: !2513, line: 64, size: 192, elements: !3113)
!3113 = !{!3114, !3125}
!3114 = !DIDerivedType(tag: DW_TAG_member, scope: !3112, file: !2513, line: 65, baseType: !3115, size: 192)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3112, file: !2513, line: 65, size: 192, elements: !3116)
!3116 = !{!3117, !3124}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3115, file: !2513, line: 66, baseType: !3118, size: 128)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3119, line: 50, size: 128, elements: !3120)
!3119 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3120 = !{!3121, !3122, !3123}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3118, file: !3119, line: 52, baseType: !47, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3118, file: !3119, line: 54, baseType: !74, size: 32, offset: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3118, file: !3119, line: 55, baseType: !74, size: 32, offset: 96)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3115, file: !2513, line: 67, baseType: !47, size: 64, offset: 128)
!3125 = !DIDerivedType(tag: DW_TAG_member, scope: !3112, file: !2513, line: 70, baseType: !3126, size: 192)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3112, file: !2513, line: 70, size: 192, elements: !3127)
!3127 = !{!3128, !3129}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3126, file: !2513, line: 71, baseType: !752, size: 128, align: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3126, file: !2513, line: 72, baseType: !47, size: 64, offset: 128)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3102, file: !2513, line: 76, baseType: !3131, size: 64, offset: 256)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !2513, line: 76, flags: DIFlagFwdDecl)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3102, file: !2513, line: 77, baseType: !47, size: 64, offset: 320)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3102, file: !2513, line: 79, baseType: !3135, size: 64, offset: 384)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3119, line: 25, size: 256, elements: !3137)
!3137 = !{!3138, !3144, !3148}
!3138 = !DIDerivedType(tag: DW_TAG_member, scope: !3136, file: !3119, line: 26, baseType: !3139, size: 128)
!3139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3136, file: !3119, line: 26, size: 128, elements: !3140)
!3140 = !{!3141, !3143}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3139, file: !3119, line: 27, baseType: !3142, size: 128)
!3142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 128, elements: !2666)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3139, file: !3119, line: 28, baseType: !3142, size: 128)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3136, file: !3119, line: 31, baseType: !3145, size: 64, offset: 128)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3147)
!3147 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3119, line: 23, flags: DIFlagFwdDecl)
!3148 = !DIDerivedType(tag: DW_TAG_member, scope: !3136, file: !3119, line: 33, baseType: !3149, size: 64, offset: 192)
!3149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3136, file: !3119, line: 33, size: 64, elements: !3150)
!3150 = !{!3151, !3157, !3162}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3149, file: !3119, line: 38, baseType: !3152, size: 64)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3149, file: !3119, line: 34, size: 64, elements: !3153)
!3153 = !{!3154, !3155, !3156}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3152, file: !3119, line: 35, baseType: !528, size: 32)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3152, file: !3119, line: 36, baseType: !151, size: 8, offset: 32)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3152, file: !3119, line: 37, baseType: !151, size: 8, offset: 40)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3149, file: !3119, line: 42, baseType: !3158, size: 16)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3149, file: !3119, line: 39, size: 16, elements: !3159)
!3159 = !{!3160, !3161}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3158, file: !3119, line: 40, baseType: !151, size: 8)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3158, file: !3119, line: 41, baseType: !151, size: 8, offset: 8)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3149, file: !3119, line: 46, baseType: !3163, size: 16)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3149, file: !3119, line: 43, size: 16, elements: !3164)
!3164 = !{!3165, !3166}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3163, file: !3119, line: 44, baseType: !151, size: 8)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3163, file: !3119, line: 45, baseType: !151, size: 8, offset: 8)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3102, file: !2513, line: 81, baseType: !3168, size: 64, offset: 448)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !2513, line: 85, size: 384, elements: !3170)
!3170 = !{!3171, !3172, !3173, !3174, !3175, !3176}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3169, file: !2513, line: 86, baseType: !3131, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3169, file: !2513, line: 87, baseType: !47, size: 64, offset: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3169, file: !2513, line: 88, baseType: !47, size: 64, offset: 128)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3169, file: !2513, line: 89, baseType: !47, size: 64, offset: 192)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3169, file: !2513, line: 90, baseType: !612, size: 8, offset: 256)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3169, file: !2513, line: 92, baseType: !3168, size: 64, offset: 320)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3102, file: !2513, line: 82, baseType: !74, size: 32, offset: 512)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1310, file: !978, line: 1463, baseType: !3179, offset: 21184)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !978, line: 739, elements: !819)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1310, file: !978, line: 1470, baseType: !752, size: 128, align: 64, offset: 21184)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1310, file: !978, line: 1471, baseType: !1323, size: 32, offset: 21312)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1310, file: !978, line: 1472, baseType: !64, size: 32, offset: 21344)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1310, file: !978, line: 1474, baseType: !1309, size: 64, offset: 21376)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1310, file: !978, line: 1475, baseType: !772, size: 320, offset: 21440)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1310, file: !978, line: 1478, baseType: !3186, size: 64, offset: 21760)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1960, line: 49, size: 512, elements: !3188)
!3188 = !{!3189, !3190, !3191, !3192, !3193, !3195, !3196, !3197, !3198}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3187, file: !1960, line: 50, baseType: !3186, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3187, file: !1960, line: 51, baseType: !73, size: 64, offset: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3187, file: !1960, line: 52, baseType: !47, size: 64, offset: 128)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3187, file: !1960, line: 53, baseType: !47, size: 64, offset: 192)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3187, file: !1960, line: 54, baseType: !3194, size: 64, offset: 256)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3187, file: !1960, line: 56, baseType: !74, size: 32, offset: 320)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3187, file: !1960, line: 58, baseType: !74, size: 32, offset: 352)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3187, file: !1960, line: 59, baseType: !35, size: 64, offset: 384)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3187, file: !1960, line: 60, baseType: !2482, size: 64, offset: 448)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1310, file: !978, line: 1482, baseType: !1323, size: 32, offset: 21824)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1310, file: !978, line: 1489, baseType: !73, size: 64, offset: 21888)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1310, file: !978, line: 1504, baseType: !73, size: 64, offset: 21952)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1310, file: !978, line: 1505, baseType: !38, size: 64, offset: 22016)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1310, file: !978, line: 1506, baseType: !36, size: 64, offset: 22080)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1310, file: !978, line: 1507, baseType: !38, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1310, file: !978, line: 1508, baseType: !38, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1310, file: !978, line: 1509, baseType: !38, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1310, file: !978, line: 1510, baseType: !752, size: 128, align: 64, offset: 22208)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1310, file: !978, line: 1511, baseType: !64, size: 32, offset: 22336)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1310, file: !978, line: 1515, baseType: !3210, size: 64, offset: 22400)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1337, line: 56, size: 64, elements: !3211)
!3211 = !{!3212}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3210, file: !1337, line: 57, baseType: !1340, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1310, file: !978, line: 1518, baseType: !3210, size: 64, offset: 22464)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1310, file: !978, line: 1528, baseType: !752, size: 128, align: 64, offset: 22528)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1310, file: !978, line: 1552, baseType: !3216, size: 35328, offset: 23040)
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3217, line: 430, size: 35328, elements: !3218)
!3217 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3218 = !{!3219, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3248, !3249, !3250, !3251, !3252, !3253, !3256, !3257, !3258, !3259}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3216, file: !3217, line: 432, baseType: !3220, size: 192)
!3220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3221, size: 192, elements: !190)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3222, line: 16, size: 64, elements: !3223)
!3222 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3223 = !{!3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3221, file: !3222, line: 17, baseType: !158, size: 16)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3221, file: !3222, line: 18, baseType: !158, size: 16, offset: 16)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3221, file: !3222, line: 19, baseType: !158, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3221, file: !3222, line: 19, baseType: !158, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3221, file: !3222, line: 19, baseType: !158, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3221, file: !3222, line: 19, baseType: !158, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3221, file: !3222, line: 19, baseType: !158, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3221, file: !3222, line: 20, baseType: !158, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3221, file: !3222, line: 20, baseType: !158, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3221, file: !3222, line: 20, baseType: !158, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3221, file: !3222, line: 20, baseType: !158, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3221, file: !3222, line: 20, baseType: !158, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3221, file: !3222, line: 20, baseType: !158, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3216, file: !3217, line: 436, baseType: !47, size: 64, offset: 192)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3216, file: !3217, line: 440, baseType: !101, size: 16, offset: 256)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3216, file: !3217, line: 441, baseType: !101, size: 16, offset: 272)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3216, file: !3217, line: 442, baseType: !101, size: 16, offset: 288)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3216, file: !3217, line: 443, baseType: !101, size: 16, offset: 304)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3216, file: !3217, line: 447, baseType: !47, size: 64, offset: 320)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3216, file: !3217, line: 448, baseType: !47, size: 64, offset: 384)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3216, file: !3217, line: 459, baseType: !3245, size: 256, offset: 448)
!3245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3246, size: 256, elements: !52)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3217, line: 428, flags: DIFlagFwdDecl)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3216, file: !3217, line: 461, baseType: !47, size: 64, offset: 704)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3216, file: !3217, line: 463, baseType: !47, size: 64, offset: 768)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3216, file: !3217, line: 465, baseType: !47, size: 64, offset: 832)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3216, file: !3217, line: 466, baseType: !47, size: 64, offset: 896)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3216, file: !3217, line: 467, baseType: !47, size: 64, offset: 960)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3216, file: !3217, line: 473, baseType: !3254, size: 64, offset: 1024)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3217, line: 10, flags: DIFlagFwdDecl)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3216, file: !3217, line: 480, baseType: !47, size: 64, offset: 1088)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3216, file: !3217, line: 482, baseType: !74, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3216, file: !3217, line: 491, baseType: !80, size: 32, offset: 1184)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3216, file: !3217, line: 501, baseType: !3260, size: 33792, offset: 1536)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3261, line: 448, size: 33792, elements: !3262)
!3261 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3262 = !{!3263, !3264, !3265, !3427, !3428, !3434, !3435}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3260, file: !3261, line: 461, baseType: !74, size: 32)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3260, file: !3261, line: 468, baseType: !47, size: 64, offset: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3260, file: !3261, line: 476, baseType: !3266, size: 64, offset: 128)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3261, line: 356, size: 33280, align: 512, elements: !3268)
!3268 = !{!3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3267, file: !3261, line: 358, baseType: !74, size: 32)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3267, file: !3261, line: 361, baseType: !74, size: 32, offset: 32)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3267, file: !3261, line: 364, baseType: !36, size: 64, offset: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3267, file: !3261, line: 367, baseType: !36, size: 64, offset: 128)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3267, file: !3261, line: 370, baseType: !36, size: 64, offset: 192)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3267, file: !3261, line: 373, baseType: !74, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3267, file: !3261, line: 376, baseType: !74, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3267, file: !3261, line: 391, baseType: !74, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3267, file: !3261, line: 394, baseType: !74, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3267, file: !3261, line: 397, baseType: !3279, size: 32768, offset: 512)
!3279 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3261, line: 348, size: 32768, elements: !3280)
!3280 = !{!3281, !3296, !3333, !3410, !3423}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3279, file: !3261, line: 349, baseType: !3282, size: 896)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3261, line: 12, size: 896, elements: !3283)
!3283 = !{!3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3295}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3282, file: !3261, line: 13, baseType: !80, size: 32)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3282, file: !3261, line: 14, baseType: !80, size: 32, offset: 32)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3282, file: !3261, line: 15, baseType: !80, size: 32, offset: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3282, file: !3261, line: 16, baseType: !80, size: 32, offset: 96)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3282, file: !3261, line: 17, baseType: !80, size: 32, offset: 128)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3282, file: !3261, line: 18, baseType: !80, size: 32, offset: 160)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3282, file: !3261, line: 19, baseType: !80, size: 32, offset: 192)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3282, file: !3261, line: 22, baseType: !3292, size: 640, offset: 224)
!3292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 640, elements: !3293)
!3293 = !{!3294}
!3294 = !DISubrange(count: 20)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3282, file: !3261, line: 25, baseType: !80, size: 32, offset: 864)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3279, file: !3261, line: 350, baseType: !3297, size: 4096, align: 128)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3261, line: 34, size: 4096, align: 128, elements: !3298)
!3298 = !{!3299, !3300, !3301, !3302, !3303, !3318, !3319, !3320, !3322, !3324, !3328}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3297, file: !3261, line: 35, baseType: !158, size: 16)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3297, file: !3261, line: 36, baseType: !158, size: 16, offset: 16)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3297, file: !3261, line: 37, baseType: !158, size: 16, offset: 32)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3297, file: !3261, line: 38, baseType: !158, size: 16, offset: 48)
!3303 = !DIDerivedType(tag: DW_TAG_member, scope: !3297, file: !3261, line: 39, baseType: !3304, size: 128, offset: 64)
!3304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3297, file: !3261, line: 39, size: 128, elements: !3305)
!3305 = !{!3306, !3311}
!3306 = !DIDerivedType(tag: DW_TAG_member, scope: !3304, file: !3261, line: 40, baseType: !3307, size: 128)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3304, file: !3261, line: 40, size: 128, elements: !3308)
!3308 = !{!3309, !3310}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3307, file: !3261, line: 41, baseType: !36, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3307, file: !3261, line: 42, baseType: !36, size: 64, offset: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, scope: !3304, file: !3261, line: 44, baseType: !3312, size: 128)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3304, file: !3261, line: 44, size: 128, elements: !3313)
!3313 = !{!3314, !3315, !3316, !3317}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3312, file: !3261, line: 45, baseType: !80, size: 32)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3312, file: !3261, line: 46, baseType: !80, size: 32, offset: 32)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3312, file: !3261, line: 47, baseType: !80, size: 32, offset: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3312, file: !3261, line: 48, baseType: !80, size: 32, offset: 96)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3297, file: !3261, line: 51, baseType: !80, size: 32, offset: 192)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3297, file: !3261, line: 52, baseType: !80, size: 32, offset: 224)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3297, file: !3261, line: 55, baseType: !3321, size: 1024, offset: 256)
!3321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 1024, elements: !346)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3297, file: !3261, line: 58, baseType: !3323, size: 2048, offset: 1280)
!3323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 2048, elements: !194)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3297, file: !3261, line: 60, baseType: !3325, size: 384, offset: 3328)
!3325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 384, elements: !3326)
!3326 = !{!3327}
!3327 = !DISubrange(count: 12)
!3328 = !DIDerivedType(tag: DW_TAG_member, scope: !3297, file: !3261, line: 62, baseType: !3329, size: 384, offset: 3712)
!3329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3297, file: !3261, line: 62, size: 384, elements: !3330)
!3330 = !{!3331, !3332}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3329, file: !3261, line: 63, baseType: !3325, size: 384)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3329, file: !3261, line: 64, baseType: !3325, size: 384)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3279, file: !3261, line: 351, baseType: !3334, size: 1088)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3261, line: 79, size: 1088, elements: !3335)
!3335 = !{!3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3409}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3334, file: !3261, line: 80, baseType: !80, size: 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3334, file: !3261, line: 81, baseType: !80, size: 32, offset: 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3334, file: !3261, line: 82, baseType: !80, size: 32, offset: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3334, file: !3261, line: 83, baseType: !80, size: 32, offset: 96)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3334, file: !3261, line: 84, baseType: !80, size: 32, offset: 128)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3334, file: !3261, line: 85, baseType: !80, size: 32, offset: 160)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3334, file: !3261, line: 86, baseType: !80, size: 32, offset: 192)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3334, file: !3261, line: 88, baseType: !3292, size: 640, offset: 224)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3334, file: !3261, line: 89, baseType: !151, size: 8, offset: 864)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3334, file: !3261, line: 90, baseType: !151, size: 8, offset: 872)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3334, file: !3261, line: 91, baseType: !151, size: 8, offset: 880)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3334, file: !3261, line: 92, baseType: !151, size: 8, offset: 888)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3334, file: !3261, line: 93, baseType: !151, size: 8, offset: 896)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3334, file: !3261, line: 94, baseType: !151, size: 8, offset: 904)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3334, file: !3261, line: 95, baseType: !3351, size: 64, offset: 960)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3353, line: 11, size: 128, elements: !3354)
!3353 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3354 = !{!3355, !3356}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3352, file: !3353, line: 12, baseType: !225, size: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3352, file: !3353, line: 13, baseType: !3357, size: 64, offset: 64)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3359, line: 103, size: 1344, elements: !3360)
!3359 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3360 = !{!3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3389, !3390, !3391}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3358, file: !3359, line: 109, baseType: !47, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3358, file: !3359, line: 110, baseType: !47, size: 64, offset: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3358, file: !3359, line: 111, baseType: !47, size: 64, offset: 128)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3358, file: !3359, line: 112, baseType: !47, size: 64, offset: 192)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3358, file: !3359, line: 113, baseType: !47, size: 64, offset: 256)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3358, file: !3359, line: 114, baseType: !47, size: 64, offset: 320)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3358, file: !3359, line: 117, baseType: !47, size: 64, offset: 384)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3358, file: !3359, line: 118, baseType: !47, size: 64, offset: 448)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3358, file: !3359, line: 119, baseType: !47, size: 64, offset: 512)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3358, file: !3359, line: 120, baseType: !47, size: 64, offset: 576)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3358, file: !3359, line: 121, baseType: !47, size: 64, offset: 640)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3358, file: !3359, line: 122, baseType: !47, size: 64, offset: 704)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3358, file: !3359, line: 123, baseType: !47, size: 64, offset: 768)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3358, file: !3359, line: 124, baseType: !47, size: 64, offset: 832)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3358, file: !3359, line: 125, baseType: !47, size: 64, offset: 896)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3358, file: !3359, line: 139, baseType: !47, size: 64, offset: 960)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3358, file: !3359, line: 142, baseType: !47, size: 64, offset: 1024)
!3378 = !DIDerivedType(tag: DW_TAG_member, scope: !3358, file: !3359, line: 144, baseType: !3379, size: 64, offset: 1088)
!3379 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3358, file: !3359, line: 144, size: 64, elements: !3380)
!3380 = !{!3381, !3382, !3383}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3379, file: !3359, line: 146, baseType: !158, size: 16)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3379, file: !3359, line: 148, baseType: !36, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3379, file: !3359, line: 150, baseType: !3384, size: 64)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3359, line: 59, size: 64, elements: !3385)
!3385 = !{!3386, !3387, !3388}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3384, file: !3359, line: 61, baseType: !36, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3384, file: !3359, line: 63, baseType: !36, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3384, file: !3359, line: 65, baseType: !36, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3358, file: !3359, line: 153, baseType: !47, size: 64, offset: 1152)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3358, file: !3359, line: 154, baseType: !47, size: 64, offset: 1216)
!3391 = !DIDerivedType(tag: DW_TAG_member, scope: !3358, file: !3359, line: 156, baseType: !3392, size: 64, offset: 1280)
!3392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3358, file: !3359, line: 156, size: 64, elements: !3393)
!3393 = !{!3394, !3395, !3396}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3392, file: !3359, line: 158, baseType: !158, size: 16)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3392, file: !3359, line: 160, baseType: !36, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3392, file: !3359, line: 162, baseType: !3397, size: 64)
!3397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3359, line: 69, size: 64, elements: !3398)
!3398 = !{!3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3397, file: !3359, line: 71, baseType: !36, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3397, file: !3359, line: 73, baseType: !36, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3397, file: !3359, line: 75, baseType: !36, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3397, file: !3359, line: 77, baseType: !36, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3397, file: !3359, line: 80, baseType: !36, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3397, file: !3359, line: 83, baseType: !36, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3397, file: !3359, line: 86, baseType: !36, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3397, file: !3359, line: 88, baseType: !36, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3397, file: !3359, line: 93, baseType: !36, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3397, file: !3359, line: 100, baseType: !36, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3334, file: !3261, line: 96, baseType: !80, size: 32, offset: 1024)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3279, file: !3261, line: 352, baseType: !3411, size: 4608, align: 512)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3261, line: 333, size: 4608, align: 512, elements: !3412)
!3412 = !{!3413, !3414, !3421}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3411, file: !3261, line: 334, baseType: !3297, size: 4096, align: 128)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3411, file: !3261, line: 335, baseType: !3415, size: 512, offset: 4096)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3261, line: 312, size: 512, elements: !3416)
!3416 = !{!3417, !3418, !3419}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3415, file: !3261, line: 313, baseType: !36, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3415, file: !3261, line: 314, baseType: !36, size: 64, offset: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3415, file: !3261, line: 315, baseType: !3420, size: 384, offset: 128)
!3420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 384, elements: !1789)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3411, file: !3261, line: 336, baseType: !3422, offset: 4608)
!3422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, elements: !1699)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3279, file: !3261, line: 353, baseType: !3424, size: 32768)
!3424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 32768, elements: !3425)
!3425 = !{!3426}
!3426 = !DISubrange(count: 4096)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3260, file: !3261, line: 484, baseType: !3266, size: 64, offset: 192)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3260, file: !3261, line: 491, baseType: !3429, size: 128, offset: 256)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3261, line: 404, size: 128, elements: !3430)
!3430 = !{!3431, !3432, !3433}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3429, file: !3261, line: 424, baseType: !36, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3429, file: !3261, line: 432, baseType: !74, size: 32, offset: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3429, file: !3261, line: 440, baseType: !74, size: 32, offset: 96)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3260, file: !3261, line: 498, baseType: !3429, size: 128, offset: 384)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3260, file: !3261, line: 508, baseType: !3267, size: 33280, align: 512, offset: 512)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1286, file: !1287, line: 16, baseType: !1296, size: 192, offset: 512)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1286, file: !1287, line: 17, baseType: !143, size: 32, offset: 704)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !416, file: !266, line: 1240, baseType: !73, size: 64, offset: 6912)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !416, file: !266, line: 1243, baseType: !80, size: 32, offset: 6976)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !416, file: !266, line: 1245, baseType: !1042, size: 64, offset: 7040)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !416, file: !266, line: 1246, baseType: !1042, size: 64, offset: 7104)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !416, file: !266, line: 1248, baseType: !81, size: 32, offset: 7168)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !416, file: !266, line: 1249, baseType: !3444, size: 64, offset: 7232)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !266, line: 634, flags: DIFlagFwdDecl)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !416, file: !266, line: 1252, baseType: !3447, size: 256, offset: 7296)
!3447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 256, elements: !346)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !416, file: !266, line: 1253, baseType: !3449, size: 128, offset: 7552)
!3449 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3450, line: 21, baseType: !3451)
!3450 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3450, line: 19, size: 128, elements: !3452)
!3452 = !{!3453}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3451, file: !3450, line: 20, baseType: !3454, size: 128)
!3454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 128, elements: !2666)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !416, file: !266, line: 1255, baseType: !74, size: 32, offset: 7680)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !416, file: !266, line: 1261, baseType: !532, size: 256, offset: 7744)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !416, file: !266, line: 1267, baseType: !43, size: 64, offset: 8000)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !416, file: !266, line: 1269, baseType: !362, size: 64, offset: 8064)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !416, file: !266, line: 1271, baseType: !3460, size: 448, offset: 8128)
!3460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1051, line: 63, size: 448, elements: !3461)
!3461 = !{!3462, !3467, !3468, !3469, !3470, !3471, !3472}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3460, file: !1051, line: 64, baseType: !3463, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!47, !3466, !1049}
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3460, file: !1051, line: 66, baseType: !3463, size: 64, offset: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3460, file: !1051, line: 69, baseType: !225, size: 64, offset: 128)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3460, file: !1051, line: 70, baseType: !64, size: 32, offset: 192)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3460, file: !1051, line: 71, baseType: !74, size: 32, offset: 224)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3460, file: !1051, line: 74, baseType: !11, size: 128, offset: 256)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3460, file: !1051, line: 85, baseType: !3473, size: 64, offset: 384)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !416, file: !266, line: 1274, baseType: !536, size: 64, offset: 8576)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !416, file: !266, line: 1280, baseType: !536, size: 64, offset: 8640)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !416, file: !266, line: 1283, baseType: !64, size: 32, offset: 8704)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !416, file: !266, line: 1286, baseType: !2393, size: 32, offset: 8736)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !416, file: !266, line: 1289, baseType: !852, size: 64, offset: 8768)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !416, file: !266, line: 1290, baseType: !900, size: 64, offset: 8832)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !416, file: !266, line: 1297, baseType: !1883, size: 64, offset: 8896)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !416, file: !266, line: 1304, baseType: !3482, size: 64, offset: 8960)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3483, line: 49, size: 64, elements: !3484)
!3483 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3484 = !{!3485}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3482, file: !3483, line: 50, baseType: !3486, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3483, line: 41, size: 512, align: 512, elements: !3488)
!3488 = !{!3489, !3490, !3495}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3487, file: !3483, line: 43, baseType: !123, size: 32)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3487, file: !3483, line: 45, baseType: !3491, size: 192, offset: 64)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3483, line: 29, size: 192, elements: !3492)
!3492 = !{!3493, !3494}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3491, file: !3483, line: 30, baseType: !11, size: 128)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3491, file: !3483, line: 32, baseType: !225, size: 64, offset: 128)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3487, file: !3483, line: 46, baseType: !225, size: 64, offset: 256)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !416, file: !266, line: 1305, baseType: !3482, size: 64, offset: 9024)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !416, file: !266, line: 1306, baseType: !752, size: 128, align: 64, offset: 9088)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !416, file: !266, line: 1307, baseType: !790, size: 256, offset: 9216)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !416, file: !266, line: 1309, baseType: !532, size: 256, offset: 9472)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !416, file: !266, line: 1314, baseType: !64, size: 32, offset: 9728)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !416, file: !266, line: 1317, baseType: !123, size: 32, align: 512, offset: 10240)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !416, file: !266, line: 1318, baseType: !11, size: 128, offset: 10304)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !416, file: !266, line: 1320, baseType: !123, size: 32, offset: 10432)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !416, file: !266, line: 1321, baseType: !11, size: 128, offset: 10496)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !410, file: !411, line: 73, baseType: !64, size: 32, offset: 128)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !410, file: !411, line: 74, baseType: !3507, size: 64, offset: 192)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1730, line: 42, flags: DIFlagFwdDecl)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !364, file: !306, line: 141, baseType: !3511, size: 64, offset: 704)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!64, !1113, !612}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !364, file: !306, line: 142, baseType: !3515, size: 64, offset: 768)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!304, !304, !3518}
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !305, file: !306, line: 96, baseType: !415, size: 64, offset: 832)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !305, file: !306, line: 97, baseType: !47, size: 64, offset: 896)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !305, file: !306, line: 98, baseType: !73, size: 64, offset: 960)
!3523 = !DIDerivedType(tag: DW_TAG_member, scope: !305, file: !306, line: 100, baseType: !3524, size: 128, offset: 1024)
!3524 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !305, file: !306, line: 100, size: 128, elements: !3525)
!3525 = !{!3526, !3527}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3524, file: !306, line: 101, baseType: !11, size: 128)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3524, file: !306, line: 102, baseType: !3528, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !305, file: !306, line: 104, baseType: !11, size: 128, offset: 1152)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !305, file: !306, line: 105, baseType: !11, size: 128, offset: 1280)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !305, file: !306, line: 113, baseType: !3532, size: 128, offset: 1408)
!3532 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !305, file: !306, line: 109, size: 128, elements: !3533)
!3533 = !{!3534, !3535, !3536}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3532, file: !306, line: 110, baseType: !776, size: 128)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3532, file: !306, line: 111, baseType: !320, size: 128)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3532, file: !306, line: 112, baseType: !752, size: 128, align: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !298, file: !266, line: 1968, baseType: !3538, size: 64, offset: 64)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!43, !304, !269, !3541}
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3543, line: 10, size: 128, elements: !3544)
!3543 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3544 = !{!3545, !3546}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3542, file: !3543, line: 11, baseType: !575, size: 64)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3542, file: !3543, line: 12, baseType: !73, size: 64, offset: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !298, file: !266, line: 1969, baseType: !3548, size: 64, offset: 128)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!64, !3507, !269, !64}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !298, file: !266, line: 1970, baseType: !3552, size: 64, offset: 192)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!292, !269, !64, !612}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !298, file: !266, line: 1972, baseType: !3556, size: 64, offset: 256)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!64, !304, !189, !64}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !298, file: !266, line: 1974, baseType: !3560, size: 64, offset: 320)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{!64, !3507, !269, !304, !231, !612}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !298, file: !266, line: 1976, baseType: !3564, size: 64, offset: 384)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{!64, !304, !269, !304}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !298, file: !266, line: 1977, baseType: !3568, size: 64, offset: 448)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{!64, !269, !304}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !298, file: !266, line: 1978, baseType: !3572, size: 64, offset: 512)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!64, !3507, !269, !304, !43}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !298, file: !266, line: 1980, baseType: !3576, size: 64, offset: 576)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{!64, !3507, !269, !304, !231}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !298, file: !266, line: 1982, baseType: !3568, size: 64, offset: 640)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !298, file: !266, line: 1983, baseType: !3581, size: 64, offset: 704)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!64, !3507, !269, !304, !231, !420}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !298, file: !266, line: 1985, baseType: !3585, size: 64, offset: 768)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{!64, !3507, !269, !304, !269, !304, !74}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !298, file: !266, line: 1987, baseType: !3589, size: 64, offset: 832)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!64, !3507, !304, !3592}
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !266, line: 226, size: 640, elements: !3594)
!3594 = !{!3595, !3596, !3597, !3607, !3616, !3617, !3622, !3623, !3624}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3593, file: !266, line: 227, baseType: !74, size: 32)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3593, file: !266, line: 228, baseType: !231, size: 16, offset: 32)
!3597 = !DIDerivedType(tag: DW_TAG_member, scope: !3593, file: !266, line: 241, baseType: !3598, size: 32, offset: 64)
!3598 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3593, file: !266, line: 241, size: 32, elements: !3599)
!3599 = !{!3600, !3601}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3598, file: !266, line: 242, baseType: !275, size: 32)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3598, file: !266, line: 243, baseType: !3602, size: 32)
!3602 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3603, line: 16, baseType: !3604)
!3603 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3603, line: 14, size: 32, elements: !3605)
!3605 = !{!3606}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3604, file: !3603, line: 15, baseType: !280, size: 32)
!3607 = !DIDerivedType(tag: DW_TAG_member, scope: !3593, file: !266, line: 245, baseType: !3608, size: 32, offset: 96)
!3608 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3593, file: !266, line: 245, size: 32, elements: !3609)
!3609 = !{!3610, !3611}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3608, file: !266, line: 246, baseType: !284, size: 32)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3608, file: !266, line: 247, baseType: !3612, size: 32)
!3612 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3603, line: 20, baseType: !3613)
!3613 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3603, line: 18, size: 32, elements: !3614)
!3614 = !{!3615}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3613, file: !3603, line: 19, baseType: !288, size: 32)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3593, file: !266, line: 249, baseType: !425, size: 64, offset: 128)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3593, file: !266, line: 250, baseType: !3618, size: 128, offset: 192)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1043, line: 13, size: 128, elements: !3619)
!3619 = !{!3620, !3621}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3618, file: !1043, line: 14, baseType: !1042, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3618, file: !1043, line: 15, baseType: !225, size: 64, offset: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3593, file: !266, line: 251, baseType: !3618, size: 128, offset: 320)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3593, file: !266, line: 252, baseType: !3618, size: 128, offset: 448)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3593, file: !266, line: 259, baseType: !1638, size: 64, offset: 576)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !298, file: !266, line: 1988, baseType: !3626, size: 64, offset: 896)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{!64, !3507, !1113, !3629, !80, !74}
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3631, line: 22, size: 1280, elements: !3632)
!3631 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3632 = !{!3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3630, file: !3631, line: 23, baseType: !80, size: 32)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3630, file: !3631, line: 24, baseType: !231, size: 16, offset: 32)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3630, file: !3631, line: 25, baseType: !74, size: 32, offset: 64)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3630, file: !3631, line: 26, baseType: !1768, size: 32, offset: 96)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3630, file: !3631, line: 27, baseType: !36, size: 64, offset: 128)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3630, file: !3631, line: 28, baseType: !36, size: 64, offset: 192)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3630, file: !3631, line: 41, baseType: !36, size: 64, offset: 256)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3630, file: !3631, line: 42, baseType: !420, size: 32, offset: 320)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3630, file: !3631, line: 43, baseType: !420, size: 32, offset: 352)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3630, file: !3631, line: 44, baseType: !275, size: 32, offset: 384)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3630, file: !3631, line: 45, baseType: !284, size: 32, offset: 416)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3630, file: !3631, line: 46, baseType: !425, size: 64, offset: 448)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3630, file: !3631, line: 47, baseType: !3618, size: 128, offset: 512)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3630, file: !3631, line: 48, baseType: !3618, size: 128, offset: 640)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3630, file: !3631, line: 49, baseType: !3618, size: 128, offset: 768)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3630, file: !3631, line: 50, baseType: !3618, size: 128, offset: 896)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3630, file: !3631, line: 51, baseType: !36, size: 64, offset: 1024)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3630, file: !3631, line: 52, baseType: !36, size: 64, offset: 1088)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3630, file: !3631, line: 53, baseType: !80, size: 32, offset: 1152)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3630, file: !3631, line: 54, baseType: !80, size: 32, offset: 1184)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3630, file: !3631, line: 55, baseType: !36, size: 64, offset: 1216)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !298, file: !266, line: 1990, baseType: !3655, size: 64, offset: 960)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!221, !304, !189, !236}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !298, file: !266, line: 1991, baseType: !3659, size: 64, offset: 1024)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!64, !269, !3662, !36, !36}
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !266, line: 55, flags: DIFlagFwdDecl)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !298, file: !266, line: 1993, baseType: !3665, size: 64, offset: 1088)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!64, !269, !64}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !298, file: !266, line: 1994, baseType: !3669, size: 64, offset: 1152)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!64, !269, !304, !1638, !74, !231}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !298, file: !266, line: 1997, baseType: !3673, size: 64, offset: 1216)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!64, !3507, !269, !1638, !231}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !298, file: !266, line: 1999, baseType: !3677, size: 64, offset: 1280)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!292, !3507, !304, !64}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !298, file: !266, line: 2001, baseType: !3681, size: 64, offset: 1344)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!64, !3507, !304, !292, !64}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !298, file: !266, line: 2003, baseType: !3685, size: 64, offset: 1408)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!64, !3507, !304, !3688}
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !266, line: 76, flags: DIFlagFwdDecl)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !298, file: !266, line: 2005, baseType: !3691, size: 64, offset: 1472)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!64, !304, !3688}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !298, file: !266, line: 2006, baseType: !3695, size: 64, offset: 1536)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!3698, !269}
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !266, line: 3192, size: 192, elements: !3700)
!3700 = !{!3701, !3708}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3699, file: !266, line: 3193, baseType: !3702, size: 128)
!3702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3703, line: 296, size: 128, elements: !3704)
!3703 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3704 = !{!3705, !3706, !3707}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3702, file: !3703, line: 297, baseType: !123, size: 32)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3702, file: !3703, line: 299, baseType: !1054, size: 32, offset: 32)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3702, file: !3703, line: 300, baseType: !73, size: 64, offset: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3699, file: !266, line: 3194, baseType: !80, size: 32, offset: 128)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !270, file: !266, line: 655, baseType: !415, size: 64, offset: 448)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !270, file: !266, line: 656, baseType: !264, size: 64, offset: 512)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !270, file: !266, line: 659, baseType: !73, size: 64, offset: 576)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !270, file: !266, line: 663, baseType: !47, size: 64, offset: 640)
!3713 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !266, line: 671, baseType: !3714, size: 32, offset: 704)
!3714 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !270, file: !266, line: 671, size: 32, elements: !3715)
!3715 = !{!3716, !3718}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3714, file: !266, line: 672, baseType: !3717, size: 32)
!3717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3714, file: !266, line: 673, baseType: !74, size: 32)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !270, file: !266, line: 675, baseType: !420, size: 32, offset: 736)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !270, file: !266, line: 676, baseType: !425, size: 64, offset: 768)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !270, file: !266, line: 677, baseType: !3618, size: 128, offset: 832)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !270, file: !266, line: 678, baseType: !3618, size: 128, offset: 960)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !270, file: !266, line: 679, baseType: !3618, size: 128, offset: 1088)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !270, file: !266, line: 680, baseType: !123, size: 32, offset: 1216)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !270, file: !266, line: 681, baseType: !101, size: 16, offset: 1248)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !270, file: !266, line: 682, baseType: !151, size: 8, offset: 1264)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !270, file: !266, line: 683, baseType: !151, size: 8, offset: 1272)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !270, file: !266, line: 684, baseType: !1191, size: 64, offset: 1280)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !270, file: !266, line: 691, baseType: !47, size: 64, offset: 1344)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !270, file: !266, line: 692, baseType: !1203, size: 320, offset: 1408)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !270, file: !266, line: 694, baseType: !47, size: 64, offset: 1728)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !270, file: !266, line: 695, baseType: !47, size: 64, offset: 1792)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !270, file: !266, line: 697, baseType: !776, size: 128, offset: 1856)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !270, file: !266, line: 698, baseType: !11, size: 128, offset: 1984)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !270, file: !266, line: 707, baseType: !11, size: 128, offset: 2112)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !270, file: !266, line: 708, baseType: !11, size: 128, offset: 2240)
!3737 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !266, line: 709, baseType: !3738, size: 128, offset: 2368)
!3738 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !270, file: !266, line: 709, size: 128, elements: !3739)
!3739 = !{!3740, !3741}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3738, file: !266, line: 710, baseType: !900, size: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3738, file: !266, line: 711, baseType: !752, size: 128, align: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !270, file: !266, line: 713, baseType: !538, size: 64, offset: 2496)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !270, file: !266, line: 714, baseType: !538, size: 64, offset: 2560)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !270, file: !266, line: 715, baseType: !143, size: 32, offset: 2624)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !270, file: !266, line: 716, baseType: !143, size: 32, offset: 2656)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !270, file: !266, line: 717, baseType: !143, size: 32, offset: 2688)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !270, file: !266, line: 719, baseType: !143, size: 32, offset: 2720)
!3748 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !266, line: 721, baseType: !3749, size: 64, offset: 2752)
!3749 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !270, file: !266, line: 721, size: 64, elements: !3750)
!3750 = !{!3751, !3752}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3749, file: !266, line: 722, baseType: !1914, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3749, file: !266, line: 723, baseType: !923, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !270, file: !266, line: 725, baseType: !3754, size: 64, offset: 2816)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !266, line: 725, flags: DIFlagFwdDecl)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !270, file: !266, line: 726, baseType: !265, size: 1536, align: 64, offset: 2880)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !270, file: !266, line: 727, baseType: !11, size: 128, offset: 4416)
!3758 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !266, line: 728, baseType: !3759, size: 64, offset: 4544)
!3759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !270, file: !266, line: 728, size: 64, elements: !3760)
!3760 = !{!3761, !3762, !3765, !3766}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3759, file: !266, line: 729, baseType: !2343, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3759, file: !266, line: 730, baseType: !3763, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !266, line: 730, flags: DIFlagFwdDecl)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3759, file: !266, line: 731, baseType: !189, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3759, file: !266, line: 732, baseType: !74, size: 32)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !270, file: !266, line: 735, baseType: !81, size: 32, offset: 4608)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !270, file: !266, line: 738, baseType: !81, size: 32, offset: 4640)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !270, file: !266, line: 739, baseType: !3444, size: 64, offset: 4672)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !270, file: !266, line: 750, baseType: !73, size: 64, offset: 4736)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !265, file: !266, line: 474, baseType: !3702, size: 128, offset: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !265, file: !266, line: 475, baseType: !1203, size: 320, offset: 192)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !265, file: !266, line: 476, baseType: !1054, size: 32, offset: 512)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !265, file: !266, line: 477, baseType: !143, size: 32, offset: 544)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !265, file: !266, line: 482, baseType: !1494, size: 128, offset: 576)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !265, file: !266, line: 483, baseType: !47, size: 64, offset: 704)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !265, file: !266, line: 484, baseType: !47, size: 64, offset: 768)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !265, file: !266, line: 485, baseType: !3779, size: 64, offset: 832)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3781)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !266, line: 404, size: 1280, elements: !3782)
!3782 = !{!3783, !3787, !3857, !3861, !3865, !3871, !3875, !3879, !3884, !3888, !3892, !3896, !3897, !3908, !3912, !3916, !3921, !3925, !3932, !3933}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3781, file: !266, line: 405, baseType: !3784, size: 64)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!64, !2122, !935}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3781, file: !266, line: 406, baseType: !3788, size: 64, offset: 64)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!64, !1638, !3791}
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1061, line: 293, size: 1536, elements: !3793)
!3793 = !{!3794, !3824, !3838}
!3794 = !DIDerivedType(tag: DW_TAG_member, scope: !3792, file: !1061, line: 295, baseType: !3795, size: 512)
!3795 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3792, file: !1061, line: 295, size: 512, elements: !3796)
!3796 = !{!3797, !3823}
!3797 = !DIDerivedType(tag: DW_TAG_member, scope: !3795, file: !1061, line: 296, baseType: !3798, size: 448)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3795, file: !1061, line: 296, size: 448, elements: !3799)
!3799 = !{!3800, !3801, !3810, !3811, !3812, !3821, !3822}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3798, file: !1061, line: 298, baseType: !47, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, scope: !3798, file: !1061, line: 299, baseType: !3802, size: 128, offset: 64)
!3802 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3798, file: !1061, line: 299, size: 128, elements: !3803)
!3803 = !{!3804, !3805}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3802, file: !1061, line: 300, baseType: !11, size: 128)
!3805 = !DIDerivedType(tag: DW_TAG_member, scope: !3802, file: !1061, line: 302, baseType: !3806, size: 128)
!3806 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3802, file: !1061, line: 302, size: 128, elements: !3807)
!3807 = !{!3808, !3809}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3806, file: !1061, line: 303, baseType: !73, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3806, file: !1061, line: 305, baseType: !74, size: 32, offset: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3798, file: !1061, line: 310, baseType: !264, size: 64, offset: 192)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3798, file: !1061, line: 311, baseType: !47, size: 64, offset: 256)
!3812 = !DIDerivedType(tag: DW_TAG_member, scope: !3798, file: !1061, line: 312, baseType: !3813, size: 64, offset: 320)
!3813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3798, file: !1061, line: 312, size: 64, elements: !3814)
!3814 = !{!3815, !3816}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3813, file: !1061, line: 313, baseType: !73, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3813, file: !1061, line: 314, baseType: !3817, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1061, line: 257, baseType: !3818)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1061, line: 255, size: 64, elements: !3819)
!3819 = !{!3820}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3818, file: !1061, line: 256, baseType: !47, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3798, file: !1061, line: 316, baseType: !143, size: 32, offset: 384)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3798, file: !1061, line: 317, baseType: !143, size: 32, offset: 416)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3795, file: !1061, line: 323, baseType: !2123, size: 512, align: 128)
!3824 = !DIDerivedType(tag: DW_TAG_member, scope: !3792, file: !1061, line: 325, baseType: !3825, size: 512, offset: 512)
!3825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3792, file: !1061, line: 325, size: 512, elements: !3826)
!3826 = !{!3827, !3837}
!3827 = !DIDerivedType(tag: DW_TAG_member, scope: !3825, file: !1061, line: 326, baseType: !3828, size: 320)
!3828 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3825, file: !1061, line: 326, size: 320, elements: !3829)
!3829 = !{!3830, !3831, !3832, !3833, !3834, !3835, !3836}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3828, file: !1061, line: 327, baseType: !47, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3828, file: !1061, line: 328, baseType: !47, size: 64, offset: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3828, file: !1061, line: 329, baseType: !47, size: 64, offset: 128)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3828, file: !1061, line: 331, baseType: !143, size: 32, offset: 192)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3828, file: !1061, line: 332, baseType: !143, size: 32, offset: 224)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3828, file: !1061, line: 333, baseType: !143, size: 32, offset: 256)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3828, file: !1061, line: 335, baseType: !74, size: 32, offset: 288)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3825, file: !1061, line: 339, baseType: !2123, size: 512, align: 128)
!3838 = !DIDerivedType(tag: DW_TAG_member, scope: !3792, file: !1061, line: 341, baseType: !3839, size: 512, offset: 1024)
!3839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3792, file: !1061, line: 341, size: 512, elements: !3840)
!3840 = !{!3841, !3850, !3856}
!3841 = !DIDerivedType(tag: DW_TAG_member, scope: !3839, file: !1061, line: 342, baseType: !3842, size: 384)
!3842 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3839, file: !1061, line: 342, size: 384, elements: !3843)
!3843 = !{!3844, !3845, !3846, !3847, !3848, !3849}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3842, file: !1061, line: 343, baseType: !47, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3842, file: !1061, line: 344, baseType: !47, size: 64, offset: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3842, file: !1061, line: 346, baseType: !73, size: 64, offset: 128)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3842, file: !1061, line: 347, baseType: !73, size: 64, offset: 192)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3842, file: !1061, line: 348, baseType: !73, size: 64, offset: 256)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3842, file: !1061, line: 349, baseType: !73, size: 64, offset: 320)
!3850 = !DIDerivedType(tag: DW_TAG_member, scope: !3839, file: !1061, line: 352, baseType: !3851, size: 256)
!3851 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3839, file: !1061, line: 352, size: 256, elements: !3852)
!3852 = !{!3853, !3854, !3855}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3851, file: !1061, line: 353, baseType: !47, size: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3851, file: !1061, line: 354, baseType: !47, size: 64, offset: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3851, file: !1061, line: 356, baseType: !11, size: 128, offset: 128)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3839, file: !1061, line: 359, baseType: !2123, size: 512, align: 128)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3781, file: !266, line: 409, baseType: !3858, size: 64, offset: 128)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!64, !264, !935}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3781, file: !266, line: 412, baseType: !3862, size: 64, offset: 192)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!612, !264, !3791}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3781, file: !266, line: 414, baseType: !3866, size: 64, offset: 256)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{null, !3869}
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !266, line: 310, flags: DIFlagFwdDecl)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3781, file: !266, line: 416, baseType: !3872, size: 64, offset: 320)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!64, !1638, !264, !425, !74, !3194, !2358}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3781, file: !266, line: 419, baseType: !3876, size: 64, offset: 384)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!64, !1638, !264, !425, !74, !74, !2122, !73}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3781, file: !266, line: 424, baseType: !3880, size: 64, offset: 448)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!3883, !264, !3883}
!3883 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !12, line: 131, baseType: !36)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3781, file: !266, line: 425, baseType: !3885, size: 64, offset: 512)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{null, !3791, !236, !236}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3781, file: !266, line: 426, baseType: !3889, size: 64, offset: 576)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!612, !3791, !1054}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3781, file: !266, line: 427, baseType: !3893, size: 64, offset: 640)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{null, !3791}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3781, file: !266, line: 428, baseType: !1933, size: 64, offset: 704)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3781, file: !266, line: 433, baseType: !3898, size: 64, offset: 768)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!64, !264, !3791, !3791, !3901}
!3901 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !3902, line: 15, baseType: !74, size: 32, elements: !3903)
!3902 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!3903 = !{!3904, !3905, !3906, !3907}
!3904 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!3905 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!3906 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!3907 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3781, file: !266, line: 435, baseType: !3909, size: 64, offset: 832)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!64, !3791}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3781, file: !266, line: 436, baseType: !3913, size: 64, offset: 896)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!612, !3791, !236, !236}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3781, file: !266, line: 438, baseType: !3917, size: 64, offset: 960)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{null, !3791, !3920, !3920}
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3781, file: !266, line: 439, baseType: !3922, size: 64, offset: 1024)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!64, !264, !2122}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3781, file: !266, line: 442, baseType: !3926, size: 64, offset: 1088)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!64, !3929, !1638, !3931}
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !266, line: 66, flags: DIFlagFwdDecl)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3781, file: !266, line: 444, baseType: !2350, size: 64, offset: 1152)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3781, file: !266, line: 445, baseType: !3934, size: 64, offset: 1216)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{!64, !1936, !1958}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !265, file: !266, line: 486, baseType: !47, size: 64, offset: 896)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !265, file: !266, line: 487, baseType: !1203, size: 320, offset: 960)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !265, file: !266, line: 488, baseType: !2393, size: 32, offset: 1280)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !265, file: !266, line: 489, baseType: !123, size: 32, offset: 1312)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !265, file: !266, line: 490, baseType: !11, size: 128, offset: 1344)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !265, file: !266, line: 491, baseType: !73, size: 64, offset: 1472)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !255, file: !215, line: 180, baseType: !3944, size: 64, offset: 320)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!221, !1638, !116, !254, !189, !425, !236}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !255, file: !215, line: 182, baseType: !3944, size: 64, offset: 384)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !255, file: !215, line: 184, baseType: !3949, size: 64, offset: 448)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!64, !1638, !116, !254, !1998}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !243, file: !215, line: 90, baseType: !3953, size: 64, offset: 192)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !243, file: !215, line: 91, baseType: !3955, size: 64, offset: 256)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !205, file: !111, line: 120, baseType: !3957, size: 64, offset: 192)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{!3960, !172}
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3962)
!3962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !3963, line: 39, size: 384, elements: !3964)
!3963 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!3964 = !{!3965, !3971, !3975, !3979, !3985, !3989}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3962, file: !3963, line: 40, baseType: !3966, size: 32)
!3966 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !3963, line: 26, baseType: !74, size: 32, elements: !3967)
!3967 = !{!3968, !3969, !3970}
!3968 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!3969 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!3970 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3962, file: !3963, line: 41, baseType: !3972, size: 64, offset: 64)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!612}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3962, file: !3963, line: 42, baseType: !3976, size: 64, offset: 128)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!73}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3962, file: !3963, line: 43, baseType: !3980, size: 64, offset: 192)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!2482, !3983}
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !3963, line: 19, flags: DIFlagFwdDecl)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3962, file: !3963, line: 44, baseType: !3986, size: 64, offset: 256)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!2482}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3962, file: !3963, line: 45, baseType: !575, size: 64, offset: 320)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !205, file: !111, line: 121, baseType: !3991, size: 64, offset: 256)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = !DISubroutineType(types: !3993)
!3993 = !{!2482, !172}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !205, file: !111, line: 122, baseType: !3995, size: 64, offset: 320)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{null, !172, !3998, !3999}
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !110, file: !111, line: 70, baseType: !4001, size: 64, offset: 384)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !440, line: 190, size: 1152, elements: !4003)
!4003 = !{!4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4095, !4096, !4097, !4098, !4099, !4102}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4002, file: !440, line: 191, baseType: !143, size: 32)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4002, file: !440, line: 192, baseType: !143, size: 32, offset: 32)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4002, file: !440, line: 202, baseType: !4001, size: 64, offset: 64)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4002, file: !440, line: 203, baseType: !43, size: 64, offset: 128)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4002, file: !440, line: 205, baseType: !644, size: 192, align: 64, offset: 192)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4002, file: !440, line: 207, baseType: !2482, size: 64, offset: 384)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4002, file: !440, line: 208, baseType: !74, size: 32, offset: 448)
!4011 = !DIDerivedType(tag: DW_TAG_member, scope: !4002, file: !440, line: 209, baseType: !4012, size: 256, offset: 512)
!4012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4002, file: !440, line: 209, size: 256, elements: !4013)
!4013 = !{!4014, !4023, !4027}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4012, file: !440, line: 210, baseType: !4015, size: 256)
!4015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !440, line: 153, size: 256, elements: !4016)
!4016 = !{!4017, !4018, !4019, !4022}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4015, file: !440, line: 154, baseType: !47, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4015, file: !440, line: 156, baseType: !1497, size: 64, offset: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4015, file: !440, line: 162, baseType: !4020, size: 64, offset: 128)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !440, line: 162, flags: DIFlagFwdDecl)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4015, file: !440, line: 167, baseType: !47, size: 64, offset: 192)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4012, file: !440, line: 211, baseType: !4024, size: 64)
!4024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !440, line: 170, size: 64, elements: !4025)
!4025 = !{!4026}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4024, file: !440, line: 171, baseType: !4001, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4012, file: !440, line: 212, baseType: !4028, size: 256)
!4028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !440, line: 174, size: 256, elements: !4029)
!4029 = !{!4030, !4090, !4093, !4094}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4028, file: !440, line: 175, baseType: !4031, size: 64)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4033)
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !440, line: 271, size: 768, elements: !4034)
!4034 = !{!4035, !4055, !4059, !4063, !4067, !4071, !4075, !4079, !4080, !4081, !4082, !4086}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4033, file: !440, line: 276, baseType: !4036, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!64, !4039}
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !440, line: 251, size: 1216, elements: !4041)
!4041 = !{!4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4040, file: !440, line: 253, baseType: !4001, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4040, file: !440, line: 254, baseType: !1638, size: 64, offset: 64)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4040, file: !440, line: 255, baseType: !976, size: 64, offset: 128)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4040, file: !440, line: 256, baseType: !73, size: 64, offset: 192)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4040, file: !440, line: 259, baseType: !532, size: 256, offset: 256)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4040, file: !440, line: 260, baseType: !532, size: 256, offset: 512)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4040, file: !440, line: 261, baseType: !64, size: 32, offset: 768)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4040, file: !440, line: 262, baseType: !11, size: 128, offset: 832)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4040, file: !440, line: 263, baseType: !189, size: 64, offset: 960)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4040, file: !440, line: 265, baseType: !236, size: 64, offset: 1024)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4040, file: !440, line: 266, baseType: !612, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4040, file: !440, line: 267, baseType: !612, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4040, file: !440, line: 268, baseType: !2043, size: 64, offset: 1152)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4033, file: !440, line: 277, baseType: !4056, size: 64, offset: 64)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{null, !4039}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4033, file: !440, line: 290, baseType: !4060, size: 64, offset: 128)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!64, !976, !73}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4033, file: !440, line: 292, baseType: !4064, size: 64, offset: 192)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!73, !976, !1927}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4033, file: !440, line: 293, baseType: !4068, size: 64, offset: 256)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!73, !976, !73, !1927}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4033, file: !440, line: 294, baseType: !4072, size: 64, offset: 320)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{null, !976, !73}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4033, file: !440, line: 296, baseType: !4076, size: 64, offset: 384)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{!221, !4039, !189, !236, !425}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4033, file: !440, line: 306, baseType: !236, size: 64, offset: 448)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4033, file: !440, line: 313, baseType: !612, size: 8, offset: 512)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4033, file: !440, line: 314, baseType: !4076, size: 64, offset: 576)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4033, file: !440, line: 317, baseType: !4083, size: 64, offset: 640)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!1985, !4039, !1987}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4033, file: !440, line: 320, baseType: !4087, size: 64, offset: 704)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!64, !4039, !1998}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4028, file: !440, line: 176, baseType: !4091, size: 64, offset: 64)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !440, line: 35, flags: DIFlagFwdDecl)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4028, file: !440, line: 177, baseType: !425, size: 64, offset: 128)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4028, file: !440, line: 178, baseType: !4001, size: 64, offset: 192)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4002, file: !440, line: 215, baseType: !73, size: 64, offset: 768)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4002, file: !440, line: 221, baseType: !36, size: 64, offset: 832)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4002, file: !440, line: 223, baseType: !101, size: 16, offset: 896)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4002, file: !440, line: 224, baseType: !231, size: 16, offset: 912)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4002, file: !440, line: 225, baseType: !4100, size: 64, offset: 960)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !440, line: 36, flags: DIFlagFwdDecl)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4002, file: !440, line: 227, baseType: !752, size: 128, align: 64, offset: 1024)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !110, file: !111, line: 71, baseType: !4104, size: 32, offset: 448)
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4105, line: 19, size: 32, elements: !4106)
!4105 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4106 = !{!4107}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4104, file: !4105, line: 20, baseType: !1323, size: 32)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !110, file: !111, line: 73, baseType: !74, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !110, file: !111, line: 74, baseType: !74, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !110, file: !111, line: 75, baseType: !74, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !110, file: !111, line: 76, baseType: !74, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !110, file: !111, line: 77, baseType: !74, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !106, file: !107, line: 707, baseType: !105, size: 64, offset: 512)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !106, file: !107, line: 709, baseType: !4115, size: 64, offset: 576)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !107, line: 37, flags: DIFlagFwdDecl)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !106, file: !107, line: 711, baseType: !43, size: 64, offset: 640)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !106, file: !107, line: 712, baseType: !4119, size: 64, offset: 704)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4121)
!4121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !107, line: 89, size: 384, elements: !4122)
!4122 = !{!4123, !4124, !4125, !4131, !4136, !4140}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4121, file: !107, line: 90, baseType: !43, size: 64)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4121, file: !107, line: 91, baseType: !240, size: 64, offset: 64)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4121, file: !107, line: 92, baseType: !4126, size: 64, offset: 128)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!64, !4129, !184}
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4121, file: !107, line: 93, baseType: !4132, size: 64, offset: 192)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{!189, !4129, !4135, !3998, !3999}
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4121, file: !107, line: 95, baseType: !4137, size: 64, offset: 256)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{null, !105}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4121, file: !107, line: 97, baseType: !4141, size: 64, offset: 320)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4143)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !4144, line: 286, size: 1472, elements: !4145)
!4144 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!4145 = !{!4146, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4143, file: !4144, line: 287, baseType: !4147, size: 64)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!64, !105}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4143, file: !4144, line: 288, baseType: !4137, size: 64, offset: 64)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4143, file: !4144, line: 289, baseType: !4147, size: 64, offset: 128)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4143, file: !4144, line: 290, baseType: !4147, size: 64, offset: 192)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4143, file: !4144, line: 291, baseType: !4147, size: 64, offset: 256)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4143, file: !4144, line: 292, baseType: !4147, size: 64, offset: 320)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4143, file: !4144, line: 293, baseType: !4147, size: 64, offset: 384)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4143, file: !4144, line: 294, baseType: !4147, size: 64, offset: 448)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4143, file: !4144, line: 295, baseType: !4147, size: 64, offset: 512)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4143, file: !4144, line: 296, baseType: !4147, size: 64, offset: 576)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4143, file: !4144, line: 297, baseType: !4147, size: 64, offset: 640)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4143, file: !4144, line: 298, baseType: !4147, size: 64, offset: 704)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4143, file: !4144, line: 299, baseType: !4147, size: 64, offset: 768)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4143, file: !4144, line: 300, baseType: !4147, size: 64, offset: 832)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4143, file: !4144, line: 301, baseType: !4147, size: 64, offset: 896)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4143, file: !4144, line: 302, baseType: !4147, size: 64, offset: 960)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4143, file: !4144, line: 303, baseType: !4147, size: 64, offset: 1024)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4143, file: !4144, line: 304, baseType: !4147, size: 64, offset: 1088)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4143, file: !4144, line: 305, baseType: !4147, size: 64, offset: 1152)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4143, file: !4144, line: 306, baseType: !4147, size: 64, offset: 1216)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4143, file: !4144, line: 307, baseType: !4147, size: 64, offset: 1280)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4143, file: !4144, line: 308, baseType: !4147, size: 64, offset: 1344)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4143, file: !4144, line: 309, baseType: !4147, size: 64, offset: 1408)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !106, file: !107, line: 714, baseType: !4173, size: 64, offset: 768)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4175)
!4175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4176, line: 80, size: 1344, elements: !4177)
!4176 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4177 = !{!4178, !4179, !4180, !4181, !4182, !4183, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4262}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4175, file: !4176, line: 81, baseType: !43, size: 64)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4175, file: !4176, line: 82, baseType: !43, size: 64, offset: 64)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4175, file: !4176, line: 83, baseType: !240, size: 64, offset: 128)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4175, file: !4176, line: 84, baseType: !240, size: 64, offset: 192)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4175, file: !4176, line: 85, baseType: !240, size: 64, offset: 256)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4175, file: !4176, line: 87, baseType: !4184, size: 64, offset: 320)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = !DISubroutineType(types: !4186)
!4186 = !{!64, !105, !4187}
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !4189, line: 96, size: 1152, elements: !4190)
!4189 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!4190 = !{!4191, !4192, !4193, !4194, !4195, !4196, !4202, !4215, !4225, !4226, !4227, !4228, !4229, !4237, !4238, !4239, !4240, !4241, !4242}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4188, file: !4189, line: 97, baseType: !43, size: 64)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4188, file: !4189, line: 98, baseType: !4173, size: 64, offset: 64)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4188, file: !4189, line: 100, baseType: !454, size: 64, offset: 128)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4188, file: !4189, line: 101, baseType: !43, size: 64, offset: 192)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4188, file: !4189, line: 103, baseType: !612, size: 8, offset: 256)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4188, file: !4189, line: 104, baseType: !4197, size: 32, offset: 288)
!4197 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !4189, line: 45, baseType: !74, size: 32, elements: !4198)
!4198 = !{!4199, !4200, !4201}
!4199 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!4200 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!4201 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4188, file: !4189, line: 106, baseType: !4203, size: 64, offset: 320)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4205)
!4205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4206, line: 282, size: 1600, elements: !4207)
!4206 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4207 = !{!4208, !4209, !4210, !4214}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4205, file: !4206, line: 283, baseType: !3447, size: 256)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4205, file: !4206, line: 284, baseType: !3447, size: 256, offset: 256)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4205, file: !4206, line: 285, baseType: !4211, size: 1024, offset: 512)
!4211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 1024, elements: !4212)
!4212 = !{!4213}
!4213 = !DISubrange(count: 128)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4205, file: !4206, line: 286, baseType: !2482, size: 64, offset: 1536)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4188, file: !4189, line: 107, baseType: !4216, size: 64, offset: 384)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4218)
!4218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4206, line: 217, size: 256, elements: !4219)
!4219 = !{!4220, !4221, !4223, !4224}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4218, file: !4206, line: 218, baseType: !3454, size: 128)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4218, file: !4206, line: 219, baseType: !4222, size: 64, offset: 128)
!4222 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4206, line: 15, baseType: !47)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4218, file: !4206, line: 220, baseType: !81, size: 32, offset: 192)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4218, file: !4206, line: 221, baseType: !81, size: 32, offset: 224)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4188, file: !4189, line: 109, baseType: !4147, size: 64, offset: 448)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4188, file: !4189, line: 110, baseType: !4137, size: 64, offset: 512)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4188, file: !4189, line: 111, baseType: !4147, size: 64, offset: 576)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4188, file: !4189, line: 112, baseType: !4137, size: 64, offset: 640)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4188, file: !4189, line: 113, baseType: !4230, size: 64, offset: 704)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!64, !105, !4233}
!4233 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !4144, line: 60, baseType: !4234)
!4234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !4144, line: 58, size: 32, elements: !4235)
!4235 = !{!4236}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4234, file: !4144, line: 59, baseType: !64, size: 32)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4188, file: !4189, line: 114, baseType: !4147, size: 64, offset: 768)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4188, file: !4189, line: 115, baseType: !240, size: 64, offset: 832)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4188, file: !4189, line: 116, baseType: !240, size: 64, offset: 896)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4188, file: !4189, line: 118, baseType: !4141, size: 64, offset: 960)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4188, file: !4189, line: 119, baseType: !4137, size: 64, offset: 1024)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4188, file: !4189, line: 121, baseType: !4243, size: 64, offset: 1088)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !4189, line: 121, flags: DIFlagFwdDecl)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4175, file: !4176, line: 88, baseType: !4126, size: 64, offset: 384)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4175, file: !4176, line: 89, baseType: !4147, size: 64, offset: 448)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4175, file: !4176, line: 90, baseType: !4137, size: 64, offset: 512)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4175, file: !4176, line: 91, baseType: !4137, size: 64, offset: 576)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4175, file: !4176, line: 92, baseType: !4137, size: 64, offset: 640)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4175, file: !4176, line: 94, baseType: !4147, size: 64, offset: 704)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4175, file: !4176, line: 95, baseType: !4147, size: 64, offset: 768)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4175, file: !4176, line: 97, baseType: !4230, size: 64, offset: 832)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4175, file: !4176, line: 98, baseType: !4147, size: 64, offset: 896)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4175, file: !4176, line: 100, baseType: !4147, size: 64, offset: 960)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4175, file: !4176, line: 102, baseType: !4147, size: 64, offset: 1024)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4175, file: !4176, line: 103, baseType: !4137, size: 64, offset: 1088)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4175, file: !4176, line: 105, baseType: !4141, size: 64, offset: 1152)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4175, file: !4176, line: 107, baseType: !4259, size: 64, offset: 1216)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4261)
!4261 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4176, line: 107, flags: DIFlagFwdDecl)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4175, file: !4176, line: 109, baseType: !612, size: 8, offset: 1280)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !106, file: !107, line: 715, baseType: !4187, size: 64, offset: 832)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !106, file: !107, line: 717, baseType: !73, size: 64, offset: 896)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !106, file: !107, line: 719, baseType: !73, size: 64, offset: 960)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !106, file: !107, line: 721, baseType: !532, size: 256, offset: 1024)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !106, file: !107, line: 725, baseType: !4268, size: 448, offset: 1280)
!4268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !107, line: 517, size: 448, elements: !4269)
!4269 = !{!4270, !4271, !4272, !4273}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4268, file: !107, line: 518, baseType: !11, size: 128)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4268, file: !107, line: 519, baseType: !11, size: 128, offset: 128)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4268, file: !107, line: 520, baseType: !11, size: 128, offset: 256)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4268, file: !107, line: 521, baseType: !4274, size: 32, offset: 384)
!4274 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !107, line: 487, baseType: !74, size: 32, elements: !4275)
!4275 = !{!4276, !4277, !4278, !4279}
!4276 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!4277 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!4278 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!4279 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !106, file: !107, line: 726, baseType: !4281, size: 2496, offset: 1728)
!4281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !4144, line: 663, size: 2496, elements: !4282)
!4282 = !{!4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4358, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4379, !4383}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4281, file: !4144, line: 664, baseType: !4233, size: 32)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4281, file: !4144, line: 665, baseType: !74, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4281, file: !4144, line: 666, baseType: !74, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4281, file: !4144, line: 667, baseType: !612, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4281, file: !4144, line: 668, baseType: !612, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4281, file: !4144, line: 669, baseType: !612, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4281, file: !4144, line: 670, baseType: !612, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4281, file: !4144, line: 671, baseType: !612, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4281, file: !4144, line: 672, baseType: !612, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4281, file: !4144, line: 673, baseType: !612, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4281, file: !4144, line: 674, baseType: !612, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4281, file: !4144, line: 675, baseType: !80, size: 32, offset: 64)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4281, file: !4144, line: 676, baseType: !123, size: 32, offset: 96)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4281, file: !4144, line: 678, baseType: !11, size: 128, offset: 128)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4281, file: !4144, line: 679, baseType: !481, size: 256, offset: 256)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4281, file: !4144, line: 680, baseType: !4299, size: 64, offset: 512)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4301, line: 43, size: 1536, elements: !4302)
!4301 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4302 = !{!4303, !4304, !4305, !4306, !4307, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4300, file: !4301, line: 44, baseType: !43, size: 64)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4300, file: !4301, line: 45, baseType: !64, size: 32, offset: 64)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4300, file: !4301, line: 46, baseType: !11, size: 128, offset: 128)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4300, file: !4301, line: 47, baseType: !123, size: 32, offset: 256)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4300, file: !4301, line: 48, baseType: !4308, size: 64, offset: 320)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !4144, line: 629, flags: DIFlagFwdDecl)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4300, file: !4301, line: 49, baseType: !772, size: 320, offset: 384)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4300, file: !4301, line: 50, baseType: !47, size: 64, offset: 704)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4300, file: !4301, line: 51, baseType: !1439, size: 64, offset: 768)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4300, file: !4301, line: 52, baseType: !1439, size: 64, offset: 832)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4300, file: !4301, line: 53, baseType: !1439, size: 64, offset: 896)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4300, file: !4301, line: 54, baseType: !1439, size: 64, offset: 960)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4300, file: !4301, line: 55, baseType: !1439, size: 64, offset: 1024)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4300, file: !4301, line: 56, baseType: !47, size: 64, offset: 1088)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4300, file: !4301, line: 57, baseType: !47, size: 64, offset: 1152)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4300, file: !4301, line: 58, baseType: !47, size: 64, offset: 1216)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4300, file: !4301, line: 59, baseType: !47, size: 64, offset: 1280)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4300, file: !4301, line: 60, baseType: !47, size: 64, offset: 1344)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4300, file: !4301, line: 61, baseType: !105, size: 64, offset: 1408)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4300, file: !4301, line: 62, baseType: !612, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4300, file: !4301, line: 63, baseType: !612, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4281, file: !4144, line: 681, baseType: !612, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4281, file: !4144, line: 682, baseType: !612, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4281, file: !4144, line: 683, baseType: !612, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4281, file: !4144, line: 684, baseType: !74, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4281, file: !4144, line: 685, baseType: !74, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4281, file: !4144, line: 690, baseType: !1430, size: 512, offset: 640)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4281, file: !4144, line: 691, baseType: !36, size: 64, offset: 1152)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4281, file: !4144, line: 692, baseType: !790, size: 256, offset: 1216)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4281, file: !4144, line: 693, baseType: !1296, size: 192, offset: 1472)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4281, file: !4144, line: 694, baseType: !4308, size: 64, offset: 1664)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4281, file: !4144, line: 695, baseType: !143, size: 32, offset: 1728)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4281, file: !4144, line: 696, baseType: !143, size: 32, offset: 1760)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4281, file: !4144, line: 697, baseType: !74, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4281, file: !4144, line: 698, baseType: !74, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4281, file: !4144, line: 699, baseType: !74, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4281, file: !4144, line: 700, baseType: !74, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4281, file: !4144, line: 701, baseType: !74, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4281, file: !4144, line: 702, baseType: !74, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4281, file: !4144, line: 703, baseType: !612, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4281, file: !4144, line: 704, baseType: !74, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4281, file: !4144, line: 705, baseType: !74, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4281, file: !4144, line: 706, baseType: !74, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4281, file: !4144, line: 707, baseType: !74, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4281, file: !4144, line: 708, baseType: !74, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4281, file: !4144, line: 709, baseType: !74, size: 32, offset: 1824)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4281, file: !4144, line: 710, baseType: !4351, size: 32, offset: 1856)
!4351 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !4144, line: 620, baseType: !74, size: 32, elements: !4352)
!4352 = !{!4353, !4354, !4355, !4356, !4357}
!4353 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!4354 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!4355 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!4356 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!4357 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4281, file: !4144, line: 711, baseType: !4359, size: 32, offset: 1888)
!4359 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !4144, line: 597, baseType: !64, size: 32, elements: !4360)
!4360 = !{!4361, !4362, !4363, !4364, !4365}
!4361 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!4362 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!4363 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!4364 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!4365 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4281, file: !4144, line: 712, baseType: !4359, size: 32, offset: 1920)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4281, file: !4144, line: 713, baseType: !64, size: 32, offset: 1952)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4281, file: !4144, line: 714, baseType: !64, size: 32, offset: 1984)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4281, file: !4144, line: 715, baseType: !36, size: 64, offset: 2048)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4281, file: !4144, line: 716, baseType: !36, size: 64, offset: 2112)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4281, file: !4144, line: 717, baseType: !36, size: 64, offset: 2176)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4281, file: !4144, line: 718, baseType: !36, size: 64, offset: 2240)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4281, file: !4144, line: 720, baseType: !4374, size: 64, offset: 2304)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !4144, line: 632, size: 64, elements: !4376)
!4376 = !{!4377, !4378}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4375, file: !4144, line: 633, baseType: !123, size: 32)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4375, file: !4144, line: 634, baseType: !74, size: 32, offset: 32)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4281, file: !4144, line: 721, baseType: !4380, size: 64, offset: 2368)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{null, !105, !528}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4281, file: !4144, line: 722, baseType: !4384, size: 64, offset: 2432)
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !4144, line: 722, flags: DIFlagFwdDecl)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !106, file: !107, line: 727, baseType: !4387, size: 64, offset: 4224)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !4144, line: 742, size: 1792, elements: !4389)
!4389 = !{!4390, !4391, !4392, !4396, !4397, !4398}
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4388, file: !4144, line: 743, baseType: !4143, size: 1472)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4388, file: !4144, line: 744, baseType: !4147, size: 64, offset: 1472)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4388, file: !4144, line: 745, baseType: !4393, size: 64, offset: 1536)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = !DISubroutineType(types: !4395)
!4395 = !{null, !105, !612}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4388, file: !4144, line: 746, baseType: !4147, size: 64, offset: 1600)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4388, file: !4144, line: 747, baseType: !4137, size: 64, offset: 1664)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4388, file: !4144, line: 748, baseType: !4137, size: 64, offset: 1728)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !106, file: !107, line: 736, baseType: !4400, size: 128, offset: 4288)
!4400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !107, line: 529, size: 128, elements: !4401)
!4401 = !{!4402, !4406}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4400, file: !107, line: 531, baseType: !4403, size: 64)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4405, line: 13, flags: DIFlagFwdDecl)
!4405 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4400, file: !107, line: 532, baseType: !4407, size: 64, offset: 64)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !107, line: 49, flags: DIFlagFwdDecl)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !106, file: !107, line: 738, baseType: !4410, size: 64, offset: 4416)
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4412)
!4412 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !107, line: 738, flags: DIFlagFwdDecl)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !106, file: !107, line: 740, baseType: !4414, size: 64, offset: 4480)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !106, file: !107, line: 741, baseType: !36, size: 64, offset: 4544)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !106, file: !107, line: 746, baseType: !36, size: 64, offset: 4608)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !106, file: !107, line: 747, baseType: !4418, size: 64, offset: 4672)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4420)
!4420 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !107, line: 747, flags: DIFlagFwdDecl)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !106, file: !107, line: 749, baseType: !4422, size: 64, offset: 4736)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !107, line: 428, size: 128, elements: !4424)
!4424 = !{!4425, !4426, !4427}
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4423, file: !107, line: 433, baseType: !74, size: 32)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4423, file: !107, line: 434, baseType: !74, size: 32, offset: 32)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4423, file: !107, line: 435, baseType: !47, size: 64, offset: 64)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !106, file: !107, line: 751, baseType: !11, size: 128, offset: 4800)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !106, file: !107, line: 762, baseType: !4430, size: 64, offset: 4928)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !107, line: 762, flags: DIFlagFwdDecl)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !106, file: !107, line: 770, baseType: !4433, offset: 4992)
!4433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4434, line: 5, elements: !819)
!4434 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !106, file: !107, line: 772, baseType: !4436, size: 64, offset: 4992)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4438, line: 18, flags: DIFlagFwdDecl)
!4438 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !106, file: !107, line: 773, baseType: !4440, size: 64, offset: 5056)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4442, line: 41, size: 512, elements: !4443)
!4442 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4443 = !{!4444, !4445, !4539, !4540, !4541, !4542}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4441, file: !4442, line: 42, baseType: !4440, size: 64)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4441, file: !4442, line: 43, baseType: !4446, size: 64, offset: 64)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4448)
!4448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4442, line: 125, size: 1408, elements: !4449)
!4449 = !{!4450, !4454, !4458, !4464, !4468, !4469, !4474, !4478, !4482, !4486, !4490, !4491, !4495, !4499, !4503, !4514, !4515, !4516, !4517, !4527, !4531, !4535}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4448, file: !4442, line: 126, baseType: !4451, size: 64)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{!4440, !4440}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4448, file: !4442, line: 127, baseType: !4455, size: 64, offset: 64)
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = !DISubroutineType(types: !4457)
!4457 = !{null, !4440}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4448, file: !4442, line: 128, baseType: !4459, size: 64, offset: 128)
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4460, size: 64)
!4460 = !DISubroutineType(types: !4461)
!4461 = !{!612, !4462}
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4441)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4448, file: !4442, line: 129, baseType: !4465, size: 64, offset: 192)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{!2482, !4462, !4129}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4448, file: !4442, line: 131, baseType: !4459, size: 64, offset: 256)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4448, file: !4442, line: 133, baseType: !4470, size: 64, offset: 320)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DISubroutineType(types: !4472)
!4472 = !{!4473, !4462}
!4473 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4442, line: 132, flags: DIFlagFwdDecl)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4448, file: !4442, line: 134, baseType: !4475, size: 64, offset: 384)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{!612, !4462, !43}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4448, file: !4442, line: 136, baseType: !4479, size: 64, offset: 448)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{!64, !4462, !43, !74, !73, !236}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4448, file: !4442, line: 141, baseType: !4483, size: 64, offset: 512)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{!64, !4462, !43, !867, !236}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4448, file: !4442, line: 144, baseType: !4487, size: 64, offset: 576)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{!43, !4462}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4448, file: !4442, line: 145, baseType: !4487, size: 64, offset: 640)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4448, file: !4442, line: 146, baseType: !4492, size: 64, offset: 704)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{!4440, !4462}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4448, file: !4442, line: 148, baseType: !4496, size: 64, offset: 768)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{!4440, !4462, !4440}
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4448, file: !4442, line: 151, baseType: !4500, size: 64, offset: 832)
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4501 = !DISubroutineType(types: !4502)
!4502 = !{!4440, !4462, !43}
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4448, file: !4442, line: 153, baseType: !4504, size: 64, offset: 896)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DISubroutineType(types: !4506)
!4506 = !{!64, !4462, !43, !43, !74, !74, !4507}
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4442, line: 94, size: 640, elements: !4509)
!4509 = !{!4510, !4511, !4512}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4508, file: !4442, line: 95, baseType: !4440, size: 64)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4508, file: !4442, line: 96, baseType: !74, size: 32, offset: 64)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4508, file: !4442, line: 97, baseType: !4513, size: 512, offset: 128)
!4513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 512, elements: !1478)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4448, file: !4442, line: 158, baseType: !4496, size: 64, offset: 960)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4448, file: !4442, line: 161, baseType: !4492, size: 64, offset: 1024)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4448, file: !4442, line: 163, baseType: !4451, size: 64, offset: 1088)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4448, file: !4442, line: 164, baseType: !4518, size: 64, offset: 1152)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = !DISubroutineType(types: !4520)
!4520 = !{!64, !4462, !4521}
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4442, line: 73, size: 128, elements: !4523)
!4523 = !{!4524, !4525, !4526}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4522, file: !4442, line: 74, baseType: !74, size: 32)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4522, file: !4442, line: 75, baseType: !74, size: 32, offset: 32)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4522, file: !4442, line: 76, baseType: !4462, size: 64, offset: 64)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4448, file: !4442, line: 166, baseType: !4528, size: 64, offset: 1216)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DISubroutineType(types: !4530)
!4530 = !{!73, !4440, !64}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4448, file: !4442, line: 167, baseType: !4532, size: 64, offset: 1280)
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4533, size: 64)
!4533 = !DISubroutineType(types: !4534)
!4534 = !{!64, !4462, !74}
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4448, file: !4442, line: 168, baseType: !4536, size: 64, offset: 1344)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{!64, !4440}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4441, file: !4442, line: 44, baseType: !105, size: 64, offset: 128)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4441, file: !4442, line: 45, baseType: !11, size: 128, offset: 192)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4441, file: !4442, line: 46, baseType: !11, size: 128, offset: 320)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4441, file: !4442, line: 47, baseType: !151, size: 8, offset: 448)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !106, file: !107, line: 776, baseType: !64, size: 32, offset: 5120)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !106, file: !107, line: 778, baseType: !420, size: 32, offset: 5152)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !106, file: !107, line: 779, baseType: !80, size: 32, offset: 5184)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !106, file: !107, line: 781, baseType: !123, size: 32, offset: 5216)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !106, file: !107, line: 782, baseType: !11, size: 128, offset: 5248)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !106, file: !107, line: 784, baseType: !4549, size: 64, offset: 5376)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4551)
!4551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4552, line: 52, size: 768, elements: !4553)
!4552 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4553 = !{!4554, !4555, !4556, !4557, !4558, !4562, !4566, !4567, !4568, !4569, !4573, !4577}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4551, file: !4552, line: 53, baseType: !43, size: 64)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4551, file: !4552, line: 55, baseType: !240, size: 64, offset: 64)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4551, file: !4552, line: 56, baseType: !240, size: 64, offset: 128)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4551, file: !4552, line: 58, baseType: !4126, size: 64, offset: 192)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4551, file: !4552, line: 59, baseType: !4559, size: 64, offset: 256)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{!189, !4129, !4135}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4551, file: !4552, line: 61, baseType: !4563, size: 64, offset: 320)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{null, !4549}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4551, file: !4552, line: 62, baseType: !4137, size: 64, offset: 384)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4551, file: !4552, line: 64, baseType: !4147, size: 64, offset: 448)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4551, file: !4552, line: 66, baseType: !3960, size: 64, offset: 512)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4551, file: !4552, line: 67, baseType: !4570, size: 64, offset: 576)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!2482, !4129}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4551, file: !4552, line: 69, baseType: !4574, size: 64, offset: 640)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{null, !4129, !3998, !3999}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4551, file: !4552, line: 71, baseType: !4141, size: 64, offset: 704)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !106, file: !107, line: 785, baseType: !240, size: 64, offset: 5440)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !106, file: !107, line: 787, baseType: !4137, size: 64, offset: 5504)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !106, file: !107, line: 788, baseType: !4581, size: 64, offset: 5568)
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !107, line: 46, flags: DIFlagFwdDecl)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !106, file: !107, line: 789, baseType: !4584, size: 64, offset: 5632)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !107, line: 48, flags: DIFlagFwdDecl)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !106, file: !107, line: 791, baseType: !4587, size: 64, offset: 5696)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !107, line: 597, size: 128, elements: !4589)
!4589 = !{!4590, !4600, !4606, !4612, !4613}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4588, file: !107, line: 598, baseType: !4591, size: 32)
!4591 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !107, line: 547, baseType: !74, size: 32, elements: !4592)
!4592 = !{!4593, !4594, !4595, !4596, !4597, !4598, !4599}
!4593 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!4594 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!4595 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!4596 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!4597 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!4598 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!4599 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4588, file: !107, line: 599, baseType: !4601, size: 32, offset: 32)
!4601 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !107, line: 564, baseType: !74, size: 32, elements: !4602)
!4602 = !{!4603, !4604, !4605}
!4603 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!4604 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!4605 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4588, file: !107, line: 600, baseType: !4607, size: 32, offset: 64)
!4607 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !107, line: 577, baseType: !74, size: 32, elements: !4608)
!4608 = !{!4609, !4610, !4611}
!4609 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!4610 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!4611 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4588, file: !107, line: 601, baseType: !612, size: 8, offset: 96)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4588, file: !107, line: 602, baseType: !612, size: 8, offset: 104)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !106, file: !107, line: 793, baseType: !4615, size: 32, offset: 5760)
!4615 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !107, line: 503, baseType: !74, size: 32, elements: !4616)
!4616 = !{!4617, !4618, !4619, !4620}
!4617 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!4618 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!4619 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!4620 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !106, file: !107, line: 795, baseType: !612, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !106, file: !107, line: 796, baseType: !612, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !106, file: !107, line: 797, baseType: !612, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !106, file: !107, line: 798, baseType: !612, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !106, file: !107, line: 799, baseType: !612, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !19, file: !8, line: 676, baseType: !106, size: 5824, offset: 2240)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !19, file: !8, line: 677, baseType: !254, size: 64, offset: 8064)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !19, file: !8, line: 678, baseType: !254, size: 64, offset: 8128)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !19, file: !8, line: 679, baseType: !74, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !19, file: !8, line: 680, baseType: !74, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !7, file: !8, line: 325, baseType: !18, size: 64, offset: 192)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !7, file: !8, line: 327, baseType: !73, size: 64, offset: 256)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !7, file: !8, line: 328, baseType: !88, size: 64, offset: 320)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !7, file: !8, line: 329, baseType: !4635, size: 64, offset: 384)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !8, line: 76, size: 832, elements: !4637)
!4637 = !{!4638, !4639, !4640, !4643, !4644}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4636, file: !8, line: 77, baseType: !18, size: 64)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4636, file: !8, line: 78, baseType: !11, size: 128, offset: 64)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4636, file: !8, line: 79, baseType: !4641, size: 64, offset: 192)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !8, line: 79, flags: DIFlagFwdDecl)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4636, file: !8, line: 80, baseType: !92, size: 8, offset: 256)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4636, file: !8, line: 81, baseType: !110, size: 512, offset: 320)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !7, file: !8, line: 331, baseType: !74, size: 32, offset: 448)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !7, file: !8, line: 332, baseType: !101, size: 16, offset: 480)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !7, file: !8, line: 333, baseType: !101, size: 16, offset: 496)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !7, file: !8, line: 334, baseType: !101, size: 16, offset: 512)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !7, file: !8, line: 335, baseType: !101, size: 16, offset: 528)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !7, file: !8, line: 336, baseType: !74, size: 32, offset: 544)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !7, file: !8, line: 337, baseType: !151, size: 8, offset: 576)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !7, file: !8, line: 338, baseType: !151, size: 8, offset: 584)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !7, file: !8, line: 344, baseType: !4654, size: 64, offset: 640)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !4656, line: 415, size: 64, elements: !4657)
!4656 = !DIFile(filename: "drivers/pci/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ed2acac6ca913a041bbe6982427e7edc")
!4657 = !{!4658, !4659, !4660}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "nextbusn", scope: !4655, file: !4656, line: 416, baseType: !151, size: 8)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "lastbusn", scope: !4655, file: !4656, line: 417, baseType: !151, size: 8, offset: 8)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !4655, file: !4656, line: 418, baseType: !80, size: 32, offset: 32)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !7, file: !8, line: 345, baseType: !6, size: 64, offset: 704)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !7, file: !8, line: 347, baseType: !80, size: 32, offset: 768)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !7, file: !8, line: 348, baseType: !151, size: 8, offset: 800)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !7, file: !8, line: 349, baseType: !151, size: 8, offset: 808)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !7, file: !8, line: 350, baseType: !151, size: 8, offset: 816)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !7, file: !8, line: 351, baseType: !151, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !7, file: !8, line: 352, baseType: !151, size: 8, offset: 832)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !7, file: !8, line: 353, baseType: !151, size: 8, offset: 840)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !7, file: !8, line: 354, baseType: !158, size: 16, offset: 848)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !7, file: !8, line: 355, baseType: !881, size: 64, offset: 896)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !7, file: !8, line: 357, baseType: !4672, size: 64, offset: 960)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !8, line: 918, size: 2368, elements: !4674)
!4674 = !{!4675, !4676, !4677, !4690, !4694, !4696, !4700, !4704, !4705, !4709, !4710, !4714, !4734, !4735, !4736, !4737, !4742}
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4673, file: !8, line: 919, baseType: !11, size: 128)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4673, file: !8, line: 920, baseType: !43, size: 64, offset: 128)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4673, file: !8, line: 921, baseType: !4678, size: 64, offset: 192)
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4680)
!4680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !4206, line: 44, size: 320, elements: !4681)
!4681 = !{!4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4680, file: !4206, line: 45, baseType: !81, size: 32)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4680, file: !4206, line: 45, baseType: !81, size: 32, offset: 32)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4680, file: !4206, line: 46, baseType: !81, size: 32, offset: 64)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4680, file: !4206, line: 46, baseType: !81, size: 32, offset: 96)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4680, file: !4206, line: 47, baseType: !81, size: 32, offset: 128)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4680, file: !4206, line: 47, baseType: !81, size: 32, offset: 160)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4680, file: !4206, line: 48, baseType: !4222, size: 64, offset: 192)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !4680, file: !4206, line: 49, baseType: !81, size: 32, offset: 256)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4673, file: !8, line: 922, baseType: !4691, size: 64, offset: 256)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = !DISubroutineType(types: !4693)
!4693 = !{!64, !6, !4678}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4673, file: !8, line: 923, baseType: !4695, size: 64, offset: 320)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4673, file: !8, line: 924, baseType: !4697, size: 64, offset: 384)
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = !DISubroutineType(types: !4699)
!4699 = !{!64, !6, !4233}
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4673, file: !8, line: 925, baseType: !4701, size: 64, offset: 448)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{!64, !6}
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4673, file: !8, line: 926, baseType: !4695, size: 64, offset: 512)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4673, file: !8, line: 927, baseType: !4706, size: 64, offset: 576)
!4706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4707, size: 64)
!4707 = !DISubroutineType(types: !4708)
!4708 = !{!64, !6, !64}
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !4673, file: !8, line: 928, baseType: !4706, size: 64, offset: 640)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !4673, file: !8, line: 929, baseType: !4711, size: 64, offset: 704)
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = !DISubroutineType(types: !4713)
!4713 = !{!80, !6}
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4673, file: !8, line: 930, baseType: !4715, size: 64, offset: 768)
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4717)
!4717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !8, line: 837, size: 448, elements: !4718)
!4718 = !{!4719, !4725, !4729, !4730, !4731, !4732, !4733}
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4717, file: !8, line: 839, baseType: !4720, size: 64)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DISubroutineType(types: !4722)
!4722 = !{!4723, !6, !4724}
!4723 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !8, line: 814, baseType: !74)
!4724 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !8, line: 196, baseType: !74)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4717, file: !8, line: 843, baseType: !4726, size: 64, offset: 64)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{!4723, !6}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4717, file: !8, line: 846, baseType: !4726, size: 64, offset: 128)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4717, file: !8, line: 849, baseType: !4695, size: 64, offset: 192)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4717, file: !8, line: 850, baseType: !4695, size: 64, offset: 256)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4717, file: !8, line: 853, baseType: !4695, size: 64, offset: 320)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !4717, file: !8, line: 856, baseType: !4695, size: 64, offset: 384)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4673, file: !8, line: 931, baseType: !240, size: 64, offset: 832)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4673, file: !8, line: 932, baseType: !240, size: 64, offset: 896)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4673, file: !8, line: 933, baseType: !4188, size: 1152, offset: 960)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4673, file: !8, line: 934, baseType: !4738, size: 192, offset: 2112)
!4738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !8, line: 801, size: 192, elements: !4739)
!4739 = !{!4740, !4741}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4738, file: !8, line: 802, baseType: !123, size: 32)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4738, file: !8, line: 803, baseType: !11, size: 128, offset: 64)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !4673, file: !8, line: 935, baseType: !612, size: 8, offset: 2304)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !7, file: !8, line: 358, baseType: !36, size: 64, offset: 1024)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !7, file: !8, line: 364, baseType: !4423, size: 128, offset: 1088)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !7, file: !8, line: 366, baseType: !4746, size: 32, offset: 1216)
!4746 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !8, line: 171, baseType: !64)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !7, file: !8, line: 369, baseType: !151, size: 8, offset: 1248)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !7, file: !8, line: 370, baseType: !74, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !7, file: !8, line: 371, baseType: !74, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !7, file: !8, line: 373, baseType: !74, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !7, file: !8, line: 374, baseType: !74, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !7, file: !8, line: 375, baseType: !74, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !7, file: !8, line: 376, baseType: !74, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !7, file: !8, line: 377, baseType: !74, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !7, file: !8, line: 378, baseType: !74, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !7, file: !8, line: 379, baseType: !74, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !7, file: !8, line: 380, baseType: !74, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !7, file: !8, line: 382, baseType: !74, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !7, file: !8, line: 383, baseType: !74, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !7, file: !8, line: 384, baseType: !74, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !7, file: !8, line: 385, baseType: !74, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !7, file: !8, line: 388, baseType: !74, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !7, file: !8, line: 390, baseType: !74, size: 32, offset: 1280)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !7, file: !8, line: 391, baseType: !74, size: 32, offset: 1312)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !7, file: !8, line: 394, baseType: !4766, size: 64, offset: 1344)
!4766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4767, size: 64)
!4767 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !8, line: 316, flags: DIFlagFwdDecl)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !7, file: !8, line: 395, baseType: !158, size: 16, offset: 1408)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !7, file: !8, line: 396, baseType: !74, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !7, file: !8, line: 399, baseType: !74, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !7, file: !8, line: 400, baseType: !74, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !7, file: !8, line: 402, baseType: !4724, size: 32, offset: 1440)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !7, file: !8, line: 403, baseType: !106, size: 5824, offset: 1472)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !7, file: !8, line: 405, baseType: !64, size: 32, offset: 7296)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !7, file: !8, line: 411, baseType: !74, size: 32, offset: 7328)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !7, file: !8, line: 412, baseType: !4777, size: 5632, offset: 7360)
!4777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 5632, elements: !4778)
!4778 = !{!4779}
!4779 = !DISubrange(count: 11)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !7, file: !8, line: 413, baseType: !30, size: 512, offset: 12992)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !7, file: !8, line: 415, baseType: !612, size: 8, offset: 13504)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !7, file: !8, line: 417, baseType: !74, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !7, file: !8, line: 418, baseType: !74, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !7, file: !8, line: 419, baseType: !74, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !7, file: !8, line: 420, baseType: !74, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !7, file: !8, line: 421, baseType: !74, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !7, file: !8, line: 423, baseType: !74, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !7, file: !8, line: 424, baseType: !74, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !7, file: !8, line: 425, baseType: !74, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !7, file: !8, line: 426, baseType: !74, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !7, file: !8, line: 427, baseType: !74, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !7, file: !8, line: 428, baseType: !74, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !7, file: !8, line: 429, baseType: !74, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !7, file: !8, line: 430, baseType: !74, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !7, file: !8, line: 431, baseType: !74, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !7, file: !8, line: 432, baseType: !74, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !7, file: !8, line: 433, baseType: !74, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !7, file: !8, line: 434, baseType: !74, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !7, file: !8, line: 435, baseType: !74, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !7, file: !8, line: 436, baseType: !74, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !7, file: !8, line: 437, baseType: !74, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !7, file: !8, line: 438, baseType: !74, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !7, file: !8, line: 439, baseType: !74, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !7, file: !8, line: 440, baseType: !74, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !7, file: !8, line: 441, baseType: !74, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !7, file: !8, line: 442, baseType: !74, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !7, file: !8, line: 443, baseType: !74, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !7, file: !8, line: 451, baseType: !74, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !7, file: !8, line: 457, baseType: !74, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !7, file: !8, line: 458, baseType: !74, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !7, file: !8, line: 459, baseType: !74, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !7, file: !8, line: 460, baseType: !74, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !7, file: !8, line: 461, baseType: !74, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !7, file: !8, line: 462, baseType: !74, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !7, file: !8, line: 463, baseType: !74, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !7, file: !8, line: 464, baseType: !74, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !7, file: !8, line: 465, baseType: !74, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !7, file: !8, line: 466, baseType: !74, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !7, file: !8, line: 467, baseType: !74, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !7, file: !8, line: 468, baseType: !4821, size: 16, offset: 13552)
!4821 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !8, line: 222, baseType: !101)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !7, file: !8, line: 469, baseType: !143, size: 32, offset: 13568)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !7, file: !8, line: 471, baseType: !123, size: 32, offset: 13600)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !7, file: !8, line: 472, baseType: !4825, size: 512, offset: 13632)
!4825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 512, elements: !2666)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !7, file: !8, line: 473, baseType: !900, size: 64, offset: 14144)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !7, file: !8, line: 474, baseType: !4828, size: 704, offset: 14208)
!4828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 704, elements: !4778)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !7, file: !8, line: 475, baseType: !4828, size: 704, offset: 14912)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !7, file: !8, line: 487, baseType: !73, size: 64, offset: 15616)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !7, file: !8, line: 488, baseType: !490, size: 32, offset: 15680)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !7, file: !8, line: 490, baseType: !4833, size: 320, offset: 15744)
!4833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !8, line: 309, size: 320, elements: !4834)
!4834 = !{!4835, !4836, !4837}
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4833, file: !8, line: 310, baseType: !532, size: 256)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4833, file: !8, line: 311, baseType: !74, size: 32, offset: 256)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4833, file: !8, line: 312, baseType: !151, size: 8, offset: 288)
!4838 = !DIDerivedType(tag: DW_TAG_member, scope: !7, file: !8, line: 497, baseType: !4839, size: 64, offset: 16064)
!4839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !7, file: !8, line: 497, size: 64, elements: !4840)
!4840 = !{!4841, !4868}
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4839, file: !8, line: 498, baseType: !4842, size: 64)
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4843, size: 64)
!4843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4656, line: 294, size: 1024, elements: !4844)
!4844 = !{!4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4867}
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4843, file: !4656, line: 295, baseType: !64, size: 32)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "nres", scope: !4843, file: !4656, line: 296, baseType: !64, size: 32, offset: 32)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4843, file: !4656, line: 297, baseType: !80, size: 32, offset: 64)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !4843, file: !4656, line: 298, baseType: !158, size: 16, offset: 96)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "total_VFs", scope: !4843, file: !4656, line: 299, baseType: !158, size: 16, offset: 112)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "initial_VFs", scope: !4843, file: !4656, line: 300, baseType: !158, size: 16, offset: 128)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "num_VFs", scope: !4843, file: !4656, line: 301, baseType: !158, size: 16, offset: 144)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4843, file: !4656, line: 302, baseType: !158, size: 16, offset: 160)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !4843, file: !4656, line: 303, baseType: !158, size: 16, offset: 176)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "vf_device", scope: !4843, file: !4656, line: 304, baseType: !158, size: 16, offset: 192)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "pgsz", scope: !4843, file: !4656, line: 305, baseType: !80, size: 32, offset: 224)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4843, file: !4656, line: 306, baseType: !151, size: 8, offset: 256)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "max_VF_buses", scope: !4843, file: !4656, line: 307, baseType: !151, size: 8, offset: 264)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "driver_max_VFs", scope: !4843, file: !4656, line: 308, baseType: !158, size: 16, offset: 272)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4843, file: !4656, line: 309, baseType: !6, size: 64, offset: 320)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4843, file: !4656, line: 310, baseType: !6, size: 64, offset: 384)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4843, file: !4656, line: 311, baseType: !80, size: 32, offset: 448)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4843, file: !4656, line: 312, baseType: !151, size: 8, offset: 480)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4843, file: !4656, line: 313, baseType: !158, size: 16, offset: 496)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4843, file: !4656, line: 314, baseType: !158, size: 16, offset: 512)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "barsz", scope: !4843, file: !4656, line: 315, baseType: !4866, size: 384, offset: 576)
!4866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 384, elements: !1789)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_autoprobe", scope: !4843, file: !4656, line: 316, baseType: !612, size: 8, offset: 960)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4839, file: !8, line: 499, baseType: !6, size: 64)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !7, file: !8, line: 501, baseType: !158, size: 16, offset: 16128)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !7, file: !8, line: 502, baseType: !151, size: 8, offset: 16144)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !7, file: !8, line: 505, baseType: !158, size: 16, offset: 16160)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !7, file: !8, line: 506, baseType: !80, size: 32, offset: 16192)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !7, file: !8, line: 507, baseType: !74, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !7, file: !8, line: 510, baseType: !158, size: 16, offset: 16240)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !7, file: !8, line: 511, baseType: !158, size: 16, offset: 16256)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !7, file: !8, line: 519, baseType: !158, size: 16, offset: 16272)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !7, file: !8, line: 520, baseType: !35, size: 64, offset: 16320)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !7, file: !8, line: 521, baseType: !236, size: 64, offset: 16384)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !7, file: !8, line: 526, baseType: !43, size: 64, offset: 16448)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !7, file: !8, line: 528, baseType: !47, size: 64, offset: 16512)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !7, file: !8, line: 531, baseType: !4882, size: 56, offset: 16576)
!4882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 56, elements: !653)
!4883 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/pci/.vpd.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/pci/vpd\22 -D KBUILD_BASENAME=\22vpd\22 -D KBUILD_MODNAME=\22vpd\22 -D __KBUILD_MODNAME=kmod_vpd -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/pci/vpd.ll drivers/pci/vpd.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4884, retainedTypes: !4914, globals: !4945, splitDebugInlining: false, nameTableKind: None)
!4884 = !{!459, !951, !1023, !1446, !1702, !2082, !2209, !2571, !3105, !3901, !3966, !4197, !4274, !4351, !4359, !4591, !4601, !4607, !4615, !4885, !4890, !4904}
!4885 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4886, line: 10, baseType: !74, size: 32, elements: !4887)
!4886 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!4887 = !{!4888, !4889}
!4888 = !DIEnumerator(name: "false", value: 0)
!4889 = !DIEnumerator(name: "true", value: 1)
!4890 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pci_dev_flags", file: !8, line: 223, baseType: !74, size: 32, elements: !4891)
!4891 = !{!4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903}
!4892 = !DIEnumerator(name: "PCI_DEV_FLAGS_MSI_INTX_DISABLE_BUG", value: 1)
!4893 = !DIEnumerator(name: "PCI_DEV_FLAGS_NO_D3", value: 2)
!4894 = !DIEnumerator(name: "PCI_DEV_FLAGS_ASSIGNED", value: 4)
!4895 = !DIEnumerator(name: "PCI_DEV_FLAGS_ACS_ENABLED_QUIRK", value: 8)
!4896 = !DIEnumerator(name: "PCI_DEV_FLAG_PCIE_BRIDGE_ALIAS", value: 32)
!4897 = !DIEnumerator(name: "PCI_DEV_FLAGS_NO_BUS_RESET", value: 64)
!4898 = !DIEnumerator(name: "PCI_DEV_FLAGS_NO_PM_RESET", value: 128)
!4899 = !DIEnumerator(name: "PCI_DEV_FLAGS_VPD_REF_F0", value: 256)
!4900 = !DIEnumerator(name: "PCI_DEV_FLAGS_BRIDGE_XLATE_ROOT", value: 512)
!4901 = !DIEnumerator(name: "PCI_DEV_FLAGS_NO_FLR_RESET", value: 1024)
!4902 = !DIEnumerator(name: "PCI_DEV_FLAGS_NO_RELAXED_ORDERING", value: 2048)
!4903 = !DIEnumerator(name: "PCI_DEV_FLAGS_HAS_MSI_MASKING", value: 4096)
!4904 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !4905, line: 364, baseType: !74, size: 32, elements: !4906)
!4905 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!4906 = !{!4907, !4908, !4909, !4910, !4911, !4912, !4913}
!4907 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!4908 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!4909 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!4910 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!4911 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!4912 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!4913 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!4914 = !{!1054, !73, !105, !6, !159, !4915, !4916, !47, !4929, !881, !4930, !4931, !1309, !225, !64, !81, !4932, !4933}
!4915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !1986, line: 36, baseType: !159)
!4916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4917, size: 64)
!4917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4918)
!4918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4920, file: !4919, line: 27, size: 16, elements: !4927)
!4919 = !DIFile(filename: "./include/asm-generic/unaligned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "748f8f0540bc62c04225db7eeae0e022")
!4920 = distinct !DISubprogram(name: "get_unaligned_le16", scope: !4919, file: !4919, line: 25, type: !4921, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !4923)
!4921 = !DISubroutineType(types: !4922)
!4922 = !{!158, !2482}
!4923 = !{!4924, !4925}
!4924 = !DILocalVariable(name: "p", arg: 1, scope: !4920, file: !4919, line: 25, type: !2482)
!4925 = !DILocalVariable(name: "__pptr", scope: !4926, file: !4919, line: 27, type: !4916)
!4926 = distinct !DILexicalBlock(scope: !4920, file: !4919, line: 27, column: 9)
!4927 = !{!4928}
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4918, file: !4919, line: 27, baseType: !4915, size: 16)
!4929 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !12, line: 42, baseType: !47)
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!4931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!4932 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !1986, line: 38, baseType: !81)
!4933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4934, size: 64)
!4934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4935)
!4935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4936, file: !4919, line: 32, size: 32, elements: !4943)
!4936 = distinct !DISubprogram(name: "get_unaligned_le32", scope: !4919, file: !4919, line: 30, type: !4937, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !4939)
!4937 = !DISubroutineType(types: !4938)
!4938 = !{!80, !2482}
!4939 = !{!4940, !4941}
!4940 = !DILocalVariable(name: "p", arg: 1, scope: !4936, file: !4919, line: 30, type: !2482)
!4941 = !DILocalVariable(name: "__pptr", scope: !4942, file: !4919, line: 32, type: !4933)
!4942 = distinct !DILexicalBlock(scope: !4936, file: !4919, line: 32, column: 9)
!4943 = !{!4944}
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4935, file: !4919, line: 32, baseType: !4932, size: 32)
!4945 = !{!0, !4946, !4951, !4953, !4955, !4957, !4959, !4961, !4963, !4965, !4967, !4970, !4972, !4974, !4976, !4978, !4980, !4982, !4984, !4986, !4988, !4990, !4992, !4994, !4996, !4998, !5000, !5002, !5005, !5008, !5010, !5015, !5020, !5025, !5028, !5033, !5038}
!4946 = !DIGlobalVariableExpression(var: !4947, expr: !DIExpression())
!4947 = distinct !DIGlobalVariable(scope: null, file: !3, line: 270, type: !4948, isLocal: true, isDefinition: true)
!4948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 120, elements: !4949)
!4949 = !{!4950}
!4950 = !DISubrange(count: 15)
!4951 = !DIGlobalVariableExpression(var: !4952, expr: !DIExpression())
!4952 = distinct !DIGlobalVariable(name: "pci_dev_vpd_attr_group", scope: !4883, file: !3, line: 338, type: !242, isLocal: false, isDefinition: true)
!4953 = !DIGlobalVariableExpression(var: !4954, expr: !DIExpression())
!4954 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_vpd_alloc292", scope: !4883, file: !3, line: 368, type: !73, isLocal: true, isDefinition: true)
!4955 = !DIGlobalVariableExpression(var: !4956, expr: !DIExpression())
!4956 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_vpd_find_id_string293", scope: !4883, file: !3, line: 398, type: !73, isLocal: true, isDefinition: true)
!4957 = !DIGlobalVariableExpression(var: !4958, expr: !DIExpression())
!4958 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_read_vpd294", scope: !4883, file: !3, line: 446, type: !73, isLocal: true, isDefinition: true)
!4959 = !DIGlobalVariableExpression(var: !4960, expr: !DIExpression())
!4960 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_read_vpd_any295", scope: !4883, file: !3, line: 453, type: !73, isLocal: true, isDefinition: true)
!4961 = !DIGlobalVariableExpression(var: !4962, expr: !DIExpression())
!4962 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_write_vpd296", scope: !4883, file: !3, line: 484, type: !73, isLocal: true, isDefinition: true)
!4963 = !DIGlobalVariableExpression(var: !4964, expr: !DIExpression())
!4964 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_write_vpd_any297", scope: !4883, file: !3, line: 491, type: !73, isLocal: true, isDefinition: true)
!4965 = !DIGlobalVariableExpression(var: !4966, expr: !DIExpression())
!4966 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_vpd_find_ro_info_keyword298", scope: !4883, file: !3, line: 518, type: !73, isLocal: true, isDefinition: true)
!4967 = !DIGlobalVariableExpression(var: !4968, expr: !DIExpression())
!4968 = distinct !DIGlobalVariable(scope: null, file: !3, line: 527, type: !4969, isLocal: true, isDefinition: true)
!4969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 24, elements: !190)
!4970 = !DIGlobalVariableExpression(var: !4971, expr: !DIExpression())
!4971 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_vpd_check_csum299", scope: !4883, file: !3, line: 541, type: !73, isLocal: true, isDefinition: true)
!4972 = !DIGlobalVariableExpression(var: !4973, expr: !DIExpression())
!4973 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___UNIQUE_ID_quirk_f0_vpd_link300301", scope: !4883, file: !3, line: 566, type: !73, isLocal: true, isDefinition: true)
!4974 = !DIGlobalVariableExpression(var: !4975, expr: !DIExpression())
!4975 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd302303", scope: !4883, file: !3, line: 581, type: !73, isLocal: true, isDefinition: true)
!4976 = !DIGlobalVariableExpression(var: !4977, expr: !DIExpression())
!4977 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd304305", scope: !4883, file: !3, line: 582, type: !73, isLocal: true, isDefinition: true)
!4978 = !DIGlobalVariableExpression(var: !4979, expr: !DIExpression())
!4979 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd306307", scope: !4883, file: !3, line: 583, type: !73, isLocal: true, isDefinition: true)
!4980 = !DIGlobalVariableExpression(var: !4981, expr: !DIExpression())
!4981 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd308309", scope: !4883, file: !3, line: 584, type: !73, isLocal: true, isDefinition: true)
!4982 = !DIGlobalVariableExpression(var: !4983, expr: !DIExpression())
!4983 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd310311", scope: !4883, file: !3, line: 585, type: !73, isLocal: true, isDefinition: true)
!4984 = !DIGlobalVariableExpression(var: !4985, expr: !DIExpression())
!4985 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd312313", scope: !4883, file: !3, line: 586, type: !73, isLocal: true, isDefinition: true)
!4986 = !DIGlobalVariableExpression(var: !4987, expr: !DIExpression())
!4987 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd314315", scope: !4883, file: !3, line: 587, type: !73, isLocal: true, isDefinition: true)
!4988 = !DIGlobalVariableExpression(var: !4989, expr: !DIExpression())
!4989 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd316317", scope: !4883, file: !3, line: 588, type: !73, isLocal: true, isDefinition: true)
!4990 = !DIGlobalVariableExpression(var: !4991, expr: !DIExpression())
!4991 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd318319", scope: !4883, file: !3, line: 589, type: !73, isLocal: true, isDefinition: true)
!4992 = !DIGlobalVariableExpression(var: !4993, expr: !DIExpression())
!4993 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd320321", scope: !4883, file: !3, line: 590, type: !73, isLocal: true, isDefinition: true)
!4994 = !DIGlobalVariableExpression(var: !4995, expr: !DIExpression())
!4995 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd322323", scope: !4883, file: !3, line: 591, type: !73, isLocal: true, isDefinition: true)
!4996 = !DIGlobalVariableExpression(var: !4997, expr: !DIExpression())
!4997 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd324325", scope: !4883, file: !3, line: 592, type: !73, isLocal: true, isDefinition: true)
!4998 = !DIGlobalVariableExpression(var: !4999, expr: !DIExpression())
!4999 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___UNIQUE_ID_quirk_blacklist_vpd326327", scope: !4883, file: !3, line: 597, type: !73, isLocal: true, isDefinition: true)
!5000 = !DIGlobalVariableExpression(var: !5001, expr: !DIExpression())
!5001 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___UNIQUE_ID_quirk_chelsio_extend_vpd328329", scope: !4883, file: !3, line: 623, type: !73, isLocal: true, isDefinition: true)
!5002 = !DIGlobalVariableExpression(var: !5003, expr: !DIExpression())
!5003 = distinct !DIGlobalVariable(name: "vpd_attrs", scope: !4883, file: !3, line: 322, type: !5004, isLocal: true, isDefinition: true)
!5004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 128, elements: !651)
!5005 = !DIGlobalVariableExpression(var: !5006, expr: !DIExpression())
!5006 = distinct !DIGlobalVariable(scope: null, file: !3, line: 320, type: !5007, isLocal: true, isDefinition: true)
!5007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 32, elements: !52)
!5008 = !DIGlobalVariableExpression(var: !5009, expr: !DIExpression())
!5009 = distinct !DIGlobalVariable(name: "bin_attr_vpd", scope: !4883, file: !3, line: 320, type: !255, isLocal: true, isDefinition: true)
!5010 = !DIGlobalVariableExpression(var: !5011, expr: !DIExpression())
!5011 = distinct !DIGlobalVariable(scope: null, file: !3, line: 69, type: !5012, isLocal: true, isDefinition: true)
!5012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 248, elements: !5013)
!5013 = !{!5014}
!5014 = !DISubrange(count: 31)
!5015 = !DIGlobalVariableExpression(var: !5016, expr: !DIExpression())
!5016 = distinct !DIGlobalVariable(scope: null, file: !3, line: 93, type: !5017, isLocal: true, isDefinition: true)
!5017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 400, elements: !5018)
!5018 = !{!5019}
!5019 = !DISubrange(count: 50)
!5020 = !DIGlobalVariableExpression(var: !5021, expr: !DIExpression())
!5021 = distinct !DIGlobalVariable(scope: null, file: !3, line: 93, type: !5022, isLocal: true, isDefinition: true)
!5022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 264, elements: !5023)
!5023 = !{!5024}
!5024 = !DISubrange(count: 33)
!5025 = !DIGlobalVariableExpression(var: !5026, expr: !DIExpression())
!5026 = distinct !DIGlobalVariable(scope: null, file: !3, line: 93, type: !5027, isLocal: true, isDefinition: true)
!5027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 8, elements: !1563)
!5028 = !DIGlobalVariableExpression(var: !5029, expr: !DIExpression())
!5029 = distinct !DIGlobalVariable(scope: null, file: !4905, line: 480, type: !5030, isLocal: true, isDefinition: true)
!5030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 168, elements: !5031)
!5031 = !{!5032}
!5032 = !DISubrange(count: 21)
!5033 = !DIGlobalVariableExpression(var: !5034, expr: !DIExpression())
!5034 = distinct !DIGlobalVariable(scope: null, file: !3, line: 151, type: !5035, isLocal: true, isDefinition: true)
!5035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 912, elements: !5036)
!5036 = !{!5037}
!5037 = !DISubrange(count: 114)
!5038 = !DIGlobalVariableExpression(var: !5039, expr: !DIExpression())
!5039 = distinct !DIGlobalVariable(scope: null, file: !3, line: 579, type: !5040, isLocal: true, isDefinition: true)
!5040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 704, elements: !5041)
!5041 = !{!5042}
!5042 = !DISubrange(count: 88)
!5043 = !{!5044}
!5044 = !DILocalVariable(name: "dev", arg: 1, scope: !2, file: !3, line: 264, type: !6)
!5045 = !{i32 7, !"Dwarf Version", i32 5}
!5046 = !{i32 2, !"Debug Info Version", i32 3}
!5047 = !{i32 1, !"wchar_size", i32 2}
!5048 = !{i32 8, !"cf-protection-branch", i32 1}
!5049 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5050 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5051 = !{i32 1, !"Code Model", i32 2}
!5052 = !{i32 1, !"override-stack-alignment", i32 8}
!5053 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5054 = !DILocation(line: 264, column: 35, scope: !2)
!5055 = !DILocation(line: 266, column: 6, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !2, file: !3, line: 266, column: 6)
!5057 = !DILocation(line: 266, column: 11, scope: !5056)
!5058 = !DILocation(line: 266, column: 15, scope: !5056)
!5059 = !DILocation(line: 266, column: 19, scope: !5056)
!5060 = !DILocation(line: 266, column: 6, scope: !2)
!5061 = !DILocation(line: 267, column: 3, scope: !5056)
!5062 = !DILocation(line: 269, column: 37, scope: !2)
!5063 = !DILocation(line: 269, column: 17, scope: !2)
!5064 = !DILocation(line: 269, column: 2, scope: !2)
!5065 = !DILocation(line: 269, column: 7, scope: !2)
!5066 = !DILocation(line: 269, column: 11, scope: !2)
!5067 = !DILocation(line: 269, column: 15, scope: !2)
!5068 = !DILocation(line: 270, column: 2, scope: !2)
!5069 = !DILocation(line: 270, column: 2, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !2, file: !3, line: 270, column: 2)
!5071 = !DILocation(line: 271, column: 1, scope: !2)
!5072 = !DISubprogram(name: "pci_find_capability", scope: !8, file: !8, line: 1164, type: !5073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5073 = !DISubroutineType(types: !5074)
!5074 = !{!151, !6, !64}
!5075 = !DISubprogram(name: "__mutex_init", scope: !533, file: !533, line: 121, type: !5076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5076 = !DISubroutineType(types: !5077)
!5077 = !{null, !5078, !43, !5079}
!5078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!5079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!5080 = distinct !DISubprogram(name: "vpd_attr_is_visible", scope: !3, file: !3, line: 327, type: !252, scopeLine: 329, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5081)
!5081 = !{!5082, !5083, !5084, !5085, !5086, !5088}
!5082 = !DILocalVariable(name: "kobj", arg: 1, scope: !5080, file: !3, line: 327, type: !116)
!5083 = !DILocalVariable(name: "a", arg: 2, scope: !5080, file: !3, line: 328, type: !254)
!5084 = !DILocalVariable(name: "n", arg: 3, scope: !5080, file: !3, line: 328, type: !64)
!5085 = !DILocalVariable(name: "pdev", scope: !5080, file: !3, line: 330, type: !6)
!5086 = !DILocalVariable(name: "__mptr", scope: !5087, file: !3, line: 330, type: !73)
!5087 = distinct !DILexicalBlock(scope: !5080, file: !3, line: 330, column: 25)
!5088 = !DILocalVariable(name: "__mptr", scope: !5089, file: !3, line: 330, type: !73)
!5089 = distinct !DILexicalBlock(scope: !5087, file: !3, line: 330, column: 25)
!5090 = !DILocation(line: 327, column: 52, scope: !5080)
!5091 = !DILocation(line: 328, column: 30, scope: !5080)
!5092 = !DILocation(line: 328, column: 37, scope: !5080)
!5093 = !DILocation(line: 330, column: 2, scope: !5080)
!5094 = !DILocation(line: 330, column: 18, scope: !5080)
!5095 = !DILocation(line: 330, column: 25, scope: !5087)
!5096 = !DILocation(line: 330, column: 25, scope: !5089)
!5097 = !DILocation(line: 330, column: 25, scope: !5080)
!5098 = !DILocation(line: 332, column: 7, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !5080, file: !3, line: 332, column: 6)
!5100 = !DILocation(line: 332, column: 13, scope: !5099)
!5101 = !DILocation(line: 332, column: 17, scope: !5099)
!5102 = !DILocation(line: 332, column: 6, scope: !5080)
!5103 = !DILocation(line: 333, column: 3, scope: !5099)
!5104 = !DILocation(line: 335, column: 9, scope: !5080)
!5105 = !DILocation(line: 335, column: 12, scope: !5080)
!5106 = !DILocation(line: 335, column: 17, scope: !5080)
!5107 = !DILocation(line: 335, column: 2, scope: !5080)
!5108 = !DILocation(line: 336, column: 1, scope: !5080)
!5109 = distinct !DISubprogram(name: "pci_vpd_alloc", scope: !3, file: !3, line: 343, type: !5110, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5112)
!5110 = !DISubroutineType(types: !5111)
!5111 = !{!73, !6, !604}
!5112 = !{!5113, !5114, !5115, !5116, !5117}
!5113 = !DILocalVariable(name: "dev", arg: 1, scope: !5109, file: !3, line: 343, type: !6)
!5114 = !DILocalVariable(name: "size", arg: 2, scope: !5109, file: !3, line: 343, type: !604)
!5115 = !DILocalVariable(name: "len", scope: !5109, file: !3, line: 345, type: !74)
!5116 = !DILocalVariable(name: "buf", scope: !5109, file: !3, line: 346, type: !73)
!5117 = !DILocalVariable(name: "cnt", scope: !5109, file: !3, line: 347, type: !64)
!5118 = !DILocation(line: 343, column: 37, scope: !5109)
!5119 = !DILocation(line: 343, column: 56, scope: !5109)
!5120 = !DILocation(line: 345, column: 2, scope: !5109)
!5121 = !DILocation(line: 345, column: 15, scope: !5109)
!5122 = !DILocation(line: 346, column: 2, scope: !5109)
!5123 = !DILocation(line: 346, column: 8, scope: !5109)
!5124 = !DILocation(line: 347, column: 2, scope: !5109)
!5125 = !DILocation(line: 347, column: 6, scope: !5109)
!5126 = !DILocation(line: 349, column: 25, scope: !5127)
!5127 = distinct !DILexicalBlock(scope: !5109, file: !3, line: 349, column: 6)
!5128 = !DILocation(line: 349, column: 7, scope: !5127)
!5129 = !DILocation(line: 349, column: 6, scope: !5109)
!5130 = !DILocation(line: 350, column: 10, scope: !5127)
!5131 = !DILocation(line: 350, column: 3, scope: !5127)
!5132 = !DILocation(line: 352, column: 8, scope: !5109)
!5133 = !DILocation(line: 352, column: 13, scope: !5109)
!5134 = !DILocation(line: 352, column: 17, scope: !5109)
!5135 = !DILocation(line: 352, column: 6, scope: !5109)
!5136 = !DILocation(line: 353, column: 16, scope: !5109)
!5137 = !DILocation(line: 353, column: 8, scope: !5109)
!5138 = !DILocation(line: 353, column: 6, scope: !5109)
!5139 = !DILocation(line: 354, column: 7, scope: !5140)
!5140 = distinct !DILexicalBlock(scope: !5109, file: !3, line: 354, column: 6)
!5141 = !DILocation(line: 354, column: 6, scope: !5109)
!5142 = !DILocation(line: 355, column: 10, scope: !5140)
!5143 = !DILocation(line: 355, column: 3, scope: !5140)
!5144 = !DILocation(line: 357, column: 21, scope: !5109)
!5145 = !DILocation(line: 357, column: 29, scope: !5109)
!5146 = !DILocation(line: 357, column: 34, scope: !5109)
!5147 = !DILocation(line: 357, column: 8, scope: !5109)
!5148 = !DILocation(line: 357, column: 6, scope: !5109)
!5149 = !DILocation(line: 358, column: 6, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !5109, file: !3, line: 358, column: 6)
!5151 = !DILocation(line: 358, column: 13, scope: !5150)
!5152 = !DILocation(line: 358, column: 10, scope: !5150)
!5153 = !DILocation(line: 358, column: 6, scope: !5109)
!5154 = !DILocation(line: 359, column: 9, scope: !5155)
!5155 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 358, column: 18)
!5156 = !DILocation(line: 359, column: 3, scope: !5155)
!5157 = !DILocation(line: 360, column: 10, scope: !5155)
!5158 = !DILocation(line: 360, column: 3, scope: !5155)
!5159 = !DILocation(line: 363, column: 6, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5109, file: !3, line: 363, column: 6)
!5161 = !DILocation(line: 363, column: 6, scope: !5109)
!5162 = !DILocation(line: 364, column: 11, scope: !5160)
!5163 = !DILocation(line: 364, column: 4, scope: !5160)
!5164 = !DILocation(line: 364, column: 9, scope: !5160)
!5165 = !DILocation(line: 364, column: 3, scope: !5160)
!5166 = !DILocation(line: 366, column: 9, scope: !5109)
!5167 = !DILocation(line: 366, column: 2, scope: !5109)
!5168 = !DILocation(line: 367, column: 1, scope: !5109)
!5169 = distinct !DISubprogram(name: "pci_vpd_available", scope: !3, file: !3, line: 99, type: !5170, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5172)
!5170 = !DISubroutineType(types: !5171)
!5171 = !{!612, !6, !612}
!5172 = !{!5173, !5174, !5175}
!5173 = !DILocalVariable(name: "dev", arg: 1, scope: !5169, file: !3, line: 99, type: !6)
!5174 = !DILocalVariable(name: "check_size", arg: 2, scope: !5169, file: !3, line: 99, type: !612)
!5175 = !DILocalVariable(name: "vpd", scope: !5169, file: !3, line: 101, type: !5176)
!5176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4833, size: 64)
!5177 = !DILocation(line: 99, column: 47, scope: !5169)
!5178 = !DILocation(line: 99, column: 57, scope: !5169)
!5179 = !DILocation(line: 101, column: 2, scope: !5169)
!5180 = !DILocation(line: 101, column: 18, scope: !5169)
!5181 = !DILocation(line: 101, column: 25, scope: !5169)
!5182 = !DILocation(line: 101, column: 30, scope: !5169)
!5183 = !DILocation(line: 103, column: 7, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5169, file: !3, line: 103, column: 6)
!5185 = !DILocation(line: 103, column: 12, scope: !5184)
!5186 = !DILocation(line: 103, column: 6, scope: !5169)
!5187 = !DILocation(line: 104, column: 3, scope: !5184)
!5188 = !DILocation(line: 106, column: 6, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5169, file: !3, line: 106, column: 6)
!5190 = !DILocation(line: 106, column: 11, scope: !5189)
!5191 = !DILocation(line: 106, column: 15, scope: !5189)
!5192 = !DILocation(line: 106, column: 20, scope: !5189)
!5193 = !DILocation(line: 106, column: 23, scope: !5189)
!5194 = !{i8 0, i8 2}
!5195 = !DILocation(line: 106, column: 6, scope: !5169)
!5196 = !DILocation(line: 107, column: 27, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5189, file: !3, line: 106, column: 35)
!5198 = !DILocation(line: 107, column: 14, scope: !5197)
!5199 = !DILocation(line: 107, column: 3, scope: !5197)
!5200 = !DILocation(line: 107, column: 8, scope: !5197)
!5201 = !DILocation(line: 107, column: 12, scope: !5197)
!5202 = !DILocation(line: 108, column: 7, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5197, file: !3, line: 108, column: 7)
!5204 = !DILocation(line: 108, column: 12, scope: !5203)
!5205 = !DILocation(line: 108, column: 16, scope: !5203)
!5206 = !DILocation(line: 108, column: 7, scope: !5197)
!5207 = !DILocation(line: 109, column: 4, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5203, file: !3, line: 108, column: 39)
!5209 = !DILocation(line: 109, column: 9, scope: !5208)
!5210 = !DILocation(line: 109, column: 13, scope: !5208)
!5211 = !DILocation(line: 110, column: 4, scope: !5208)
!5212 = !DILocation(line: 112, column: 2, scope: !5197)
!5213 = !DILocation(line: 114, column: 2, scope: !5169)
!5214 = !DILocation(line: 115, column: 1, scope: !5169)
!5215 = distinct !DISubprogram(name: "ERR_PTR", scope: !5216, file: !5216, line: 39, type: !5217, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5219)
!5216 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5217 = !DISubroutineType(types: !5218)
!5218 = !{!73, !225}
!5219 = !{!5220}
!5220 = !DILocalVariable(name: "error", arg: 1, scope: !5215, file: !5216, line: 39, type: !225)
!5221 = !DILocation(line: 39, column: 48, scope: !5215)
!5222 = !DILocation(line: 41, column: 18, scope: !5215)
!5223 = !DILocation(line: 41, column: 9, scope: !5215)
!5224 = !DILocation(line: 41, column: 2, scope: !5215)
!5225 = distinct !DISubprogram(name: "kmalloc", scope: !4905, file: !4905, line: 591, type: !5226, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5228)
!5226 = !DISubroutineType(types: !5227)
!5227 = !{!73, !236, !1054}
!5228 = !{!5229, !5230, !5231}
!5229 = !DILocalVariable(name: "size", arg: 1, scope: !5225, file: !4905, line: 591, type: !236)
!5230 = !DILocalVariable(name: "flags", arg: 2, scope: !5225, file: !4905, line: 591, type: !1054)
!5231 = !DILocalVariable(name: "index", scope: !5232, file: !4905, line: 594, type: !74)
!5232 = distinct !DILexicalBlock(scope: !5233, file: !4905, line: 593, column: 42)
!5233 = distinct !DILexicalBlock(scope: !5225, file: !4905, line: 593, column: 6)
!5234 = !DILocation(line: 591, column: 61, scope: !5225)
!5235 = !DILocation(line: 591, column: 73, scope: !5225)
!5236 = !DILocation(line: 593, column: 27, scope: !5233)
!5237 = !DILocation(line: 593, column: 6, scope: !5233)
!5238 = !DILocation(line: 593, column: 33, scope: !5233)
!5239 = !DILocation(line: 593, column: 36, scope: !5233)
!5240 = !DILocation(line: 593, column: 6, scope: !5225)
!5241 = !DILocation(line: 594, column: 3, scope: !5232)
!5242 = !DILocation(line: 594, column: 16, scope: !5232)
!5243 = !DILocation(line: 596, column: 7, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5232, file: !4905, line: 596, column: 7)
!5245 = !DILocation(line: 596, column: 12, scope: !5244)
!5246 = !DILocation(line: 596, column: 7, scope: !5232)
!5247 = !DILocation(line: 597, column: 25, scope: !5244)
!5248 = !DILocation(line: 597, column: 31, scope: !5244)
!5249 = !DILocation(line: 597, column: 11, scope: !5244)
!5250 = !DILocation(line: 597, column: 4, scope: !5244)
!5251 = !DILocation(line: 599, column: 11, scope: !5232)
!5252 = !DILocation(line: 599, column: 9, scope: !5232)
!5253 = !DILocation(line: 601, column: 33, scope: !5232)
!5254 = !DILocation(line: 601, column: 40, scope: !5232)
!5255 = !DILocation(line: 601, column: 20, scope: !5232)
!5256 = !DILocation(line: 601, column: 5, scope: !5232)
!5257 = !DILocation(line: 601, column: 51, scope: !5232)
!5258 = !DILocation(line: 602, column: 5, scope: !5232)
!5259 = !DILocation(line: 602, column: 12, scope: !5232)
!5260 = !DILocation(line: 600, column: 10, scope: !5232)
!5261 = !DILocation(line: 600, column: 3, scope: !5232)
!5262 = !DILocation(line: 603, column: 2, scope: !5233)
!5263 = !DILocation(line: 604, column: 19, scope: !5225)
!5264 = !DILocation(line: 604, column: 25, scope: !5225)
!5265 = !DILocation(line: 604, column: 9, scope: !5225)
!5266 = !DILocation(line: 604, column: 2, scope: !5225)
!5267 = !DILocation(line: 605, column: 1, scope: !5225)
!5268 = distinct !DISubprogram(name: "pci_read_vpd", scope: !3, file: !3, line: 442, type: !5269, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5271)
!5269 = !DISubroutineType(types: !5270)
!5270 = !{!221, !6, !425, !236, !73}
!5271 = !{!5272, !5273, !5274, !5275}
!5272 = !DILocalVariable(name: "dev", arg: 1, scope: !5268, file: !3, line: 442, type: !6)
!5273 = !DILocalVariable(name: "pos", arg: 2, scope: !5268, file: !3, line: 442, type: !425)
!5274 = !DILocalVariable(name: "count", arg: 3, scope: !5268, file: !3, line: 442, type: !236)
!5275 = !DILocalVariable(name: "buf", arg: 4, scope: !5268, file: !3, line: 442, type: !73)
!5276 = !DILocation(line: 442, column: 38, scope: !5268)
!5277 = !DILocation(line: 442, column: 50, scope: !5268)
!5278 = !DILocation(line: 442, column: 62, scope: !5268)
!5279 = !DILocation(line: 442, column: 75, scope: !5268)
!5280 = !DILocation(line: 444, column: 24, scope: !5268)
!5281 = !DILocation(line: 444, column: 29, scope: !5268)
!5282 = !DILocation(line: 444, column: 34, scope: !5268)
!5283 = !DILocation(line: 444, column: 41, scope: !5268)
!5284 = !DILocation(line: 444, column: 9, scope: !5268)
!5285 = !DILocation(line: 444, column: 2, scope: !5268)
!5286 = !DISubprogram(name: "kfree", scope: !4905, file: !4905, line: 227, type: !5287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5287 = !DISubroutineType(types: !5288)
!5288 = !{null, !2482}
!5289 = distinct !DISubprogram(name: "pci_vpd_find_id_string", scope: !3, file: !3, line: 394, type: !5290, scopeLine: 395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5294)
!5290 = !DISubroutineType(types: !5291)
!5291 = !{!64, !5292, !74, !604}
!5292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5293, size: 64)
!5293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!5294 = !{!5295, !5296, !5297}
!5295 = !DILocalVariable(name: "buf", arg: 1, scope: !5289, file: !3, line: 394, type: !5292)
!5296 = !DILocalVariable(name: "len", arg: 2, scope: !5289, file: !3, line: 394, type: !74)
!5297 = !DILocalVariable(name: "size", arg: 3, scope: !5289, file: !3, line: 394, type: !604)
!5298 = !DILocation(line: 394, column: 38, scope: !5289)
!5299 = !DILocation(line: 394, column: 56, scope: !5289)
!5300 = !DILocation(line: 394, column: 75, scope: !5289)
!5301 = !DILocation(line: 396, column: 26, scope: !5289)
!5302 = !DILocation(line: 396, column: 31, scope: !5289)
!5303 = !DILocation(line: 396, column: 60, scope: !5289)
!5304 = !DILocation(line: 396, column: 9, scope: !5289)
!5305 = !DILocation(line: 396, column: 2, scope: !5289)
!5306 = distinct !DISubprogram(name: "pci_vpd_find_tag", scope: !3, file: !3, line: 370, type: !5307, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5309)
!5307 = !DISubroutineType(types: !5308)
!5308 = !{!64, !5292, !74, !151, !604}
!5309 = !{!5310, !5311, !5312, !5313, !5314, !5315, !5317}
!5310 = !DILocalVariable(name: "buf", arg: 1, scope: !5306, file: !3, line: 370, type: !5292)
!5311 = !DILocalVariable(name: "len", arg: 2, scope: !5306, file: !3, line: 370, type: !74)
!5312 = !DILocalVariable(name: "rdt", arg: 3, scope: !5306, file: !3, line: 370, type: !151)
!5313 = !DILocalVariable(name: "size", arg: 4, scope: !5306, file: !3, line: 370, type: !604)
!5314 = !DILocalVariable(name: "i", scope: !5306, file: !3, line: 372, type: !64)
!5315 = !DILocalVariable(name: "lrdt_len", scope: !5316, file: !3, line: 376, type: !74)
!5316 = distinct !DILexicalBlock(scope: !5306, file: !3, line: 375, column: 68)
!5317 = !DILocalVariable(name: "tag", scope: !5316, file: !3, line: 377, type: !151)
!5318 = !DILocation(line: 370, column: 39, scope: !5306)
!5319 = !DILocation(line: 370, column: 57, scope: !5306)
!5320 = !DILocation(line: 370, column: 65, scope: !5306)
!5321 = !DILocation(line: 370, column: 84, scope: !5306)
!5322 = !DILocation(line: 372, column: 2, scope: !5306)
!5323 = !DILocation(line: 372, column: 6, scope: !5306)
!5324 = !DILocation(line: 375, column: 2, scope: !5306)
!5325 = !DILocation(line: 375, column: 9, scope: !5306)
!5326 = !DILocation(line: 375, column: 11, scope: !5306)
!5327 = !DILocation(line: 375, column: 38, scope: !5306)
!5328 = !DILocation(line: 375, column: 35, scope: !5306)
!5329 = !DILocation(line: 375, column: 42, scope: !5306)
!5330 = !DILocation(line: 375, column: 45, scope: !5306)
!5331 = !DILocation(line: 375, column: 49, scope: !5306)
!5332 = !DILocation(line: 375, column: 52, scope: !5306)
!5333 = !DILocation(line: 0, scope: !5306)
!5334 = !DILocation(line: 376, column: 3, scope: !5316)
!5335 = !DILocation(line: 376, column: 16, scope: !5316)
!5336 = !DILocation(line: 376, column: 45, scope: !5316)
!5337 = !DILocation(line: 376, column: 51, scope: !5316)
!5338 = !DILocation(line: 376, column: 49, scope: !5316)
!5339 = !DILocation(line: 376, column: 27, scope: !5316)
!5340 = !DILocation(line: 377, column: 3, scope: !5316)
!5341 = !DILocation(line: 377, column: 6, scope: !5316)
!5342 = !DILocation(line: 377, column: 12, scope: !5316)
!5343 = !DILocation(line: 377, column: 16, scope: !5316)
!5344 = !DILocation(line: 379, column: 5, scope: !5316)
!5345 = !DILocation(line: 380, column: 7, scope: !5346)
!5346 = distinct !DILexicalBlock(scope: !5316, file: !3, line: 380, column: 7)
!5347 = !DILocation(line: 380, column: 14, scope: !5346)
!5348 = !DILocation(line: 380, column: 11, scope: !5346)
!5349 = !DILocation(line: 380, column: 7, scope: !5316)
!5350 = !DILocation(line: 381, column: 8, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5352, file: !3, line: 381, column: 8)
!5352 = distinct !DILexicalBlock(scope: !5346, file: !3, line: 380, column: 19)
!5353 = !DILocation(line: 381, column: 12, scope: !5351)
!5354 = !DILocation(line: 381, column: 10, scope: !5351)
!5355 = !DILocation(line: 381, column: 23, scope: !5351)
!5356 = !DILocation(line: 381, column: 21, scope: !5351)
!5357 = !DILocation(line: 381, column: 8, scope: !5352)
!5358 = !DILocation(line: 382, column: 16, scope: !5351)
!5359 = !DILocation(line: 382, column: 22, scope: !5351)
!5360 = !DILocation(line: 382, column: 20, scope: !5351)
!5361 = !DILocation(line: 382, column: 14, scope: !5351)
!5362 = !DILocation(line: 382, column: 5, scope: !5351)
!5363 = !DILocation(line: 383, column: 8, scope: !5364)
!5364 = distinct !DILexicalBlock(scope: !5352, file: !3, line: 383, column: 8)
!5365 = !DILocation(line: 383, column: 8, scope: !5352)
!5366 = !DILocation(line: 384, column: 13, scope: !5364)
!5367 = !DILocation(line: 384, column: 6, scope: !5364)
!5368 = !DILocation(line: 384, column: 11, scope: !5364)
!5369 = !DILocation(line: 384, column: 5, scope: !5364)
!5370 = !DILocation(line: 385, column: 11, scope: !5352)
!5371 = !DILocation(line: 385, column: 4, scope: !5352)
!5372 = !DILocation(line: 388, column: 8, scope: !5316)
!5373 = !DILocation(line: 388, column: 5, scope: !5316)
!5374 = !DILocation(line: 389, column: 2, scope: !5306)
!5375 = distinct !{!5375, !5324, !5374, !5376, !5377}
!5376 = !{!"llvm.loop.mustprogress"}
!5377 = !{!"llvm.loop.unroll.disable"}
!5378 = !DILocation(line: 391, column: 2, scope: !5306)
!5379 = !DILocation(line: 392, column: 1, scope: !5306)
!5380 = distinct !DISubprogram(name: "__pci_read_vpd", scope: !3, file: !3, line: 417, type: !5381, scopeLine: 419, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5383)
!5381 = !DISubroutineType(types: !5382)
!5382 = !{!221, !6, !425, !236, !73, !612}
!5383 = !{!5384, !5385, !5386, !5387, !5388, !5389}
!5384 = !DILocalVariable(name: "dev", arg: 1, scope: !5380, file: !3, line: 417, type: !6)
!5385 = !DILocalVariable(name: "pos", arg: 2, scope: !5380, file: !3, line: 417, type: !425)
!5386 = !DILocalVariable(name: "count", arg: 3, scope: !5380, file: !3, line: 417, type: !236)
!5387 = !DILocalVariable(name: "buf", arg: 4, scope: !5380, file: !3, line: 417, type: !73)
!5388 = !DILocalVariable(name: "check_size", arg: 5, scope: !5380, file: !3, line: 418, type: !612)
!5389 = !DILocalVariable(name: "ret", scope: !5380, file: !3, line: 420, type: !221)
!5390 = !DILocation(line: 417, column: 47, scope: !5380)
!5391 = !DILocation(line: 417, column: 59, scope: !5380)
!5392 = !DILocation(line: 417, column: 71, scope: !5380)
!5393 = !DILocation(line: 417, column: 84, scope: !5380)
!5394 = !DILocation(line: 418, column: 15, scope: !5380)
!5395 = !DILocation(line: 420, column: 2, scope: !5380)
!5396 = !DILocation(line: 420, column: 10, scope: !5380)
!5397 = !DILocation(line: 422, column: 6, scope: !5398)
!5398 = distinct !DILexicalBlock(scope: !5380, file: !3, line: 422, column: 6)
!5399 = !DILocation(line: 422, column: 11, scope: !5398)
!5400 = !DILocation(line: 422, column: 21, scope: !5398)
!5401 = !DILocation(line: 422, column: 6, scope: !5380)
!5402 = !DILocation(line: 423, column: 27, scope: !5403)
!5403 = distinct !DILexicalBlock(scope: !5398, file: !3, line: 422, column: 49)
!5404 = !DILocation(line: 423, column: 9, scope: !5403)
!5405 = !DILocation(line: 423, column: 7, scope: !5403)
!5406 = !DILocation(line: 424, column: 8, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5403, file: !3, line: 424, column: 7)
!5408 = !DILocation(line: 424, column: 7, scope: !5403)
!5409 = !DILocation(line: 425, column: 4, scope: !5407)
!5410 = !DILocation(line: 427, column: 22, scope: !5403)
!5411 = !DILocation(line: 427, column: 27, scope: !5403)
!5412 = !DILocation(line: 427, column: 32, scope: !5403)
!5413 = !DILocation(line: 427, column: 39, scope: !5403)
!5414 = !DILocation(line: 427, column: 44, scope: !5403)
!5415 = !DILocation(line: 427, column: 9, scope: !5403)
!5416 = !DILocation(line: 427, column: 7, scope: !5403)
!5417 = !DILocation(line: 428, column: 15, scope: !5403)
!5418 = !DILocation(line: 428, column: 3, scope: !5403)
!5419 = !DILocation(line: 429, column: 10, scope: !5403)
!5420 = !DILocation(line: 429, column: 3, scope: !5403)
!5421 = !DILocation(line: 432, column: 22, scope: !5380)
!5422 = !DILocation(line: 432, column: 27, scope: !5380)
!5423 = !DILocation(line: 432, column: 32, scope: !5380)
!5424 = !DILocation(line: 432, column: 39, scope: !5380)
!5425 = !DILocation(line: 432, column: 44, scope: !5380)
!5426 = !DILocation(line: 432, column: 9, scope: !5380)
!5427 = !DILocation(line: 432, column: 2, scope: !5380)
!5428 = !DILocation(line: 433, column: 1, scope: !5380)
!5429 = distinct !DISubprogram(name: "pci_read_vpd_any", scope: !3, file: !3, line: 449, type: !5269, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5430)
!5430 = !{!5431, !5432, !5433, !5434}
!5431 = !DILocalVariable(name: "dev", arg: 1, scope: !5429, file: !3, line: 449, type: !6)
!5432 = !DILocalVariable(name: "pos", arg: 2, scope: !5429, file: !3, line: 449, type: !425)
!5433 = !DILocalVariable(name: "count", arg: 3, scope: !5429, file: !3, line: 449, type: !236)
!5434 = !DILocalVariable(name: "buf", arg: 4, scope: !5429, file: !3, line: 449, type: !73)
!5435 = !DILocation(line: 449, column: 42, scope: !5429)
!5436 = !DILocation(line: 449, column: 54, scope: !5429)
!5437 = !DILocation(line: 449, column: 66, scope: !5429)
!5438 = !DILocation(line: 449, column: 79, scope: !5429)
!5439 = !DILocation(line: 451, column: 24, scope: !5429)
!5440 = !DILocation(line: 451, column: 29, scope: !5429)
!5441 = !DILocation(line: 451, column: 34, scope: !5429)
!5442 = !DILocation(line: 451, column: 41, scope: !5429)
!5443 = !DILocation(line: 451, column: 9, scope: !5429)
!5444 = !DILocation(line: 451, column: 2, scope: !5429)
!5445 = distinct !DISubprogram(name: "pci_write_vpd", scope: !3, file: !3, line: 480, type: !5446, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5448)
!5446 = !DISubroutineType(types: !5447)
!5447 = !{!221, !6, !425, !236, !2482}
!5448 = !{!5449, !5450, !5451, !5452}
!5449 = !DILocalVariable(name: "dev", arg: 1, scope: !5445, file: !3, line: 480, type: !6)
!5450 = !DILocalVariable(name: "pos", arg: 2, scope: !5445, file: !3, line: 480, type: !425)
!5451 = !DILocalVariable(name: "count", arg: 3, scope: !5445, file: !3, line: 480, type: !236)
!5452 = !DILocalVariable(name: "buf", arg: 4, scope: !5445, file: !3, line: 480, type: !2482)
!5453 = !DILocation(line: 480, column: 39, scope: !5445)
!5454 = !DILocation(line: 480, column: 51, scope: !5445)
!5455 = !DILocation(line: 480, column: 63, scope: !5445)
!5456 = !DILocation(line: 480, column: 82, scope: !5445)
!5457 = !DILocation(line: 482, column: 25, scope: !5445)
!5458 = !DILocation(line: 482, column: 30, scope: !5445)
!5459 = !DILocation(line: 482, column: 35, scope: !5445)
!5460 = !DILocation(line: 482, column: 42, scope: !5445)
!5461 = !DILocation(line: 482, column: 9, scope: !5445)
!5462 = !DILocation(line: 482, column: 2, scope: !5445)
!5463 = distinct !DISubprogram(name: "__pci_write_vpd", scope: !3, file: !3, line: 455, type: !5464, scopeLine: 457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5466)
!5464 = !DISubroutineType(types: !5465)
!5465 = !{!221, !6, !425, !236, !2482, !612}
!5466 = !{!5467, !5468, !5469, !5470, !5471, !5472}
!5467 = !DILocalVariable(name: "dev", arg: 1, scope: !5463, file: !3, line: 455, type: !6)
!5468 = !DILocalVariable(name: "pos", arg: 2, scope: !5463, file: !3, line: 455, type: !425)
!5469 = !DILocalVariable(name: "count", arg: 3, scope: !5463, file: !3, line: 455, type: !236)
!5470 = !DILocalVariable(name: "buf", arg: 4, scope: !5463, file: !3, line: 456, type: !2482)
!5471 = !DILocalVariable(name: "check_size", arg: 5, scope: !5463, file: !3, line: 456, type: !612)
!5472 = !DILocalVariable(name: "ret", scope: !5463, file: !3, line: 458, type: !221)
!5473 = !DILocation(line: 455, column: 48, scope: !5463)
!5474 = !DILocation(line: 455, column: 60, scope: !5463)
!5475 = !DILocation(line: 455, column: 72, scope: !5463)
!5476 = !DILocation(line: 456, column: 23, scope: !5463)
!5477 = !DILocation(line: 456, column: 33, scope: !5463)
!5478 = !DILocation(line: 458, column: 2, scope: !5463)
!5479 = !DILocation(line: 458, column: 10, scope: !5463)
!5480 = !DILocation(line: 460, column: 6, scope: !5481)
!5481 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 460, column: 6)
!5482 = !DILocation(line: 460, column: 11, scope: !5481)
!5483 = !DILocation(line: 460, column: 21, scope: !5481)
!5484 = !DILocation(line: 460, column: 6, scope: !5463)
!5485 = !DILocation(line: 461, column: 27, scope: !5486)
!5486 = distinct !DILexicalBlock(scope: !5481, file: !3, line: 460, column: 49)
!5487 = !DILocation(line: 461, column: 9, scope: !5486)
!5488 = !DILocation(line: 461, column: 7, scope: !5486)
!5489 = !DILocation(line: 462, column: 8, scope: !5490)
!5490 = distinct !DILexicalBlock(scope: !5486, file: !3, line: 462, column: 7)
!5491 = !DILocation(line: 462, column: 7, scope: !5486)
!5492 = !DILocation(line: 463, column: 4, scope: !5490)
!5493 = !DILocation(line: 465, column: 23, scope: !5486)
!5494 = !DILocation(line: 465, column: 28, scope: !5486)
!5495 = !DILocation(line: 465, column: 33, scope: !5486)
!5496 = !DILocation(line: 465, column: 40, scope: !5486)
!5497 = !DILocation(line: 465, column: 45, scope: !5486)
!5498 = !DILocation(line: 465, column: 9, scope: !5486)
!5499 = !DILocation(line: 465, column: 7, scope: !5486)
!5500 = !DILocation(line: 466, column: 15, scope: !5486)
!5501 = !DILocation(line: 466, column: 3, scope: !5486)
!5502 = !DILocation(line: 467, column: 10, scope: !5486)
!5503 = !DILocation(line: 467, column: 3, scope: !5486)
!5504 = !DILocation(line: 470, column: 23, scope: !5463)
!5505 = !DILocation(line: 470, column: 28, scope: !5463)
!5506 = !DILocation(line: 470, column: 33, scope: !5463)
!5507 = !DILocation(line: 470, column: 40, scope: !5463)
!5508 = !DILocation(line: 470, column: 45, scope: !5463)
!5509 = !DILocation(line: 470, column: 9, scope: !5463)
!5510 = !DILocation(line: 470, column: 2, scope: !5463)
!5511 = !DILocation(line: 471, column: 1, scope: !5463)
!5512 = distinct !DISubprogram(name: "pci_write_vpd_any", scope: !3, file: !3, line: 487, type: !5446, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5513)
!5513 = !{!5514, !5515, !5516, !5517}
!5514 = !DILocalVariable(name: "dev", arg: 1, scope: !5512, file: !3, line: 487, type: !6)
!5515 = !DILocalVariable(name: "pos", arg: 2, scope: !5512, file: !3, line: 487, type: !425)
!5516 = !DILocalVariable(name: "count", arg: 3, scope: !5512, file: !3, line: 487, type: !236)
!5517 = !DILocalVariable(name: "buf", arg: 4, scope: !5512, file: !3, line: 487, type: !2482)
!5518 = !DILocation(line: 487, column: 43, scope: !5512)
!5519 = !DILocation(line: 487, column: 55, scope: !5512)
!5520 = !DILocation(line: 487, column: 67, scope: !5512)
!5521 = !DILocation(line: 487, column: 86, scope: !5512)
!5522 = !DILocation(line: 489, column: 25, scope: !5512)
!5523 = !DILocation(line: 489, column: 30, scope: !5512)
!5524 = !DILocation(line: 489, column: 35, scope: !5512)
!5525 = !DILocation(line: 489, column: 42, scope: !5512)
!5526 = !DILocation(line: 489, column: 9, scope: !5512)
!5527 = !DILocation(line: 489, column: 2, scope: !5512)
!5528 = distinct !DISubprogram(name: "pci_vpd_find_ro_info_keyword", scope: !3, file: !3, line: 493, type: !5529, scopeLine: 495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5531)
!5529 = !DISubroutineType(types: !5530)
!5530 = !{!64, !2482, !74, !43, !604}
!5531 = !{!5532, !5533, !5534, !5535, !5536, !5537, !5538, !5539}
!5532 = !DILocalVariable(name: "buf", arg: 1, scope: !5528, file: !3, line: 493, type: !2482)
!5533 = !DILocalVariable(name: "len", arg: 2, scope: !5528, file: !3, line: 493, type: !74)
!5534 = !DILocalVariable(name: "kw", arg: 3, scope: !5528, file: !3, line: 494, type: !43)
!5535 = !DILocalVariable(name: "size", arg: 4, scope: !5528, file: !3, line: 494, type: !604)
!5536 = !DILocalVariable(name: "ro_start", scope: !5528, file: !3, line: 496, type: !64)
!5537 = !DILocalVariable(name: "infokw_start", scope: !5528, file: !3, line: 496, type: !64)
!5538 = !DILocalVariable(name: "ro_len", scope: !5528, file: !3, line: 497, type: !74)
!5539 = !DILocalVariable(name: "infokw_size", scope: !5528, file: !3, line: 497, type: !74)
!5540 = !DILocation(line: 493, column: 46, scope: !5528)
!5541 = !DILocation(line: 493, column: 64, scope: !5528)
!5542 = !DILocation(line: 494, column: 18, scope: !5528)
!5543 = !DILocation(line: 494, column: 36, scope: !5528)
!5544 = !DILocation(line: 496, column: 2, scope: !5528)
!5545 = !DILocation(line: 496, column: 6, scope: !5528)
!5546 = !DILocation(line: 496, column: 16, scope: !5528)
!5547 = !DILocation(line: 497, column: 2, scope: !5528)
!5548 = !DILocation(line: 497, column: 15, scope: !5528)
!5549 = !DILocation(line: 497, column: 23, scope: !5528)
!5550 = !DILocation(line: 499, column: 30, scope: !5528)
!5551 = !DILocation(line: 499, column: 35, scope: !5528)
!5552 = !DILocation(line: 499, column: 13, scope: !5528)
!5553 = !DILocation(line: 499, column: 11, scope: !5528)
!5554 = !DILocation(line: 500, column: 6, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !5528, file: !3, line: 500, column: 6)
!5556 = !DILocation(line: 500, column: 15, scope: !5555)
!5557 = !DILocation(line: 500, column: 6, scope: !5528)
!5558 = !DILocation(line: 501, column: 10, scope: !5555)
!5559 = !DILocation(line: 501, column: 3, scope: !5555)
!5560 = !DILocation(line: 503, column: 43, scope: !5528)
!5561 = !DILocation(line: 503, column: 48, scope: !5528)
!5562 = !DILocation(line: 503, column: 58, scope: !5528)
!5563 = !DILocation(line: 503, column: 66, scope: !5528)
!5564 = !DILocation(line: 503, column: 17, scope: !5528)
!5565 = !DILocation(line: 503, column: 15, scope: !5528)
!5566 = !DILocation(line: 504, column: 6, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5528, file: !3, line: 504, column: 6)
!5568 = !DILocation(line: 504, column: 19, scope: !5567)
!5569 = !DILocation(line: 504, column: 6, scope: !5528)
!5570 = !DILocation(line: 505, column: 10, scope: !5567)
!5571 = !DILocation(line: 505, column: 3, scope: !5567)
!5572 = !DILocation(line: 507, column: 40, scope: !5528)
!5573 = !DILocation(line: 507, column: 46, scope: !5528)
!5574 = !DILocation(line: 507, column: 44, scope: !5528)
!5575 = !DILocation(line: 507, column: 16, scope: !5528)
!5576 = !DILocation(line: 507, column: 14, scope: !5528)
!5577 = !DILocation(line: 508, column: 15, scope: !5528)
!5578 = !DILocation(line: 510, column: 6, scope: !5579)
!5579 = distinct !DILexicalBlock(scope: !5528, file: !3, line: 510, column: 6)
!5580 = !DILocation(line: 510, column: 21, scope: !5579)
!5581 = !DILocation(line: 510, column: 19, scope: !5579)
!5582 = !DILocation(line: 510, column: 35, scope: !5579)
!5583 = !DILocation(line: 510, column: 33, scope: !5579)
!5584 = !DILocation(line: 510, column: 6, scope: !5528)
!5585 = !DILocation(line: 511, column: 3, scope: !5579)
!5586 = !DILocation(line: 513, column: 6, scope: !5587)
!5587 = distinct !DILexicalBlock(scope: !5528, file: !3, line: 513, column: 6)
!5588 = !DILocation(line: 513, column: 6, scope: !5528)
!5589 = !DILocation(line: 514, column: 11, scope: !5587)
!5590 = !DILocation(line: 514, column: 4, scope: !5587)
!5591 = !DILocation(line: 514, column: 9, scope: !5587)
!5592 = !DILocation(line: 514, column: 3, scope: !5587)
!5593 = !DILocation(line: 516, column: 9, scope: !5528)
!5594 = !DILocation(line: 516, column: 2, scope: !5528)
!5595 = !DILocation(line: 517, column: 1, scope: !5528)
!5596 = distinct !DISubprogram(name: "pci_vpd_find_info_keyword", scope: !3, file: !3, line: 400, type: !5597, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5599)
!5597 = !DISubroutineType(types: !5598)
!5598 = !{!64, !5292, !74, !74, !43}
!5599 = !{!5600, !5601, !5602, !5603, !5604}
!5600 = !DILocalVariable(name: "buf", arg: 1, scope: !5596, file: !3, line: 400, type: !5292)
!5601 = !DILocalVariable(name: "off", arg: 2, scope: !5596, file: !3, line: 400, type: !74)
!5602 = !DILocalVariable(name: "len", arg: 3, scope: !5596, file: !3, line: 401, type: !74)
!5603 = !DILocalVariable(name: "kw", arg: 4, scope: !5596, file: !3, line: 401, type: !43)
!5604 = !DILocalVariable(name: "i", scope: !5596, file: !3, line: 403, type: !64)
!5605 = !DILocation(line: 400, column: 48, scope: !5596)
!5606 = !DILocation(line: 400, column: 66, scope: !5596)
!5607 = !DILocation(line: 401, column: 23, scope: !5596)
!5608 = !DILocation(line: 401, column: 40, scope: !5596)
!5609 = !DILocation(line: 403, column: 2, scope: !5596)
!5610 = !DILocation(line: 403, column: 6, scope: !5596)
!5611 = !DILocation(line: 405, column: 11, scope: !5612)
!5612 = distinct !DILexicalBlock(scope: !5596, file: !3, line: 405, column: 2)
!5613 = !DILocation(line: 405, column: 9, scope: !5612)
!5614 = !DILocation(line: 405, column: 7, scope: !5612)
!5615 = !DILocation(line: 405, column: 16, scope: !5616)
!5616 = distinct !DILexicalBlock(scope: !5612, file: !3, line: 405, column: 2)
!5617 = !DILocation(line: 405, column: 18, scope: !5616)
!5618 = !DILocation(line: 405, column: 49, scope: !5616)
!5619 = !DILocation(line: 405, column: 55, scope: !5616)
!5620 = !DILocation(line: 405, column: 53, scope: !5616)
!5621 = !DILocation(line: 405, column: 46, scope: !5616)
!5622 = !DILocation(line: 405, column: 2, scope: !5612)
!5623 = !DILocation(line: 406, column: 7, scope: !5624)
!5624 = distinct !DILexicalBlock(scope: !5625, file: !3, line: 406, column: 7)
!5625 = distinct !DILexicalBlock(scope: !5616, file: !3, line: 405, column: 61)
!5626 = !DILocation(line: 406, column: 11, scope: !5624)
!5627 = !DILocation(line: 406, column: 13, scope: !5624)
!5628 = !DILocation(line: 406, column: 21, scope: !5624)
!5629 = !DILocation(line: 406, column: 18, scope: !5624)
!5630 = !DILocation(line: 406, column: 27, scope: !5624)
!5631 = !DILocation(line: 407, column: 7, scope: !5624)
!5632 = !DILocation(line: 407, column: 11, scope: !5624)
!5633 = !DILocation(line: 407, column: 13, scope: !5624)
!5634 = !DILocation(line: 407, column: 21, scope: !5624)
!5635 = !DILocation(line: 407, column: 18, scope: !5624)
!5636 = !DILocation(line: 406, column: 7, scope: !5625)
!5637 = !DILocation(line: 408, column: 11, scope: !5624)
!5638 = !DILocation(line: 408, column: 4, scope: !5624)
!5639 = !DILocation(line: 411, column: 33, scope: !5625)
!5640 = !DILocation(line: 411, column: 37, scope: !5625)
!5641 = !DILocation(line: 411, column: 8, scope: !5625)
!5642 = !DILocation(line: 410, column: 34, scope: !5625)
!5643 = !DILocation(line: 410, column: 5, scope: !5625)
!5644 = !DILocation(line: 405, column: 2, scope: !5616)
!5645 = distinct !{!5645, !5622, !5646, !5376, !5377}
!5646 = !DILocation(line: 412, column: 2, scope: !5612)
!5647 = !DILocation(line: 414, column: 2, scope: !5596)
!5648 = !DILocation(line: 415, column: 1, scope: !5596)
!5649 = distinct !DISubprogram(name: "pci_vpd_info_field_size", scope: !3, file: !3, line: 36, type: !5650, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5652)
!5650 = !DISubroutineType(types: !5651)
!5651 = !{!151, !5292}
!5652 = !{!5653}
!5653 = !DILocalVariable(name: "info_field", arg: 1, scope: !5649, file: !3, line: 36, type: !5292)
!5654 = !DILocation(line: 36, column: 45, scope: !5649)
!5655 = !DILocation(line: 38, column: 9, scope: !5649)
!5656 = !DILocation(line: 38, column: 2, scope: !5649)
!5657 = distinct !DISubprogram(name: "pci_vpd_check_csum", scope: !3, file: !3, line: 520, type: !5658, scopeLine: 521, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5660)
!5658 = !DISubroutineType(types: !5659)
!5659 = !{!64, !2482, !74}
!5660 = !{!5661, !5662, !5663, !5664, !5665, !5666}
!5661 = !DILocalVariable(name: "buf", arg: 1, scope: !5657, file: !3, line: 520, type: !2482)
!5662 = !DILocalVariable(name: "len", arg: 2, scope: !5657, file: !3, line: 520, type: !74)
!5663 = !DILocalVariable(name: "vpd", scope: !5657, file: !3, line: 522, type: !5292)
!5664 = !DILocalVariable(name: "size", scope: !5657, file: !3, line: 523, type: !74)
!5665 = !DILocalVariable(name: "csum", scope: !5657, file: !3, line: 524, type: !151)
!5666 = !DILocalVariable(name: "rv_start", scope: !5657, file: !3, line: 525, type: !64)
!5667 = !DILocation(line: 520, column: 36, scope: !5657)
!5668 = !DILocation(line: 520, column: 54, scope: !5657)
!5669 = !DILocation(line: 522, column: 2, scope: !5657)
!5670 = !DILocation(line: 522, column: 12, scope: !5657)
!5671 = !DILocation(line: 522, column: 18, scope: !5657)
!5672 = !DILocation(line: 523, column: 2, scope: !5657)
!5673 = !DILocation(line: 523, column: 15, scope: !5657)
!5674 = !DILocation(line: 524, column: 2, scope: !5657)
!5675 = !DILocation(line: 524, column: 5, scope: !5657)
!5676 = !DILocation(line: 525, column: 2, scope: !5657)
!5677 = !DILocation(line: 525, column: 6, scope: !5657)
!5678 = !DILocation(line: 527, column: 42, scope: !5657)
!5679 = !DILocation(line: 527, column: 47, scope: !5657)
!5680 = !DILocation(line: 527, column: 13, scope: !5657)
!5681 = !DILocation(line: 527, column: 11, scope: !5657)
!5682 = !DILocation(line: 528, column: 6, scope: !5683)
!5683 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 528, column: 6)
!5684 = !DILocation(line: 528, column: 15, scope: !5683)
!5685 = !DILocation(line: 528, column: 6, scope: !5657)
!5686 = !DILocation(line: 529, column: 3, scope: !5683)
!5687 = !DILocation(line: 530, column: 11, scope: !5688)
!5688 = distinct !DILexicalBlock(scope: !5683, file: !3, line: 530, column: 11)
!5689 = !DILocation(line: 530, column: 20, scope: !5688)
!5690 = !DILocation(line: 530, column: 11, scope: !5683)
!5691 = !DILocation(line: 531, column: 10, scope: !5688)
!5692 = !DILocation(line: 531, column: 3, scope: !5688)
!5693 = !DILocation(line: 533, column: 7, scope: !5694)
!5694 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 533, column: 6)
!5695 = !DILocation(line: 533, column: 6, scope: !5657)
!5696 = !DILocation(line: 534, column: 3, scope: !5694)
!5697 = !DILocation(line: 536, column: 2, scope: !5657)
!5698 = !DILocation(line: 536, column: 9, scope: !5657)
!5699 = !DILocation(line: 536, column: 18, scope: !5657)
!5700 = !DILocation(line: 537, column: 11, scope: !5657)
!5701 = !DILocation(line: 537, column: 23, scope: !5657)
!5702 = !DILocation(line: 537, column: 8, scope: !5657)
!5703 = distinct !{!5703, !5697, !5704, !5376, !5377}
!5704 = !DILocation(line: 537, column: 25, scope: !5657)
!5705 = !DILocation(line: 539, column: 9, scope: !5657)
!5706 = !DILocation(line: 539, column: 2, scope: !5657)
!5707 = !DILocation(line: 540, column: 1, scope: !5657)
!5708 = distinct !DISubprogram(name: "__UNIQUE_ID_quirk_f0_vpd_link300", scope: !3, file: !3, line: 566, type: !4, scopeLine: 566, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5709)
!5709 = !{!5710}
!5710 = !DILocalVariable(name: "dev", arg: 1, scope: !5708, file: !3, line: 566, type: !6)
!5711 = !DILocation(line: 566, column: 1, scope: !5708)
!5712 = distinct !DISubprogram(name: "quirk_f0_vpd_link", scope: !3, file: !3, line: 549, type: !4, scopeLine: 550, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5713)
!5713 = !{!5714, !5715}
!5714 = !DILocalVariable(name: "dev", arg: 1, scope: !5712, file: !3, line: 549, type: !6)
!5715 = !DILocalVariable(name: "f0", scope: !5712, file: !3, line: 551, type: !6)
!5716 = !DILocation(line: 549, column: 47, scope: !5712)
!5717 = !DILocation(line: 551, column: 2, scope: !5712)
!5718 = !DILocation(line: 551, column: 18, scope: !5712)
!5719 = !DILocation(line: 553, column: 7, scope: !5720)
!5720 = distinct !DILexicalBlock(scope: !5712, file: !3, line: 553, column: 6)
!5721 = !DILocation(line: 553, column: 6, scope: !5712)
!5722 = !DILocation(line: 554, column: 3, scope: !5720)
!5723 = !DILocation(line: 556, column: 25, scope: !5712)
!5724 = !DILocation(line: 556, column: 7, scope: !5712)
!5725 = !DILocation(line: 556, column: 5, scope: !5712)
!5726 = !DILocation(line: 557, column: 7, scope: !5727)
!5727 = distinct !DILexicalBlock(scope: !5712, file: !3, line: 557, column: 6)
!5728 = !DILocation(line: 557, column: 6, scope: !5712)
!5729 = !DILocation(line: 558, column: 3, scope: !5727)
!5730 = !DILocation(line: 560, column: 6, scope: !5731)
!5731 = distinct !DILexicalBlock(scope: !5712, file: !3, line: 560, column: 6)
!5732 = !DILocation(line: 560, column: 10, scope: !5731)
!5733 = !DILocation(line: 560, column: 14, scope: !5731)
!5734 = !DILocation(line: 560, column: 18, scope: !5731)
!5735 = !DILocation(line: 560, column: 21, scope: !5731)
!5736 = !DILocation(line: 560, column: 26, scope: !5731)
!5737 = !DILocation(line: 560, column: 35, scope: !5731)
!5738 = !DILocation(line: 560, column: 39, scope: !5731)
!5739 = !DILocation(line: 560, column: 32, scope: !5731)
!5740 = !DILocation(line: 560, column: 45, scope: !5731)
!5741 = !DILocation(line: 561, column: 6, scope: !5731)
!5742 = !DILocation(line: 561, column: 11, scope: !5731)
!5743 = !DILocation(line: 561, column: 21, scope: !5731)
!5744 = !DILocation(line: 561, column: 25, scope: !5731)
!5745 = !DILocation(line: 561, column: 18, scope: !5731)
!5746 = !DILocation(line: 561, column: 32, scope: !5731)
!5747 = !DILocation(line: 561, column: 35, scope: !5731)
!5748 = !DILocation(line: 561, column: 40, scope: !5731)
!5749 = !DILocation(line: 561, column: 50, scope: !5731)
!5750 = !DILocation(line: 561, column: 54, scope: !5731)
!5751 = !DILocation(line: 561, column: 47, scope: !5731)
!5752 = !DILocation(line: 560, column: 6, scope: !5712)
!5753 = !DILocation(line: 562, column: 3, scope: !5731)
!5754 = !DILocation(line: 562, column: 8, scope: !5731)
!5755 = !DILocation(line: 562, column: 18, scope: !5731)
!5756 = !DILocation(line: 564, column: 14, scope: !5712)
!5757 = !DILocation(line: 564, column: 2, scope: !5712)
!5758 = !DILocation(line: 565, column: 1, scope: !5712)
!5759 = distinct !DISubprogram(name: "__UNIQUE_ID_quirk_blacklist_vpd302", scope: !3, file: !3, line: 581, type: !4, scopeLine: 581, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5760)
!5760 = !{!5761}
!5761 = !DILocalVariable(name: "dev", arg: 1, scope: !5759, file: !3, line: 581, type: !6)
!5762 = !DILocation(line: 581, column: 1, scope: !5759)
!5763 = distinct !DISubprogram(name: "quirk_blacklist_vpd", scope: !3, file: !3, line: 576, type: !4, scopeLine: 577, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5764)
!5764 = !{!5765}
!5765 = !DILocalVariable(name: "dev", arg: 1, scope: !5763, file: !3, line: 576, type: !6)
!5766 = !DILocation(line: 576, column: 49, scope: !5763)
!5767 = !DILocation(line: 578, column: 2, scope: !5763)
!5768 = !DILocation(line: 578, column: 7, scope: !5763)
!5769 = !DILocation(line: 578, column: 11, scope: !5763)
!5770 = !DILocation(line: 578, column: 15, scope: !5763)
!5771 = !DILocation(line: 579, column: 2, scope: !5772)
!5772 = distinct !DILexicalBlock(scope: !5763, file: !3, line: 579, column: 2)
!5773 = !DILocation(line: 579, column: 2, scope: !5774)
!5774 = distinct !DILexicalBlock(scope: !5772, file: !3, line: 579, column: 2)
!5775 = !DILocation(line: 580, column: 1, scope: !5763)
!5776 = distinct !DISubprogram(name: "__UNIQUE_ID_quirk_blacklist_vpd304", scope: !3, file: !3, line: 582, type: !4, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5777)
!5777 = !{!5778}
!5778 = !DILocalVariable(name: "dev", arg: 1, scope: !5776, file: !3, line: 582, type: !6)
!5779 = !DILocation(line: 582, column: 1, scope: !5776)
!5780 = distinct !DISubprogram(name: "__UNIQUE_ID_quirk_blacklist_vpd306", scope: !3, file: !3, line: 583, type: !4, scopeLine: 583, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5781)
!5781 = !{!5782}
!5782 = !DILocalVariable(name: "dev", arg: 1, scope: !5780, file: !3, line: 583, type: !6)
!5783 = !DILocation(line: 583, column: 1, scope: !5780)
!5784 = distinct !DISubprogram(name: "__UNIQUE_ID_quirk_blacklist_vpd308", scope: !3, file: !3, line: 584, type: !4, scopeLine: 584, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5785)
!5785 = !{!5786}
!5786 = !DILocalVariable(name: "dev", arg: 1, scope: !5784, file: !3, line: 584, type: !6)
!5787 = !DILocation(line: 584, column: 1, scope: !5784)
!5788 = distinct !DISubprogram(name: "__UNIQUE_ID_quirk_blacklist_vpd310", scope: !3, file: !3, line: 585, type: !4, scopeLine: 585, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5789)
!5789 = !{!5790}
!5790 = !DILocalVariable(name: "dev", arg: 1, scope: !5788, file: !3, line: 585, type: !6)
!5791 = !DILocation(line: 585, column: 1, scope: !5788)
!5792 = distinct !DISubprogram(name: "__UNIQUE_ID_quirk_blacklist_vpd312", scope: !3, file: !3, line: 586, type: !4, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5793)
!5793 = !{!5794}
!5794 = !DILocalVariable(name: "dev", arg: 1, scope: !5792, file: !3, line: 586, type: !6)
!5795 = !DILocation(line: 586, column: 1, scope: !5792)
!5796 = distinct !DISubprogram(name: "__UNIQUE_ID_quirk_blacklist_vpd314", scope: !3, file: !3, line: 587, type: !4, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5797)
!5797 = !{!5798}
!5798 = !DILocalVariable(name: "dev", arg: 1, scope: !5796, file: !3, line: 587, type: !6)
!5799 = !DILocation(line: 587, column: 1, scope: !5796)
!5800 = distinct !DISubprogram(name: "__UNIQUE_ID_quirk_blacklist_vpd316", scope: !3, file: !3, line: 588, type: !4, scopeLine: 588, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5801)
!5801 = !{!5802}
!5802 = !DILocalVariable(name: "dev", arg: 1, scope: !5800, file: !3, line: 588, type: !6)
!5803 = !DILocation(line: 588, column: 1, scope: !5800)
!5804 = distinct !DISubprogram(name: "__UNIQUE_ID_quirk_blacklist_vpd318", scope: !3, file: !3, line: 589, type: !4, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5805)
!5805 = !{!5806}
!5806 = !DILocalVariable(name: "dev", arg: 1, scope: !5804, file: !3, line: 589, type: !6)
!5807 = !DILocation(line: 589, column: 1, scope: !5804)
!5808 = distinct !DISubprogram(name: "__UNIQUE_ID_quirk_blacklist_vpd320", scope: !3, file: !3, line: 590, type: !4, scopeLine: 590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5809)
!5809 = !{!5810}
!5810 = !DILocalVariable(name: "dev", arg: 1, scope: !5808, file: !3, line: 590, type: !6)
!5811 = !DILocation(line: 590, column: 1, scope: !5808)
!5812 = distinct !DISubprogram(name: "__UNIQUE_ID_quirk_blacklist_vpd322", scope: !3, file: !3, line: 591, type: !4, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5813)
!5813 = !{!5814}
!5814 = !DILocalVariable(name: "dev", arg: 1, scope: !5812, file: !3, line: 591, type: !6)
!5815 = !DILocation(line: 591, column: 1, scope: !5812)
!5816 = distinct !DISubprogram(name: "__UNIQUE_ID_quirk_blacklist_vpd324", scope: !3, file: !3, line: 592, type: !4, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5817)
!5817 = !{!5818}
!5818 = !DILocalVariable(name: "dev", arg: 1, scope: !5816, file: !3, line: 592, type: !6)
!5819 = !DILocation(line: 592, column: 1, scope: !5816)
!5820 = distinct !DISubprogram(name: "__UNIQUE_ID_quirk_blacklist_vpd326", scope: !3, file: !3, line: 597, type: !4, scopeLine: 597, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5821)
!5821 = !{!5822}
!5822 = !DILocalVariable(name: "dev", arg: 1, scope: !5820, file: !3, line: 597, type: !6)
!5823 = !DILocation(line: 597, column: 1, scope: !5820)
!5824 = distinct !DISubprogram(name: "__UNIQUE_ID_quirk_chelsio_extend_vpd328", scope: !3, file: !3, line: 623, type: !4, scopeLine: 623, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5825)
!5825 = !{!5826}
!5826 = !DILocalVariable(name: "dev", arg: 1, scope: !5824, file: !3, line: 623, type: !6)
!5827 = !DILocation(line: 623, column: 1, scope: !5824)
!5828 = distinct !DISubprogram(name: "quirk_chelsio_extend_vpd", scope: !3, file: !3, line: 600, type: !4, scopeLine: 601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5829)
!5829 = !{!5830, !5831, !5832, !5833}
!5830 = !DILocalVariable(name: "dev", arg: 1, scope: !5828, file: !3, line: 600, type: !6)
!5831 = !DILocalVariable(name: "chip", scope: !5828, file: !3, line: 602, type: !64)
!5832 = !DILocalVariable(name: "func", scope: !5828, file: !3, line: 603, type: !64)
!5833 = !DILocalVariable(name: "prod", scope: !5828, file: !3, line: 604, type: !64)
!5834 = !DILocation(line: 600, column: 54, scope: !5828)
!5835 = !DILocation(line: 602, column: 2, scope: !5828)
!5836 = !DILocation(line: 602, column: 6, scope: !5828)
!5837 = !DILocation(line: 602, column: 14, scope: !5828)
!5838 = !DILocation(line: 602, column: 19, scope: !5828)
!5839 = !DILocation(line: 602, column: 26, scope: !5828)
!5840 = !DILocation(line: 602, column: 36, scope: !5828)
!5841 = !DILocation(line: 603, column: 2, scope: !5828)
!5842 = !DILocation(line: 603, column: 6, scope: !5828)
!5843 = !DILocation(line: 603, column: 14, scope: !5828)
!5844 = !DILocation(line: 603, column: 19, scope: !5828)
!5845 = !DILocation(line: 603, column: 26, scope: !5828)
!5846 = !DILocation(line: 603, column: 36, scope: !5828)
!5847 = !DILocation(line: 604, column: 2, scope: !5828)
!5848 = !DILocation(line: 604, column: 6, scope: !5828)
!5849 = !DILocation(line: 604, column: 14, scope: !5828)
!5850 = !DILocation(line: 604, column: 19, scope: !5828)
!5851 = !DILocation(line: 604, column: 26, scope: !5828)
!5852 = !DILocation(line: 604, column: 36, scope: !5828)
!5853 = !DILocation(line: 617, column: 6, scope: !5854)
!5854 = distinct !DILexicalBlock(scope: !5828, file: !3, line: 617, column: 6)
!5855 = !DILocation(line: 617, column: 11, scope: !5854)
!5856 = !DILocation(line: 617, column: 18, scope: !5854)
!5857 = !DILocation(line: 617, column: 21, scope: !5854)
!5858 = !DILocation(line: 617, column: 26, scope: !5854)
!5859 = !DILocation(line: 617, column: 6, scope: !5828)
!5860 = !DILocation(line: 618, column: 3, scope: !5854)
!5861 = !DILocation(line: 618, column: 8, scope: !5854)
!5862 = !DILocation(line: 618, column: 12, scope: !5854)
!5863 = !DILocation(line: 618, column: 16, scope: !5854)
!5864 = !DILocation(line: 619, column: 11, scope: !5865)
!5865 = distinct !DILexicalBlock(scope: !5854, file: !3, line: 619, column: 11)
!5866 = !DILocation(line: 619, column: 16, scope: !5865)
!5867 = !DILocation(line: 619, column: 23, scope: !5865)
!5868 = !DILocation(line: 619, column: 26, scope: !5865)
!5869 = !DILocation(line: 619, column: 31, scope: !5865)
!5870 = !DILocation(line: 619, column: 11, scope: !5854)
!5871 = !DILocation(line: 620, column: 3, scope: !5865)
!5872 = !DILocation(line: 620, column: 8, scope: !5865)
!5873 = !DILocation(line: 620, column: 12, scope: !5865)
!5874 = !DILocation(line: 620, column: 16, scope: !5865)
!5875 = !DILocation(line: 621, column: 1, scope: !5828)
!5876 = distinct !DISubprogram(name: "vpd_read", scope: !3, file: !3, line: 273, type: !3945, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5877)
!5877 = !{!5878, !5879, !5880, !5881, !5882, !5883, !5884, !5885, !5887, !5889, !5890}
!5878 = !DILocalVariable(name: "filp", arg: 1, scope: !5876, file: !3, line: 273, type: !1638)
!5879 = !DILocalVariable(name: "kobj", arg: 2, scope: !5876, file: !3, line: 273, type: !116)
!5880 = !DILocalVariable(name: "bin_attr", arg: 3, scope: !5876, file: !3, line: 274, type: !254)
!5881 = !DILocalVariable(name: "buf", arg: 4, scope: !5876, file: !3, line: 274, type: !189)
!5882 = !DILocalVariable(name: "off", arg: 5, scope: !5876, file: !3, line: 274, type: !425)
!5883 = !DILocalVariable(name: "count", arg: 6, scope: !5876, file: !3, line: 275, type: !236)
!5884 = !DILocalVariable(name: "dev", scope: !5876, file: !3, line: 277, type: !6)
!5885 = !DILocalVariable(name: "__mptr", scope: !5886, file: !3, line: 277, type: !73)
!5886 = distinct !DILexicalBlock(scope: !5876, file: !3, line: 277, column: 24)
!5887 = !DILocalVariable(name: "__mptr", scope: !5888, file: !3, line: 277, type: !73)
!5888 = distinct !DILexicalBlock(scope: !5886, file: !3, line: 277, column: 24)
!5889 = !DILocalVariable(name: "vpd_dev", scope: !5876, file: !3, line: 278, type: !6)
!5890 = !DILocalVariable(name: "ret", scope: !5876, file: !3, line: 279, type: !221)
!5891 = !DILocation(line: 273, column: 38, scope: !5876)
!5892 = !DILocation(line: 273, column: 60, scope: !5876)
!5893 = !DILocation(line: 274, column: 26, scope: !5876)
!5894 = !DILocation(line: 274, column: 42, scope: !5876)
!5895 = !DILocation(line: 274, column: 54, scope: !5876)
!5896 = !DILocation(line: 275, column: 11, scope: !5876)
!5897 = !DILocation(line: 277, column: 2, scope: !5876)
!5898 = !DILocation(line: 277, column: 18, scope: !5876)
!5899 = !DILocation(line: 277, column: 24, scope: !5886)
!5900 = !DILocation(line: 277, column: 24, scope: !5888)
!5901 = !DILocation(line: 277, column: 24, scope: !5876)
!5902 = !DILocation(line: 278, column: 2, scope: !5876)
!5903 = !DILocation(line: 278, column: 18, scope: !5876)
!5904 = !DILocation(line: 278, column: 28, scope: !5876)
!5905 = !DILocation(line: 279, column: 2, scope: !5876)
!5906 = !DILocation(line: 279, column: 10, scope: !5876)
!5907 = !DILocation(line: 281, column: 6, scope: !5908)
!5908 = distinct !DILexicalBlock(scope: !5876, file: !3, line: 281, column: 6)
!5909 = !DILocation(line: 281, column: 11, scope: !5908)
!5910 = !DILocation(line: 281, column: 21, scope: !5908)
!5911 = !DILocation(line: 281, column: 6, scope: !5876)
!5912 = !DILocation(line: 282, column: 31, scope: !5913)
!5913 = distinct !DILexicalBlock(scope: !5908, file: !3, line: 281, column: 49)
!5914 = !DILocation(line: 282, column: 13, scope: !5913)
!5915 = !DILocation(line: 282, column: 11, scope: !5913)
!5916 = !DILocation(line: 283, column: 8, scope: !5917)
!5917 = distinct !DILexicalBlock(scope: !5913, file: !3, line: 283, column: 7)
!5918 = !DILocation(line: 283, column: 7, scope: !5913)
!5919 = !DILocation(line: 284, column: 4, scope: !5917)
!5920 = !DILocation(line: 285, column: 2, scope: !5913)
!5921 = !DILocation(line: 287, column: 28, scope: !5876)
!5922 = !DILocation(line: 287, column: 2, scope: !5876)
!5923 = !DILocation(line: 288, column: 21, scope: !5876)
!5924 = !DILocation(line: 288, column: 30, scope: !5876)
!5925 = !DILocation(line: 288, column: 35, scope: !5876)
!5926 = !DILocation(line: 288, column: 42, scope: !5876)
!5927 = !DILocation(line: 288, column: 8, scope: !5876)
!5928 = !DILocation(line: 288, column: 6, scope: !5876)
!5929 = !DILocation(line: 289, column: 28, scope: !5876)
!5930 = !DILocation(line: 289, column: 2, scope: !5876)
!5931 = !DILocation(line: 291, column: 6, scope: !5932)
!5932 = distinct !DILexicalBlock(scope: !5876, file: !3, line: 291, column: 6)
!5933 = !DILocation(line: 291, column: 11, scope: !5932)
!5934 = !DILocation(line: 291, column: 21, scope: !5932)
!5935 = !DILocation(line: 291, column: 6, scope: !5876)
!5936 = !DILocation(line: 292, column: 15, scope: !5932)
!5937 = !DILocation(line: 292, column: 3, scope: !5932)
!5938 = !DILocation(line: 294, column: 9, scope: !5876)
!5939 = !DILocation(line: 294, column: 2, scope: !5876)
!5940 = !DILocation(line: 295, column: 1, scope: !5876)
!5941 = distinct !DISubprogram(name: "vpd_write", scope: !3, file: !3, line: 297, type: !3945, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !5942)
!5942 = !{!5943, !5944, !5945, !5946, !5947, !5948, !5949, !5950, !5952, !5954, !5955}
!5943 = !DILocalVariable(name: "filp", arg: 1, scope: !5941, file: !3, line: 297, type: !1638)
!5944 = !DILocalVariable(name: "kobj", arg: 2, scope: !5941, file: !3, line: 297, type: !116)
!5945 = !DILocalVariable(name: "bin_attr", arg: 3, scope: !5941, file: !3, line: 298, type: !254)
!5946 = !DILocalVariable(name: "buf", arg: 4, scope: !5941, file: !3, line: 298, type: !189)
!5947 = !DILocalVariable(name: "off", arg: 5, scope: !5941, file: !3, line: 298, type: !425)
!5948 = !DILocalVariable(name: "count", arg: 6, scope: !5941, file: !3, line: 299, type: !236)
!5949 = !DILocalVariable(name: "dev", scope: !5941, file: !3, line: 301, type: !6)
!5950 = !DILocalVariable(name: "__mptr", scope: !5951, file: !3, line: 301, type: !73)
!5951 = distinct !DILexicalBlock(scope: !5941, file: !3, line: 301, column: 24)
!5952 = !DILocalVariable(name: "__mptr", scope: !5953, file: !3, line: 301, type: !73)
!5953 = distinct !DILexicalBlock(scope: !5951, file: !3, line: 301, column: 24)
!5954 = !DILocalVariable(name: "vpd_dev", scope: !5941, file: !3, line: 302, type: !6)
!5955 = !DILocalVariable(name: "ret", scope: !5941, file: !3, line: 303, type: !221)
!5956 = !DILocation(line: 297, column: 39, scope: !5941)
!5957 = !DILocation(line: 297, column: 61, scope: !5941)
!5958 = !DILocation(line: 298, column: 27, scope: !5941)
!5959 = !DILocation(line: 298, column: 43, scope: !5941)
!5960 = !DILocation(line: 298, column: 55, scope: !5941)
!5961 = !DILocation(line: 299, column: 12, scope: !5941)
!5962 = !DILocation(line: 301, column: 2, scope: !5941)
!5963 = !DILocation(line: 301, column: 18, scope: !5941)
!5964 = !DILocation(line: 301, column: 24, scope: !5951)
!5965 = !DILocation(line: 301, column: 24, scope: !5953)
!5966 = !DILocation(line: 301, column: 24, scope: !5941)
!5967 = !DILocation(line: 302, column: 2, scope: !5941)
!5968 = !DILocation(line: 302, column: 18, scope: !5941)
!5969 = !DILocation(line: 302, column: 28, scope: !5941)
!5970 = !DILocation(line: 303, column: 2, scope: !5941)
!5971 = !DILocation(line: 303, column: 10, scope: !5941)
!5972 = !DILocation(line: 305, column: 6, scope: !5973)
!5973 = distinct !DILexicalBlock(scope: !5941, file: !3, line: 305, column: 6)
!5974 = !DILocation(line: 305, column: 11, scope: !5973)
!5975 = !DILocation(line: 305, column: 21, scope: !5973)
!5976 = !DILocation(line: 305, column: 6, scope: !5941)
!5977 = !DILocation(line: 306, column: 31, scope: !5978)
!5978 = distinct !DILexicalBlock(scope: !5973, file: !3, line: 305, column: 49)
!5979 = !DILocation(line: 306, column: 13, scope: !5978)
!5980 = !DILocation(line: 306, column: 11, scope: !5978)
!5981 = !DILocation(line: 307, column: 8, scope: !5982)
!5982 = distinct !DILexicalBlock(scope: !5978, file: !3, line: 307, column: 7)
!5983 = !DILocation(line: 307, column: 7, scope: !5978)
!5984 = !DILocation(line: 308, column: 4, scope: !5982)
!5985 = !DILocation(line: 309, column: 2, scope: !5978)
!5986 = !DILocation(line: 311, column: 28, scope: !5941)
!5987 = !DILocation(line: 311, column: 2, scope: !5941)
!5988 = !DILocation(line: 312, column: 22, scope: !5941)
!5989 = !DILocation(line: 312, column: 31, scope: !5941)
!5990 = !DILocation(line: 312, column: 36, scope: !5941)
!5991 = !DILocation(line: 312, column: 43, scope: !5941)
!5992 = !DILocation(line: 312, column: 8, scope: !5941)
!5993 = !DILocation(line: 312, column: 6, scope: !5941)
!5994 = !DILocation(line: 313, column: 28, scope: !5941)
!5995 = !DILocation(line: 313, column: 2, scope: !5941)
!5996 = !DILocation(line: 315, column: 6, scope: !5997)
!5997 = distinct !DILexicalBlock(scope: !5941, file: !3, line: 315, column: 6)
!5998 = !DILocation(line: 315, column: 11, scope: !5997)
!5999 = !DILocation(line: 315, column: 21, scope: !5997)
!6000 = !DILocation(line: 315, column: 6, scope: !5941)
!6001 = !DILocation(line: 316, column: 15, scope: !5997)
!6002 = !DILocation(line: 316, column: 3, scope: !5997)
!6003 = !DILocation(line: 318, column: 9, scope: !5941)
!6004 = !DILocation(line: 318, column: 2, scope: !5941)
!6005 = !DILocation(line: 319, column: 1, scope: !5941)
!6006 = distinct !DISubprogram(name: "pci_get_func0_dev", scope: !3, file: !3, line: 43, type: !6007, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !6009)
!6007 = !DISubroutineType(types: !6008)
!6008 = !{!6, !6}
!6009 = !{!6010}
!6010 = !DILocalVariable(name: "dev", arg: 1, scope: !6006, file: !3, line: 43, type: !6)
!6011 = !DILocation(line: 43, column: 58, scope: !6006)
!6012 = !DILocation(line: 45, column: 22, scope: !6006)
!6013 = !DILocation(line: 45, column: 27, scope: !6006)
!6014 = !DILocation(line: 45, column: 32, scope: !6006)
!6015 = !DILocation(line: 45, column: 9, scope: !6006)
!6016 = !DILocation(line: 45, column: 2, scope: !6006)
!6017 = !DISubprogram(name: "pci_config_pm_runtime_get", scope: !4656, file: !4656, line: 93, type: !4, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6018 = !DISubprogram(name: "pci_config_pm_runtime_put", scope: !4656, file: !4656, line: 94, type: !4, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6019 = !DISubprogram(name: "pci_dev_put", scope: !8, file: !8, line: 1148, type: !4, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6020 = !DISubprogram(name: "pci_get_slot", scope: !8, file: !8, line: 1181, type: !6021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6021 = !DISubroutineType(types: !6022)
!6022 = !{!6, !18, !74}
!6023 = distinct !DISubprogram(name: "pci_vpd_size", scope: !3, file: !3, line: 55, type: !6024, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !6026)
!6024 = !DISubroutineType(types: !6025)
!6025 = !{!236, !6}
!6026 = !{!6027, !6028, !6029, !6030, !6031, !6033}
!6027 = !DILocalVariable(name: "dev", arg: 1, scope: !6023, file: !3, line: 55, type: !6)
!6028 = !DILocalVariable(name: "off", scope: !6023, file: !3, line: 57, type: !236)
!6029 = !DILocalVariable(name: "size", scope: !6023, file: !3, line: 57, type: !236)
!6030 = !DILocalVariable(name: "tag", scope: !6023, file: !3, line: 58, type: !92)
!6031 = !DILocalVariable(name: "header", scope: !6023, file: !3, line: 58, type: !6032)
!6032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 24, elements: !190)
!6033 = !DILabel(scope: !6023, name: "error", file: !3, line: 92)
!6034 = !DILocation(line: 55, column: 44, scope: !6023)
!6035 = !DILocation(line: 57, column: 2, scope: !6023)
!6036 = !DILocation(line: 57, column: 9, scope: !6023)
!6037 = !DILocation(line: 57, column: 18, scope: !6023)
!6038 = !DILocation(line: 58, column: 2, scope: !6023)
!6039 = !DILocation(line: 58, column: 16, scope: !6023)
!6040 = !DILocation(line: 58, column: 21, scope: !6023)
!6041 = !DILocation(line: 60, column: 2, scope: !6023)
!6042 = !DILocation(line: 60, column: 26, scope: !6023)
!6043 = !DILocation(line: 60, column: 31, scope: !6023)
!6044 = !DILocation(line: 60, column: 39, scope: !6023)
!6045 = !DILocation(line: 60, column: 9, scope: !6023)
!6046 = !DILocation(line: 60, column: 47, scope: !6023)
!6047 = !DILocation(line: 61, column: 8, scope: !6048)
!6048 = distinct !DILexicalBlock(scope: !6023, file: !3, line: 60, column: 53)
!6049 = !DILocation(line: 63, column: 7, scope: !6050)
!6050 = distinct !DILexicalBlock(scope: !6048, file: !3, line: 63, column: 7)
!6051 = !DILocation(line: 63, column: 11, scope: !6050)
!6052 = !DILocation(line: 63, column: 16, scope: !6050)
!6053 = !DILocation(line: 63, column: 20, scope: !6050)
!6054 = !DILocation(line: 63, column: 30, scope: !6050)
!6055 = !DILocation(line: 63, column: 38, scope: !6050)
!6056 = !DILocation(line: 63, column: 41, scope: !6050)
!6057 = !DILocation(line: 63, column: 51, scope: !6050)
!6058 = !DILocation(line: 63, column: 7, scope: !6048)
!6059 = !DILocation(line: 64, column: 4, scope: !6050)
!6060 = !DILocation(line: 66, column: 7, scope: !6061)
!6061 = distinct !DILexicalBlock(scope: !6048, file: !3, line: 66, column: 7)
!6062 = !DILocation(line: 66, column: 17, scope: !6061)
!6063 = !DILocation(line: 66, column: 7, scope: !6048)
!6064 = !DILocation(line: 68, column: 25, scope: !6065)
!6065 = distinct !DILexicalBlock(scope: !6066, file: !3, line: 68, column: 8)
!6066 = distinct !DILexicalBlock(scope: !6061, file: !3, line: 66, column: 33)
!6067 = !DILocation(line: 68, column: 30, scope: !6065)
!6068 = !DILocation(line: 68, column: 34, scope: !6065)
!6069 = !DILocation(line: 68, column: 43, scope: !6065)
!6070 = !DILocation(line: 68, column: 8, scope: !6065)
!6071 = !DILocation(line: 68, column: 54, scope: !6065)
!6072 = !DILocation(line: 68, column: 8, scope: !6066)
!6073 = !DILocation(line: 69, column: 5, scope: !6074)
!6074 = distinct !DILexicalBlock(scope: !6075, file: !3, line: 69, column: 5)
!6075 = distinct !DILexicalBlock(scope: !6065, file: !3, line: 68, column: 60)
!6076 = !DILocation(line: 69, column: 5, scope: !6077)
!6077 = distinct !DILexicalBlock(scope: !6074, file: !3, line: 69, column: 5)
!6078 = !DILocation(line: 71, column: 12, scope: !6075)
!6079 = !DILocation(line: 71, column: 5, scope: !6075)
!6080 = !DILocation(line: 73, column: 29, scope: !6066)
!6081 = !DILocation(line: 73, column: 11, scope: !6066)
!6082 = !DILocation(line: 73, column: 9, scope: !6066)
!6083 = !DILocation(line: 74, column: 8, scope: !6084)
!6084 = distinct !DILexicalBlock(scope: !6066, file: !3, line: 74, column: 8)
!6085 = !DILocation(line: 74, column: 14, scope: !6084)
!6086 = !DILocation(line: 74, column: 12, scope: !6084)
!6087 = !DILocation(line: 74, column: 19, scope: !6084)
!6088 = !DILocation(line: 74, column: 8, scope: !6066)
!6089 = !DILocation(line: 75, column: 5, scope: !6084)
!6090 = !DILocation(line: 77, column: 35, scope: !6066)
!6091 = !DILocation(line: 77, column: 33, scope: !6066)
!6092 = !DILocation(line: 77, column: 8, scope: !6066)
!6093 = !DILocation(line: 78, column: 3, scope: !6066)
!6094 = !DILocation(line: 80, column: 27, scope: !6095)
!6095 = distinct !DILexicalBlock(scope: !6061, file: !3, line: 78, column: 10)
!6096 = !DILocation(line: 80, column: 10, scope: !6095)
!6097 = !DILocation(line: 80, column: 8, scope: !6095)
!6098 = !DILocation(line: 81, column: 29, scope: !6095)
!6099 = !DILocation(line: 81, column: 11, scope: !6095)
!6100 = !DILocation(line: 81, column: 9, scope: !6095)
!6101 = !DILocation(line: 82, column: 8, scope: !6102)
!6102 = distinct !DILexicalBlock(scope: !6095, file: !3, line: 82, column: 8)
!6103 = !DILocation(line: 82, column: 14, scope: !6102)
!6104 = !DILocation(line: 82, column: 12, scope: !6102)
!6105 = !DILocation(line: 82, column: 19, scope: !6102)
!6106 = !DILocation(line: 82, column: 8, scope: !6095)
!6107 = !DILocation(line: 83, column: 5, scope: !6102)
!6108 = !DILocation(line: 85, column: 35, scope: !6095)
!6109 = !DILocation(line: 85, column: 33, scope: !6095)
!6110 = !DILocation(line: 85, column: 8, scope: !6095)
!6111 = !DILocation(line: 86, column: 8, scope: !6112)
!6112 = distinct !DILexicalBlock(scope: !6095, file: !3, line: 86, column: 8)
!6113 = !DILocation(line: 86, column: 12, scope: !6112)
!6114 = !DILocation(line: 86, column: 8, scope: !6095)
!6115 = !DILocation(line: 87, column: 12, scope: !6112)
!6116 = !DILocation(line: 87, column: 5, scope: !6112)
!6117 = distinct !{!6117, !6041, !6118, !5376, !5377}
!6118 = !DILocation(line: 89, column: 2, scope: !6023)
!6119 = !DILocation(line: 90, column: 9, scope: !6023)
!6120 = !DILocation(line: 90, column: 2, scope: !6023)
!6121 = !DILocation(line: 92, column: 1, scope: !6023)
!6122 = !DILocation(line: 93, column: 2, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6023, file: !3, line: 93, column: 2)
!6124 = !DILocation(line: 93, column: 2, scope: !6125)
!6125 = distinct !DILexicalBlock(scope: !6123, file: !3, line: 93, column: 2)
!6126 = !DILocation(line: 96, column: 9, scope: !6023)
!6127 = !DILocation(line: 96, column: 2, scope: !6023)
!6128 = !DILocation(line: 97, column: 1, scope: !6023)
!6129 = !DISubprogram(name: "_dev_warn", scope: !6130, file: !6130, line: 52, type: !6131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6130 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!6131 = !DISubroutineType(types: !6132)
!6132 = !{null, !4129, !43, null}
!6133 = distinct !DISubprogram(name: "pci_vpd_lrdt_size", scope: !3, file: !3, line: 21, type: !6134, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !6136)
!6134 = !DISubroutineType(types: !6135)
!6135 = !{!158, !5292}
!6136 = !{!6137}
!6137 = !DILocalVariable(name: "lrdt", arg: 1, scope: !6133, file: !3, line: 21, type: !5292)
!6138 = !DILocation(line: 21, column: 40, scope: !6133)
!6139 = !DILocation(line: 23, column: 28, scope: !6133)
!6140 = !DILocation(line: 23, column: 33, scope: !6133)
!6141 = !DILocation(line: 23, column: 9, scope: !6133)
!6142 = !DILocation(line: 23, column: 2, scope: !6133)
!6143 = distinct !DISubprogram(name: "pci_vpd_srdt_tag", scope: !3, file: !3, line: 26, type: !5650, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !6144)
!6144 = !{!6145}
!6145 = !DILocalVariable(name: "srdt", arg: 1, scope: !6143, file: !3, line: 26, type: !5292)
!6146 = !DILocation(line: 26, column: 38, scope: !6143)
!6147 = !DILocation(line: 28, column: 10, scope: !6143)
!6148 = !DILocation(line: 28, column: 9, scope: !6143)
!6149 = !DILocation(line: 28, column: 15, scope: !6143)
!6150 = !DILocation(line: 28, column: 2, scope: !6143)
!6151 = distinct !DISubprogram(name: "pci_vpd_srdt_size", scope: !3, file: !3, line: 31, type: !5650, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !6152)
!6152 = !{!6153}
!6153 = !DILocalVariable(name: "srdt", arg: 1, scope: !6151, file: !3, line: 31, type: !5292)
!6154 = !DILocation(line: 31, column: 39, scope: !6151)
!6155 = !DILocation(line: 33, column: 10, scope: !6151)
!6156 = !DILocation(line: 33, column: 9, scope: !6151)
!6157 = !DILocation(line: 33, column: 15, scope: !6151)
!6158 = !DILocation(line: 33, column: 2, scope: !6151)
!6159 = !DISubprogram(name: "_dev_info", scope: !6130, file: !6130, line: 56, type: !6131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6160 = !DILocation(line: 25, column: 50, scope: !4920)
!6161 = !DILocation(line: 27, column: 9, scope: !4926)
!6162 = !DILocation(line: 27, column: 9, scope: !4920)
!6163 = !DILocation(line: 27, column: 2, scope: !4920)
!6164 = !DISubprogram(name: "kmalloc_large", scope: !4905, file: !4905, line: 531, type: !5226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6165 = distinct !DISubprogram(name: "__kmalloc_index", scope: !4905, file: !4905, line: 444, type: !6166, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !6168)
!6166 = !DISubroutineType(types: !6167)
!6167 = !{!74, !236, !612}
!6168 = !{!6169, !6170}
!6169 = !DILocalVariable(name: "size", arg: 1, scope: !6165, file: !4905, line: 444, type: !236)
!6170 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6165, file: !4905, line: 445, type: !612)
!6171 = !DILocation(line: 444, column: 60, scope: !6165)
!6172 = !DILocation(line: 445, column: 16, scope: !6165)
!6173 = !DILocation(line: 447, column: 7, scope: !6174)
!6174 = distinct !DILexicalBlock(scope: !6165, file: !4905, line: 447, column: 6)
!6175 = !DILocation(line: 447, column: 6, scope: !6165)
!6176 = !DILocation(line: 448, column: 3, scope: !6174)
!6177 = !DILocation(line: 450, column: 6, scope: !6178)
!6178 = distinct !DILexicalBlock(scope: !6165, file: !4905, line: 450, column: 6)
!6179 = !DILocation(line: 450, column: 11, scope: !6178)
!6180 = !DILocation(line: 450, column: 6, scope: !6165)
!6181 = !DILocation(line: 451, column: 3, scope: !6178)
!6182 = !DILocation(line: 453, column: 32, scope: !6183)
!6183 = distinct !DILexicalBlock(scope: !6165, file: !4905, line: 453, column: 6)
!6184 = !DILocation(line: 453, column: 37, scope: !6183)
!6185 = !DILocation(line: 453, column: 42, scope: !6183)
!6186 = !DILocation(line: 453, column: 45, scope: !6183)
!6187 = !DILocation(line: 453, column: 50, scope: !6183)
!6188 = !DILocation(line: 453, column: 6, scope: !6165)
!6189 = !DILocation(line: 454, column: 3, scope: !6183)
!6190 = !DILocation(line: 455, column: 32, scope: !6191)
!6191 = distinct !DILexicalBlock(scope: !6165, file: !4905, line: 455, column: 6)
!6192 = !DILocation(line: 455, column: 37, scope: !6191)
!6193 = !DILocation(line: 455, column: 43, scope: !6191)
!6194 = !DILocation(line: 455, column: 46, scope: !6191)
!6195 = !DILocation(line: 455, column: 51, scope: !6191)
!6196 = !DILocation(line: 455, column: 6, scope: !6165)
!6197 = !DILocation(line: 456, column: 3, scope: !6191)
!6198 = !DILocation(line: 457, column: 6, scope: !6199)
!6199 = distinct !DILexicalBlock(scope: !6165, file: !4905, line: 457, column: 6)
!6200 = !DILocation(line: 457, column: 11, scope: !6199)
!6201 = !DILocation(line: 457, column: 6, scope: !6165)
!6202 = !DILocation(line: 457, column: 26, scope: !6199)
!6203 = !DILocation(line: 458, column: 6, scope: !6204)
!6204 = distinct !DILexicalBlock(scope: !6165, file: !4905, line: 458, column: 6)
!6205 = !DILocation(line: 458, column: 11, scope: !6204)
!6206 = !DILocation(line: 458, column: 6, scope: !6165)
!6207 = !DILocation(line: 458, column: 26, scope: !6204)
!6208 = !DILocation(line: 459, column: 6, scope: !6209)
!6209 = distinct !DILexicalBlock(scope: !6165, file: !4905, line: 459, column: 6)
!6210 = !DILocation(line: 459, column: 11, scope: !6209)
!6211 = !DILocation(line: 459, column: 6, scope: !6165)
!6212 = !DILocation(line: 459, column: 26, scope: !6209)
!6213 = !DILocation(line: 460, column: 6, scope: !6214)
!6214 = distinct !DILexicalBlock(scope: !6165, file: !4905, line: 460, column: 6)
!6215 = !DILocation(line: 460, column: 11, scope: !6214)
!6216 = !DILocation(line: 460, column: 6, scope: !6165)
!6217 = !DILocation(line: 460, column: 26, scope: !6214)
!6218 = !DILocation(line: 461, column: 6, scope: !6219)
!6219 = distinct !DILexicalBlock(scope: !6165, file: !4905, line: 461, column: 6)
!6220 = !DILocation(line: 461, column: 11, scope: !6219)
!6221 = !DILocation(line: 461, column: 6, scope: !6165)
!6222 = !DILocation(line: 461, column: 26, scope: !6219)
!6223 = !DILocation(line: 462, column: 6, scope: !6224)
!6224 = distinct !DILexicalBlock(scope: !6165, file: !4905, line: 462, column: 6)
!6225 = !DILocation(line: 462, column: 11, scope: !6224)
!6226 = !DILocation(line: 462, column: 6, scope: !6165)
!6227 = !DILocation(line: 462, column: 26, scope: !6224)
!6228 = !DILocation(line: 463, column: 6, scope: !6229)
!6229 = distinct !DILexicalBlock(scope: !6165, file: !4905, line: 463, column: 6)
!6230 = !DILocation(line: 463, column: 11, scope: !6229)
!6231 = !DILocation(line: 463, column: 6, scope: !6165)
!6232 = !DILocation(line: 463, column: 26, scope: !6229)
!6233 = !DILocation(line: 464, column: 6, scope: !6234)
!6234 = distinct !DILexicalBlock(scope: !6165, file: !4905, line: 464, column: 6)
!6235 = !DILocation(line: 464, column: 11, scope: !6234)
!6236 = !DILocation(line: 464, column: 6, scope: !6165)
!6237 = !DILocation(line: 464, column: 26, scope: !6234)
!6238 = !DILocation(line: 465, column: 6, scope: !6239)
!6239 = distinct !DILexicalBlock(scope: !6165, file: !4905, line: 465, column: 6)
!6240 = !DILocation(line: 465, column: 11, scope: !6239)
!6241 = !DILocation(line: 465, column: 6, scope: !6165)
!6242 = !DILocation(line: 465, column: 26, scope: !6239)
!6243 = !DILocation(line: 466, column: 6, scope: !6244)
!6244 = distinct !DILexicalBlock(scope: !6165, file: !4905, line: 466, column: 6)
!6245 = !DILocation(line: 466, column: 11, scope: !6244)
!6246 = !DILocation(line: 466, column: 6, scope: !6165)
!6247 = !DILocation(line: 466, column: 26, scope: !6244)
!6248 = !DILocation(line: 467, column: 6, scope: !6249)
!6249 = distinct !DILexicalBlock(scope: !6165, file: !4905, line: 467, column: 6)
!6250 = !DILocation(line: 467, column: 11, scope: !6249)
!6251 = !DILocation(line: 467, column: 6, scope: !6165)
!6252 = !DILocation(line: 467, column: 26, scope: !6249)
!6253 = !DILocation(line: 468, column: 6, scope: !6254)
!6254 = distinct !DILexicalBlock(scope: !6165, file: !4905, line: 468, column: 6)
!6255 = !DILocation(line: 468, column: 11, scope: !6254)
!6256 = !DILocation(line: 468, column: 6, scope: !6165)
!6257 = !DILocation(line: 468, column: 26, scope: !6254)
!6258 = !DILocation(line: 469, column: 6, scope: !6259)
!6259 = distinct !DILexicalBlock(scope: !6165, file: !4905, line: 469, column: 6)
!6260 = !DILocation(line: 469, column: 11, scope: !6259)
!6261 = !DILocation(line: 469, column: 6, scope: !6165)
!6262 = !DILocation(line: 469, column: 26, scope: !6259)
!6263 = !DILocation(line: 470, column: 6, scope: !6264)
!6264 = distinct !DILexicalBlock(scope: !6165, file: !4905, line: 470, column: 6)
!6265 = !DILocation(line: 470, column: 11, scope: !6264)
!6266 = !DILocation(line: 470, column: 6, scope: !6165)
!6267 = !DILocation(line: 470, column: 26, scope: !6264)
!6268 = !DILocation(line: 471, column: 6, scope: !6269)
!6269 = distinct !DILexicalBlock(scope: !6165, file: !4905, line: 471, column: 6)
!6270 = !DILocation(line: 471, column: 11, scope: !6269)
!6271 = !DILocation(line: 471, column: 6, scope: !6165)
!6272 = !DILocation(line: 471, column: 26, scope: !6269)
!6273 = !DILocation(line: 472, column: 6, scope: !6274)
!6274 = distinct !DILexicalBlock(scope: !6165, file: !4905, line: 472, column: 6)
!6275 = !DILocation(line: 472, column: 11, scope: !6274)
!6276 = !DILocation(line: 472, column: 6, scope: !6165)
!6277 = !DILocation(line: 472, column: 26, scope: !6274)
!6278 = !DILocation(line: 473, column: 6, scope: !6279)
!6279 = distinct !DILexicalBlock(scope: !6165, file: !4905, line: 473, column: 6)
!6280 = !DILocation(line: 473, column: 11, scope: !6279)
!6281 = !DILocation(line: 473, column: 6, scope: !6165)
!6282 = !DILocation(line: 473, column: 26, scope: !6279)
!6283 = !DILocation(line: 474, column: 6, scope: !6284)
!6284 = distinct !DILexicalBlock(scope: !6165, file: !4905, line: 474, column: 6)
!6285 = !DILocation(line: 474, column: 11, scope: !6284)
!6286 = !DILocation(line: 474, column: 6, scope: !6165)
!6287 = !DILocation(line: 474, column: 27, scope: !6284)
!6288 = !DILocation(line: 475, column: 6, scope: !6289)
!6289 = distinct !DILexicalBlock(scope: !6165, file: !4905, line: 475, column: 6)
!6290 = !DILocation(line: 475, column: 11, scope: !6289)
!6291 = !DILocation(line: 475, column: 6, scope: !6165)
!6292 = !DILocation(line: 475, column: 32, scope: !6289)
!6293 = !DILocation(line: 477, column: 50, scope: !6294)
!6294 = distinct !DILexicalBlock(scope: !6165, file: !4905, line: 477, column: 6)
!6295 = !DILocation(line: 477, column: 6, scope: !6165)
!6296 = !DILocation(line: 478, column: 3, scope: !6294)
!6297 = !DILocation(line: 478, column: 3, scope: !6298)
!6298 = distinct !DILexicalBlock(scope: !6299, file: !4905, line: 478, column: 3)
!6299 = distinct !DILexicalBlock(scope: !6294, file: !4905, line: 478, column: 3)
!6300 = !{i32 -2141972749}
!6301 = !DILocation(line: 478, column: 3, scope: !6299)
!6302 = !DILocation(line: 480, column: 3, scope: !6294)
!6303 = !DILocation(line: 480, column: 3, scope: !6304)
!6304 = distinct !DILexicalBlock(scope: !6294, file: !4905, line: 480, column: 3)
!6305 = !DILocation(line: 480, column: 3, scope: !6306)
!6306 = distinct !DILexicalBlock(scope: !6304, file: !4905, line: 480, column: 3)
!6307 = !DILocation(line: 480, column: 3, scope: !6308)
!6308 = distinct !DILexicalBlock(scope: !6304, file: !4905, line: 480, column: 3)
!6309 = !{i64 2152994750, i64 2152994779, i64 2152994825, i64 2152994883, i64 2152994937, i64 2152994991, i64 2152995046, i64 2152995077}
!6310 = !DILocation(line: 483, column: 2, scope: !6165)
!6311 = !DILocation(line: 484, column: 1, scope: !6165)
!6312 = !DISubprogram(name: "kmalloc_trace", scope: !4905, file: !4905, line: 525, type: !6313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6313 = !DISubroutineType(types: !6314)
!6314 = !{!73, !6315, !1054, !236}
!6315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6316, size: 64)
!6316 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6317, line: 11, flags: DIFlagFwdDecl)
!6317 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6318 = distinct !DISubprogram(name: "kmalloc_type", scope: !4905, file: !4905, line: 401, type: !6319, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !6321)
!6319 = !DISubroutineType(types: !6320)
!6320 = !{!4904, !1054, !47}
!6321 = !{!6322, !6323}
!6322 = !DILocalVariable(name: "flags", arg: 1, scope: !6318, file: !4905, line: 401, type: !1054)
!6323 = !DILocalVariable(name: "caller", arg: 2, scope: !6318, file: !4905, line: 401, type: !47)
!6324 = !DILocation(line: 401, column: 67, scope: !6318)
!6325 = !DILocation(line: 401, column: 88, scope: !6318)
!6326 = !DILocation(line: 407, column: 6, scope: !6327)
!6327 = distinct !DILexicalBlock(scope: !6318, file: !4905, line: 407, column: 6)
!6328 = !DILocation(line: 407, column: 6, scope: !6318)
!6329 = !DILocation(line: 413, column: 3, scope: !6327)
!6330 = !DILocation(line: 423, column: 38, scope: !6331)
!6331 = distinct !DILexicalBlock(scope: !6318, file: !4905, line: 423, column: 6)
!6332 = !DILocation(line: 423, column: 44, scope: !6331)
!6333 = !DILocation(line: 423, column: 6, scope: !6318)
!6334 = !DILocation(line: 424, column: 3, scope: !6331)
!6335 = !DILocation(line: 426, column: 3, scope: !6336)
!6336 = distinct !DILexicalBlock(scope: !6318, file: !4905, line: 425, column: 6)
!6337 = !DILocation(line: 429, column: 1, scope: !6318)
!6338 = !DISubprogram(name: "__kmalloc", scope: !4905, file: !4905, line: 488, type: !5226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6339 = !DISubprogram(name: "__compiletime_assert_204", scope: !4905, file: !4905, line: 478, type: !895, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6340 = distinct !DISubprogram(name: "pci_vpd_read", scope: !3, file: !3, line: 155, type: !5381, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !6341)
!6341 = !{!6342, !6343, !6344, !6345, !6346, !6347, !6348, !6349, !6350, !6351, !6353, !6355, !6356}
!6342 = !DILocalVariable(name: "dev", arg: 1, scope: !6340, file: !3, line: 155, type: !6)
!6343 = !DILocalVariable(name: "pos", arg: 2, scope: !6340, file: !3, line: 155, type: !425)
!6344 = !DILocalVariable(name: "count", arg: 3, scope: !6340, file: !3, line: 155, type: !236)
!6345 = !DILocalVariable(name: "arg", arg: 4, scope: !6340, file: !3, line: 156, type: !73)
!6346 = !DILocalVariable(name: "check_size", arg: 5, scope: !6340, file: !3, line: 156, type: !612)
!6347 = !DILocalVariable(name: "vpd", scope: !6340, file: !3, line: 158, type: !5176)
!6348 = !DILocalVariable(name: "max_len", scope: !6340, file: !3, line: 159, type: !74)
!6349 = !DILocalVariable(name: "ret", scope: !6340, file: !3, line: 160, type: !64)
!6350 = !DILocalVariable(name: "end", scope: !6340, file: !3, line: 161, type: !425)
!6351 = !DILocalVariable(name: "buf", scope: !6340, file: !3, line: 162, type: !6352)
!6352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!6353 = !DILocalVariable(name: "val", scope: !6354, file: !3, line: 184, type: !80)
!6354 = distinct !DILexicalBlock(scope: !6340, file: !3, line: 183, column: 20)
!6355 = !DILocalVariable(name: "i", scope: !6354, file: !3, line: 185, type: !74)
!6356 = !DILocalVariable(name: "skip", scope: !6354, file: !3, line: 185, type: !74)
!6357 = !DILocation(line: 155, column: 45, scope: !6340)
!6358 = !DILocation(line: 155, column: 57, scope: !6340)
!6359 = !DILocation(line: 155, column: 69, scope: !6340)
!6360 = !DILocation(line: 156, column: 14, scope: !6340)
!6361 = !DILocation(line: 156, column: 24, scope: !6340)
!6362 = !DILocation(line: 158, column: 2, scope: !6340)
!6363 = !DILocation(line: 158, column: 18, scope: !6340)
!6364 = !DILocation(line: 158, column: 25, scope: !6340)
!6365 = !DILocation(line: 158, column: 30, scope: !6340)
!6366 = !DILocation(line: 159, column: 2, scope: !6340)
!6367 = !DILocation(line: 159, column: 15, scope: !6340)
!6368 = !DILocation(line: 160, column: 2, scope: !6340)
!6369 = !DILocation(line: 160, column: 6, scope: !6340)
!6370 = !DILocation(line: 161, column: 2, scope: !6340)
!6371 = !DILocation(line: 161, column: 9, scope: !6340)
!6372 = !DILocation(line: 161, column: 15, scope: !6340)
!6373 = !DILocation(line: 161, column: 21, scope: !6340)
!6374 = !DILocation(line: 161, column: 19, scope: !6340)
!6375 = !DILocation(line: 162, column: 2, scope: !6340)
!6376 = !DILocation(line: 162, column: 6, scope: !6340)
!6377 = !DILocation(line: 162, column: 12, scope: !6340)
!6378 = !DILocation(line: 164, column: 25, scope: !6379)
!6379 = distinct !DILexicalBlock(scope: !6340, file: !3, line: 164, column: 6)
!6380 = !DILocation(line: 164, column: 30, scope: !6379)
!6381 = !DILocation(line: 164, column: 7, scope: !6379)
!6382 = !DILocation(line: 164, column: 6, scope: !6340)
!6383 = !DILocation(line: 165, column: 3, scope: !6379)
!6384 = !DILocation(line: 167, column: 6, scope: !6385)
!6385 = distinct !DILexicalBlock(scope: !6340, file: !3, line: 167, column: 6)
!6386 = !DILocation(line: 167, column: 10, scope: !6385)
!6387 = !DILocation(line: 167, column: 6, scope: !6340)
!6388 = !DILocation(line: 168, column: 3, scope: !6385)
!6389 = !DILocation(line: 170, column: 12, scope: !6340)
!6390 = !DILocation(line: 170, column: 25, scope: !6340)
!6391 = !DILocation(line: 170, column: 30, scope: !6340)
!6392 = !DILocation(line: 170, column: 10, scope: !6340)
!6393 = !DILocation(line: 172, column: 6, scope: !6394)
!6394 = distinct !DILexicalBlock(scope: !6340, file: !3, line: 172, column: 6)
!6395 = !DILocation(line: 172, column: 13, scope: !6394)
!6396 = !DILocation(line: 172, column: 10, scope: !6394)
!6397 = !DILocation(line: 172, column: 6, scope: !6340)
!6398 = !DILocation(line: 173, column: 3, scope: !6394)
!6399 = !DILocation(line: 175, column: 6, scope: !6400)
!6400 = distinct !DILexicalBlock(scope: !6340, file: !3, line: 175, column: 6)
!6401 = !DILocation(line: 175, column: 12, scope: !6400)
!6402 = !DILocation(line: 175, column: 10, scope: !6400)
!6403 = !DILocation(line: 175, column: 6, scope: !6340)
!6404 = !DILocation(line: 176, column: 9, scope: !6405)
!6405 = distinct !DILexicalBlock(scope: !6400, file: !3, line: 175, column: 21)
!6406 = !DILocation(line: 176, column: 7, scope: !6405)
!6407 = !DILocation(line: 177, column: 11, scope: !6405)
!6408 = !DILocation(line: 177, column: 17, scope: !6405)
!6409 = !DILocation(line: 177, column: 15, scope: !6405)
!6410 = !DILocation(line: 177, column: 9, scope: !6405)
!6411 = !DILocation(line: 178, column: 2, scope: !6405)
!6412 = !DILocation(line: 180, column: 27, scope: !6413)
!6413 = distinct !DILexicalBlock(scope: !6340, file: !3, line: 180, column: 6)
!6414 = !DILocation(line: 180, column: 32, scope: !6413)
!6415 = !DILocation(line: 180, column: 6, scope: !6413)
!6416 = !DILocation(line: 180, column: 6, scope: !6340)
!6417 = !DILocation(line: 181, column: 3, scope: !6413)
!6418 = !DILocation(line: 183, column: 2, scope: !6340)
!6419 = !DILocation(line: 183, column: 9, scope: !6340)
!6420 = !DILocation(line: 183, column: 15, scope: !6340)
!6421 = !DILocation(line: 183, column: 13, scope: !6340)
!6422 = !DILocation(line: 184, column: 3, scope: !6354)
!6423 = !DILocation(line: 184, column: 7, scope: !6354)
!6424 = !DILocation(line: 185, column: 3, scope: !6354)
!6425 = !DILocation(line: 185, column: 16, scope: !6354)
!6426 = !DILocation(line: 185, column: 19, scope: !6354)
!6427 = !DILocation(line: 187, column: 28, scope: !6428)
!6428 = distinct !DILexicalBlock(scope: !6354, file: !3, line: 187, column: 7)
!6429 = !DILocation(line: 187, column: 7, scope: !6428)
!6430 = !DILocation(line: 187, column: 7, scope: !6354)
!6431 = !DILocation(line: 188, column: 8, scope: !6432)
!6432 = distinct !DILexicalBlock(scope: !6428, file: !3, line: 187, column: 38)
!6433 = !DILocation(line: 189, column: 4, scope: !6432)
!6434 = !DILocation(line: 192, column: 36, scope: !6354)
!6435 = !DILocation(line: 192, column: 41, scope: !6354)
!6436 = !DILocation(line: 192, column: 46, scope: !6354)
!6437 = !DILocation(line: 192, column: 50, scope: !6354)
!6438 = !DILocation(line: 193, column: 8, scope: !6354)
!6439 = !DILocation(line: 193, column: 12, scope: !6354)
!6440 = !DILocation(line: 192, column: 9, scope: !6354)
!6441 = !DILocation(line: 192, column: 7, scope: !6354)
!6442 = !DILocation(line: 194, column: 7, scope: !6443)
!6443 = distinct !DILexicalBlock(scope: !6354, file: !3, line: 194, column: 7)
!6444 = !DILocation(line: 194, column: 11, scope: !6443)
!6445 = !DILocation(line: 194, column: 7, scope: !6354)
!6446 = !DILocation(line: 195, column: 4, scope: !6443)
!6447 = !DILocation(line: 196, column: 22, scope: !6354)
!6448 = !DILocation(line: 196, column: 9, scope: !6354)
!6449 = !DILocation(line: 196, column: 7, scope: !6354)
!6450 = !DILocation(line: 197, column: 7, scope: !6451)
!6451 = distinct !DILexicalBlock(scope: !6354, file: !3, line: 197, column: 7)
!6452 = !DILocation(line: 197, column: 11, scope: !6451)
!6453 = !DILocation(line: 197, column: 7, scope: !6354)
!6454 = !DILocation(line: 198, column: 4, scope: !6451)
!6455 = !DILocation(line: 200, column: 36, scope: !6354)
!6456 = !DILocation(line: 200, column: 41, scope: !6354)
!6457 = !DILocation(line: 200, column: 46, scope: !6354)
!6458 = !DILocation(line: 200, column: 50, scope: !6354)
!6459 = !DILocation(line: 200, column: 9, scope: !6354)
!6460 = !DILocation(line: 200, column: 7, scope: !6354)
!6461 = !DILocation(line: 201, column: 7, scope: !6462)
!6462 = distinct !DILexicalBlock(scope: !6354, file: !3, line: 201, column: 7)
!6463 = !DILocation(line: 201, column: 11, scope: !6462)
!6464 = !DILocation(line: 201, column: 7, scope: !6354)
!6465 = !DILocation(line: 202, column: 4, scope: !6462)
!6466 = !DILocation(line: 204, column: 10, scope: !6354)
!6467 = !DILocation(line: 204, column: 14, scope: !6354)
!6468 = !DILocation(line: 204, column: 8, scope: !6354)
!6469 = !DILocation(line: 205, column: 10, scope: !6470)
!6470 = distinct !DILexicalBlock(scope: !6354, file: !3, line: 205, column: 3)
!6471 = !DILocation(line: 205, column: 8, scope: !6470)
!6472 = !DILocation(line: 205, column: 16, scope: !6473)
!6473 = distinct !DILexicalBlock(scope: !6470, file: !3, line: 205, column: 3)
!6474 = !DILocation(line: 205, column: 18, scope: !6473)
!6475 = !DILocation(line: 205, column: 3, scope: !6470)
!6476 = !DILocation(line: 206, column: 8, scope: !6477)
!6477 = distinct !DILexicalBlock(scope: !6478, file: !3, line: 206, column: 8)
!6478 = distinct !DILexicalBlock(scope: !6473, file: !3, line: 205, column: 38)
!6479 = !DILocation(line: 206, column: 13, scope: !6477)
!6480 = !DILocation(line: 206, column: 10, scope: !6477)
!6481 = !DILocation(line: 206, column: 8, scope: !6478)
!6482 = !DILocation(line: 207, column: 14, scope: !6483)
!6483 = distinct !DILexicalBlock(scope: !6477, file: !3, line: 206, column: 19)
!6484 = !DILocation(line: 207, column: 9, scope: !6483)
!6485 = !DILocation(line: 207, column: 12, scope: !6483)
!6486 = !DILocation(line: 208, column: 9, scope: !6487)
!6487 = distinct !DILexicalBlock(scope: !6483, file: !3, line: 208, column: 9)
!6488 = !DILocation(line: 208, column: 18, scope: !6487)
!6489 = !DILocation(line: 208, column: 15, scope: !6487)
!6490 = !DILocation(line: 208, column: 9, scope: !6483)
!6491 = !DILocation(line: 209, column: 6, scope: !6487)
!6492 = !DILocation(line: 210, column: 4, scope: !6483)
!6493 = !DILocation(line: 211, column: 8, scope: !6478)
!6494 = !DILocation(line: 212, column: 3, scope: !6478)
!6495 = !DILocation(line: 205, column: 34, scope: !6473)
!6496 = !DILocation(line: 205, column: 3, scope: !6473)
!6497 = distinct !{!6497, !6475, !6498, !5376, !5377}
!6498 = !DILocation(line: 212, column: 3, scope: !6470)
!6499 = !DILocation(line: 213, column: 2, scope: !6340)
!6500 = distinct !{!6500, !6418, !6499, !5376, !5377}
!6501 = !DILocation(line: 215, column: 16, scope: !6340)
!6502 = !DILocation(line: 215, column: 21, scope: !6340)
!6503 = !DILocation(line: 215, column: 2, scope: !6340)
!6504 = !DILocation(line: 216, column: 9, scope: !6340)
!6505 = !DILocation(line: 216, column: 15, scope: !6340)
!6506 = !DILocation(line: 216, column: 21, scope: !6340)
!6507 = !DILocation(line: 216, column: 2, scope: !6340)
!6508 = !DILocation(line: 217, column: 1, scope: !6340)
!6509 = !DISubprogram(name: "mutex_lock_killable", scope: !533, file: !533, line: 229, type: !6510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6510 = !DISubroutineType(types: !6511)
!6511 = !{!64, !5078}
!6512 = distinct !DISubprogram(name: "fatal_signal_pending", scope: !2698, file: !2698, line: 409, type: !6513, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !6515)
!6513 = !DISubroutineType(types: !6514)
!6514 = !{!64, !1309}
!6515 = !{!6516}
!6516 = !DILocalVariable(name: "p", arg: 1, scope: !6512, file: !2698, line: 409, type: !1309)
!6517 = !DILocation(line: 409, column: 60, scope: !6512)
!6518 = !DILocation(line: 411, column: 25, scope: !6512)
!6519 = !DILocation(line: 411, column: 9, scope: !6512)
!6520 = !DILocation(line: 411, column: 28, scope: !6512)
!6521 = !DILocation(line: 411, column: 54, scope: !6512)
!6522 = !DILocation(line: 411, column: 31, scope: !6512)
!6523 = !DILocation(line: 0, scope: !6512)
!6524 = !DILocation(line: 411, column: 2, scope: !6512)
!6525 = distinct !DISubprogram(name: "get_current", scope: !6526, file: !6526, line: 39, type: !6527, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !6529)
!6526 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6527 = !DISubroutineType(types: !6528)
!6528 = !{!1309}
!6529 = !{!6530, !6532, !6534}
!6530 = !DILocalVariable(name: "pscr_ret__", scope: !6531, file: !6526, line: 41, type: !1309)
!6531 = distinct !DILexicalBlock(scope: !6525, file: !6526, line: 41, column: 9)
!6532 = !DILocalVariable(name: "__vpp_verify", scope: !6533, file: !6526, line: 41, type: !2482)
!6533 = distinct !DILexicalBlock(scope: !6531, file: !6526, line: 41, column: 9)
!6534 = !DILocalVariable(name: "pfo_val__", scope: !6535, file: !6526, line: 41, type: !36)
!6535 = distinct !DILexicalBlock(scope: !6531, file: !6526, line: 41, column: 9)
!6536 = !DILocation(line: 41, column: 9, scope: !6531)
!6537 = !DILocation(line: 41, column: 9, scope: !6533)
!6538 = !DILocation(line: 41, column: 9, scope: !6535)
!6539 = !{i64 2148530320}
!6540 = !DILocation(line: 41, column: 9, scope: !6525)
!6541 = !DILocation(line: 41, column: 2, scope: !6525)
!6542 = !DISubprogram(name: "pci_user_write_config_word", scope: !8, file: !8, line: 1287, type: !6543, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6543 = !DISubroutineType(types: !6544)
!6544 = !{!64, !6, !64, !158}
!6545 = distinct !DISubprogram(name: "pci_vpd_wait", scope: !3, file: !3, line: 126, type: !6546, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !6548)
!6546 = !DISubroutineType(types: !6547)
!6547 = !{!64, !6, !612}
!6548 = !{!6549, !6550, !6551, !6552, !6553, !6554, !6555}
!6549 = !DILocalVariable(name: "dev", arg: 1, scope: !6545, file: !3, line: 126, type: !6)
!6550 = !DILocalVariable(name: "set", arg: 2, scope: !6545, file: !3, line: 126, type: !612)
!6551 = !DILocalVariable(name: "vpd", scope: !6545, file: !3, line: 128, type: !5176)
!6552 = !DILocalVariable(name: "timeout", scope: !6545, file: !3, line: 129, type: !47)
!6553 = !DILocalVariable(name: "max_sleep", scope: !6545, file: !3, line: 130, type: !47)
!6554 = !DILocalVariable(name: "status", scope: !6545, file: !3, line: 131, type: !158)
!6555 = !DILocalVariable(name: "ret", scope: !6545, file: !3, line: 132, type: !64)
!6556 = !DILocation(line: 126, column: 41, scope: !6545)
!6557 = !DILocation(line: 126, column: 51, scope: !6545)
!6558 = !DILocation(line: 128, column: 2, scope: !6545)
!6559 = !DILocation(line: 128, column: 18, scope: !6545)
!6560 = !DILocation(line: 128, column: 25, scope: !6545)
!6561 = !DILocation(line: 128, column: 30, scope: !6545)
!6562 = !DILocation(line: 129, column: 2, scope: !6545)
!6563 = !DILocation(line: 129, column: 16, scope: !6545)
!6564 = !DILocation(line: 129, column: 26, scope: !6545)
!6565 = !DILocation(line: 129, column: 36, scope: !6545)
!6566 = !DILocation(line: 129, column: 34, scope: !6545)
!6567 = !DILocation(line: 130, column: 2, scope: !6545)
!6568 = !DILocation(line: 130, column: 16, scope: !6545)
!6569 = !DILocation(line: 131, column: 2, scope: !6545)
!6570 = !DILocation(line: 131, column: 6, scope: !6545)
!6571 = !DILocation(line: 132, column: 2, scope: !6545)
!6572 = !DILocation(line: 132, column: 6, scope: !6545)
!6573 = !DILocation(line: 134, column: 2, scope: !6545)
!6574 = !DILocation(line: 135, column: 35, scope: !6575)
!6575 = distinct !DILexicalBlock(scope: !6545, file: !3, line: 134, column: 5)
!6576 = !DILocation(line: 135, column: 40, scope: !6575)
!6577 = !DILocation(line: 135, column: 45, scope: !6575)
!6578 = !DILocation(line: 135, column: 49, scope: !6575)
!6579 = !DILocation(line: 135, column: 9, scope: !6575)
!6580 = !DILocation(line: 135, column: 7, scope: !6575)
!6581 = !DILocation(line: 137, column: 7, scope: !6582)
!6582 = distinct !DILexicalBlock(scope: !6575, file: !3, line: 137, column: 7)
!6583 = !DILocation(line: 137, column: 11, scope: !6582)
!6584 = !DILocation(line: 137, column: 7, scope: !6575)
!6585 = !DILocation(line: 138, column: 11, scope: !6582)
!6586 = !DILocation(line: 138, column: 4, scope: !6582)
!6587 = !DILocation(line: 140, column: 10, scope: !6588)
!6588 = distinct !DILexicalBlock(scope: !6575, file: !3, line: 140, column: 7)
!6589 = !DILocation(line: 140, column: 17, scope: !6588)
!6590 = !DILocation(line: 140, column: 8, scope: !6588)
!6591 = !DILocation(line: 140, column: 7, scope: !6588)
!6592 = !DILocation(line: 140, column: 38, scope: !6588)
!6593 = !DILocation(line: 140, column: 35, scope: !6588)
!6594 = !DILocation(line: 140, column: 7, scope: !6575)
!6595 = !DILocation(line: 141, column: 4, scope: !6588)
!6596 = !DILocation(line: 143, column: 7, scope: !6597)
!6597 = distinct !DILexicalBlock(scope: !6575, file: !3, line: 143, column: 7)
!6598 = !DILocation(line: 143, column: 7, scope: !6575)
!6599 = !DILocation(line: 144, column: 4, scope: !6597)
!6600 = !DILocation(line: 146, column: 20, scope: !6575)
!6601 = !DILocation(line: 146, column: 3, scope: !6575)
!6602 = !DILocation(line: 147, column: 7, scope: !6603)
!6603 = distinct !DILexicalBlock(scope: !6575, file: !3, line: 147, column: 7)
!6604 = !DILocation(line: 147, column: 17, scope: !6603)
!6605 = !DILocation(line: 147, column: 7, scope: !6575)
!6606 = !DILocation(line: 148, column: 14, scope: !6603)
!6607 = !DILocation(line: 148, column: 4, scope: !6603)
!6608 = !DILocation(line: 149, column: 2, scope: !6575)
!6609 = distinct !{!6609, !6573, !6610, !5377}
!6610 = !DILocation(line: 149, column: 15, scope: !6545)
!6611 = !DILocation(line: 151, column: 2, scope: !6612)
!6612 = distinct !DILexicalBlock(scope: !6545, file: !3, line: 151, column: 2)
!6613 = !DILocation(line: 151, column: 2, scope: !6614)
!6614 = distinct !DILexicalBlock(scope: !6612, file: !3, line: 151, column: 2)
!6615 = !DILocation(line: 152, column: 2, scope: !6545)
!6616 = !DILocation(line: 153, column: 1, scope: !6545)
!6617 = !DISubprogram(name: "pci_user_read_config_dword", scope: !8, file: !8, line: 1285, type: !6618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6618 = !DISubroutineType(types: !6619)
!6619 = !{!64, !6, !64, !79}
!6620 = !DISubprogram(name: "mutex_unlock", scope: !533, file: !533, line: 246, type: !6621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6621 = !DISubroutineType(types: !6622)
!6622 = !{null, !5078}
!6623 = distinct !DISubprogram(name: "task_sigpending", scope: !2698, file: !2698, line: 387, type: !6513, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !6624)
!6624 = !{!6625}
!6625 = !DILocalVariable(name: "p", arg: 1, scope: !6623, file: !2698, line: 387, type: !1309)
!6626 = !DILocation(line: 387, column: 55, scope: !6623)
!6627 = !DILocation(line: 389, column: 9, scope: !6623)
!6628 = !DILocation(line: 389, column: 2, scope: !6623)
!6629 = distinct !DISubprogram(name: "__fatal_signal_pending", scope: !2698, file: !2698, line: 404, type: !6513, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !6630)
!6630 = !{!6631}
!6631 = !DILocalVariable(name: "p", arg: 1, scope: !6629, file: !2698, line: 404, type: !1309)
!6632 = !DILocation(line: 404, column: 62, scope: !6629)
!6633 = !DILocation(line: 406, column: 9, scope: !6629)
!6634 = !DILocation(line: 406, column: 2, scope: !6629)
!6635 = distinct !DISubprogram(name: "test_tsk_thread_flag", scope: !978, file: !978, line: 2066, type: !6636, scopeLine: 2067, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !6638)
!6636 = !DISubroutineType(types: !6637)
!6637 = !{!64, !1309, !64}
!6638 = !{!6639, !6640}
!6639 = !DILocalVariable(name: "tsk", arg: 1, scope: !6635, file: !978, line: 2066, type: !1309)
!6640 = !DILocalVariable(name: "flag", arg: 2, scope: !6635, file: !978, line: 2066, type: !64)
!6641 = !DILocation(line: 2066, column: 60, scope: !6635)
!6642 = !DILocation(line: 2066, column: 69, scope: !6635)
!6643 = !DILocation(line: 2068, column: 29, scope: !6635)
!6644 = !DILocation(line: 2068, column: 52, scope: !6635)
!6645 = !DILocation(line: 2068, column: 9, scope: !6635)
!6646 = !DILocation(line: 2068, column: 2, scope: !6635)
!6647 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !6648, file: !6648, line: 116, type: !6649, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !6652)
!6648 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!6649 = !DISubroutineType(types: !6650)
!6650 = !{!64, !6651, !64}
!6651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!6652 = !{!6653, !6654}
!6653 = !DILocalVariable(name: "ti", arg: 1, scope: !6647, file: !6648, line: 116, type: !6651)
!6654 = !DILocalVariable(name: "flag", arg: 2, scope: !6647, file: !6648, line: 116, type: !64)
!6655 = !DILocation(line: 116, column: 59, scope: !6647)
!6656 = !DILocation(line: 116, column: 67, scope: !6647)
!6657 = !DILocation(line: 118, column: 9, scope: !6647)
!6658 = !DILocation(line: 118, column: 2, scope: !6647)
!6659 = distinct !DISubprogram(name: "const_test_bit", scope: !6660, file: !6660, line: 166, type: !6661, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !6666)
!6660 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6661 = !DISubroutineType(types: !6662)
!6662 = !{!612, !47, !6663}
!6663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6664, size: 64)
!6664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6665)
!6665 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !47)
!6666 = !{!6667, !6668, !6669, !6670, !6671}
!6667 = !DILocalVariable(name: "nr", arg: 1, scope: !6659, file: !6660, line: 166, type: !47)
!6668 = !DILocalVariable(name: "addr", arg: 2, scope: !6659, file: !6660, line: 166, type: !6663)
!6669 = !DILocalVariable(name: "p", scope: !6659, file: !6660, line: 168, type: !4930)
!6670 = !DILocalVariable(name: "mask", scope: !6659, file: !6660, line: 169, type: !47)
!6671 = !DILocalVariable(name: "val", scope: !6659, file: !6660, line: 170, type: !47)
!6672 = !DILocation(line: 166, column: 30, scope: !6659)
!6673 = !DILocation(line: 166, column: 64, scope: !6659)
!6674 = !DILocation(line: 168, column: 2, scope: !6659)
!6675 = !DILocation(line: 168, column: 23, scope: !6659)
!6676 = !DILocation(line: 168, column: 50, scope: !6659)
!6677 = !DILocation(line: 168, column: 57, scope: !6659)
!6678 = !DILocation(line: 168, column: 55, scope: !6659)
!6679 = !DILocation(line: 169, column: 2, scope: !6659)
!6680 = !DILocation(line: 169, column: 16, scope: !6659)
!6681 = !DILocation(line: 169, column: 23, scope: !6659)
!6682 = !DILocation(line: 170, column: 2, scope: !6659)
!6683 = !DILocation(line: 170, column: 16, scope: !6659)
!6684 = !DILocation(line: 170, column: 23, scope: !6659)
!6685 = !DILocation(line: 170, column: 22, scope: !6659)
!6686 = !DILocation(line: 172, column: 12, scope: !6659)
!6687 = !DILocation(line: 172, column: 18, scope: !6659)
!6688 = !DILocation(line: 172, column: 16, scope: !6659)
!6689 = !DILocation(line: 172, column: 10, scope: !6659)
!6690 = !DILocation(line: 172, column: 9, scope: !6659)
!6691 = !DILocation(line: 173, column: 1, scope: !6659)
!6692 = !DILocation(line: 172, column: 2, scope: !6659)
!6693 = distinct !DISubprogram(name: "_test_bit", scope: !6694, file: !6694, line: 139, type: !6661, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !6695)
!6694 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6695 = !{!6696, !6697}
!6696 = !DILocalVariable(name: "nr", arg: 1, scope: !6693, file: !6694, line: 139, type: !47)
!6697 = !DILocalVariable(name: "addr", arg: 2, scope: !6693, file: !6694, line: 139, type: !6663)
!6698 = !DILocation(line: 139, column: 25, scope: !6693)
!6699 = !DILocation(line: 139, column: 59, scope: !6693)
!6700 = !DILocation(line: 141, column: 25, scope: !6693)
!6701 = !DILocation(line: 141, column: 32, scope: !6693)
!6702 = !DILocation(line: 141, column: 30, scope: !6693)
!6703 = !DILocation(line: 141, column: 2, scope: !6693)
!6704 = !DILocation(line: 142, column: 23, scope: !6693)
!6705 = !DILocation(line: 142, column: 27, scope: !6693)
!6706 = !DILocation(line: 142, column: 9, scope: !6693)
!6707 = !DILocation(line: 142, column: 2, scope: !6693)
!6708 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6709, file: !6709, line: 66, type: !6710, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !6715)
!6709 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6710 = !DISubroutineType(types: !6711)
!6711 = !{null, !6712, !236}
!6712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6713, size: 64)
!6713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6714)
!6714 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6715 = !{!6716, !6717}
!6716 = !DILocalVariable(name: "v", arg: 1, scope: !6708, file: !6709, line: 66, type: !6712)
!6717 = !DILocalVariable(name: "size", arg: 2, scope: !6708, file: !6709, line: 66, type: !236)
!6718 = !DILocation(line: 66, column: 73, scope: !6708)
!6719 = !DILocation(line: 66, column: 83, scope: !6708)
!6720 = !DILocation(line: 68, column: 19, scope: !6708)
!6721 = !DILocation(line: 68, column: 22, scope: !6708)
!6722 = !DILocation(line: 68, column: 2, scope: !6708)
!6723 = !DILocation(line: 69, column: 2, scope: !6708)
!6724 = !DILocation(line: 70, column: 1, scope: !6708)
!6725 = distinct !DISubprogram(name: "arch_test_bit", scope: !6726, file: !6726, line: 237, type: !6661, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !6727)
!6726 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6727 = !{!6728, !6729}
!6728 = !DILocalVariable(name: "nr", arg: 1, scope: !6725, file: !6726, line: 237, type: !47)
!6729 = !DILocalVariable(name: "addr", arg: 2, scope: !6725, file: !6726, line: 237, type: !6663)
!6730 = !DILocation(line: 237, column: 29, scope: !6725)
!6731 = !DILocation(line: 237, column: 63, scope: !6725)
!6732 = !DILocation(line: 239, column: 30, scope: !6725)
!6733 = !DILocation(line: 239, column: 9, scope: !6725)
!6734 = !DILocation(line: 239, column: 54, scope: !6725)
!6735 = !DILocation(line: 239, column: 58, scope: !6725)
!6736 = !DILocation(line: 239, column: 36, scope: !6725)
!6737 = !DILocation(line: 240, column: 26, scope: !6725)
!6738 = !DILocation(line: 240, column: 30, scope: !6725)
!6739 = !DILocation(line: 240, column: 8, scope: !6725)
!6740 = !DILocation(line: 239, column: 2, scope: !6725)
!6741 = distinct !DISubprogram(name: "kasan_check_read", scope: !6742, file: !6742, line: 40, type: !6743, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !6745)
!6742 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6743 = !DISubroutineType(types: !6744)
!6744 = !{!612, !6712, !74}
!6745 = !{!6746, !6747}
!6746 = !DILocalVariable(name: "p", arg: 1, scope: !6741, file: !6742, line: 40, type: !6712)
!6747 = !DILocalVariable(name: "size", arg: 2, scope: !6741, file: !6742, line: 40, type: !74)
!6748 = !DILocation(line: 40, column: 58, scope: !6741)
!6749 = !DILocation(line: 40, column: 74, scope: !6741)
!6750 = !DILocation(line: 42, column: 2, scope: !6741)
!6751 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6752, file: !6752, line: 229, type: !6753, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !6755)
!6752 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6753 = !DISubroutineType(types: !6754)
!6754 = !{null, !6712, !236, !64}
!6755 = !{!6756, !6757, !6758}
!6756 = !DILocalVariable(name: "ptr", arg: 1, scope: !6751, file: !6752, line: 229, type: !6712)
!6757 = !DILocalVariable(name: "size", arg: 2, scope: !6751, file: !6752, line: 229, type: !236)
!6758 = !DILocalVariable(name: "type", arg: 3, scope: !6751, file: !6752, line: 230, type: !64)
!6759 = !DILocation(line: 229, column: 60, scope: !6751)
!6760 = !DILocation(line: 229, column: 72, scope: !6751)
!6761 = !DILocation(line: 230, column: 15, scope: !6751)
!6762 = !DILocation(line: 230, column: 23, scope: !6751)
!6763 = distinct !DISubprogram(name: "constant_test_bit", scope: !6726, file: !6726, line: 204, type: !6764, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !6766)
!6764 = !DISubroutineType(types: !6765)
!6765 = !{!612, !225, !6663}
!6766 = !{!6767, !6768}
!6767 = !DILocalVariable(name: "nr", arg: 1, scope: !6763, file: !6726, line: 204, type: !225)
!6768 = !DILocalVariable(name: "addr", arg: 2, scope: !6763, file: !6726, line: 204, type: !6663)
!6769 = !DILocation(line: 204, column: 52, scope: !6763)
!6770 = !DILocation(line: 204, column: 86, scope: !6763)
!6771 = !DILocation(line: 206, column: 19, scope: !6763)
!6772 = !DILocation(line: 206, column: 22, scope: !6763)
!6773 = !DILocation(line: 206, column: 15, scope: !6763)
!6774 = !DILocation(line: 207, column: 4, scope: !6763)
!6775 = !DILocation(line: 207, column: 9, scope: !6763)
!6776 = !DILocation(line: 207, column: 12, scope: !6763)
!6777 = !DILocation(line: 206, column: 44, scope: !6763)
!6778 = !DILocation(line: 207, column: 37, scope: !6763)
!6779 = !DILocation(line: 206, column: 2, scope: !6763)
!6780 = distinct !DISubprogram(name: "variable_test_bit", scope: !6726, file: !6726, line: 224, type: !6764, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !6781)
!6781 = !{!6782, !6783, !6784}
!6782 = !DILocalVariable(name: "nr", arg: 1, scope: !6780, file: !6726, line: 224, type: !225)
!6783 = !DILocalVariable(name: "addr", arg: 2, scope: !6780, file: !6726, line: 224, type: !6663)
!6784 = !DILocalVariable(name: "oldbit", scope: !6780, file: !6726, line: 226, type: !612)
!6785 = !DILocation(line: 224, column: 52, scope: !6780)
!6786 = !DILocation(line: 224, column: 86, scope: !6780)
!6787 = !DILocation(line: 226, column: 2, scope: !6780)
!6788 = !DILocation(line: 226, column: 7, scope: !6780)
!6789 = !DILocation(line: 231, column: 33, scope: !6780)
!6790 = !DILocation(line: 231, column: 46, scope: !6780)
!6791 = !DILocation(line: 228, column: 2, scope: !6780)
!6792 = !{i64 2148260127, i64 2148260201}
!6793 = !DILocation(line: 233, column: 9, scope: !6780)
!6794 = !DILocation(line: 234, column: 1, scope: !6780)
!6795 = !DILocation(line: 233, column: 2, scope: !6780)
!6796 = distinct !DISubprogram(name: "sigismember", scope: !6797, file: !6797, line: 82, type: !6798, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !6801)
!6797 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!6798 = !DISubroutineType(types: !6799)
!6799 = !{!64, !6800, !64}
!6800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!6801 = !{!6802, !6803, !6804}
!6802 = !DILocalVariable(name: "set", arg: 1, scope: !6796, file: !6797, line: 82, type: !6800)
!6803 = !DILocalVariable(name: "_sig", arg: 2, scope: !6796, file: !6797, line: 82, type: !64)
!6804 = !DILocalVariable(name: "sig", scope: !6796, file: !6797, line: 84, type: !47)
!6805 = !DILocation(line: 82, column: 41, scope: !6796)
!6806 = !DILocation(line: 82, column: 50, scope: !6796)
!6807 = !DILocation(line: 84, column: 2, scope: !6796)
!6808 = !DILocation(line: 84, column: 16, scope: !6796)
!6809 = !DILocation(line: 84, column: 22, scope: !6796)
!6810 = !DILocation(line: 84, column: 27, scope: !6796)
!6811 = !DILocation(line: 86, column: 15, scope: !6812)
!6812 = distinct !DILexicalBlock(scope: !6796, file: !6797, line: 85, column: 6)
!6813 = !DILocation(line: 86, column: 20, scope: !6812)
!6814 = !DILocation(line: 86, column: 30, scope: !6812)
!6815 = !DILocation(line: 86, column: 27, scope: !6812)
!6816 = !DILocation(line: 86, column: 12, scope: !6812)
!6817 = !DILocation(line: 86, column: 10, scope: !6812)
!6818 = !DILocation(line: 89, column: 1, scope: !6796)
!6819 = !DILocation(line: 86, column: 3, scope: !6812)
!6820 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !6821, file: !6821, line: 515, type: !6822, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !6824)
!6821 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "190f1e06c9553a58717d0072201a9169")
!6822 = !DISubroutineType(types: !6823)
!6823 = !{!47, !3717}
!6824 = !{!6825}
!6825 = !DILocalVariable(name: "m", arg: 1, scope: !6820, file: !6821, line: 515, type: !3717)
!6826 = !DILocation(line: 515, column: 74, scope: !6820)
!6827 = !DILocation(line: 517, column: 27, scope: !6828)
!6828 = distinct !DILexicalBlock(scope: !6820, file: !6821, line: 517, column: 6)
!6829 = !DILocation(line: 517, column: 6, scope: !6828)
!6830 = !DILocation(line: 517, column: 6, scope: !6820)
!6831 = !DILocation(line: 518, column: 12, scope: !6832)
!6832 = distinct !DILexicalBlock(scope: !6833, file: !6821, line: 518, column: 7)
!6833 = distinct !DILexicalBlock(scope: !6828, file: !6821, line: 517, column: 31)
!6834 = !DILocation(line: 518, column: 14, scope: !6832)
!6835 = !DILocation(line: 518, column: 7, scope: !6833)
!6836 = !DILocation(line: 519, column: 4, scope: !6832)
!6837 = !DILocation(line: 520, column: 28, scope: !6833)
!6838 = !DILocation(line: 520, column: 10, scope: !6833)
!6839 = !DILocation(line: 520, column: 3, scope: !6833)
!6840 = !DILocation(line: 522, column: 29, scope: !6841)
!6841 = distinct !DILexicalBlock(scope: !6828, file: !6821, line: 521, column: 9)
!6842 = !DILocation(line: 522, column: 10, scope: !6841)
!6843 = !DILocation(line: 522, column: 3, scope: !6841)
!6844 = !DILocation(line: 524, column: 1, scope: !6820)
!6845 = !DISubprogram(name: "pci_user_read_config_word", scope: !8, file: !8, line: 1284, type: !6846, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6846 = !DISubroutineType(types: !6847)
!6847 = !{!64, !6, !64, !6848}
!6848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!6849 = distinct !DISubprogram(name: "usleep_range", scope: !6850, file: !6850, line: 66, type: !6851, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !6853)
!6850 = !DIFile(filename: "./include/linux/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "305c363b0f511174031dc8979b58b410")
!6851 = !DISubroutineType(types: !6852)
!6852 = !{null, !47, !47}
!6853 = !{!6854, !6855}
!6854 = !DILocalVariable(name: "min", arg: 1, scope: !6849, file: !6850, line: 66, type: !47)
!6855 = !DILocalVariable(name: "max", arg: 2, scope: !6849, file: !6850, line: 66, type: !47)
!6856 = !DILocation(line: 66, column: 47, scope: !6849)
!6857 = !DILocation(line: 66, column: 66, scope: !6849)
!6858 = !DILocation(line: 68, column: 21, scope: !6849)
!6859 = !DILocation(line: 68, column: 26, scope: !6849)
!6860 = !DILocation(line: 68, column: 2, scope: !6849)
!6861 = !DILocation(line: 69, column: 1, scope: !6849)
!6862 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !6821, file: !6821, line: 458, type: !6822, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !6863)
!6863 = !{!6864}
!6864 = !DILocalVariable(name: "m", arg: 1, scope: !6862, file: !6821, line: 458, type: !3717)
!6865 = !DILocation(line: 458, column: 66, scope: !6862)
!6866 = !DILocation(line: 460, column: 10, scope: !6862)
!6867 = !DILocation(line: 460, column: 12, scope: !6862)
!6868 = !DILocation(line: 460, column: 34, scope: !6862)
!6869 = !DILocation(line: 460, column: 39, scope: !6862)
!6870 = !DILocation(line: 460, column: 2, scope: !6862)
!6871 = !DISubprogram(name: "__msecs_to_jiffies", scope: !6821, file: !6821, line: 451, type: !6822, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6872 = !DISubprogram(name: "usleep_range_state", scope: !6850, file: !6850, line: 63, type: !6873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6873 = !DISubroutineType(types: !6874)
!6874 = !{null, !47, !47, !74}
!6875 = distinct !DISubprogram(name: "pci_vpd_write", scope: !3, file: !3, line: 219, type: !5464, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4883, retainedNodes: !6876)
!6876 = !{!6877, !6878, !6879, !6880, !6881, !6882, !6883, !6884, !6885, !6886}
!6877 = !DILocalVariable(name: "dev", arg: 1, scope: !6875, file: !3, line: 219, type: !6)
!6878 = !DILocalVariable(name: "pos", arg: 2, scope: !6875, file: !3, line: 219, type: !425)
!6879 = !DILocalVariable(name: "count", arg: 3, scope: !6875, file: !3, line: 219, type: !236)
!6880 = !DILocalVariable(name: "arg", arg: 4, scope: !6875, file: !3, line: 220, type: !2482)
!6881 = !DILocalVariable(name: "check_size", arg: 5, scope: !6875, file: !3, line: 220, type: !612)
!6882 = !DILocalVariable(name: "vpd", scope: !6875, file: !3, line: 222, type: !5176)
!6883 = !DILocalVariable(name: "max_len", scope: !6875, file: !3, line: 223, type: !74)
!6884 = !DILocalVariable(name: "buf", scope: !6875, file: !3, line: 224, type: !5292)
!6885 = !DILocalVariable(name: "end", scope: !6875, file: !3, line: 225, type: !425)
!6886 = !DILocalVariable(name: "ret", scope: !6875, file: !3, line: 226, type: !64)
!6887 = !DILocation(line: 219, column: 46, scope: !6875)
!6888 = !DILocation(line: 219, column: 58, scope: !6875)
!6889 = !DILocation(line: 219, column: 70, scope: !6875)
!6890 = !DILocation(line: 220, column: 21, scope: !6875)
!6891 = !DILocation(line: 220, column: 31, scope: !6875)
!6892 = !DILocation(line: 222, column: 2, scope: !6875)
!6893 = !DILocation(line: 222, column: 18, scope: !6875)
!6894 = !DILocation(line: 222, column: 25, scope: !6875)
!6895 = !DILocation(line: 222, column: 30, scope: !6875)
!6896 = !DILocation(line: 223, column: 2, scope: !6875)
!6897 = !DILocation(line: 223, column: 15, scope: !6875)
!6898 = !DILocation(line: 224, column: 2, scope: !6875)
!6899 = !DILocation(line: 224, column: 12, scope: !6875)
!6900 = !DILocation(line: 224, column: 18, scope: !6875)
!6901 = !DILocation(line: 225, column: 2, scope: !6875)
!6902 = !DILocation(line: 225, column: 9, scope: !6875)
!6903 = !DILocation(line: 225, column: 15, scope: !6875)
!6904 = !DILocation(line: 225, column: 21, scope: !6875)
!6905 = !DILocation(line: 225, column: 19, scope: !6875)
!6906 = !DILocation(line: 226, column: 2, scope: !6875)
!6907 = !DILocation(line: 226, column: 6, scope: !6875)
!6908 = !DILocation(line: 228, column: 25, scope: !6909)
!6909 = distinct !DILexicalBlock(scope: !6875, file: !3, line: 228, column: 6)
!6910 = !DILocation(line: 228, column: 30, scope: !6909)
!6911 = !DILocation(line: 228, column: 7, scope: !6909)
!6912 = !DILocation(line: 228, column: 6, scope: !6875)
!6913 = !DILocation(line: 229, column: 3, scope: !6909)
!6914 = !DILocation(line: 231, column: 6, scope: !6915)
!6915 = distinct !DILexicalBlock(scope: !6875, file: !3, line: 231, column: 6)
!6916 = !DILocation(line: 231, column: 10, scope: !6915)
!6917 = !DILocation(line: 231, column: 14, scope: !6915)
!6918 = !DILocation(line: 231, column: 18, scope: !6915)
!6919 = !DILocation(line: 231, column: 22, scope: !6915)
!6920 = !DILocation(line: 231, column: 27, scope: !6915)
!6921 = !DILocation(line: 231, column: 31, scope: !6915)
!6922 = !DILocation(line: 231, column: 37, scope: !6915)
!6923 = !DILocation(line: 231, column: 6, scope: !6875)
!6924 = !DILocation(line: 232, column: 3, scope: !6915)
!6925 = !DILocation(line: 234, column: 12, scope: !6875)
!6926 = !DILocation(line: 234, column: 25, scope: !6875)
!6927 = !DILocation(line: 234, column: 30, scope: !6875)
!6928 = !DILocation(line: 234, column: 10, scope: !6875)
!6929 = !DILocation(line: 236, column: 6, scope: !6930)
!6930 = distinct !DILexicalBlock(scope: !6875, file: !3, line: 236, column: 6)
!6931 = !DILocation(line: 236, column: 12, scope: !6930)
!6932 = !DILocation(line: 236, column: 10, scope: !6930)
!6933 = !DILocation(line: 236, column: 6, scope: !6875)
!6934 = !DILocation(line: 237, column: 3, scope: !6930)
!6935 = !DILocation(line: 239, column: 27, scope: !6936)
!6936 = distinct !DILexicalBlock(scope: !6875, file: !3, line: 239, column: 6)
!6937 = !DILocation(line: 239, column: 32, scope: !6936)
!6938 = !DILocation(line: 239, column: 6, scope: !6936)
!6939 = !DILocation(line: 239, column: 6, scope: !6875)
!6940 = !DILocation(line: 240, column: 3, scope: !6936)
!6941 = !DILocation(line: 242, column: 2, scope: !6875)
!6942 = !DILocation(line: 242, column: 9, scope: !6875)
!6943 = !DILocation(line: 242, column: 15, scope: !6875)
!6944 = !DILocation(line: 242, column: 13, scope: !6875)
!6945 = !DILocation(line: 243, column: 37, scope: !6946)
!6946 = distinct !DILexicalBlock(scope: !6875, file: !3, line: 242, column: 20)
!6947 = !DILocation(line: 243, column: 42, scope: !6946)
!6948 = !DILocation(line: 243, column: 47, scope: !6946)
!6949 = !DILocation(line: 243, column: 51, scope: !6946)
!6950 = !DILocation(line: 244, column: 28, scope: !6946)
!6951 = !DILocation(line: 244, column: 9, scope: !6946)
!6952 = !DILocation(line: 243, column: 9, scope: !6946)
!6953 = !DILocation(line: 243, column: 7, scope: !6946)
!6954 = !DILocation(line: 245, column: 7, scope: !6955)
!6955 = distinct !DILexicalBlock(scope: !6946, file: !3, line: 245, column: 7)
!6956 = !DILocation(line: 245, column: 11, scope: !6955)
!6957 = !DILocation(line: 245, column: 7, scope: !6946)
!6958 = !DILocation(line: 246, column: 4, scope: !6955)
!6959 = !DILocation(line: 247, column: 36, scope: !6946)
!6960 = !DILocation(line: 247, column: 41, scope: !6946)
!6961 = !DILocation(line: 247, column: 46, scope: !6946)
!6962 = !DILocation(line: 247, column: 50, scope: !6946)
!6963 = !DILocation(line: 248, column: 8, scope: !6946)
!6964 = !DILocation(line: 248, column: 12, scope: !6946)
!6965 = !DILocation(line: 247, column: 9, scope: !6946)
!6966 = !DILocation(line: 247, column: 7, scope: !6946)
!6967 = !DILocation(line: 249, column: 7, scope: !6968)
!6968 = distinct !DILexicalBlock(scope: !6946, file: !3, line: 249, column: 7)
!6969 = !DILocation(line: 249, column: 11, scope: !6968)
!6970 = !DILocation(line: 249, column: 7, scope: !6946)
!6971 = !DILocation(line: 250, column: 4, scope: !6968)
!6972 = !DILocation(line: 252, column: 22, scope: !6946)
!6973 = !DILocation(line: 252, column: 9, scope: !6946)
!6974 = !DILocation(line: 252, column: 7, scope: !6946)
!6975 = !DILocation(line: 253, column: 7, scope: !6976)
!6976 = distinct !DILexicalBlock(scope: !6946, file: !3, line: 253, column: 7)
!6977 = !DILocation(line: 253, column: 11, scope: !6976)
!6978 = !DILocation(line: 253, column: 7, scope: !6946)
!6979 = !DILocation(line: 254, column: 4, scope: !6976)
!6980 = !DILocation(line: 256, column: 7, scope: !6946)
!6981 = !DILocation(line: 257, column: 7, scope: !6946)
!6982 = distinct !{!6982, !6941, !6983, !5376, !5377}
!6983 = !DILocation(line: 258, column: 2, scope: !6875)
!6984 = !DILocation(line: 260, column: 16, scope: !6875)
!6985 = !DILocation(line: 260, column: 21, scope: !6875)
!6986 = !DILocation(line: 260, column: 2, scope: !6875)
!6987 = !DILocation(line: 261, column: 9, scope: !6875)
!6988 = !DILocation(line: 261, column: 15, scope: !6875)
!6989 = !DILocation(line: 261, column: 21, scope: !6875)
!6990 = !DILocation(line: 261, column: 2, scope: !6875)
!6991 = !DILocation(line: 262, column: 1, scope: !6875)
!6992 = !DISubprogram(name: "pci_user_write_config_dword", scope: !8, file: !8, line: 1288, type: !6993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6993 = !DISubroutineType(types: !6994)
!6994 = !{!64, !6, !64, !80}
!6995 = !DILocation(line: 30, column: 50, scope: !4936)
!6996 = !DILocation(line: 32, column: 9, scope: !4942)
!6997 = !DILocation(line: 32, column: 9, scope: !4936)
!6998 = !DILocation(line: 32, column: 2, scope: !4936)
